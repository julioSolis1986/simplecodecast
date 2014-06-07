class Client < ActiveRecord::Base
  acts_as_paranoid

  attr_accessible :cpf, :birth_date, :ethnicity_id, :name, :observation, :rg,
  :gender_id, :addresses_attributes, :emails_attributes, :phones_attributes

  validates_presence_of :gender_id, :ethnicity_id, :name, :birth_date

  has_many :physical_assessments

	belongs_to :ethnicity
	belongs_to :gender

  has_many :traceabilities, :as => :traceable
  accepts_nested_attributes_for :traceabilities, :reject_if => :all_blank

	has_many :addresses, :as => :addressable
	accepts_nested_attributes_for :addresses, :reject_if => :all_blank

	has_many :phones, :as => :phoneable
	accepts_nested_attributes_for :phones, :reject_if => :all_blank

 	has_many :emails, :as => :emailable
	accepts_nested_attributes_for :emails, :reject_if => :all_blank

  scope :uniquely_nome, group(:name)

  def age
    today = Date.today
    age = today.year - birth_date.year
    age -= 1 if birth_date.strftime("%m%d").to_i > today.strftime("%m%d").to_i
    age
  end

  searchable do
    text :name
    string :name

    text :cpf
    text :rg
    text :observation

    date :birth_date

    string :gender do
      gender.nome
    end

    string :ethnicity do
      ethnicity.nome
    end

    integer :age do
      today = Date.today
      age = today.year - birth_date.year
      age -= 1 if birth_date.strftime("%m%d").to_i > today.strftime("%m%d").to_i
      age
    end

    text :emails do
      emails.map{|c| c.email}
    end

    string :email do
      emails.blank? ? '' : emails.first.email
    end

    text :phones do
      phones.map{|c| c.number}
    end

    string :telefone do
      phones.blank? ? '' : phones.first.number
    end

    date :created_at
  end
end
