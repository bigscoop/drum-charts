\version "2.18.2"



% for i, current_file in enumerate(list):
<%include file="${current_file}" args="section='body'"/>
\bookpart {

% if i > 1:
\paper { bookTitleMarkup = \markup { \vspace #2 } }
% endif

<%include file="${current_file}" args="section='header'"/>
<%include file="${current_file}" args="section='bookpart-contents'"/>
}
% endfor
