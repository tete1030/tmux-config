# Prints tmux session info.
# Assuems that [ -n "$TMUX"].

run_segment() {
	tmux display-message -p '#{=1:session_name}:#I.#P'
	return 0
}
