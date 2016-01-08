%%{ <%page args='section'/> %%}
% if section=='version':
\version "2.18.2"
% endif

% if section=='body':
\paper {
	first-page-number = #7
	print-page-number = ##t
	print-first-page-number = ##t
	oddHeaderMarkup = \markup {
		\fill-line \smaller \italic {
			\fromproperty #' header:title
			\fromproperty #' header:subtitle
		}
	}
	evenHeaderMarkup = \oddHeaderMarkup

	oddFooterMarkup = \markup {
		\fill-line {
			\on-the-fly \print-page-number-check-first
				\fromproperty #'page:page-number-string
		}
	}
	evenFooterMarkup = \oddFooterMarkup
	tocItemMarkup = \tocItemWithDotsMarkup
}
\markuplist \table-of-contents
\pageBreak
% endif
