import { router } from "@kit.ArkUI";

interface book {
  img: string
}

@Entry
@Component
struct DetailPage {
  @State message: string = 'Hello DetailPage';
  @State img1: string = ''

  aboutToAppear(): void {
    this.initData();

  }

  initData() {
    const bookData = router.getParams() as book
    this.img1 = bookData.img

  }

  build() {
    Column() {
      Row() {
        Image($r("app.media.ic_arrow_left"))
          .width(30)
          .onClick(() => {
            router.back()
          })
      }
      .width('100%')
      Image(this.img1)
        .width(140)
        .height(200)
    }
    .height('100%')
    .width('100%')
  }
}
