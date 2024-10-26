% Especifica la versión de LaTeX que se requiere
\NeedsTeXFormat{LaTeX2e}

% Proporciona la clase y su fecha de versión
\ProvidesClass{ipn}

% Cargar la clase base de LaTeX con tamaño de fuente de 12 puntos y diseño a dos caras
% Si quisieramos que no hubiera páginas en blanco en las preeliminares añadimos el parametro openany
\LoadClass[12pt, twoside, openany]{book}

% Paquetes requeridos para la codificación de entrada, colores, geometría de página y ajuste de cuadros
\RequirePackage[utf8]{inputenc}
\RequirePackage{xcolor}
\RequirePackage{geometry}
\RequirePackage[export]{adjustbox}
\RequirePackage{titlesec}

% Definición de colores personalizados usando el modelo RGB
\definecolor{pantone_222_c}{RGB}{108, 29, 69}
\definecolor{black1}{RGB}{17, 17, 14}
\definecolor{gray1}{RGB}{54, 69, 79}

% Configuración de la geometría de la página
\geometry{
    a4paper, % Tamaño del papel
    left=4cm, % Margen izquierdo
    right=1in, % Margen derecho
    top=1in, % Margen superior
    bottom=1in % Margen inferior
}

% Definición de comandos personalizados para almacenar información de la tesis
\def\schoolname#1{\def\@schoolname{#1}} % Nombre de la escuela
\def\degree#1{\def\@degree{#1}} % Grado a obtener
\def\advisor#1{\def\@advisor{#1}} % Nombre del asesor
\def\coadvisor#1{\def\@coadvisor{#1}} % Nombre del coasesor (opcional)
\def\academicyear#1{\def\@academicyear{#1}} % Año académico
\def\projectnumber#1{\def\@projectnumber{#1}} % Número del proyecto

% Redefinición del comando \maketitle para crear la portada de la tesis
\renewcommand{\maketitle}{
\begin{titlepage}
    \centering
    \begin{adjustbox}{max width=1.2\linewidth, right}
        % Minipágina izquierda para logotipos y barras de color
        \begin{minipage}[c][0.99\textheight][t]{0.13\textwidth}
            \centering
            \includegraphics[width=\linewidth]{img/EscudoIPN.png} \\ % Escudo del IPN
            \vspace{5mm}
            \hskip3pt
            {\color{pantone_222_c} \vrule width1.5pt height0.70\textheight} % Barra color pantone_222_c
            \hskip5pt
            {\color{black1} \vrule width2.5pt height0.70\textheight} % Barra color negro
            \hskip3pt
            {\color{pantone_222_c} \vrule width1.5pt height0.70\textheight} % Barra color pantone_222_c
            \vspace{3mm}
            \vspace{1pt}
            \centerline{\includegraphics[width=1.9\linewidth]{img/EscudoESCOM.png}} % Escudo de ESCOM
        \end{minipage}
        % Minipágina derecha para el contenido textual de la portada
        \begin{minipage}[c][0.99\textheight][t]{0.95\textwidth}
            \centering
            {\fontsize{22}{22}\selectfont\textsc{Instituto Politécnico Nacional\\}} % Nombre del IPN
            \vspace{10pt}
            \begin{minipage}[t]{0.1\textwidth}
            \end{minipage}
            \hfill
            % Líneas de separación de color
            \begin{minipage}[t]{0.9\textwidth}
                {\color{pantone_222_c} \hrule width\textwidth height2.5pt}
            \end{minipage}
            \begin{minipage}[t]{0.9\textwidth}
                {\color{black1} \hrule width\textwidth height2.5pt}
            \end{minipage}
            \begin{minipage}[t]{0.1\textwidth}
            \end{minipage}
            
            \vspace{20pt}
            % Nombre de la escuela
            {\fontsize{16}{16}\selectfont\textsc{\@schoolname\\}}

            \vspace{60pt}
            % Título del trabajo
            {\fontsize{25}{20}\selectfont Trabajo Terminal I\\}
            \vspace{60pt}
            {\fontsize{16}{16}\selectfont\textbf{``\@title''\\}}
            \vspace{10pt} % Espacio entre el título y el número del proyecto
            % Número del proyecto
            {\fontsize{14}{14}\selectfont\textbf{\@projectnumber\\}}

            \vspace{60pt}
            % Información del grado a obtener
            {\fontsize{14}{14}\selectfont\textsc{Que para obtener el grado de:\\}}
            \vspace{10pt}
            {\fontsize{14}{14}\selectfont\textbf{\@degree\\}}

            \vspace{60pt}
            % Nombre del autor
            {\fontsize{14}{14}\selectfont\textsc{Presenta:\\}}
            \vspace{10pt}
            {\fontsize{14}{14}\selectfont\textbf{\@author\\}}

            \vspace{60pt}
            % Nombres de los directores
            {\fontsize{14}{14}\selectfont\textsc{Directores:\\}}
            \vspace{10pt}
            {\fontsize{14}{14}\selectfont\textbf{\@advisor}\\}
            \vspace{5pt}
            {\fontsize{14}{14}\selectfont\textbf{\@coadvisor}}

            \vfill
            % Información de la ubicación y año académico
            {\fontsize{12}{12}\selectfont Ciudad de México\\}
            {\fontsize{12}{12}\selectfont \@academicyear\\}
            \vspace{40pt}
        \end{minipage}
    \end{adjustbox}
\end{titlepage}
}

% Formato de los capítulos
\titleformat{\chapter}[display]
{\bfseries\Large}
{
    \filright
    \textsc{\textcolor{pantone_222_c}{
        \MakeUppercase{\chaptertitlename}
        \Huge
        \thechapter
    }}
}
{1ex}
{\Huge}
[\vspace{1ex}\titlerule]
