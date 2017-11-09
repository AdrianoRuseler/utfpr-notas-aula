%%
%% Customizações do abnTeX2 (http://abnTeX2.googlecode.com) 
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is Adriano Ruseler, ruseler@utfpr.edu.br
%%
%% Further information about abnTeX2 are available on http://abntex2.googlecode.com/
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{abntex2-notas-aula}[2017/11/09 v1.0 Modelo para notas de aula baseado em abnTeX2]

%
% Repassa todos os parametros a classe abntex2, 
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abntex2}%
}
\ProcessOptions\relax
\LoadClass{abntex2}



\RequirePackage{caption}
\RequirePackage{layouts}

% Fonte 'Times New Roman'
\RequirePackage{mathptmx}

\RequirePackage{hyperref}
\RequirePackage{amsthm}


\RequirePackage{indentfirst}		% Indenta o primeiro parágrafo de cada seção.
\RequirePackage{nomencl} 			% Lista de simbolos
\RequirePackage{color}				% Controle das cores
\RequirePackage{graphicx}			% Inclusão de gráficos
\RequirePackage{microtype} 			% para melhorias de justificação
\RequirePackage{datetime}           % Tempo e hora.
\RequirePackage{epstopdf}

\RequirePackage{listings}
\RequirePackage{amsmath}		
\RequirePackage{amssymb}
\RequirePackage{mathrsfs}
\RequirePackage{booktabs} % Para Tabelas
\RequirePackage{subfig}  % permite ter subfiguras
\RequirePackage{float}
\RequirePackage{tikz,pgfplots}
\RequirePackage{pdfpages}
\RequirePackage{longtable}

% ---



% ---
\newcommand{\sgn}{\mathop{\mathrm{sgn}}}
\DeclareMathOperator{\deriv}{d}		



\newcounter{NumberInTable}
\newcommand{\LTNUM}{\stepcounter{NumberInTable}{(\theNumberInTable)}}

