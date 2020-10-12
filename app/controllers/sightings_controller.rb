class SightingsController < ApplicationController
  def show
    sighting = Sighting.find(params[:id])

    options = {
      include: [:bird, :location]
    }

    render json: SightingSerializer.new(sighting, options)
  end
end

# We can also use attributes to access related objects, adding them alongside normal object attributes:


# Setting these relationships up is necessary for the second step. Now that we have included relationships connecting the SightingSerializer to :bird and :location, to include attributes from those objects, the recommended method is to pass in a second options parameter to the serializer indicating that we want to include those objects: