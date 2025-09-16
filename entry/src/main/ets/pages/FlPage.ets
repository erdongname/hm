import { BookData1, CBooksData } from "./BookData"
import { router } from "@kit.ArkUI"


@Entry
@Component
export struct FlPage {

  @State books:BookData1[] = CBooksData()
  @State fllist:string[]=["数学","心理", "科学","天文","历史", "道德与法治5"]
  @State cuIndex: number = 0
  @State conent: number = 0
  @State flm:string=this.fllist[this.cuIndex]

  build() {
    Row() {
      List(){
        ForEach(this.fllist, (item: string, index: number) => {
          ListItem() {
            Text(item)
              .fontSize(18)
              .fontWeight(600)
              .fontColor(Color.Grey)
              .padding({ left:20, bottom: 10, top:10, right:20 })
              .backgroundColor(this.cuIndex == index ? "#5ABD8C": "#fff")
              .onClick(() => {
                this.flm=this.fllist[index]
                this.cuIndex = index
              })
          }
        })
      }
      .height("100%")
      .width(100)
      Scroll() {
        Grid() {
          ForEach(this.books, (book: BookData1) => {
            if (book.category == this.flm) {
              GridItem() {
                Column() {
                  Image(book.imgSrc)
                    .height(160)
                    .aspectRatio(0.8)
                    .width("70%")
                    .borderRadius(10)
                  Text(book.title)
                    .fontSize(12)
                    .margin({ top: 10 })
                    .maxLines(1)
                  Text("￥ " + book.price.toString())
                    .fontSize(15)
                    .fontColor("#FFA500")
                    .fontWeight(600)
                    .maxLines(1)
                }
                .width(120)
                .height(160)
                .justifyContent(FlexAlign.Center)
                .backgroundColor("#A8D8C1")
                .borderRadius(10)
              }
            }
          })
          if (this.books.filter(book => book.category == this.flm).length == 0) {
            GridItem() {
              Column() {
                Text("暂无该分类书籍")
                  .fontSize(16)
                  .fontColor(Color.Grey)
                  .margin({ top: 10 })
                  .layoutWeight(1)
              }
              .width("70%")
              .height("100%")


          }}
        }
        .rowsGap(10)
        .columnsGap(10)

      }
      .align(Alignment.TopStart)
      .height('100%')

    }
    .height('100%')
    .width('100%')
  }
}