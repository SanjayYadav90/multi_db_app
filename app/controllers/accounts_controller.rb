class AccountsController < ApplicationController
  def index
    @logs = Account.all
  end

  def new
    @log = Account.new
  end

  def show
  end

  def create
    @log = Account.new(account_params)

    respond_to do |format|
      if @log.save
        format.html  { redirect_to(accounts_index_url, :notice => 'Account was successfully created.') }
        format.json  { render :json => accounts_index_url, :status => :created, :location => @account }
      else
        format.html  { render :action => "new" }
        format.json  { render :json => @account.errors, :status => :unprocessable_entity }
      end
    end
  end

  def account_params
    params.require(:account).permit(:title, :acc_no, :description)
  end
end
