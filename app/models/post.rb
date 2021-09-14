class Post < ApplicationRecord
    validates :title, presence: true
    validates :image, presence: true
    validates :content, presence: true
    before_create :banned_words

    def banned_words
        self.content.gsub!("spoiler", "")
    end
end
