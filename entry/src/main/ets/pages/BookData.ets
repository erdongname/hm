export interface BookItem {
  id: number,
  imgSrc: Resource,
  title: string,
  price: number,
  description: string,
  like: boolean,
  author: string,
  publisher: string,
  isbn: string,
  category: string
}

export class BookDataManager {
  static readonly BookList: BookItem[] = [
    {
      id: 1,
      imgSrc: $r('app.media.01'),
      title: '地狱空荡荡,恶魔在人间',
      price: 250.0,
      description: '关于时间本质的物理学与哲学思考，作者用诗意的语言解释了复杂的物理概念。',
      like: false,
      author: '李四',
      publisher: '科学出版社',
      isbn: '978-7-123-45679-6',
      category: '科学'
    },
    {
      id: 2,
      imgSrc: $r('app.media.02'),
      title: '量子纠缠的奥秘',
      price: 189.5,
      description: '深入探讨量子力学中最神秘的现象，揭示宇宙间不可思议的联系。',
      like: false,
      author: '王量子',
      publisher: '物理出版社',
      isbn: '978-7-234-56789-7',
      category: '物理'
    },
    {
      id: 3,
      imgSrc: $r('app.media.03'),
      title: '人工智能简史',
      price: 320.0,
      description: '从图灵测试到深度学习，全面回顾人工智能发展的里程碑事件。',
      like: false,
      author: '张智能',
      publisher: '科技出版社',
      isbn: '978-7-345-67890-8',
      category: '科技'
    },
    {
      id: 4,
      imgSrc: $r('app.media.04'),
      title: '宇宙的琴弦',
      price: 275.5,
      description: '弦理论的通俗解读，探索物质最基本组成和宇宙最深层结构。',
      like: false,
      author: '陈宇宙',
      publisher: '天文出版社',
      isbn: '978-7-456-78901-9',
      category: '天文'
    },
    {
      id: 5,
      imgSrc: $r('app.media.02'),
      title: '生命密码',
      price: 210.0,
      description: '基因编辑技术的伦理思考与社会影响，展望生物科技的未来。',
      like: false,
      author: '赵基因',
      publisher: '生物出版社',
      isbn: '978-7-567-89012-0',
      category: '生物'
    },
    {
      id: 6,
      imgSrc: $r('app.media.01'),
      title: '数学之美',
      price: 198.0,
      description: '用通俗语言展示数学在信息科学中的应用，揭示数学的实用价值。',
      like: false,
      author: '钱数学',
      publisher: '教育科学出版社',
      isbn: '978-7-678-90123-1',
      category: '数学'
    },
    {
      id: 7,
      imgSrc: $r('app.media.02'),
      title: '黑客与画家',
      price: 225.5,
      description: '计算机编程与艺术创作的跨界思考，探索创新思维的源泉。',
      like: false,
      author: '孙编程',
      publisher: '计算机出版社',
      isbn: '978-7-789-01234-2',
      category: '计算机'
    },
    {
      id: 8,
      imgSrc: $r('app.media.03'),
      title: '未来简史',
      price: 289.0,
      description: '从智人到神人，探讨人类未来可能的发展方向和面临的挑战。',
      like: false,
      author: '周未来',
      publisher: '社会科学出版社',
      isbn: '978-7-890-12345-3',
      category: '社科'
    },
    {
      id: 9,
      imgSrc: $r('app.media.04'),
      title: '人类群星闪耀时',
      price: 245.0,
      description: '历史上关键时刻的伟人传记，展现人类文明进程中的转折点。',
      like: false,
      author: '吴历史',
      publisher: '人民出版社',
      isbn: '978-7-901-23456-4',
      category: '历史'
    },
    {
      id: 10,
      imgSrc: $r('app.media.01'),
      title: '思考的艺术',
      price: 199.5,
      description: '批判性思维与创新思维的培养指南，提升解决问题能力的方法论。',
      like: false,
      author: '郑思考',
      publisher: '心理出版社',
      isbn: '978-7-012-34567-5',
      category: '心理'
    }
  ];
}