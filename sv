#!/bin/execlineb -W
# sv(8) wrapper
# BUGS: sv(8) has options

multisubstitute {
	importas -i signal 1
	importas -i HOME HOME
}
shift
elgetpositionals -P1

forx s { ${@} }
	importas -iu s s
	ifelse { s6-test -L ${HOME}/service/${s} } {
		/bin/sv -- ${signal} ${HOME}/service/${s}
	}
		s6-sudo -- /etc/sv/s6-sudo-sv/sock
			-- ${signal} ${s}
