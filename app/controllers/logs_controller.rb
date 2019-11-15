class LogsController < ApplicationController
  def index
    @logs = Log.all
  end

  def new
    @log = Log.new
  end

  def show
  end

  def create
    @log = Log.new(log_params)

    respond_to do |format|
      if @log.save
        format.html  { redirect_to(logs_index_url, :notice => 'Post was successfully created.') }
        format.json  { render :json => logs_index_url, :status => :created, :location => @log }
      else
        format.html  { render :action => "new" }
        format.json  { render :json => @log.errors, :status => :unprocessable_entity }
      end
    end
  end

  def log_params
    params.require(:log).permit(:title, :status, :description)
  end
end
