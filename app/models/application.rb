class Application < ActiveRecord::Base
	enum status:[:accepted, :rejected, :pending]
	belongs_to(:student)
	belongs_to(:school)
	# validates(:semester, presence: true)
	# validates(:major, presence: true)
	# validates(:fin_aid, presence: true)
	# validates(:scholarships, presence: true)
	# validates(:immunization, presence: true)
	# validates(:gpa, presence: true)
	# validates(:sat_score, presence: true)
	# validates(:grad_date, presence: true)
	# validates(:about, presence: true)
	


	has_attached_file(:avatar, 
					  styles: { large: "600x600>", 
					  			medium: "300x300>", 
					  			small: "100x100>" },
					  default_url: "/assets/:style/avatar.png")
	
  validates_attachment_content_type(:avatar, content_type: /\Aimage\/.*\z/)

  	has_attached_file(:transcript)
  validates_attachment_content_type(:transcript, content_type: 'application/msword')

  	has_attached_file(:recommendation)
  validates_attachment_content_type(:recommendation, content_type: 'application/msword')

  	has_attached_file(:other_document)
  validates_attachment_content_type(:other_document, content_type: 'application/msword')

  

end
