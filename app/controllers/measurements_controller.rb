class MeasurementsController < ApplicationController
  def list
    # render :text => ["apple", "orange", "banana"]
    render :json => {:suggestions => Measurement.where('unit ILIKE ?', '%' + params[:query] + '%' ) }
  end


end
