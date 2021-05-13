class SecretCode < ActiveRecord::Base
  belongs_to :user

  def bulk_generate_code count
    count.to_i.times.each do
			SecretCode.create(code: generate_code)
		end
  end

  private

  def generate_code
    (0...8).map { (65 + rand(26)).chr }.join
  end
end
