HTDOCS = htdocs
SPRITES = sprites
WEBROOT = hhsw.de@ssh.strato.de:sites/TenSecondsToVenus/
OPTIONS = \
	--recursive \
	--links \
	--update \
	--delete-after \
	--times \
	--compress

upload: $(HTDOCS)/atlas.png
	rsync $(OPTIONS) \
		$(HTDOCS)/* \
		$(WEBROOT)

$(HTDOCS)/atlas.png: $(SPRITES)
	cd $(HTDOCS) && mkatlas ../$(SPRITES)/* | patchatlas index.html
