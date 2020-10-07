class Member < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '1人' },
    { id: 3, name: '友人' },
    { id: 4, name: '家族' },
    { id: 5, name: '同僚' },
    { id: 6, name: '恋人' },
    { id: 7, name: '子連れ' },
    { id: 8, name: 'その他' }
  ]
end
