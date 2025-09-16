import { router } from "@kit.ArkUI";

@Entry
@Component
 export struct WoPage {
  @State message: string = 'Hello WoPage';

  build() {
    Column() {
      Stack() {
        Column() {
          Column(){}
          .borderRadius({ bottomLeft:100, bottomRight:100 })
          .backgroundColor("#5ABD8C")
          .width("100%")
          .height(250)
        }
        .width("100%")
        .height("100%")

        Column() {
          Row() {
            Image($r("app.media.my1"))
              .width(80)
              .borderRadius(100)
            Text("用户名称")
              .padding(20)
              .fontColor(Color.White)
          }
          .margin({ left: 20, top: 20 })
          .position({ x:0, y:50})
        }
        .height('100%')
        .width('100%')

        Column() {
          Row() {
            Text("我的订单")
              .fontSize(20)
            Text("查看全部订单>")
              .fontColor(Color.Grey)
              .fontSize(15)
              .onClick(() => {
                router.pushUrl({
                  url:"pages/PddPage"
                })
              })

          }
          .width("100%")
          .padding({left: 20, right: 20, bottom: 20})
          .justifyContent(FlexAlign.SpaceBetween)

          Row(){
            Column() {
              Image($r("app.media.order1"))
                .width(25)
              Text("待付款")
                .fontSize("15")
                .fontColor(Color.Grey)
            }
            Column() {
              Image($r("app.media.order2"))
                .width(25)
              Text("待发货")
                .fontSize("15")
                .fontColor(Color.Grey)
            }
            Column() {
              Image($r("app.media.order3"))
                .width(25)
              Text("待收货")
                .fontSize("15")
                .fontColor(Color.Grey)
            }
            Column() {
              Image($r("app.media.order4"))
                .width(25)
              Text("退款/售后")
                .fontSize("15")
                .fontColor(Color.Grey)
            }
          }
          .width("100%")
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .backgroundColor(Color.White)
        .margin({left: 10, right: 10})
        .padding({left:10, right:10, top:20, bottom:20 })
        .borderRadius(20)

        Column() {
         Row() {
           Text("收货地址")
             .fontSize(15)
             .margin({ left:20 })
           Text(">")
             .fontSize(20)
             .margin({ right: 20})
         }
         .width("100%")
         .height(55)
         .justifyContent(FlexAlign.SpaceBetween)
          Row() {
            Text("我的收藏")
              .fontSize(15)
              .margin({ left:20 })
            Text(">")
              .fontSize(20)
              .margin({ right: 20})
          }
          .width("100%")
          .height(55)
          .justifyContent(FlexAlign.SpaceBetween)
          Row() {
            Text("联系我们")
              .fontSize(15)
              .margin({ left:20 })
            Text(">")
              .fontSize(20)
              .margin({ right: 20})
          }
          .width("100%")
          .height(55)
          .justifyContent(FlexAlign.SpaceBetween)
          Row() {
            Text("退出登录")
              .fontSize(15)
              .margin({ left:20 })
            Text(">")
              .fontSize(20)
              .margin({ right: 20})
          }
          .width("100%")
          .height(55)
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .backgroundColor(Color.White)
        .margin({left:10, right:10, top:380, bottom:30})
        .borderRadius(20)
      }

    }
    .backgroundColor("#ffd9d7d7")
    .height('100%')
    .width('100%')
  }
}