\newcommand{\Laplace}[1]{\ensuremath{\mathcal{L}{\left[#1\right]}}}
\newcommand{\InvLap}[1]{\ensuremath{\mathcal{L}^{-1}{\left[#1\right]}}}


% Definição de cores
\definecolor{mygreen}{rgb}{0,0.6,0}
\definecolor{mygray}{rgb}{0.5,0.5,0.5}
\definecolor{mymauve}{rgb}{0.58,0,0.82}


\lstset{ %
	aboveskip=3mm,
	belowskip=3mm,
	backgroundcolor=\color{white},   % choose the background color; you must add \usepackage{color} or \usepackage{xcolor}
	basicstyle={\small\ttfamily},        % the size of the fonts that are used for the code
	breakatwhitespace=true,         % sets if automatic breaks should only happen at whitespace
	breaklines=true,                 % sets automatic line breaking
	captionpos=t,                    % sets the caption-position to bottom
	commentstyle=\color{mygreen},    % comment style
	columns=flexible,
	deletekeywords={...},            % if you want to delete keywords from the given language
	escapeinside={\%*}{*)},          % if you want to add LaTeX within your code
	extendedchars=true,              % lets you use non-ASCII characters; for 8-bits encodings only, does not work with UTF-8
	frame=tb,                        % adds a frame around the code
	keepspaces=true,                 % keeps spaces in text, useful for keeping indentation of code (possibly needs columns=flexible)
	keywordstyle=\color{blue},       % keyword style
	language=Matlab,                 % the language of the code
	morekeywords={*,...},            % if you want to add more keywords to the set
	numbers=none,                    % where to put the line-numbers; possible values are (none, left, right)
	numbersep=5pt,                   % how far the line-numbers are from the code
	numberstyle=\tiny\color{mygray}, % the style that is used for the line-numbers
	rulecolor=\color{black},         % if not set, the frame-color may be changed on line-breaks within not-black text (e.g. comments (green here))
	showspaces=false,                % show spaces everywhere adding particular underscores; it overrides 'showstringspaces'
	showstringspaces=false,          % underline spaces within strings only
	showtabs=false,                  % show tabs within strings adding particular underscores
	stepnumber=2,                    % the step between two line-numbers. If it's 1, each line will be numbered
	stringstyle=\color{mymauve},     % string literal style
	tabsize=3,                       % sets default tabsize to 3 spaces
	texcl=true,						 % Permite o uso de acentuação no código
	title=\lstname                   % show the filename of files included with \lstinputlisting; also try caption instead of title
}

%By default, listings does not support multi-byte encoding for source code. The extendedchar option only works for 8-bits encodings such as latin1.
%
%To handle UTF-8, you should tell listings how to interpret the special characters by defining them like so
\lstset{literate=	
	{á}{{\'a}}1 {é}{{\'e}}1 {í}{{\'i}}1 {ó}{{\'o}}1 {ú}{{\'u}}1
	{Á}{{\'A}}1 {É}{{\'E}}1 {Í}{{\'I}}1 {Ó}{{\'O}}1 {Ú}{{\'U}}1
	{à}{{\`a}}1 {è}{{\`e}}1 {ì}{{\`i}}1 {ò}{{\`o}}1 {ù}{{\`u}}1
	{À}{{\`A}}1 {È}{{\'E}}1 {Ì}{{\`I}}1 {Ò}{{\`O}}1 {Ù}{{\`U}}1
	{ä}{{\"a}}1 {ë}{{\"e}}1 {ï}{{\"i}}1 {ö}{{\"o}}1 {ü}{{\"u}}1
	{Ä}{{\"A}}1 {Ë}{{\"E}}1 {Ï}{{\"I}}1 {Ö}{{\"O}}1 {Ü}{{\"U}}1
	{â}{{\^a}}1 {ê}{{\^e}}1 {î}{{\^i}}1 {ô}{{\^o}}1 {û}{{\^u}}1
	{Â}{{\^A}}1 {Ê}{{\^E}}1 {Î}{{\^I}}1 {Ô}{{\^O}}1 {Û}{{\^U}}1	 
	{œ}{{\oe}}1 {Œ}{{\OE}}1 {æ}{{\ae}}1 {Æ}{{\AE}}1 {ß}{{\ss}}1
	{u}{{\H{u}}}1 {U}{{\H{U}}}1 {o}{{\H{o}}}1 {O}{{\H{O}}}1
	{ç}{{\c c}}1 {Ç}{{\c C}}1 {ø}{{\o}}1 {å}{{\r a}}1 {Å}{{\r A}}1
	{€}{{\EUR}}1 {£}{{\pounds}}1 {ã}{{\~a}}1 {õ}{{\~o}}1 {Ã}{{\~A}}1 {Õ}{{\~O}}1	
}

\renewcommand{\lstlistingname}{Código--fonte }% Listing -> Algorithm
\renewcommand{\lstlistlistingname}{Lista de códigos--fonte}% List of Listings -> List of Algorithms



% ---
\newtheorem{axioma}{Axioma}[chapter]
\newtheorem{postulado}{Postulado}[chapter]
\newtheorem{teorema}{Teorema}[chapter]
\newtheorem{conjectura}{Conjectura}[chapter]
\newtheorem{corolario}{Coral\'ario}[teorema]
\newtheorem{lema}[teorema]{Lema}
\newtheorem{proposicao}{Proposi\c{c}\~ao}[teorema]


\theoremstyle{definition} % Commonly used in definitions, conditions, problems and examples.
\newtheorem{definicao}{Defini\c{c}\~ao}[section]
\newtheorem{exemplo}{Exemplo}[section]
\newtheorem{exercicio}{Exerc\'icio}[section]
\newtheorem{condicao}{Condi\c{c}\~ao}[section]

\theoremstyle{remark}
\newtheorem*{observacao}{Observa\c{c}\~ao}


% \def\<type>autorefname{<new name>}
\renewcommand{\tableautorefname}{Tabela}
\renewcommand{\figureautorefname}{Figura}
\renewcommand{\chapterautorefname}{Cap\'itulo}
\renewcommand{\equationautorefname}{Equa\c{c}\~ao}


\renewcommand{\familydefault}{cmr} % Fonte padrão utilizada no texto
\renewcommand{\rmdefault}{cmr} % Selects a roman (i.e., serifed) font family
\renewcommand{\sfdefault}{cmss} % Selects a sans serif font family
\renewcommand{\ttdefault}{cmtt} % Selects a monospaced (“typewriter”) font family


\renewcommand{\ABNTEXpartfont}{\usefont{T1}{cmr}{bx}{n}} % Apendices, anexos...
%\renewcommand{\ABNTEXpartfontsize}{\fontsize{15pt}{18pt}}
\renewcommand{\ABNTEXchapterfont}{\usefont{T1}{cmr}{bx}{n}}
%\renewcommand{\ABNTEXchapterfontsize}{\fontsize{10.5pt}{12pt}}
\renewcommand{\ABNTEXsectionfont}{\usefont{T1}{cmr}{m}{n}}
%\renewcommand{\ABNTEXsectionfontsize}{\fontsize{10.5pt}{12pt}}
\renewcommand{\ABNTEXsubsectionfont}{\usefont{T1}{cmr}{b}{n}}
%\renewcommand{\ABNTEXsubsectionfontsize}{\fontsize{10.5pt}{12pt}}
\renewcommand{\ABNTEXsubsubsectionfont}{\usefont{T1}{cmr}{m}{n}}
%\renewcommand{\ABNTEXsubsubsectionfontsize}{\fontsize{10.5pt}{12pt}}
\renewcommand{\ABNTEXsubsubsubsectionfont}{\usefont{T1}{cmr}{m}{it}}
%\renewcommand{\ABNTEXsubsubsubsectionfontsize}{\fontsize{10.5pt}{12pt}}


% Comandos de dados - Universidade
\providecommand{\imprimiruniversidade}{}
\newcommand{\universidade}[1]{\renewcommand{\imprimiruniversidade}{#1}}

% Comandos de dados - SiglaInstituição
\providecommand{\imprimirsigla}{}
\newcommand{\sigla}[1]{\renewcommand{\imprimirsigla}{#1}}

% Comandos de dados - Centro
\providecommand{\imprimircentro}{}
\newcommand{\centro}[1]{\renewcommand{\imprimircentro}{#1}}

% Comandos de dados - Disciplina
\providecommand{\imprimirdisciplina}{}
\newcommand{\disciplina}[1]{\renewcommand{\imprimirdisciplina}{#1}}

% Comandos de dados - Professor
\providecommand{\imprimirprofessor}{}
\newcommand{\professor}[1]{\renewcommand{\imprimirprofessor}{#1}}

% Comandos de dados - Departamento
\providecommand{\imprimirdepartamento}{}
\newcommand{\departamento}[1]{\renewcommand{\imprimirdepartamento}{#1}}

% Comandos de dados - Programa
\providecommand{\imprimirprograma}{}
\newcommand{\programa}[1]{\renewcommand{\imprimirprograma}{#1}}

% Comandos de dados - Curso
\providecommand{\imprimircurso}{}
\newcommand{\curso}[1]{\renewcommand{\imprimircurso}{#1}}

% Comandos de dados - Aula
\providecommand{\imprimiraula}{}
\newcommand{\aula}[1]{\renewcommand{\imprimiraula}{#1}}


% Comandos de dados - Turma
\providecommand{\imprimirturma}{}
\newcommand{\turma}[1]{\renewcommand{\imprimirturma}{#1}}

% Comandos de dados - Laboratorio
\providecommand{\imprimirlaboratorio}{}
\newcommand{\laboratorio}[1]{\renewcommand{\imprimirlaboratorio}{#1}}

% Comandos de dados - Semestre
\providecommand{\imprimirsemestre}{}
\newcommand{\semestre}[1]{\renewcommand{\imprimirsemestre}{#1}}

% Comandos de dados - Código da disciplina
\providecommand{\imprimircodigo}{}
\newcommand{\codigo}[1]{\renewcommand{\imprimircodigo}{#1}}

% Comandos de dados - email
\providecommand{\imprimiremail}{}
\newcommand{\email}[1]{\renewcommand{\imprimiremail}{#1}}

% Comandos de dados - telefone
\providecommand{\imprimirtelefone}{}
\newcommand{\telefone}[1]{\renewcommand{\imprimirtelefone}{#1}}

% Comandos de dados - celular
\providecommand{\imprimircelular}{}
\newcommand{\celular}[1]{\renewcommand{\imprimircelular}{#1}}

% Comandos de dados - website
\providecommand{\imprimirwebsite}{}
\newcommand{\website}[1]{\renewcommand{\imprimirwebsite}{#1}}

% Comandos de dados - campus
\providecommand{\imprimircampus}{}
\newcommand{\campus}[1]{\renewcommand{\imprimircampus}{#1}}

% Comandos de dados - sala
\providecommand{\imprimirsala}{}
\newcommand{\sala}[1]{\renewcommand{\imprimirsala}{#1}}

% Comandos de dados - horário
\providecommand{\imprimirhorario}{}
\newcommand{\horario}[1]{\renewcommand{\imprimirhorario}{#1}}

% Comandos de dados - Ementa
\providecommand{\imprimirementa}{}
\newcommand{\ementa}[1]{\renewcommand{\imprimirementa}{#1}}

% Comandos de dados - Lattes
\providecommand{\imprimirlattes}{}
\newcommand{\lattes}[1]{\renewcommand{\imprimirlattes}{#1}}

% Comandos de dados - Duração
\providecommand{\imprimirduracao}{}
\newcommand{\duracao}[1]{\renewcommand{\imprimirduracao}{#1}}

% Comandos de dados - Créditos
\providecommand{\imprimircreditos}{}
\newcommand{\creditos}[1]{\renewcommand{\imprimircreditos}{#1}}




% ------------------------------------------------------------------------
% ------------------------------------------------------------------------
% estilo de cabeçalhos e rodapés
% ------------------------------------------------------------------------
% ------------------------------------------------------------------------


%%criar um novo 
\makepagestyle{notasUTFPR}

%%cabeçalhos
\makeevenhead{notasUTFPR}
{\imprimircodigo\hskip.1cm--\hskip.1cm\imprimirdisciplina} %%pagina par
{}
{UTFPR--CT}
\makeoddhead{notasUTFPR} %%pagina ímpar ou com oneside
{\imprimircodigo\hskip.1cm--\hskip.1cm\imprimirdisciplina}
{}
{UTFPR--CT}
\makeheadrule{notasUTFPR}{\textwidth}{\normalrulethickness} %linha
%\makefootrule{notasUTFPR}{\textwidth}{\normalrulethickness}{1pt}

%% rodapé
\makeevenfoot{notasUTFPR} %%pagina par
{\imprimirautor}
{}
{\thelastpage}
\makeoddfoot{notasUTFPR} %%pagina ímpar ou com oneside
{\imprimirautor}
{}
{\thelastpage}


%\textsc{\Large \imprimircentro }\\[0.5cm] % Major heading such as course name
%\textsc{\large \imprimirdepartamento}\\[1.5cm] % Minor heading such as course title



% ------------------------------------------------------------------------
% ------------------------------------------------------------------------
% IMPRESSOES PADROES 
% ------------------------------------------------------------------------
% ------------------------------------------------------------------------

% ---
% Impressão da Capa
\newcommand{\imprimircapaUTFPR}{%
	
%titlepage
\thispagestyle{empty}
\newcommand{\HRule}{\rule{\linewidth}{0.5mm}} % Defines a new command for the horizontal lines, change thickness here

%\center

\begin{center}  % Center everything on the page	

%----------------------------------------------------------------------------------------
%	LOGO SECTION
%----------------------------------------------------------------------------------------

% Upper part of the page. The '~' is needed because \\
% only works if a paragraph has started.
\includegraphics[width=0.5\textwidth]{Logos/logo-UTFPR.pdf}~\\[1cm]

%----------------------------------------------------------------------------------------
%	HEADING SECTIONS
%----------------------------------------------------------------------------------------

\textsc{\huge Universidade Tecnológica}\\[0.5cm] % Name of your university/college
\textsc{\huge Federal do Paraná}\\[1.5cm] % Name of your university/college
%\textsc{\Large Engenharia Elétrica}\\[0.5cm] % Major heading such as course name
%\textsc{\large Processamento Eletrônico de Energia}\\[1.5cm] % Minor heading such as course title

%----------------------------------------------------------------------------------------
%	TITLE SECTION
%----------------------------------------------------------------------------------------

\HRule \\[0.4cm]
{ \Huge \bfseries \imprimirtipotrabalho} \\[0.4cm] % Title of your document
{ \huge \bfseries  \imprimircodigo -- \imprimirdisciplina} \\[0.4cm] % Title of your document
\HRule \\[2.5cm]

%----------------------------------------------------------------------------------------
%	TOPIC SECTION
%----------------------------------------------------------------------------------------

{ \Large \bfseries \imprimirtitulo} \\[0.5cm] % Title of your document

\emph{\imprimirpreambulo}\\[2.0cm]


%----------------------------------------------------------------------------------------
%	AUTHOR SECTION
%----------------------------------------------------------------------------------------

\begin{minipage}{0.5\textwidth}
	\begin{flushleft} \large
		\emph{Autor:}\\
		\imprimirautor % Your name
	\end{flushleft}
\end{minipage}
~
\begin{minipage}{0.3\textwidth}
	\begin{flushright} \large
		\emph{Semestre:} \\
		\imprimirsemestre
	\end{flushright}
\end{minipage}\\[2cm]

% If you don't want a supervisor, uncomment the two lines below and remove the section above
%\Large \emph{Author:}\\
%John \textsc{Smith}\\[2cm] % Your name

%----------------------------------------------------------------------------------------
%	DATE SECTION
%----------------------------------------------------------------------------------------

{\large \imprimirlocal, \imprimirdata.}\\[3cm] % Date, change the \today to a set date if you want to be precise

%----------------------------------------------------------------------------------------

\vfill % Fill the rest of the page with whitespace
\end{center}

}
% ---



\makeatother