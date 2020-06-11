FAVICON_PATH=./static/images/favicon

favicon:
	convert -resize x16 -gravity center -crop 16x16+0+0 -flatten -colors 256 $(FAVICON_PATH)/favicon-input.png $(FAVICON_PATH)/favicon-16x16.ico
	convert -resize x32 -gravity center -crop 32x32+0+0 -flatten -colors 256 $(FAVICON_PATH)/favicon-input.png $(FAVICON_PATH)/favicon-32x32.ico
	convert $(FAVICON_PATH)/favicon-16x16.ico $(FAVICON_PATH)/favicon-32x32.ico $(FAVICON_PATH)/favicon.ico

