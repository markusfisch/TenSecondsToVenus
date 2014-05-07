OBJECTS = *.html *.png *.ico
PRODUCTION = hhsw.de@ssh.strato.de:sites/TenSecondsToVenus/
OPTIONS = --recursive \
	--links \
	--update \
	--delete-after \
	--times \
	--compress

production: atlas.png
	rsync $(OPTIONS) \
		$(OBJECTS) \
		$(PRODUCTION)

atlas.png: svg/img/*
	mkatlas svg/img/* | patchatlas index.html
