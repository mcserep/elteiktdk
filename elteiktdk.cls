%% MIT License
%%
%% Version 2.0, 2023/04/10
%% Copyright (c) 2013-2023 Máté Cserép <mcserep@inf.elte.hu>
%%
%% Permission is hereby granted, free of charge, to any person obtaining a copy
%% of this software and associated documentation files (the "Software"), to deal
%% in the Software without restriction, including without limitation the rights
%% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
%% copies of the Software, and to permit persons to whom the Software is
%% furnished to do so, subject to the following conditions:
%%
%% The above copyright notice and this permission notice shall be included in all
%% copies or substantial portions of the Software.
%%
%% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
%% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
%% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
%% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
%% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
%% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
%% SOFTWARE.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{elteiktdk}[2023/04/10 ELTE FI TDK thesis template]

% Load document class
\LoadClassWithOptions{elteikthesis}[2023/04/10]
% ------------------------------

% ------------------------------
% Metadata
\NewDocumentCommand{\period}{m}{\newcommand{\periodname}{#1}}

\NewDocumentCommand{\coauthor}{m}{\newcommand{\coauthorname}{#1}}
\NewDocumentCommand{\codegree}{m}{\newcommand{\codegreename}{#1}}
\NewDocumentCommand{\coperiod}{m}{\newcommand{\coperiodname}{#1}}

\NewDocumentCommand{\cosupervisor}{m}{\newcommand{\cosupname}{#1}}
\NewDocumentCommand{\coaffiliation}{m}{\newcommand{\cosupaff}{#1}}
\RenewDocumentCommand{\extsupervisor}{m}{\newcommand{\cosupname}{#1}}
\RenewDocumentCommand{\extaffiliation}{m}{\newcommand{\cosupaff}{#1}}
% ------------------------------

% ------------------------------
% Translations
\DeclareDocumentCommand{\documentlang}{m}{
	\selectlanguage{#1}

	% Hungarian
	\ifthenelse{\equal{\detokenize{#1}}{\detokenize{hungarian}}}
	{
		\newcommand{\covertitle}{TDK-dolgozat}
		
		\newcommand{\authorlabel}{Szerző}
		\newcommand{\authorslabel}{Szerzők}
		\newcommand{\suplabel}{Témavezető}
		\newcommand{\supslabel}{Témavezetők}

		\newcommand{\deflabel}{Definíció}
		\newcommand{\theolabel}{Tétel}
		\newcommand{\remlabel}{Emlékeztető}
		\newcommand{\notelabel}{Megjegyzés}

		\newcommand{\codelabel}{forráskód}
		\newcommand{\alglabel}{Algoritmus}

		\newcommand{\biblabel}{Irodalomjegyzék}
		\newcommand{\lstalgorithmlabel}{Algoritmusjegyzék}
		\newcommand{\lstfigurelabel}{Ábrajegyzék}
		\newcommand{\lsttablelabel}{Táblázatjegyzék}
		\newcommand{\lstcodelabel}{Forráskódjegyzék}
		\newcommand{\lstnomencl}{Jelölésjegyzék}
		\newcommand{\todolabel}{Teendők listája}		
		\newcommand{\acklabel}{Köszönetnyilvánítás}
	}
    { % English
    	\newcommand{\covertitle}{TDK-thesis}
    	
		\newcommand{\authorlabel}{Author}
		\newcommand{\authorslabel}{Authors}
		\newcommand{\suplabel}{Supervisor}
		\newcommand{\supslabel}{Supervisors}

		\newcommand{\deflabel}{Definiton}
		\newcommand{\theolabel}{Theorem}
		\newcommand{\remlabel}{Remark}
		\newcommand{\notelabel}{Note}

		\newcommand{\codelabel}{Code}
		\newcommand{\alglabel}{Algorithm}

		\newcommand{\biblabel}{Bibliography}
		\newcommand{\lstalgorithmlabel}{List of Algorithms}
		\newcommand{\lstfigurelabel}{List of Figures}
		\newcommand{\lsttablelabel}{List of Tables}
		\newcommand{\lstcodelabel}{List of Codes}
		\newcommand{\lstnomencl}{List of Symbols}
		\newcommand{\todolabel}{Todo list}
		\newcommand{\acklabel}{Acknowledgements}
	}
}
% ------------------------------

% ------------------------------
% Use the Times font
\RequirePackage{mathptmx}
% ------------------------------

% ------------------------------
% Cover page
\newcommand{\makecover}{
	\phantomsection
	\thispagestyle{empty}
	\begin{center}
		\vspace*{\fill}

		{\Large \bf \covertitle}

		\vfill

		\ifdefined\coauthorname
		\begin{minipage}{0.45\textwidth}
			\begin{flushleft}
				{\large \authorname}
			\end{flushleft}
		\end{minipage}
		\begin{minipage}{0.45\textwidth}
			\begin{flushright}
				{\large \coauthorname}
			\end{flushright}
		\end{minipage}
		\else
		{\large \authorname}
		\fi

		\vspace*{\fill}
	\end{center}
}
% ------------------------------

% ------------------------------
% Title page
\renewcommand{\maketitle}{
	\begin{titlepage}

		\begin{center}
			{\bf \huge \thesistitle \par}
			\vspace{1.5cm}

			{\sc \LARGE \univname}\\[0.7cm]
			{\sc \Large \facname}\\[0.7cm]
			{\sc \large \deptname}\\[1.0cm]
			\includegraphics[width=0.3\textwidth]{\logofilename}\\[1.0cm]

			\ifdefined\coauthorname
			{\it \large \authorslabel:}\\[0.7cm]
			\begin{minipage}{0.45\textwidth}
				\begin{flushleft}
					{\large \authorname}\\
					\degreename\\
					\periodname
				\end{flushleft}
			\end{minipage}
			\begin{minipage}{0.45\textwidth}
				\begin{flushright}
					{\large \coauthorname}\\
					\codegreename\\
					\coperiodname
				\end{flushright}
			\end{minipage}
			\else
			{\it \large \authorlabel:}\\[0.7cm]
			{\large \authorname}\\
			\degreename\\
			\periodname
			\fi

			\vspace{1.5cm}

			\ifdefined\cosupname
			{\it \large \supslabel:}\\[0.7cm]
			\begin{minipage}{0.45\textwidth}
				\begin{flushleft}
					{\large \supname}\\
					\supaff
				\end{flushleft}
			\end{minipage}
			\begin{minipage}{0.45\textwidth}
				\begin{flushright}
					{\large \cosupname}\\
					\cosupaff
				\end{flushright}
			\end{minipage}
			\else
			{\it \large \suplabel:}\\[0.7cm]
			{\large \supname}\\
			\supaff
			\fi

			\vfill

			\cityname, \thesisyear

		\end{center}

	\end{titlepage}
}
% ------------------------------
