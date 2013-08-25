OBJECTS = img *.html
PRODUCTION = hhsw.de@ssh.strato.de:sites/proto/ld27/
OPTIONS = --recursive \
	--links \
	--update \
	--delete-after \
	--times \
	--compress

production:
	rsync $(OPTIONS) \
		$(OBJECTS) \
		$(PRODUCTION)
