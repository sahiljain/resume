% Intro Options
\ProvidesClass{deedy-resume-openfont}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[left=5.50cm, right=2cm, vmargin=0.75cm]{geometry}
\usepackage{hyperref}

% Publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor} 
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{010101} 
\definecolor{headings}{HTML}{696969}
\definecolor{headingslight}{HTML}{999999}
\definecolor{subheadings}{HTML}{333333}
\definecolor{subheadingslight}{HTML}{999999}
\definecolor{accent}{HTML}{057AA2}

% Set main fonts
\usepackage{fontspec}
\setmainfont[Color=primary, Scale=1.1, Path = fonts/lato/,BoldItalicFont=Lato-RegIta,BoldFont=Lato-Reg,ItalicFont=Lato-LigIta]{Lato-Lig}
\setsansfont[Mapping=tex-text, Scale=1.1, Path = fonts/raleway/]{Raleway-ExtraLight}

% Date command
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{\begin{textblock}{60}(155,5)
\color{date}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{8pt}{10pt}\selectfont 
Last Updated on \today
\end{textblock}}

% Name command
\newcommand{\namesection}[3]{
\centering{
\fontsize{40pt}{60pt}
\fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #1 
\fontspec[Path = fonts/lato/]{Lato-Bol}\color{accent}\selectfont #2
} \\[5pt]
\centering{
\color{headings}
\vspace{15pt}
\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{12pt}{14pt}\selectfont #3}
\noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}}
\vspace{-10pt}
}

% Section seperators 
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{6pt}}
\newcommand{\mainsep}{\vspace{18pt}}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{}{0em}{}

% Subeadings command
\titleformat{\subsection}{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}

\newcommand{\runsubsectionhref}[2]{
\color{primary}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\href {#1}{\uppercase{#2}} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{
\color{subheadings}\raggedright\scshape\fontspec[Path =
fonts/raleway/]{Raleway-Medium}\fontsize{13pt}{15pt}\selectfont {#1 \\}
\normalfont \normalsize}

\newcommand{\descriptnoline}[1]{
\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1} \normalfont}

\newcommand{\descriptnolinelight}[1]{
\color{subheadingslight}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1} \normalfont}

% Location command
\newcommand{\location}[1]{
\color{headings}\raggedright\fontspec[Path =
fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\}
\normalfont \normalsize}

% Location command
\newcommand{\locationlight}[1]{
\color{headingslight}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont {#1 \\} \normalfont}

\newcommand{\acc}[1]{\color{accent}\fontspec[Path = fonts/lato/]{Lato-Bol}\selectfont{#1}\normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}\itemsep 5.8pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}

\newcommand{\MarginText}[1]{\marginpar{\raggedleft\itshape\small\vspace{-1mm}#1}}

