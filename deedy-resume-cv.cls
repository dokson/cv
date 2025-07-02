% Intro Options
\ProvidesClass{deedy-resume-cv}
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry}
\usepackage[hidelinks]{hyperref}
\usepackage{bookmark}
\usepackage{fancyhdr}
\usepackage{fontawesome5}
\usepackage[super]{nth}
\usepackage{silence}

% Suppress font Warnings
\WarningFilter{latexfont}{Font shape}
\WarningFilter{latexfont}{Some font shapes were not available}
\WarningFilter{hyperref}{Token not allowed in a PDF string}

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

% FontAwesome 6
\newfontfamily{\FA}[Path = fonts/fontawesome/]{Font Awesome 6 Free-Regular-400.otf}
\newcommand{\faC}{{\FA \char"43}}
\newcommand{\faFaceSmile}{{\FA \char"F118}}
\newcommand{\faCircleUser}{{\FA \char"F2BD}}

% Name Section
\newcommand{\namesection}[3]{
\centering{
\fontsize{40pt}{60pt}
\fontspec[Path = fonts/lato/]{Lato-Lig.ttf}\selectfont #1 
\fontspec[Path = fonts/lato/]{Lato-Lig.ttf}\selectfont #2
} \\[5pt]
\centering{
\color{headings}
\fontspec[Path = fonts/lato/]{Lato-Reg.ttf}\fontsize{11pt}{14pt}\selectfont #3}
\noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}}
\vspace{-15pt}
}

% Section seperators 
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt} 
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{8pt}}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/lato/]{Lato-Reg.ttf}\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{}{0em}{}

% Subheadings commands
\titleformat{\subsection}{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol.ttf}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol.ttf}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{
\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium.otf}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{
\color{subheadings}\raggedright\fontspec[Path = fonts/lato/]{Lato-Bol.ttf}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

\newenvironment{tightemize}{
  \vspace{-\topsep}
  \begin{itemize}
    \setlength{\itemsep}{0.5pt}    % space between items
    \setlength{\parskip}{1pt}      % space between paragraphs within an item
    \setlength{\parsep}{1pt}       % space between paragraph and item
    \setlength{\topsep}{1pt}       % space above and below list
  }
  {\end{itemize}\vspace{-\topsep}}

% Privacy policy
\usepackage[absolute]{textpos}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\privacy}{\begin{textblock}{200}(5,274)
\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight.otf}\fontsize{8pt}{10pt}\selectfont
I authorize the processing of my personal data pursuant to EU Regulation 2016/679 (GDPR) for the purposes of recruitment and selection.
\end{textblock}}
