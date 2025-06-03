\NeedsTeXFormat{LaTeX2e}
\LoadClass[12pt, a4paper, oneside]{book}
\renewcommand{\chaptername}{}

\usepackage[spanish]{babel}
\usepackage[acronym,shortcuts]{glossaries}
\usepackage[T1]{fontenc}
\usepackage{mathptmx} 
\usepackage[margin=2.45cm, top=2.45cm, bottom=2.45cm]{geometry} % Margins
\usepackage{setspace}
\usepackage{fancyhdr}
\usepackage{titlesec}
\usepackage{csquotes}
\onehalfspacing
\setstretch{1.5} % Espaciado 1.5
\usepackage{amsmath,amsthm,amssymb}
\usepackage{hyperref}
\sloppy
%\usepackage{booktabs}
%½ GRAFICOS
\usepackage{tikz}
\usetikzlibrary{arrows.meta, positioning}
\tikzset{
  box/.style={
    rectangle, draw=black, fill=blue!10,
    minimum width=3.5cm, minimum height=1cm,
    text centered, font=\small
  },
  arrow/.style={
    ->, thick
  }
}
\usepackage{emptypage}
\pagestyle{fancy} 
\usepackage{graphicx}
\usepackage[parfill]{parskip}
\usepackage{subfigure}
\usepackage{float}
\usepackage{enumitem}
%%warning
\setlength{\headheight}{14.5pt}



%%%%%%%% COMANDOS SIN ARGUMENTOS PARA PORTADA: MODIFICAR CON TUS DATOS------------------------
\newcommand{\titulo}{Título}
\newcommand{\subtitulo}{Subtítulo}
\newcommand{\autor}{Nombre}
\newcommand{\apellidos}{Apellidos}

\newcommand{\tutor}{Tutor}
\newcommand{\grado}{Grado}
%\newcommand{\especialidad}{}
\newcommand{\facultad}{Facultad}
\newcommand{\institucion}{institucion}
\newcommand{\logo}{images/toplap.png} % Asegúrate de tener el logo en esta ruta
\newcommand{\fecha}{Fecha 2024-25}

%%%%%%%%%%% ENCABEZADO Y PIE DE PÁGINA --------------------------------------------------------
\lhead{\titulo} %contenido del encabezado en la esquina izquierda de la página
\rhead{\institucion}  %contenido del encabezado en la esquina derecha de la página
\renewcommand{\headrulewidth}{0.5pt} %grosor de la línea horizontal que aparece debajo del encabezado
%\lfoot[\grado]{} %contenido del pie de página en la esquina izquierda
\renewcommand{\footrulewidth}{0.5pt} %grosor de la línea horizontal que aparece encima del pie de página
%%%%%%%%%%-------------------------------------------------------------------------------


%%%%%%%%%% INDICES -----------------------------------------------------------------
\newcommand*{\indiceCodigos}[0]{\lstlistoflistings}
\newcommand*{\indiceFiguras}[0]{\listoffigures}
\newcommand*{\indiceTablas}[0]{\listoftables}
\newcommand*{\indiceTFG}[0]{
%\abstractT
    \addtocontents{toc}{\hfill \textbf{Página} \par}
\tableofcontents
\newpage
}


%%%%%%% PARA CÓDIGO------------------------------------------------------------------------
\usepackage[most]{tcolorbox}
\usepackage{verbatim}
\usepackage{listings}
\renewcommand{\lstlistingname}{Código}  
\renewcommand{\lstlistlistingname}{Códigos} 
\usepackage[scaled=.95]{inconsolata}
\tcbuselibrary{listings, breakable, skins}
\definecolor{bg}{rgb}{0.85,0.85,0.85}


\definecolor{codegreen}{rgb}{0,0.6,0} % Crear tu propio color
\definecolor{codegray}{rgb}{0.5,0.5,0.5}

