import { router } from "@kit.ArkUI";

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  @Builder
  annui(name: string, tarUrl: string) {
    Text(name)
      .onClick(() => {
        router.pushUrl({
          url: tarUrl
        })
      })
      .width("100%")
      .backgroundColor(Color.Green)
      .padding(20)
      .margin({ top:10 })
      .textAlign(TextAlign.Center)
      .fontColor("#3ace85")
      .border({ width: 1, color: Color.Black })
      .borderRadius(30)
  }

  build() {

    Column() {
      this.annui("登录","pages/LoginPage")
      this.annui("注册","pages/ZcPage")

    }
    .justifyContent(FlexAlign.Center)
    .height('100%')
    .width('100%')
    .padding(30)
    .backgroundImage($r("app.media.bj"))
    .backgroundImageSize({ height: '100%', width: '100%' })

  }
}
