class PagesController < ApplicationController
  def first
  begin
  @page = Page.find params[:id]
  rescue ActiveRecord::RecordNotFound 
  render_fail()
  else
  render_ok
  end
  end

  def second
  @page = Page.find_by_id params[:id]
  if @page.nil?
  render_fail
  else
  render_ok
  end
  end

  private
  
  def render_ok
     render text: 'ok' 
  end
  def render_fail 
     render text: 'fail'
  end
end
