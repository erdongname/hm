import { router } from "@kit.ArkUI";
import { text } from "@kit.ArkGraphics2D";

@CustomDialog
@Component
struct CustomDialogExample {
  controller?: CustomDialogController;
  build() {
    Column(){
      Text('注册成功')
        .textAlign(TextAlign.Center)
        .padding({ top: 25 })
    }
  }
}

@Entry
@Component
struct XcPage {
  dialogController: CustomDialogController | null = new CustomDialogController({
    builder: CustomDialogExample(),
  })
  @State message: string = 'Hello World';
  @State zh: string = ''
  @State mm: string=''
  @State yx: string = ''
  @State sj: string = ''
  @State BuNull: boolean = true
  @State xs: boolean = true


  InputNull() {
    return this.zh.trim() !== '' && this.mm !== '' && this.yx !== '' && this.sj !== ''
  }
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
      Text("注册")
        .fontSize(30)
        .margin({ left: 20 , top: 20.72})
        .width(335)
        .height(32)
      TextInput({ placeholder:"请输入账号", text: $$this.zh })
        .placeholderColor("#FF949494")
        .width(335)
        .height(56)
        .borderRadius(20)
        .fontColor("#000000")
        .margin(20)
        .onChange(() => {
          this.BuNull =! this.InputNull()
        })
      TextInput({ placeholder:"请输入密码", text: $$this.mm})
        .placeholderColor("#FF949494")
        .width(335)
        .height(56)
        .borderRadius(20)
        .fontColor("#000000")
        .margin(20)
        .onChange(() => {
          this.BuNull =! this.InputNull()
        })
      TextInput({ placeholder:"请输入邮箱", text: $$this.yx})
        .placeholderColor("#FF949494")
        .type(InputType.Email)
        .onChange((value: string) => {
          this.BuNull =! this.InputNull()
          // 邮箱正则表达式
          const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/
          if (value && !emailRegex.test(value)) {
            // 校验失败处理（如提示错误）
            console.error('邮箱格式错误')
          }})
        .width(335)
        .height(56)
        .borderRadius(20)
        .fontColor("#000000")
        .margin(20)
      TextInput({ placeholder:"请输入手机号", text: $$this.sj })
        .placeholderColor("#FF949494")
        .width(335)
        .height(56)
        .borderRadius(20)
        .fontColor("#000000")
        .margin(20)
        .onChange(() => {
         this.BuNull =! this.InputNull()
        })

      Button("注册")
        .width(335)
        .height(56)
        .margin(20)
        .border({color: this.BuNull ? "#5ABD8C": "#FFFF",width:1})
        .fontColor(this.BuNull ? "#5ABD8C": "#FFFFFF")
        .backgroundColor(this.BuNull ? "#fff6f6f6" : "#5ABD8C")
        .onClick(()=> {
          if (this.dialogController != null) {
            this.dialogController.open();
          }
            if (!this.BuNull) {
              setTimeout(() => {
                router.replaceUrl({
                  url: "pages/LoginPage"
                })
                if (this.dialogController != null) {
                  this.dialogController.close()
                }
              }, 1500)

            } else {
              AlertDialog.show({
                message: "请填写完整的注册信息"
              })
            }

        })
    }
    .height('100%')
    .width('100%')
  }
}
