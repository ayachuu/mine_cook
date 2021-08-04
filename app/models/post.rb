class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :jenre

  belongs_to :user
  has_one_attached :image
  
  with_options presence: true do
    validates :title
    validates :text, length: { maximum: 1000, message: '作り方、材料は1,000文字以内で入力してください' }
    with_options numericality: { other_than: 1, message: "選択してください" } do
      validates :jenre_id
    end
  end

end
