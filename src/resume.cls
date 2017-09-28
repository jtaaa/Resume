% This is my first package
% 
% (c) Joshua Allum
%
%% This program can be redistributed and/or modified under the terms
%% of the LaTeX Project Public License Distributed from CTAN archives
%% in directory macros/latex/base/lppl.txt.
% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}
    [2017/03/04 v0.01 LaTeX class for creating resume]

\LoadClass[10pt]{article}
\RequirePackage{vwcol}
\RequirePackage[a4paper, hmargin=0.40in, vmargin=0.8in]{geometry}
\usepackage[T1]{fontenc}
\RequirePackage{setspace}
\RequirePackage{enumitem}
\setlist[itemize]{itemsep=1.5pt, parsep=0pt, topsep=1.7pt, leftmargin=*}
\setlength{\rightmargin}{\the\dimexpr1in+\oddsidemargin\relax}
\setlength{\parindent}{0pt}
\newcommand{\bodyfont}{\fontfamily{qag}\selectfont}
\newcommand{\headingfont}{\fontfamily{cmr}\selectfont}
\newcommand{\rightshade}[2]{
    \hspace{-3mm}%% makes shade extend slightly beyond left margin
    \colorbox{#1}{
        \makebox[\paperwidth-\rightmargin][l]{
            \parbox{\linewidth}{\medskip
                #2\medskip}}}}

\renewcommand{\section}[1]{%
    \bigskip\par\noindent\setlength{\leftskip}{0mm}%
    \headingfont\textsc{\LARGE -~#1~-}\smallskip\par\bodyfont%
}
\renewcommand{\subsection}[1]{%
    \smallskip\par\noindent\setlength{\leftskip}{0mm}%
    \headingfont\textbf{\large #1}%
    \par\bodyfont\setlength{\leftskip}{1mm}%
}
\newcommand{\lheading}[2]{%
    \smallskip\par\noindent\setlength{\leftskip}{0mm}%
    \textbf{\headingfont\small #1~|~#2}%
    \par\setlength{\leftskip}{1mm}%
}
\newcommand{\rheading}[2]{%
    \smallskip\par\noindent\setlength{\leftskip}{0mm}%
    \textbf{\headingfont\large#1~|~\small#2}%
    \par\bodyfont%
}
