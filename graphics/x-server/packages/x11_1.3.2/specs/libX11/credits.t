.EH ''''
.OH ''''
.EF ''''
.OF ''''
.XS ii
Table of Contents
.XE
.XS iii
Acknowledgments
.XE
\&
.sp 1
.ce 3
\s+1\fBAcknowledgments\fP\s-1
.sp 2
.na
.LP
The design and implementation of the first 10 versions of X
were primarily the work of three individuals: Robert Scheifler of the
MIT Laboratory for Computer Science and Jim Gettys of Digital
Equipment Corporation and Ron Newman of MIT, both at MIT
Project Athena. 
X version 11, however, is the result of the efforts of 
dozens of individuals at almost as many locations and organizations.
At the risk of offending some of the players by exclusion, 
we would like to acknowledge some of the people who deserve special credit 
and recognition for their work on Xlib.
Our apologies to anyone inadvertently overlooked.
.SH
Release 1
.LP
Our thanks does to Ron Newman (MIT Project Athena),
who contributed substantially to the
design and implementation of the Version 11 Xlib interface.
.LP
Our thanks also goes to Ralph Swick (Project Athena and Digital) who kept 
it all together for us during the early releases.
He handled literally thousands of requests from people everywhere
and saved the sanity of at least one of us.
His calm good cheer was a foundation on which we could build.
.LP
Our thanks also goes to Todd Brunhoff (Tektronix) who was ``loaned'' 
to Project Athena at exactly the right moment to provide very capable 
and much-needed assistance during the alpha and beta releases.
He was responsible for the successful integration of sources
from multiple sites;
we would not have had a release without him.
.LP
Our thanks also goes to Al Mento and Al Wojtas of Digital's ULTRIX 
Documentation Group.
With good humor and cheer,
they took a rough draft and made it an infinitely better and more useful 
document.
The work they have done will help many everywhere.
We also would like to thank Hal Murray (Digital SRC) and
Peter George (Digital VMS) who contributed much
by proofreading the early drafts of this document.
.LP
Our thanks also goes to Jeff Dike (Digital UEG), Tom Benson, 
Jackie Granfield, and Vince Orgovan (Digital VMS) who helped with the 
library utilities implementation;
to Hania Gajewska (Digital UEG-WSL) who,
along with Ellis Cohen (CMU and Siemens),
was instrumental in the semantic design of the window manager properties;
and to Dave Rosenthal (Sun Microsystems) who also contributed to the protocol 
and provided the sample generic color frame buffer device-dependent code.
.LP
The alpha and beta test participants deserve special recognition and thanks
as well.
It is significant
that the bug reports (and many fixes) during alpha and beta test came almost
exclusively from just a few of the alpha testers, mostly hardware vendors
working on product implementations of X.  
The continued public
contribution of vendors and universities is certainly to the benefit 
of the entire X community.
.LP
Our special thanks must go to Sam Fuller, Vice-President of Corporate
Research at Digital, who has remained committed to the widest public 
availability of X and who made it possible to greatly supplement MIT's
resources with the Digital staff in order to make version 11 a reality.
Many of the people mentioned here are part of the Western
Software Laboratory (Digital UEG-WSL) of the ULTRIX Engineering group
and work for Smokey Wallace, who has been vital to the project's success. 
Others not mentioned here worked on the toolkit and are acknowledged 
in the X Toolkit documentation.
.LP
Of course, 
we must particularly thank Paul Asente, formerly of Stanford University
and now of Digital UEG-WSL, who wrote W, the predecessor to X,
and Brian Reid, formerly of Stanford University and now of Digital WRL,
who had much to do with W's design.
.LP
Finally, our thanks goes to MIT,  Digital Equipment Corporation,
and IBM for providing the environment where it could happen.
.SH
Release 4
.LP
Our thanks go to Jim Fulton (MIT X Consortium) for designing and
specifying the new Xlib functions for Inter-Client Communication
Conventions (ICCCM) support.
.LP
We also thank Al Mento of Digital for his continued effort in
maintaining this document and Jim Fulton and Donna Converse (MIT X Consortium)
for their much-appreciated efforts in reviewing the changes.
.SH
Release 5
.LP
The principal authors of the Input Method facilities are
Vania Joloboff (Open Software Foundation) and Bill McMahon (Hewlett-Packard).
The principal author of the rest of the internationalization facilities
is Glenn Widener (Tektronix).  Our thanks to them for keeping their
sense of humor through a long and sometimes difficult design process.
Although the words and much of the design are due to them, many others
have contributed substantially to the design and implementation.
Tom McFarland (HP) and Frank Rojas (IBM) deserve particular recognition
for their contributions.   Other contributors were:
Tim Anderson (Motorola), Alka Badshah (OSF), Gabe Beged-Dov (HP),
Chih-Chung Ko (III), Vera Cheng (III), Michael Collins (Digital),
Walt Daniels (IBM), Noritoshi Demizu (OMRON), Keisuke Fukui (Fujitsu),
Hitoshoi Fukumoto (Nihon Sun), Tim Greenwood (Digital), John Harvey (IBM),
Hideki Hiura (Sun), Fred Horman (AT&T), Norikazu Kaiya (Fujitsu),
Yuji Kamata (IBM),
Yutaka Kataoka (Waseda University), Ranee Khubchandani (Sun), Akira Kon (NEC),
Hiroshi Kuribayashi (OMRON), Teruhiko Kurosaka (Sun), Seiji Kuwari (OMRON),
Sandra Martin (OSF), Narita Masahiko (Fujitsu), Masato Morisaki (NTT),
Nelson Ng (Sun),
Takashi Nishimura (NTT America), Makato Nishino (IBM),
Akira Ohsone (Nihon Sun), Chris Peterson (MIT), Sam Shteingart (AT&T),
Manish Sheth (AT&T), Muneiyoshi Suzuki (NTT), Cori Mehring (Digital),
Shoji Sugiyama (IBM), and Eiji Tosa (IBM).
.LP
We are deeply indebted to Tatsuya Kato (NTT),
Hiroshi Kuribayashi (OMRON), Seiji Kuwari (OMRON), Muneiyoshi Suzuki (NTT),
and Li Yuhong (OMRON) for producing one of the first complete
sample implementation of the internationalization facilities, and 
Hiromu Inukai (Nihon Sun), Takashi Fujiwara (Fujitsu), Hideki Hiura (Sun), 
Yasuhiro Kawai (Oki Technosystems Laboratory), Kazunori Nishihara (Fuji Xerox),
Masaki Takeuchi (Sony), Katsuhisa Yano (Toshiba),
Makoto Wakamatsu (Sony Corporation) for producing the another complete
sample implementation of the internationalization facilities.
.LP
The principal authors (design and implementation) of the Xcms color
management facilities are Al Tabayoyon (Tektronix)
and Chuck Adams (Tektronix).  
Joann Taylor (Tektronix), Bob Toole (Tektronix),
and Keith Packard (MIT X Consortium) also
contributed significantly to the design.  Others who contributed are:
Harold Boll (Kodak), Ken Bronstein (HP), Nancy Cam (SGI),
Donna Converse (MIT X Consortium), Elias Israel (ISC), Deron Johnson (Sun),
Jim King (Adobe), Ricardo Motta (HP), Chuck Peek (IBM),
Wil Plouffe (IBM), Dave Sternlicht (MIT X Consortium), Kumar Talluri (AT&T),
and Richard Verberg (IBM).
.LP
We also once again thank Al Mento of Digital for his work in formatting
and reformatting text for this manual, and for producing man pages.
Thanks also to Clive Feather (IXI) for proof-reading and finding a
number of small errors.
.SH
Release 6
.LP
Stephen Gildea (X Consortium) authored the threads support.
Ovais Ashraf (Sun) and Greg Olsen (Sun) contributed substantially
by testing the facilities and reporting bugs in a timely fashion.
.LP
The principal authors of the internationalization facilities, including
Input and Output Methods, are Hideki Hiura (SunSoft) and
Shigeru Yamada (Fujitsu OSSI).
Although the words and much of the design are due to them, many others
have contributed substantially to the design and implementation.
They are: Takashi Fujiwara (Fujitsu), Yoshio Horiuchi (IBM),
Makoto Inada (Digital), Hiromu Inukai (Nihon SunSoft),
Song JaeKyung (KAIST), Franky Ling (Digital), Tom McFarland (HP),
Hiroyuki Miyamoto (Digital), Masahiko Narita (Fujitsu),
Frank Rojas (IBM), Hidetoshi Tajima (HP), Masaki Takeuchi (Sony),
Makoto Wakamatsu (Sony), Masaki Wakao (IBM), Katsuhisa Yano(Toshiba) and
Jinsoo Yoon (KAIST).
.LP
The principal producers of the sample implementation of the 
internationalization facilities are: 
Jeffrey Bloomfield (Fujitsu OSSI), Takashi Fujiwara (Fujitsu),
Hideki Hiura (SunSoft), Yoshio Horiuchi (IBM), 
Makoto Inada (Digital), Hiromu Inukai (Nihon SunSoft), 
Song JaeKyung (KAIST), Riki Kawaguchi (Fujitsu), 
Franky Ling (Digital), Hiroyuki Miyamoto (Digital), 
Hidetoshi Tajima (HP), Toshimitsu Terazono (Fujitsu), 
Makoto Wakamatsu (Sony), Masaki Wakao (IBM), 
Shigeru Yamada (Fujitsu OSSI) and Katsuhisa Yano (Toshiba).
.LP
The coordinators of the integration, testing, and release of this 
implementation of the internationalization facilities are
Nobuyuki Tanaka (Sony) and Makoto Wakamatsu (Sony).
.LP
Others who have contributed to the architectural design or
testing of the sample implementation of the
internationalization facilities are:
Hector Chan (Digital), Michael Kung (IBM), Joseph Kwok (Digital),
Hiroyuki Machida (Sony), Nelson Ng (SunSoft), Frank Rojas (IBM), 
Yoshiyuki Segawa (Fujitsu OSSI), Makiko Shimamura (Fujitsu), 
Shoji Sugiyama (IBM), Lining Sun (SGI), Masaki Takeuchi (Sony),
Jinsoo Yoon (KAIST) and Akiyasu Zen (HP).
.sp 2
.LP
.Ds 0
.TA 1.5i 3i
.ta 1.5i 3i
.R
Jim Gettys
Cambridge Research Laboratory
Digital Equipment Corporation

Robert W. Scheifler
Laboratory for Computer Science
Massachusetts Institute of Technology
.DE
.bp 1
