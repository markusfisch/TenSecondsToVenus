OBJECTS = *.html *.png *.svg
PRODUCTION = hhsw.de@ssh.strato.de:sites/TenSecondsToVenus/
OPTIONS = --recursive \
	--links \
	--update \
	--delete-after \
	--times \
	--compress

production: atlas
	rsync $(OPTIONS) \
		$(OBJECTS) \
		$(PRODUCTION)

atlas:
	PREFER_SMALLER=1 mkatlas svg/img/* | patchatlas index.html