%% Definir una configuración
\lstdefinestyle{mystyle}{
    backgroundcolor=\color{white},
    commentstyle=\color{codegreen}, % Usar tu color
    keywordstyle=\color{blue},
    numberstyle=\footnotesize\color{codegray},
    stringstyle=\color{codepurple},
    basicstyle=\footnotesize \ttfamily,
    stringstyle=\rmfamily,
    numbers=left,
    numberstyle=\scriptsize,
    stepnumber=1,
    numbersep=8pt,
    captionpos=bottom,    
    breaklines=true,                                    
    keepspaces=true,                 
    numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2
}
\lstset{
    basicstyle=\ttfamily\footnotesize, 
    breaklines=true, 
    breakatwhitespace=true, 
    prebreak=\textbackslash,
    postbreak=\mbox{\textcolor{red}{$\hookrightarrow$}\space},
}
% Establecerla como configuración predeterminada
\lstset{style=mystyle}

% Configuración específica para código en bash
\lstdefinestyle{bash}{
    basicstyle=\scriptsize \ttfamily,
    keywordstyle=\bfseries\color{blue},
    stringstyle= \color{orange},
    language=bash,
    otherkeywords ={grep, count, END, if, print, sort, uniq, substr},
    morecomment=[s]{"}{"},
    morestring=[d]{}, 
}

% Configuración específica para código en JS
\lstdefinelanguage{JavaScript}{
    keywords={break, case, catch, class, const, continue, debugger, default, delete, do, else, export, extends, finally, for, function, if, import, in, instanceof, let, new, return, super, switch, this, throw, try, typeof, var, void, while, with, yield, async, await, decay, note, octave, Q, frequency, attack},
    sensitive=true,
    morecomment=[l]{//},
    morecomment=[s]{/*}{*/},
    morestring=[b]",
    morestring=[b]',
    stringstyle =\color{orange}
}


% Configuración específica para Smalltalk (SuperCollider)
\lstdefinelanguage{Smalltalk}{
    keywords={self, super, true, false, nil},
    sensitive=true,
    morecomment=[l]{//},
    morecomment=[s]{"}{"}, % Comentarios delimitados por ""
    morestring=[d]',      % Cadenas delimitadas por '
    morestring=[b]",      % Cadenas delimitadas por "
}

% Configuración específica para código en Ruby
\lstdefinestyle{RubyStyle}{
    backgroundcolor=\color{white},
    language=Ruby,
    numbers=left,
    stepnumber=1,
    tabsize=2,
    showstringspaces=false,
    stringstyle=\color{orange},
    otherkeywords={times, play, sleep},
    frame=single
}

% Configuración específica para gibber basado en javaScript
\lstdefinestyle{gibber}{
    backgroundcolor=\color{white},
    language=JavaScript,
    morekeywords={let, const, async, await, def},
    frame=single
}


%%%%%  BIBLIOGRAFÍA-------------------------------------------
\usepackage[style=apa, backend=biber]{biblatex} 
\addbibresource{bibliografia.bib} % Archivo de referencias
% Configuración de mapeo para español en APA
\DeclareLanguageMapping{spanish}{spanish-apa}
% Comando personalizado para la bibliografía
\newcommand{\biblioTFG}[1]{
    \cleardoublepage % Salto a nueva página
    \phantomsection  % Crear enlace para PDF
    \addcontentsline{toc}{chapter}{Bibliografía}
    \printbibliography % Imprimir la bibliografía
    \sloppy
}


%%%%% GLOSARIO
\usepackage{glossaries}
\let\oldgls=\gls
\renewcommand{\gls}[1]{{\hypersetup{linkbordercolor=blue}%
  \oldgls{#1}}}%
\makeglossaries
\newcommand{\glosarioTFG}{
    \cleardoublepage
    \phantomsection
    \addcontentsline{toc}{chapter}{Glosario}
   \printglossary[title={Glosario de términos}, toctitle=Glosario]
}



%%% PARTE 2 ANEXOS
\newcommand{\parte}[2]{
\part*{Parte #1\vspace{1cm}\\#2} \addcontentsline{toc}{part}{\protect\numberline{#1}\hspace{-3mm}#2} 
}