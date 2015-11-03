class Post < ActiveRecord::Base
validates :author, presence: true, length: {minimum: 5}
validates :title, presence: true, length: {minimum: 5}

end
