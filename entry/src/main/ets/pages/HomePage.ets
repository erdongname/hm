import { FlPage } from "./FlPage";
import { GwPage } from "./GwPage";
import { SyPage } from "./SyPage";
import { WoPage } from "./WoPage";

@Entry
@Component
 struct HomePage {
  @State message: string = 'Hello 666';
  @State cuindex: number = 0
  // 父组件定义切换方法
  private tabsController: TabsController = new TabsController();

  private handleTabChange(index: number) {
    this.tabsController.changeIndex(index);
    this.cuindex = index;
  }


  @Builder
  TabBuilder( index:number, text: string, img: Resource, sleimg: Resource ) {
    Column() {
      Image(this.cuindex == index ? img : sleimg).width(20).margin(8)
      Text(text).fontColor(this.cuindex == index ? "#fff": "#ff8f8f8f").padding({ bottom:20 })
    }
    .onClick(() => {
      this.cuindex = index
    })

  }
  build() {
    Column() {
      Tabs({ index: this.cuindex, barPosition: BarPosition.End, controller: this.tabsController}) {
        TabContent() {
          SyPage({ onChangeTab: this.handleTabChange.bind(this) })
        }.tabBar(this.TabBuilder(0,"首页",$r("app.media.home1"),$r("app.media.home2")))
        TabContent() {
          FlPage()
        }.tabBar(this.TabBuilder(1,"全部分类",$r("app.media.class1"),$r("app.media.class2")))
        TabContent() {
          GwPage()
        }.tabBar(this.TabBuilder(2,"购物车",$r("app.media.cart1"),$r("app.media.cart2")))
        TabContent() {
          WoPage()
        }.tabBar(this.TabBuilder(3,"我的",$r("app.media.my1"),$r("app.media.my2")))
      }
      .animationMode(AnimationMode.NO_ANIMATION)
      .barBackgroundColor('#3B8C6B')
      .onChange((index:number) => {
        this.cuindex = index
      })
      .onAnimationStart((index: number, targetIndex: number) => {
        this.cuindex = targetIndex;
      })
      .barHeight(70)

    }


  }
}