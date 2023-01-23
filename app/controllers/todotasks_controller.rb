class TodotasksController < ApplicationController
  def index
    @todotask = Todotask.all
    @len = @todotask.length
  end
  def new
    @todotask = Todotask.new
  end
  def create 
    @todotask = Todotask.new(valid_params)

    if @todotask.save
      redirect_to todotasks_url
    else
      render :new, status: 502
    end
  end

  def destroy
    @todotask = Todotask.find(params[:id])
    @todotask.destroy
    redirect_to todotasks_url
  end

  def edit
    @todotask = Todotask.find(params[:id])
  end

  def update
    @todotask = Todotask.find(params[:id])

    if @todotask.update(valid_params)
      redirect_to todotasks_url
    else
      render :new, status: 502
    end
  end

  private
  def valid_params
    params.require(:todotask).permit(:task, :status)
  end
end
