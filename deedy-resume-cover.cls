% Intro Options
\ProvidesClass{deedy-resume-cover}
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=2.54cm, vmargin=2.54cm]{geometry}
\usepackage[hidelinks]{hyperref}
\usepackage[dvipsnames]{xcolor}
\usepackage{bookmark}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage{fontspec}
\usepackage{fancyhdr}
\usepackage{fontawesome6}

% Publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\usepackage[dvipsnames]{xcolor} 
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{2b2b2b}
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\usepackage{fontspec}
\setmainfont[Color=primary, Path = fonts/lato/,BoldItalicFont=Lato-BolIta.ttf,BoldFont=Lato-Bol.ttf,ItalicFont=Lato-RegIta.ttf]{Lato-Reg.ttf}
\setsansfont[Scale=MatchLowercase, Ligatures=TeX, Path = fonts/raleway/]{Raleway-ExtraLight.otf}

% Name Section
\newcommand{\namesection}[3]{
\centering{
    \fontsize{40pt}{60pt}
    \fontspec[Path = fonts/lato/]{Lato-Lig.ttf}\selectfont #1 
    \fontspec[Path = fonts/lato/]{Lato-Lig.ttf}\selectfont #2
}
\\[10pt]
\centering{
    \color{headings}
    \fontspec[Path = fonts/lato/]{Lato-Reg.ttf}\fontsize{11pt}{14pt}\selectfont #3
}
\noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0pt}}
\vspace{0pt}
}

% Section seperators 
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt} 
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{8pt}}

\newcommand{\runsubsection}[1]{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol.ttf}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}

% Cover Letter
\newcommand{\companyname}[1]{\raggedright\fontspec[Path = fonts/lato/]{Lato-Bol.ttf}\fontsize{12pt}{14pt}\selectfont {#1 \\}\mbox{}\\\mbox{}\\ \normalfont}

\newcommand{\currentdate}[1]{\raggedleft\fontspec[Path = fonts/raleway/]{Raleway-Medium.otf}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Letter content command
\newcommand{\lettercontent}[1]{\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium.otf}\fontsize{11pt}{13pt}\selectfont {#1 \\}\mbox{}\\ \normalfont}

\newcommand{\closing}[1]{\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium.otf}\fontsize{11pt}{13pt}\selectfont {#1 \\}\vspace{0.5cm} \normalfont}