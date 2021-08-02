getwd()
library(ggmap)
library(ggplot2)
library(raster)
library(rgeos)
library(maptools)
library(extrafont)
library(RColorBrewer)
library(scales)
font_import()
y
test1
test1 <- read.csv("/Users/gimdong-wan/Desktop/인턴 과제 수행/교육본부/html작업/map/test2.csv",encoding = "utf-8")
test1$id <- 0:16
head(test1)
korea <- shapefile("/Users/gimdong-wan/Desktop/인턴 과제 수행/교육본부/html작업/map/CTPRVN.shp")
plot(korea)
subset(merge_result,id==4)
korea <- spTransform(korea,CRS("+proj=longlat"))
korea_map <- fortify(korea)
str(korea_map)
merge_result <- merge(korea_map,test1,by="id")
head(merge_result)
theme_set(theme_grey(base_fam))
test <- ggplot()+geom_polygon(data=merge_result,aes(x=long,y=lat, group=group,fill=사고건수)
)+labs(fill="지역별 1인당 음주운전 발생비율")

test

write.csv(merge_result,file = "/Users/gimdong-wan/Desktop/merge_result.csv",fileEncoding = "utf-8")


ggChoropleth(data = crime,                # 지도에 표현할 데이터
             aes(fill = Murder,        # 색깔로 표현할 변수
                 map_id = state),    # 지역 기준 변수
             map = states_map)        # 지도 데이터

palette.colors()


/Users/gimdong-wan/Desktop/전북지부 반출/전북 사고지도 shp_안시영

ac <- shapefile("/Users/gimdong-wan/Desktop/전북지부 반출/전북 사고지도 shp_안시영
/1312313.shp")
