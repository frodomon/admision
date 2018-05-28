class Request < ApplicationRecord
  has_one :alianza
  has_one :job_type
  has_one :economy_sector
  has_one :economy_activity
  has_one :salary
  has_one :ubigeo
  has_many :dependents, inverse_of: :request, dependent: :destroy
  has_many :observations, inverse_of: :request, dependent: :destroy
  has_many :bank_accounts, inverse_of: :request, dependent: :destroy
  accepts_nested_attributes_for :dependents, allow_destroy: true
  accepts_nested_attributes_for :bank_accounts, allow_destroy: true
  validates_presence_of :dni, message: "Debe ingresar su DNI"
  validates_presence_of :email, message: "Debe ingresar su correo electronico"
  validates_presence_of :mobile, length: { is: 9, message: "Los números móviles tienen 9 digitos"}
  
  
  attr_writer :current_step


  def full_name
    a ="#{try(:name)}  #{try(:last_name)}".to_s                                                                                                                                                                                                                                                                                                                                                                                                                 
  end
  def current_step
  	@current_step || steps.first
  end
  def deletereniec
    self.reniec = true
  end
  def steps
  	%w[personal_info reniec house_info job_info spouse_info dependents_info instituciones patrocinante]
  end

  def next_step
  	self.current_step = steps[steps.index(current_step)+1]
  end

  def previous_step
  	self.current_step = steps[steps.index(current_step)-1]
  end

  def first_step?
  	current_step == steps.first
  end

  def last_step?
  	current_step == steps.last
  end

  def all_valid?
  	steps.all? do |step|
  		self.current_step = step
  		valid?
  	end
  end

  
end
