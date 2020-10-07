class SatisfactionLevel < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'とても良かった' },
    { id: 3, name: '良かった' },
    { id: 4, name: '普通' },
    { id: 5, name: 'いまいち' },
    { id: 6, name: '不満' }
  ]
end
