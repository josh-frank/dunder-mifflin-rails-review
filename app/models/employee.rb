class Employee < ApplicationRecord

    belongs_to :dog

    validates :first_name, uniqueness: { message: "Employee must have a unique name" }
    validates :last_name, uniqueness: { message: "Employee must have a unique name" }
    validates :alias, uniqueness: { message: "Employee must have a unique alias" }, if: Proc.new{ | employee | !employee.alias.eql?( "none" ) }

    def full_name
        self.first_name + " " + self.last_name
    end

end
