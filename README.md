# terrain-rgb

使用[內政部20公尺網格數值地形模型資料](https://data.gov.tw/dataset/35430)製成點陣圖磚(raster tiles)服務，圖磚格式為[Mapbox Terrain-RGB](https://docs.mapbox.com/help/troubleshooting/access-elevation-data/)，用以記載高程資訊。

## 介接方法

- [**Slippy Map(XYZ tiles)**](https://wiki.openstreetmap.org/wiki/Slippy_map_tilenames#Tile_servers): [https://osmhacktw.github.io/terrain-rgb/tiles/{z}/{x}/{y}.png](https://osmhacktw.github.io/terrain-rgb/tiles/12/3417/1767.png)
- [**TileJSON**](https://github.com/mapbox/tilejson-spec): https://osmhacktw.github.io/terrain-rgb/tiles.json
- **WMTS**: https://osmhacktw.github.io/terrain-rgb/wmts.xml

## Demos
- https://osmhacktw.github.io/terrain-rgb
  ![Screenshot from 2021-05-23 22-33-01](https://user-images.githubusercontent.com/19887090/119264720-d7c13d00-bc16-11eb-80c0-f2f74ce3d5ad.png)

- https://osmhacktw.github.io/terrain-rgb/3d
  ![Screenshot from 2021-05-23 22-32-18](https://user-images.githubusercontent.com/19887090/119264686-c37d4000-bc16-11eb-9f2e-b230a1c3f038.png)


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
