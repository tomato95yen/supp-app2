class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'ビタミンA' },
    { id: 3, name: 'ビタミンD' },
    { id: 4, name: 'ビタミンE' },
    { id: 5, name: 'ビタミンK' },
    { id: 6, name: 'ビタミンB1' },
    { id: 7, name: 'ビタミンB2' },
    { id: 8, name: 'ナイアシン' },
    { id: 9, name: 'パントテン酸' },
    { id: 10, name: 'ビタミンB6' },
    { id: 11, name: 'ビタミンB12' },
    { id: 12, name: '葉酸' },
    { id: 13, name: 'ビオチン' },
    { id: 14, name: 'ビタミンC' }  ]

  include ActiveHash::Associations
  has_many :items
end
