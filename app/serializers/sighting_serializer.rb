class SightingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :created_at 
  belongs_to :bird
  belongs_to :location
end

# We can also use attributes to access related objects, adding them alongside normal object attributes:However, here, we have no control over what attributes are included in the related objects, and so we get all the attributes of "bird" and "location".


# Setting these relationships up is necessary for the second step. Now that we have included relationships connecting the SightingSerializer to :bird and :location, to include attributes from those objects, the recommended method is to pass in a second options parameter to the serializer indicating that we want to include those objects: