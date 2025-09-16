import { Size } from "@ohos/hypium"

@Entry
@Component
struct PddPage {

  @Builder
  tabsBuilder () {
    Text()
  }

  build() {
    Column() {
      Row() {
        Column() {
          Image($r("app.media.ic_arrow_left"))
            .width(25)
        }
        .layoutWeight(1)
        .alignItems(HorizontalAlign.Start)
        Column() {
          Text("全部订单")
            .fontSize(15)
        }
        .layoutWeight(1)
        Blank()
          .layoutWeight(1)

      }
      .width("100%")
      .height(35)

      // Row() {
      //   Image($r("app.media.search")).width(20).margin({right:10})
        Search({ placeholder: "请输入书籍名称"})
          .searchIcon({
          src: $r("app.media.search"),
          size: 20,
        })
          .backgroundColor("#ffe2dfdf")
          .borderRadius(0)
          .width("90%")


      Tabs() {
        TabContent() {

        }
        .tabBar("全部")
        TabContent() {

        }
        .tabBar("待付款")
        TabContent() {

        }
        .tabBar("待发货")
        TabContent() {

        }
        .tabBar("待收货")
        TabContent() {

        }
        .tabBar("退款/售后")

      }



    }
    .height('100%')
    .width('100%')
  }
}