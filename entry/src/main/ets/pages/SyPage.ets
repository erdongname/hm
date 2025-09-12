import { router } from "@kit.ArkUI"
import { BookDataManager, BookItem } from "./BookData"


class SwiperDataSource implements IDataSource {
  private data: SwiperData[] = []

  constructor(data: SwiperData[]) {
    this.data = data
  }

  totalCount(): number {
    return this.data.length
  }

  getData(index: number): SwiperData {
    return this.data[index]
  }

  // 必须实现的数据变更监听方法
  registerDataChangeListener(listener: DataChangeListener): void {}
  unregisterDataChangeListener(listener: DataChangeListener): void {}
}

interface SwiperData{
  id:number,
  imgSrc: Resource
}



@Entry
@Component
export struct SyPage {
  @State private currentIndex: number = 0
  private swiperController: SwiperController = new SwiperController()
  private dataSource: SwiperDataSource = new SwiperDataSource([
    { id: 1, imgSrc: $r('app.media.01')},
    { id: 2, imgSrc: $r('app.media.02')},
    { id: 3, imgSrc: $r('app.media.03')},
    { id: 4, imgSrc: $r('app.media.04')}
  ])
  private onChangeTab?: (index: number) => void;

  @State books: BookItem[] = BookDataManager.BookList

  build() {
    Scroll() {
      Column() {
        Stack() {
          Column() {
            Column().width("100%").height(50).backgroundColor("#5ABD8C")
            Column().width("100%").height(200).backgroundColor("#5ABD8C")
              .borderRadius({ bottomLeft: 150, bottomRight: 150 })
          }
          .height(300)
          .width('100%')

          Text('南华书店').fontSize(25).fontColor(Color.White).margin({ left: 20 }).position({ x: 0, y: 50 })

          Swiper(this.swiperController) {
            LazyForEach(this.dataSource, (item: SwiperData) => {
              Stack() {
                Image(item.imgSrc)
                  // .width(this.currentIndex === item.id ? 140 : 100)
                  // .height(this.currentIndex === item.id ? 200 : 150)
                  .width(140)
                  .height(200)
                  .borderRadius(8)
              }
            }, (item: SwiperData) => item.id.toString())
          }
          .loop(true)
          .autoPlay(true)
          .interval(3000)
          .margin({ top: 100 })
          .onChange((index:number) => {
            this.currentIndex = this.dataSource.getData(index).id
          })
        }

        Row() {
          Image($r("app.media.search")).width(20).margin({right:10})
          TextInput({ placeholder: "请输入书籍名称"})

        }
        .width("100%")
        .height(40)
        .padding({ left:10, right: 10, top:2, bottom:2})
        .border({ width: 1, color:"#5ABD8C"})
        .borderRadius(20)
        .margin(20)
        .shadow({
          radius: 4,
          color: Color.Gray,
          offsetX: 2,
          offsetY: 2
        })


        Column() {
          Row() {
            Text("最新上架")
              .fontSize(20)
              .fontWeight(800)
            Text("查看更多")
              .fontSize(14)
              .fontColor("#737373")
              .onClick(() => {
                this.onChangeTab?.(1); // 通过父组件方法切换
              })
          }
          .width("100%")
          .justifyContent(FlexAlign.SpaceBetween)

          Grid() {
            ForEach(this.books,(book: BookItem)=>{
              GridItem() {
                Column() {
                  Image(book.imgSrc)
                    .width("80%")
                    .aspectRatio(0.8)
                    .borderRadius(10)
                  Text(book.title)
                    .fontSize(12)
                    .margin({ top: 10 })
                    .maxLines(1)
                  Text("￥" + book.price)
                    .fontSize(15)
                    .fontColor("#FFA500")
                    .maxLines(1)
                }
                .width(150)
                .height(200)
                .justifyContent(FlexAlign.Center)
                .borderRadius(20)
                .backgroundColor("#A8D8C1")
                .onClick(() => {
                  router.pushUrl({
                    url: "pages/DetailPage",
                    params: {
                      id: book.id,
                      img: book.imgSrc,
                      title: book.title,
                      price: book.price,
                      isbn: book.isbn,
                      like: book.like,
                      description: book.description
                    }
                  })

                })
              }

            })
          }
          .maxCount(2)
          .minCount(2)
          .rowsGap(10)
          .columnsGap(10)
          .margin(10)

          // .columnsTemplate('2fr 2fr')
          // .minCount(2)
          // .layoutDirection(GridDirection.Row)

        }
        .margin(10)
        // Search()
        //   .searchIcon({
        //     src: $r("app.media.my2")
        //   })

        Column() {
          Row() {
            Text("推荐好书区")
              .fontSize(20)
              .fontWeight(800)
            Text("查看更多")
              .fontSize(14)
              .fontColor("#737373")
              .onClick(() => {
                this.onChangeTab?.(1); // 通过父组件方法切换
              })
          }
          .width("100%")
          .justifyContent(FlexAlign.SpaceBetween)

          Grid() {
            ForEach(this.books,(book: BookItem)=>{
              GridItem() {
                Badge({
                  value: "推荐",
                  position:{ x:15, y:-207 },
                  style:{ badgeColor: Color.Red, fontSize: 14, color: Color.White,}
                }) {
                  Column() {
                    Image(book.imgSrc)
                      .width("80%")
                      .aspectRatio(0.8)
                      .borderRadius(10)
                    Text(book.title)
                      .fontSize(12)
                      .margin({ top: 10 })
                      .maxLines(1)
                    Text("￥ " + book.price)
                      .fontSize(15)
                      .fontColor("#FFA500")
                      .maxLines(1)
                  }
                  .width(150)
                  .height(200)
                  .justifyContent(FlexAlign.Center)
                  .borderRadius(20)
                  .backgroundColor("#A8D8C1")
                }
                .borderRadius({ topLeft: 10})

              }
              .onClick(() => {
                router.pushUrl({
                  url: "pages/DetailPage",
                  params: { id: book.id, img: book.imgSrc}
                })
              })
            })
          }
          .maxCount(2)
          .minCount(2)
          .rowsGap(10)
          .columnsGap(10)
          .margin(10)

          // .columnsTemplate('2fr 2fr')
          // .minCount(2)
          // .layoutDirection(GridDirection.Row)

        }
        .margin(10)

      }
    }
    .width('100%')
    .scrollable(ScrollDirection.Vertical)
    .scrollBar(BarState.On)
    .scrollBarColor(Color.Black)
  }
}

