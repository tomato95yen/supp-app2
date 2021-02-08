class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: 'ビタミンA' },
    { id: 2, name: 'ビタミンD' },
    { id: 3, name: 'ビタミンE' },
    { id: 4, name: 'ビタミンK' },
    { id: 5, name: 'ビタミンB1' },
    { id: 6, name: 'ビタミンB2' },
    { id: 7, name: 'ナイアシン' },
    { id: 8, name: 'パントテン酸' },
    { id: 9, name: 'ビタミンB6' },
    { id: 10, name: 'ビタミンB12' },
    { id: 11, name: '葉酸' },
    { id: 12, name: 'ビオチン' },
    { id: 13, name: 'ビタミンC' }  ]

  include ActiveHash::Associations
  has_many :items
end
