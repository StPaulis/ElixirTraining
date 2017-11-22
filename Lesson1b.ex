defmodule Superman do
    def withWith do
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

    def withCase do
        user = %{name: "Superma1n", weight: {107, :kg}}
        {:ok , {weight,:kg}} = Map.fetch(user,:weight)
        w = weight > 100
        {w, Map.fetch(user,:weight)}
        case {w, Map.fetch(user,:name)} do
            {true, {:ok , "Superman" }} -> {:ok , "Superman"}
            {false, {:ok , "Superman" }} -> {:error, :wrong_weight}
            {_, {:ok , _ }} -> {:error, :wrong_name}
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