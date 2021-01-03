# terrain-rgb

使用[內政部20公尺網格數值地形模型資料](https://data.gov.tw/dataset/35430)製成點陣圖磚(raster tiles)服務，圖磚格式為[Mapbox Terrain-RGB](https://docs.mapbox.com/help/troubleshooting/access-elevation-data/)，用以記載高程資訊。

## 介接方法

- [**Slippy Map(XYZ tiles)**](https://wiki.openstreetmap.org/wiki/Slippy_map_tilenames#Tile_servers): [https://osmhacktw.github.io/terrain-rgb/tiles/{z}/{x}/{y}.png](https://osmhacktw.github.io/terrain-rgb/tiles/12/3417/1767.png)
- [**TileJSON**](https://github.com/mapbox/tilejson-spec): https://osmhacktw.github.io/terrain-rgb/tiles.json
- **WMTS**: https://osmhacktw.github.io/terrain-rgb/wmts.xml

## 自行產製圖磚

### Dependencies
- GNU coreutils
- [GDAL](https://github.com/OSGeo/gdal)
- [rio-rgbify](https://github.com/mapbox/rio-rgbify), [Rasterio](https://github.com/mapbox/rasterio)


### 指令
```bash
make tiles/
```

## Reference
- https://github.com/syncpoint/terrain-rgb
- https://docs.mapbox.com/help/troubleshooting/access-elevation-data/