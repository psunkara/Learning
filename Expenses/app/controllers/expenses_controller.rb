class ExpensesController < ApplicationController
  def index
    @expense = Expense.all.sort_by!  { |s| -s.id }
  end
  def create
    @expense = Expense.new(params[:expense].permit(:amount, :details, :dated))

    if @expense.save
      redirect_to @expense
    else
      render 'new'
    end
  end
  def expense_params
    params.require(:expense).permit(:amount, :details, :dated)
  end
  def new
    @expense = Expense.new
  end
  def edit

  end
  def show
    @expense = Expense.find(params[:id])
  end
  def update

  end

  def destroy
    @expense = Expense.find(params[:id])
    @expense.destroy

    redirect_to expenses_path
  end

end
