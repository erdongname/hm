import { router } from "@kit.ArkUI";

interface book {
  img: string
  title: string,
  price: number,
  isbn: string,
  like: boolean,
  description: string
}

@Entry
@Component
struct DetailPage {
  @State Books:book=router.getParams() as book
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
      Image(this.Books.img)
        .width(140)
        .height(200)
    }
    .height('100%')
    .width('100%')
  }
}
