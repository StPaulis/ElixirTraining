defmodule Superman do
    def lala do
        user = %{name: "Superman", weight: {99, :kg}}
        {:ok , {weight,:kg}} = Map.fetch(user,:weight) 
        with \
            {:n, true} <- {:n, Map.fetch(user,:name) == {:ok , "Superman"}},
            {:w, true} <- {:w, weight > 100}
        do
            {:ok , "Superman"}
        else
            {:n, false} -> {:error, :wrong_name}
            {:w, false} -> {:error, :wrong_weight}
        end
    end    
end


# if ( user.name = "Superman" ){
#     if(user.weight > 100){
#         write OK ...
#     }
# }else{
#     wrong name
# }