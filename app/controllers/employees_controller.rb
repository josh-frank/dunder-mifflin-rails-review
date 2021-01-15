class EmployeesController < ApplicationController
  
  def index
    @all_employees = Employee.all
  end

  def new
    @new_employee = Employee.new
  end

  def create
    new_employee = Employee.create( employee_params( :first_name, :last_name, :alias, :title, :office, :img_url, :dog_id ) )
    if new_employee.valid?
      redirect_to employee_path( new_employee )
    else
      flash[ :messages ] = new_employee.errors.full_messages
      redirect_to new_employee_path
    end
  end

  def edit
    @employee_to_edit = Employee.find( params[ :id ] )
  end

  def update
    updated_employee = Employee.find( params[ :id ] )
    updated_employee.update( employee_params( :first_name, :last_name, :alias, :title, :office, :img_url, :dog_id ) )
    if updated_employee.valid?
      redirect_to employee_path( updated_employee )
    else
      flash[ :messages ] = updated_employee.errors.full_messages
      redirect_to edit_employee_path
    end
  end

  def show
    @this_employee = Employee.find( params[ :id ] )
  end

  private

  def employee_params( *args )
    params.require( :employee ).permit( *args )
  end

end
