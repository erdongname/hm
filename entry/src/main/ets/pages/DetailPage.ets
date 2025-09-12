import { AlertDialog, router } from "@kit.ArkUI";
import { BookData1,CBooksData } from "./BookData";


@Entry
@Component
struct DetailPage {
@Prop Books:BookData1=router.getParams() as BookData1
  dialog:CustomDialogController = new CustomDialogController({
    builder:AlertDialog({
      content: this.Books.like?'收藏成功':'取消收藏'
    })
  })

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
      .height("5%")
      Scroll() {
        Column() {
          Image(this.Books.imgSrc)
            .height(400)
            .margin({ top: 30, bottom: 30 })

          Column() {
            Text(this.Books.title)
              .fontSize(20)
              .fontWeight(600)
            Text(this.Books.price.toString())
              .fontSize(18)
              .fontWeight(600)
              .fontColor(Color.Red)
            Text()
              .height(30)
            Row() {
              Text("作者: ")
                .fontSize(18)
                .fontColor(Color.Grey)
              Text(this.Books.author)
                .fontSize(18)
            }

            Row() {
              Text("出版社: ")
                .fontSize(18)
                .fontColor(Color.Grey)
              Text(this.Books.publisher)
                .fontSize(18)
            }

            Row() {
              Text("ISBN: ")
                .fontSize(18)
                .fontColor(Color.Grey)
              Text(this.Books.isbn)
                .fontSize(18)
            }

            Text()
              .height(30)

            Text("详细描述： ")
              .fontSize(18)
              .fontColor(Color.Grey)

            Text(this.Books.description)
              .width("100%")


          }
          .padding(20)
          .width('100%')
          .alignItems(HorizontalAlign.Start)

        }

      }
      .height("85%")

      Row() {
        Row() {
          Image(this.Books.like ? $r("app.media.star_fill") :  $r("app.media.star"))
            .width(30)
            .margin({ left:20 })
            .onClick(() => {
              this.dialog.open()
              setTimeout(() => {
                this.dialog.close()
              }, 1500)
              this.Books.like = !this.Books.like
            })
        }
        .width("20%")
        .height("100%")
        .border({ width: { left:1 }, color: Color.Grey})
        Row() {
          Image($r("app.media.cart3"))
            .width(30)
            .margin({ left:20 })
        }
        .width("20%")
        .height("100%")
        .border({ width: { left:1 }, color: Color.Grey})
        .onClick(() => {
          router.back()
        })
        Row() {
          Text("立即购买")
            .fontSize(20)
            .fontWeight(600)
            .width("100%")
            .textAlign(TextAlign.Center)
        }
        .width("30%")
        .height("100%")
        .border({ width: { left:1 }, color: Color.Grey})
        .onClick(() =>{
          router.pushUrl({
            url:"pages/DdPage"
          })

        })
        Row() {
          Text("加入购物车")
            .fontSize(20)
            .fontWeight(600)
            .fontColor(Color.White)
        }
        .width("30%")
        .height("100%")
        .justifyContent(FlexAlign.Center)
        .backgroundColor(Color.Red)
        .border({ width: { left:1 }, color: Color.Grey})
        .onClick(() => {

        })
      }
      .width("100%")
      .height("10%")
    }

  }
}
