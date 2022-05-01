class Movie < ApplicationRecord
  validates :title, presence: true, uniqueness: true, length:{ maximum:100}
    after_initialize do |movie|
      puts "オブジェクトは初期化されました"
    end
  
end
