Chat::Application.routes.draw do
  
root :to => "users#index"  
 resources :users do  
   resources :messages  
 end   

resources :messages   
match '/userMessage/:id' =>"messages#userMessage"  
match '/privateMessages' =>"messages#privateMessages"  

resource :session  
match '/login' => "sessions#new", :as => "login"  
match '/logout' => "sessions#destroy", :as => "logout"   
match '/test' => "messages#test" 
match '/sendmessage/:id' => "messages#sendmessage" 
match '/sendprivate/:id' => "messages#sendprivate"

end  