@Entry
@Component
export struct GwPage {


  build() {
    Column() {
      Text("购物车")
      Row() {
        Row() {
          Text("全部")
            .fontSize(15)

        }
        .width("50%")
        .justifyContent(FlexAlign.Center)
        Row() {
          Image($r("app.media.menu"))
            .width(30)
          Text("管理")
            .fontSize(15)
        }
        .width("50%")
        .justifyContent(FlexAlign.Center)
        .border({ width:{ left: 1 }, color:"#ffb7b5b5"})
      }
      .width("100%")
      .height(45)
      .margin({bottom:5})

      Column() {
        List() {
          ListItem() {
            Row() {
              Checkbox({group: 'radioGroup' })
                .height(30)
                .width(30)
              Image($r("app.media.01"))
                .width(100)
                .margin({ left: 20, right: 20})
              Column() {
                Text("书名")
                  .fontSize(10)
                  .fontWeight(500)
                  .margin({ bottom:5})
                Text("作者")
                  .fontSize(16)
                  .margin({ bottom:5})
                Text("单价 ￥")
                  .fontSize(16)
                  .margin({ bottom:5})
                Text("小计 ￥")
                  .fontColor("#FFA500")
                  .fontSize(16)
                  .margin({ bottom:5})
              }
              Text("*")
            }

          }
        }
        .height("80%")
        .backgroundColor("#f5f5f5")

        Row() {
          Row() {
            CheckboxGroup({ group:"radioGroup"})
              .width(20)
              .height(20)
            Text("全选")
              .margin({ left: 20 })
          }
          Text("合计： ￥")
            .fontSize(20)
            .fontWeight(600)
            .fontColor(Color.Red)
            .margin({ left: 20 })

          Button("去结算")
            .width(80)
            .padding(10)
        }
        .width("100%")
        .justifyContent(FlexAlign.SpaceAround)




      }
      .height("100%")
      .backgroundColor("#ffd2d0d0")

    }
    .height('100%')
    .width('100%')
  }
}