class Transportation < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '車' },
    { id: 3, name: '電車' },
    { id: 4, name: '地下鉄' },
    { id: 5, name: '徒歩' },
    { id: 6, name: '自転車' },
    { id: 7, name: '新幹線' },
    { id: 8, name: '飛行機' },
    { id: 9, name: 'フェリー' },
    { id: 10, name: 'その他' }
  ]
end
