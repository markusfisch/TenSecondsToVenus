OBJECTS = *.html *.png *.svg
PRODUCTION = hhsw.de@ssh.strato.de:sites/TenSecondsToVenus/
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
