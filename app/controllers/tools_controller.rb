class ToolsController < ApplicationController
  def index
    @tools = Tool.all
  end

  def show
    @tool = Tool.find(params[:id])
  end

  def new
    @tool = Tool.new
  end

  def create
    @tool = Tool.create(:name => params[:tool]["name"], :price => params[:tool]["price"], :quantity => params[:tool]["quantity"])
    redirect_to tool_path(@tool)
  end

  def edit
    @tool = Tool.find(params[:id])
  end

   def update
    @tool = Tool.find(params[:id])
    @tool.update_attributes(:name => params[:tool]["name"], :price => params[:tool]["price"], :quantity => params[:tool]["quantity"])
    redirect_to tool_path
  end

  def destroy
    @tool = Tool.find(params[:id])
    @tool.delete
    redirect_to root_path
  end
end
