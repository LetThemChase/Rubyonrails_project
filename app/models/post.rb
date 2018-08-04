class Post < ApplicationRecord
    
    #attr_accessible :title, :body, :category_id, 

    belongs_to :category
    belongs_to :admin_user
    has_many :post_comments, :dependent => :destroy
end
