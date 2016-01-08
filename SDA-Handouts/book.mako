\version "2.18.2"

\pointAndClickOff

% for i, current_file in enumerate(list):
%% ${current_file}
<%include file="${current_file}" args="section='body'"/>
\bookpart {

<%include file="${current_file}" args="section='header'"/>
<%include file="${current_file}" args="section='bookpart-contents'"/>
}
% endfor
