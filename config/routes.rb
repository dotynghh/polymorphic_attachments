PolymorphicAttachments::Engine.routes.draw do
  root to: 'polymorphic_attachments#index'
  resources :polymorphic_attachments
end