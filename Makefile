install:
	cp cloudshell /bin
	cp cloudshell.service /lib/systemd/system

uninstall:
	rm /bin/cloudshell
	rm /lib/systemd/system/cloudshell.service
