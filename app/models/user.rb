require "securerandom"

class User < ApplicationRecord
	has_many :posts
	validates :username, uniqueness: { case_sensitive: false }
	validates :email, uniqueness: { case_sensitive: false }

	before_save do
		logger.info "Processing the spark"
		logger.info "#{self.spark}"
    	self.spark ||= SecureRandom.uuid
		logger.info "Processing the salt"
		logger.info "#{self.spark}"
		match = Structured::Application.config.secret_key_base
		logger.info "#{match}"
		wood = self.password
		logger.info "#{wood}"
		fire = "#{wood}-#{match}-#{spark}"
	end
end
