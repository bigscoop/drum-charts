\version "2.18.2"



% for i, current_file in enumerate(list):
%% ${current_file}
<%include file="${current_file}" args="section='body'"/>
\bookpart {

% if not current_file.endswith("01.ly"):
\paper { bookTitleMarkup = \markup { \vspace #2 } }
% endif

<%include file="${current_file}" args="section='header'"/>
<%include file="${current_file}" args="section='bookpart-contents'"/>
}
% endfor
