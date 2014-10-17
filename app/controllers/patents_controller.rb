class PatentsController < ApplicationController

  # create new pat_record
  def new
  	@patent = Pat_record.new
  end

end
