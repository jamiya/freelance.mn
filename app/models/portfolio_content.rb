class PortfolioContent < ActiveRecord::Base
  belongs_to :Portfolio
  belongs_to :Content
end
