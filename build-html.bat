@echo off
echo "Prerequisite: The raw wiki page markdown must have been copied to proposal.md"
pandoc --self-contained --css=styles.css --title-prefix="Standard Library Concepts" -f markdown_github+pipe_tables -t html -o proposal.temp proposal.md
sed "s:%%!{:<em>:g;s:}!%%:</em>:g" <proposal.temp >proposal-1.temp
rem html_section_numbers --initial=24.8.8 <proposal-1.temp >proposal-2.temp
rem html_toc -x proposal-2.temp toc.html
rem html_include_files proposal-2.temp proposal.html
del proposal.html
ren proposal-1.temp proposal.html
proposal.html
