export class BookData1{
  id: number
  imgSrc: Resource
  title: string
  price: number
  description: string
  like: boolean
  author: string
  publisher: string
  isbn: string
  category: string
  constructor(id: number, imgSrc: Resource, title: string, price: number, description: string, like: boolean,
    author: string, publisher: string, isbn: string, category: string) {
    this.id = id
    this.imgSrc = imgSrc
    this.title = title
    this.price = price
    this.description = description
    this.like = like
    this.author = author
    this.publisher = publisher
    this.isbn = isbn
    this.category = category
  }
  islike(id:number){
    this.like=!this.like
  }
}
export const CBooksData=():BookData1[]=>{
  let book1:BookData1[]=new Array()
  book1=[
    new BookData1(1, $r('app.media.01'), '地狱空荡荡,恶魔在人间', 250.0, '关于时间本质的物理学与哲学思考，作者用诗意的语言解释了复杂的物理概念。', false, '李四', '科学出版社', '978-7-123-45679-6', '科学'),
    new BookData1(2, $r('app.media.02'), '量子纠缠的奥秘', 189.5, '深入探讨量子力学中最神秘的现象，揭示宇宙间不可思议的联系。', false, '王量子', '物理出版社', '978-7-234-56789-7', '物理'),
    new BookData1(3, $r('app.media.03'), '人工智能简史', 320.0, '从图灵测试到深度学习，全面回顾人工智能发展的里程碑事件。', false, '张智能', '科技出版社', '978-7-345-67890-8', '科技'),
    new BookData1(4, $r('app.media.04'), '宇宙的琴弦', 275.5, '弦理论的通俗解读，探索物质最基本组成和宇宙最深层结构。', false, '陈宇宙', '天文出版社', '978-7-456-78901-9', '天文'),
    new BookData1(5, $r('app.media.02'), '生命密码', 210.0, '基因编辑技术的伦理思考与社会影响，展望生物科技的未来。', false, '赵基因', '生物出版社', '978-7-567-89012-0', '生物'),
    new BookData1(6, $r('app.media.01'), '数学之美', 198.0, '用通俗语言展示数学在信息科学中的应用，揭示数学的实用价值。', false, '钱数学', '教育科学出版社', '978-7-678-90123-1', '数学'),
    new BookData1(7, $r('app.media.02'), '黑客与画家', 225.5, '计算机编程与艺术创作的跨界思考，探索创新思维的源泉。', false, '孙编程', '计算机出版社', '978-7-789-01234-2', '计算机'),
    new BookData1(8, $r('app.media.03'), '未来简史', 289.0, '从智人到神人，探讨人类未来可能的发展方向和面临的挑战。', false, '周未来', '社会科学出版社', '978-7-890-12345-3', '社科'),
    new BookData1(9, $r('app.media.04'), '人类群星闪耀时', 245.0, '历史上关键时刻的伟人传记，展现人类文明进程中的转折点。', false, '吴历史', '人民出版社', '978-7-901-23456-4', '历史'),
    new BookData1(10, $r('app.media.01'), '思考的艺术', 199.5, '批判性思维与创新思维的培养指南，提升解决问题能力的方法论。', false, '郑思考', '心理出版社', '978-7-012-34567-5', '心理')
  ]
  return book1
}