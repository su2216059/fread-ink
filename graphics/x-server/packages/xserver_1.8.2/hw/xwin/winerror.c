/*
 *Copyright (C) 2001-2004 Harold L Hunt II All Rights Reserved.
 *
 *Permission is hereby granted, free of charge, to any person obtaining
 * a copy of this software and associated documentation files (the
 *"Software"), to deal in the Software without restriction, including
 *without limitation the rights to use, copy, modify, merge, publish,
 *distribute, sublicense, and/or sell copies of the Software, and to
 *permit persons to whom the Software is furnished to do so, subject to
 *the following conditions:
 *
 *The above copyright notice and this permission notice shall be
 *included in all copies or substantial portions of the Software.
 *
 *THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 *EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 *MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 *NONINFRINGEMENT. IN NO EVENT SHALL HAROLD L HUNT II BE LIABLE FOR
 *ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
 *CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
 *WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 *Except as contained in this notice, the name of Harold L Hunt II
 *shall not be used in advertising or otherwise to promote the sale, use
 *or other dealings in this Software without prior written authorization
 *from Harold L Hunt II.
 *
 * Authors:	Harold L Hunt II
 */

#ifdef HAVE_XWIN_CONFIG_H
#include <xwin-config.h>
#endif
#ifdef XVENDORNAME
#define VENDOR_STRING XVENDORNAME
#define VENDOR_CONTACT BUILDERADDR
#endif

#include <../xfree86/common/xorgVersion.h>
#include "win.h"

/* References to external symbols */
extern char *		g_pszCommandLine;
extern const char *	g_pszLogFile;
extern Bool		g_fSilentFatalError;
extern Bool		g_fLogInited;


#ifdef DDXOSVERRORF
/* Prototype */
void
OsVendorVErrorF (const char *pszFormat, va_list va_args);

void
OsVendorVErrorF (const char *pszFormat, va_list va_args)
{
#if defined(XWIN_CLIPBOARD) || defined (XWIN_MULTIWINDOW)
  /* make sure the clipboard and multiwindow threads do not interfere the
   * main thread */
  static pthread_mutex_t	s_pmPrinting = PTHREAD_MUTEX_INITIALIZER;

  /* Lock the printing mutex */
  pthread_mutex_lock (&s_pmPrinting);
#endif

  /* Print the error message to a log file, could be stderr */
  LogVWrite (0, pszFormat, va_args);

#if defined(XWIN_CLIPBOARD) || defined (XWIN_MULTIWINDOW)
  /* Unlock the printing mutex */
  pthread_mutex_unlock (&s_pmPrinting);
#endif
}
#endif


/*
 * os/util.c/FatalError () calls our vendor ErrorF, so the message
 * from a FatalError will be logged.  Thus, the message for the
 * fatal error is not passed to this function.
 *
 * Attempt to do last-ditch, safe, important cleanup here.
 */
void
OsVendorFatalError (void)
{
  /* Don't give duplicate warning if UseMsg was called */
  if (g_fSilentFatalError)
    return;

  if (!g_fLogInited) {
    g_fLogInited = TRUE;
    g_pszLogFile = LogInit (g_pszLogFile, NULL);
  }
  LogClose ();

  winMessageBoxF (
          "A fatal error has occurred and " PROJECT_NAME " will now exit.\n" \
		  "Please open %s for more information.\n",
		  MB_ICONERROR, (g_pszLogFile?g_pszLogFile:"the logfile"));
}


/*
 * winMessageBoxF - Print a formatted error message in a useful
 * message box.
 */

void
winMessageBoxF (const char *pszError, UINT uType, ...)
{
  char *	pszErrorF = NULL;
  char *	pszMsgBox = NULL;
  va_list	args;

  va_start(args, uType);
  pszErrorF = Xvprintf(pszError, args);
  va_end(args);
  if (!pszErrorF)
    goto winMessageBoxF_Cleanup;

#define MESSAGEBOXF \
	"%s\n" \
	"Vendor: %s\n" \
	"Release: %d.%d.%d.%d (%d)\n" \
	"Contact: %s\n" \
	"%s\n\n" \
	"XWin was started with the following command-line:\n\n" \
	"%s\n"

  pszMsgBox = Xprintf (MESSAGEBOXF,
	   pszErrorF, VENDOR_STRING,
		       XORG_VERSION_MAJOR, XORG_VERSION_MINOR, XORG_VERSION_PATCH, XORG_VERSION_SNAP, XORG_VERSION_CURRENT,
		       VENDOR_CONTACT,
		       BUILDERSTRING,
	   g_pszCommandLine);
  if (!pszMsgBox)
    goto winMessageBoxF_Cleanup;

  /* Display the message box string */
  MessageBox (NULL,
	      pszMsgBox,
	      PROJECT_NAME,
	      MB_OK | uType);

 winMessageBoxF_Cleanup:
  if (pszErrorF)
    xfree (pszErrorF);
  if (pszMsgBox)
    xfree (pszMsgBox);
#undef MESSAGEBOXF
}
