class ChoreSerializer

    def initialize(chore_object)
        @chore = chore_object
    end

    def to_serialized_json

        options = {
            include:{
                house:{

                only: [:name, :members]

                }
            },
            except: [:updated_at],
            
        }
        @chore.to_json(options)
    end
end