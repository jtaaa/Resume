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
    [2017/03/04 v0.01 LaTeX class for creatinge resume]

\LoadClass[10pt]{article}
\RequirePackage{vwcol}
\RequirePackage{xcolor}
\RequirePackage[a4paper, hmargin=0.55in, vmargin=1in]{geometry}
\usepackage[T1]{fontenc}
\RequirePackage{setspace}
\RequirePackage{enumitem}
\setlist[itemize]{noitemsep, topsep=0pt, leftmargin=*}
\setlength{\rightmargin}{\the\dimexpr1in+\oddsidemargin\relax}
\setlength{\parindent}{0pt}

\newcommand{\rightshade}[2]{
    \hspace{-3mm}%% makes shade extend slightly beyond left margin
    \colorbox{#1}{
        \makebox[\paperwidth-\rightmargin][l]{
            \parbox{\linewidth}{\medskip
                #2\medskip}}}}

\renewcommand{\section}[1]{%
    \bigskip\par\noindent\setlength{\leftskip}{0mm}%
    \textsc{\LARGE -~#1~-}\smallskip\par%
}
\renewcommand{\subsection}[1]{%
    \smallskip\par\noindent\setlength{\leftskip}{0mm}%
    \fontfamily{cmr}\selectfont\textbf{\large #1}%
    \par\fontfamily{cmss}\selectfont\setlength{\leftskip}{1mm}%
}
\newcommand{\lheading}[2]{%
    \smallskip\par\noindent\setlength{\leftskip}{0mm}%
    \textbf{\fontfamily{cmr}\selectfont\small #1~|~#2}%
    \par\setlength{\leftskip}{1mm}%
}
\newcommand{\rheading}[2]{%
    \smallskip\par\noindent\setlength{\leftskip}{0mm}%
    \textbf{\fontfamily{cmr}\selectfont\large#1~|~\small#2}%
    \par\fontfamily{cmss}\selectfont%
}
