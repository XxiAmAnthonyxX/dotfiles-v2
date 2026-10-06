function y --description "Yazi file manager (cd on quit)"
	set -l tmp (mktemp -t "yazi-cwd.XXXXXX")
	command yazi $argv --cwd-file="$tmp"

	if set -l cwd (command cat -- "$tmp"); and test -n "$cwd"; and test -d "$cwd"
		and test "$cwd" != "$PWD"
		builtin cd -- "$cwd"
	end

	command rm -f -- "$tmp"
end
