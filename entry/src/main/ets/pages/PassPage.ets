import { router } from "@kit.ArkUI";

@Entry
@Component
struct PassPage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Row() {
        Image($r('app.media.ic_arrow_left'))
          .width(30)
          .onClick(() => {
            router.back()
          })
      }
      .width("100%")
      .margin({ left:15, top:40.14 })
      Text("重置密码")
        .fontSize(30)
        .margin({ left: 20 , top: 20.72})
        .width(335)
        .height(32)
      TextInput({ placeholder:"请输入账号"})
        .placeholderColor("#FF949494")
        .width(335)
        .height(56)
        .borderRadius(20)
        .fontColor("#000000")
        .margin(20)
        .onChange(() => {
          // this.BuNull =! this.InputNull()
        })
      TextInput({ placeholder:"请输入密码"})
        .placeholderColor("#FF949494")
        .width(335)
        .height(56)
        .borderRadius(20)
        .fontColor("#000000")
        .margin(20)
        .onChange(() => {
          // this.BuNull =! this.InputNull()
        })
      Button("重置密码")
        .width(335)
        .height(56)
        .margin(20)
        // .border({color: this.BuNull ? "#5ABD8C": "#FFFF",width:1})
        // .fontColor(this.BuNull ? "#5ABD8C": "#FFFFFF")
        // .backgroundColor(this.BuNull ? "#fff6f6f6" : "#5ABD8C")
        .onClick(()=> {

        })


    }
    .height('100%')
    .width('100%')
  }
}