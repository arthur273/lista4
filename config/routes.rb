Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do
      scope 'languages' do
        get 'index', to: 'languages#index'
        get 'show/:id', to: 'languages#show'
        post 'create', to: 'languages#create'
        delete 'delete/:id', to: 'languages#delete'
      end
      scope 'students' do
        get 'index', to: 'students#index'
        get 'show/:id', to: 'students#show'
        post 'create', to: 'students#create'
        delete 'delete/:id', to: 'students#delete'
      end
      scope 'teachers' do
        get 'index', to: 'teachers#index'
        get 'show/:id', to: 'teachers#show'
        post 'create', to: 'teachers#create'
        delete 'delete/:id', to: 'teachers#delete'
        put 'update/:id', to: 'teachers#update'
        get 'my_students/:teacher_id', to: 'teachers#my_students'
      end
    end
  end
end
