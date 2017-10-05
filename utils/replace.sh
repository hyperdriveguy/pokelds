#!/usr/bin/env bash
UNDERLINE = '\033[0;4m'
NOUNDERLINE = '\033[0m'

printf "Files matching text:\n"
grep --exclude-dir=".git" --exclude-dir="extras" --exclude='*.2bpp*' --exclude='*.bin' --exclude='*.md' --exclude-dir="utils" -rl "$1" .
printf "Replace text in files? <\033[0;4my\033[0mes/\033[0;4mN\033[0mo/\033[0;4mL\033[0mines> "
read yn
case $yn in
	[Yy]* ) grep --exclude-dir=".git" --exclude-dir="extras" --exclude='*.2bpp*' --exclude='*.bin' --exclude='*.md' --exclude-dir="utils" -rl "$1" . | xargs sed -i 's/'$1'/'$2'/g';;
	[Nn]* ) exit 0;;
	[Ll]* ) grep --exclude-dir=".git" --exclude-dir="extras" --exclude='*.2bpp*' --exclude='*.bin' --exclude='*.md' --exclude-dir="utils" -rn "$1" . | less;;
		* ) exit 1;;
esac
