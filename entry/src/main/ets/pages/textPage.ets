import { router } from "@kit.ArkUI";

@Entry
@Component
struct AllCategoriesPage {
  // 分类数据
  @State categories: Category[] = [
    { id: 1, name: "法律", icon: $r('app.media.01') },
    { id: 2, name: "教辅", icon: $r('app.media.01') },
    { id: 3, name: "教育", icon: $r('app.media.01') },
    { id: 4, name: "经济", icon: $r('app.media.01') },
    { id: 5, name: "科技", icon: $r('app.media.01') },
    { id: 6, name: "少儿", icon: $r('app.media.01') },
    { id: 7, name: "体育", icon: $r('app.media.01') },
    { id: 8, name: "文史", icon: $r('app.media.01') },
    { id: 9, name: "小说", icon: $r('app.media.01') },
    { id: 10, name: "艺术", icon: $r('app.media.01') }
  ];

  // 推荐书籍
  @State recommendedBooks: Book[] = [
    {
      id: 1,
      title: "IPad the missing manual",
      price: 130,
      image: $r('app.media.01')
    },
    {
      id: 2,
      title: "PostgreSQL 16 Administration Cookbook",
      price: 130,
      image: $r('app.media.01')
    },
    {
      id: 3,
      title: "THE ART OF MACHINE LEARNING",
      price: 130,
      image: $r('app.media.01')
    },
    {
      id: 4,
      title: "LEARN RUST",
      price: 130,
      image: $r('app.media.01')
    },
    {
      id: 5,
      title: "Inside AI",
      price: 130,
      image: $r('app.media.01')
    },
    {
      id: 6,
      title: "Neural Networks and Deep Learning",
      price: 130,
      image: $r('app.media.01')
    },
    {
      id: 7,
      title: "Modern Operating",
      price: 130,
      image: $r('app.media.01')
    },
    {
      id: 8,
      title: "Leet Code 101",
      price: 130,
      image: $r('app.media.01')
    }
  ];

  build() {
    Column() {
      // 顶部状态栏区域
      Row() {
        Text('09:25')
          .fontSize(16)
          .fontColor(Color.Black)
        Blank()
        // 这里可以添加其他状态栏图标
      }
      .width('100%')
      .padding({ left: 20, right: 20, top: 10 })
      .height(30)

      // 分类标题
      Text('全部分类')
        .fontSize(20)
        .fontColor(Color.Black)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 10, bottom: 15 })
        .width('100%')
        .textAlign(TextAlign.Center)

      // 分类网格
      Grid() {
        ForEach(this.categories, (category: Category) => {
          GridItem() {
            Column() {
              // 分类图标
              Stack() {
                Circle({ width: 50, height: 50 })
                  .fill('#5ABD8C')

                Image(category.icon)
                  .width(25)
                  .height(25)
              }
              .margin({ bottom: 8 })

              // 分类名称
              Text(category.name)
                .fontSize(14)
                .fontColor('#333333')
            }
            .width('100%')
            .height(90)
            .justifyContent(FlexAlign.Center)
            .alignItems(HorizontalAlign.Center)
            .onClick(() => {
              // 跳转到对应分类页面
              router.pushUrl({
                url: 'pages/CategoryDetailPage',
                params: { categoryId: category.id, categoryName: category.name }
              });
            })
          }
        })
      }
      .columnsTemplate('1fr 1fr 1fr 1fr 1fr')
      .rowsGap(15)
      .columnsGap(10)
      .padding(15)
      .backgroundColor(Color.White)

      // 推荐书籍标题
      Row() {
        Text('推荐书籍')
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .fontColor('#333333')

        Blank()

        Text('查看更多')
          .fontSize(14)
          .fontColor('#666666')
          .onClick(() => {
            // 查看更多推荐书籍
          })
      }
      .width('100%')
      .padding({ left: 15, right: 15, top: 20, bottom: 10 })

      // 推荐书籍列表
      Grid() {
        ForEach(this.recommendedBooks, (book: Book) => {
          GridItem() {
            Column() {
              // 书籍图片
              Image(book.image)
                .width(120)
                .height(160)
                .objectFit(ImageFit.Contain)
                .margin({ bottom: 8 })

              // 书籍标题
              Text(book.title)
                .fontSize(12)
                .fontColor('#333333')
                .maxLines(2)
                .textOverflow({ overflow: TextOverflow.Ellipsis })
                .height(36)
                .margin({ bottom: 5 })
                .width('100%')
                .textAlign(TextAlign.Center)

              // 书籍价格
              Text(`￥${book.price}`)
                .fontSize(14)
                .fontColor('#FF6A00')
                .fontWeight(FontWeight.Bold)
            }
            .width('100%')
            .padding(10)
            .backgroundColor(Color.White)
            .borderRadius(8)
            .shadow({ radius: 2, color: '#DDDDDD', offsetX: 1, offsetY: 1 })
            .onClick(() => {
              // 跳转到书籍详情页
              router.pushUrl({
                url: 'pages/BookDetailPage',
                params: { bookId: book.id }
              });
            })
          }
        })
      }
      .columnsTemplate('1fr 1fr')
      .rowsGap(15)
      .columnsGap(15)
      .padding(15)
      .backgroundColor('#F5F5F5')

      // 底部导航栏
      Row() {
        // 首页
        Column() {
          Image($r('app.media.01'))
            .width(24)
            .height(24)
          Text('首页')
            .fontSize(12)
            .margin({ top: 4 })
            .fontColor('#666666')
        }
        .onClick(() => {
          router.replaceUrl({ url: 'pages/HomePage' });
        })

        // 全部分类（当前选中）
        Column() {
          Image($r('app.media.01'))
            .width(24)
            .height(24)
          Text('全部分类')
            .fontSize(12)
            .margin({ top: 4 })
            .fontColor('#5ABD8C')
        }

        // 购物车
        Column() {
          Image($r('app.media.01'))
            .width(24)
            .height(24)
          Text('购物车')
            .fontSize(12)
            .margin({ top: 4 })
            .fontColor('#666666')
        }
        .onClick(() => {
          router.replaceUrl({ url: 'pages/CartPage' });
        })

        // 我的
        Column() {
          Image($r('app.media.01'))
            .width(24)
            .height(24)
          Text('我的')
            .fontSize(12)
            .margin({ top: 4 })
            .fontColor('#666666')
        }
        .onClick(() => {
          router.replaceUrl({ url: 'pages/ProfilePage' });
        })
      }
      .width('100%')
      .height(60)
      .justifyContent(FlexAlign.SpaceAround)
      .backgroundColor(Color.White)
      .border({ width: { top: 1 }, color: '#EEEEEE' })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F5F5F5')
  }
}

// 分类数据结构
class Category {
  id: number = 0;
  name: string = '';
  icon: Resource = $r('app.media.01');
}

// 书籍数据结构
class Book {
  id: number = 0;
  title: string = '';
  price: number = 0;
  image: Resource = $r('app.media.01');
}