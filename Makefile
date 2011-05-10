GREP=/usr/bin/grep
EVENT_STRING="event_command = /Users/${USER}/.config/pianobar/filter"
CONF=/Users/${USER}/.config/pianobar/config

ALL=install

install:
		cp filter /Users/${USER}/.config/pianobar/

config:
	if [ `$(GREP) -c $(EVENT_STRING) $(CONF)` -eq 0 ]; then \
	  echo $(EVENT_STRING) >> $(CONF); \
  fi;
