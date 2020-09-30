#!/bin/execlineb -WS0

pipeline { neofetch ${@} }
	pipeline { sed "/Terminal/i\\
WM: rio" }
	column -ts :
