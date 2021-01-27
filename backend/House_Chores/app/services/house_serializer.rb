class HouseSerializer


    # Instantiate a new sereliazer with a model instance as an argument.

    def initialize(house_object)

        @house = house_object;
    end

    def to_serialized_json
        options = {

        include: {
            chores: {
                only: [:name, :status , :id , :house_id]
            }
        },
        except: [:updated_at],
        }
        @house.to_json(options)
    end
end