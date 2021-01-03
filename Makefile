.ONESHELL:

ZIP_URL = http://dtm.moi.gov.tw/不分幅_全台及澎湖.zip

data.zip:
	<<<"$(ZIP_URL)" perl -lpe 's/([^A-Za-z0-9.\/:])/sprintf("%%%02X", ord($$1))/seg' |\
	xargs curl -Lo $@

dem_20m.tif: data.zip
	unzip -p $< $@ >$@

dem_20m_EPSG3857.tif: dem_20m.tif
	gdalwarp \
		-t_srs EPSG:3857 \
		-dstnodata None  \
		-co	 TILED=YES \
		-co COMPRESS=DEFLATE \
		-co BIGTIFF=IF_NEEDED \
		$< $@

# pip install rio-rgbify
dem_20m_RGB.tif: dem_20m_EPSG3857.tif
	rio rgbify -b -10000 -i 0.1 $< $@

# Need GDAL >3.2.0 for xyz options
tiles/: dem_20m_RGB.tif
	gdal2tiles.py --xyz --zoom=7-12 -r=near -s=EPSG:3857 --processes=8 $< $@
