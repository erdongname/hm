import { router } from "@kit.ArkUI";


@Entry
@Component
struct LoginPage {
  @State message: string = 'Hello World';
  @State zhanghao: string = '';
  @State password: string = '';
  @State yzm :string = '';
  @State text: string = "点击获取验证码"
  @State ss:boolean = true
  @State yzmm: string = ''
  randomNumber(min: number, max: number) {
    return Math.floor(Math.random() * (max - min) + min)
  }
  timerController: TextTimerController = new TextTimerController()

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

      Text('登录')
        .fontSize(30)
        .fontWeight(700)
      TextInput({ placeholder: "请输入账号", text: $$this.zhanghao})
        .margin(20)
        // .onSubmit()
      TextInput({ placeholder: "请输入密码", text: $$this.password})
        .margin(20)
      TextInput({ placeholder: "请输入验证码", text: $$this.yzmm})
        .margin(20)

      Row() {
        TextTimer({
          isCountDown: false,
          count: 3000,// 30秒倒计时（单位毫秒）
          controller: this.timerController
        })
          .visibility(Visibility.Hidden)
          .format('ss')
          .onTimer((a,b)=>{
            console.log('111111',a,b)
            if (b < 3) {
              this.text = (3-b).toString()

            }else {
              this.timerController.pause()
              this.timerController.reset()
              this.ss =! this.ss
              this.text = '点击获取验证码'
            }
          })
        Text(this.yzm)
          .layoutWeight(1)
        Button(this.text)
          .layoutWeight(1)
          .enabled(this.ss)
          .onClick(() => {
            this.timerController.start()
            this.yzm = this.randomNumber(1000,9999).toString()
            this.ss =! this.ss
          })
      }
      .margin(20)
      Text('忘记密码？')
        .width("100%")
        .fontColor("#ff8d8d8d")
        .padding({ right:20})
        .textAlign(TextAlign.End)
        .onClick(()=> {
          router.pushUrl({
            url: "pages/PassPage"
          })
        })

      Button('登录')
        .margin(50)
        .width("80%")
        .onClick(() => {
          if (this.zhanghao != '' && this.password != '' && this.yzmm != '' ) {
            router.pushUrl({
              url: 'pages/HomePage'
            })
            router.clear()
          }
        })

    }
    .height('100%')
    .width('100%')
  }
}