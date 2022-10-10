# == Route Map
#
#                                Prefix Verb   URI Pattern                                                                              Controller#Action
#                             inquiries POST   (/:locale)/inquiries(.:format)                                                           inquiries#create {:locale=>/ja|en/}
#                           new_inquiry GET    (/:locale)/inquiries/new(.:format)                                                       inquiries#new {:locale=>/ja|en/}
#                               my_page GET    (/:locale)/my_pages/:id(.:format)                                                        my_pages#show {:locale=>/ja|en/}
#                                 users GET    (/:locale)/users(.:format)                                                               users#index {:locale=>/ja|en/}
#                                  user GET    (/:locale)/users/:id(.:format)                                                           users#show {:locale=>/ja|en/}
#                                 beans GET    (/:locale)/beans(.:format)                                                               beans#index {:locale=>/ja|en/}
#                                       POST   (/:locale)/beans(.:format)                                                               beans#create {:locale=>/ja|en/}
#                                  bean GET    (/:locale)/beans/:id(.:format)                                                           beans#show {:locale=>/ja|en/}
#                                       PATCH  (/:locale)/beans/:id(.:format)                                                           beans#update {:locale=>/ja|en/}
#                                       PUT    (/:locale)/beans/:id(.:format)                                                           beans#update {:locale=>/ja|en/}
#                                       DELETE (/:locale)/beans/:id(.:format)                                                           beans#destroy {:locale=>/ja|en/}
#                            bean_likes POST   (/:locale)/bean_likes(.:format)                                                          bean_likes#create {:locale=>/ja|en/}
#                             bean_like DELETE (/:locale)/bean_likes/:id(.:format)                                                      bean_likes#destroy {:locale=>/ja|en/}
#                               recipes GET    (/:locale)/recipes(.:format)                                                             recipes#index {:locale=>/ja|en/}
#                                       POST   (/:locale)/recipes(.:format)                                                             recipes#create {:locale=>/ja|en/}
#                                recipe GET    (/:locale)/recipes/:id(.:format)                                                         recipes#show {:locale=>/ja|en/}
#                                       PATCH  (/:locale)/recipes/:id(.:format)                                                         recipes#update {:locale=>/ja|en/}
#                                       PUT    (/:locale)/recipes/:id(.:format)                                                         recipes#update {:locale=>/ja|en/}
#                                       DELETE (/:locale)/recipes/:id(.:format)                                                         recipes#destroy {:locale=>/ja|en/}
#                          recipe_likes POST   (/:locale)/recipe_likes(.:format)                                                        recipe_likes#create {:locale=>/ja|en/}
#                           recipe_like DELETE (/:locale)/recipe_likes/:id(.:format)                                                    recipe_likes#destroy {:locale=>/ja|en/}
#                                 shops GET    (/:locale)/shops(.:format)                                                               shops#index {:locale=>/ja|en/}
#                                       POST   (/:locale)/shops(.:format)                                                               shops#create {:locale=>/ja|en/}
#                                  shop GET    (/:locale)/shops/:id(.:format)                                                           shops#show {:locale=>/ja|en/}
#                                       PATCH  (/:locale)/shops/:id(.:format)                                                           shops#update {:locale=>/ja|en/}
#                                       PUT    (/:locale)/shops/:id(.:format)                                                           shops#update {:locale=>/ja|en/}
#                                       DELETE (/:locale)/shops/:id(.:format)                                                           shops#destroy {:locale=>/ja|en/}
#                            shop_likes POST   (/:locale)/shop_likes(.:format)                                                          shop_likes#create {:locale=>/ja|en/}
#                             shop_like DELETE (/:locale)/shop_likes/:id(.:format)                                                      shop_likes#destroy {:locale=>/ja|en/}
#                           impressions GET    (/:locale)/impressions(.:format)                                                         impressions#index {:locale=>/ja|en/}
#                                       POST   (/:locale)/impressions(.:format)                                                         impressions#create {:locale=>/ja|en/}
#                            impression GET    (/:locale)/impressions/:id(.:format)                                                     impressions#show {:locale=>/ja|en/}
#                                       PATCH  (/:locale)/impressions/:id(.:format)                                                     impressions#update {:locale=>/ja|en/}
#                                       PUT    (/:locale)/impressions/:id(.:format)                                                     impressions#update {:locale=>/ja|en/}
#                                       DELETE (/:locale)/impressions/:id(.:format)                                                     impressions#destroy {:locale=>/ja|en/}
#                                tastes GET    (/:locale)/tastes(.:format)                                                              tastes#index {:locale=>/ja|en/}
#                                       POST   (/:locale)/tastes(.:format)                                                              tastes#create {:locale=>/ja|en/}
#                                 taste GET    (/:locale)/tastes/:id(.:format)                                                          tastes#show {:locale=>/ja|en/}
#                                       PATCH  (/:locale)/tastes/:id(.:format)                                                          tastes#update {:locale=>/ja|en/}
#                                       PUT    (/:locale)/tastes/:id(.:format)                                                          tastes#update {:locale=>/ja|en/}
#                                       DELETE (/:locale)/tastes/:id(.:format)                                                          tastes#destroy {:locale=>/ja|en/}
#         rails_postmark_inbound_emails POST   /rails/action_mailbox/postmark/inbound_emails(.:format)                                  action_mailbox/ingresses/postmark/inbound_emails#create
#            rails_relay_inbound_emails POST   /rails/action_mailbox/relay/inbound_emails(.:format)                                     action_mailbox/ingresses/relay/inbound_emails#create
#         rails_sendgrid_inbound_emails POST   /rails/action_mailbox/sendgrid/inbound_emails(.:format)                                  action_mailbox/ingresses/sendgrid/inbound_emails#create
#   rails_mandrill_inbound_health_check GET    /rails/action_mailbox/mandrill/inbound_emails(.:format)                                  action_mailbox/ingresses/mandrill/inbound_emails#health_check
#         rails_mandrill_inbound_emails POST   /rails/action_mailbox/mandrill/inbound_emails(.:format)                                  action_mailbox/ingresses/mandrill/inbound_emails#create
#          rails_mailgun_inbound_emails POST   /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)                              action_mailbox/ingresses/mailgun/inbound_emails#create
#        rails_conductor_inbound_emails GET    /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#index
#                                       POST   /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#create
#         rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#show
#                                       PATCH  /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
#                                       PUT    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
#                                       DELETE /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#destroy
# rails_conductor_inbound_email_reroute POST   /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)                      rails/conductor/action_mailbox/reroutes#create
#                    rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
#             rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#                    rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
#             update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#                  rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  # devise_for :users, only: :omniauth_callbacks, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  scope '(:locale)', locale: /#{I18n.available_locales.map(&:to_s).join('|')}/ do
    # devise_for :users, skip: :omniauth_callbacks, controllers: { registrations: 'users/registrations', sessions: 'sessions' }
    # devise_scope :user do
    #   post 'users/guest_sign_in', to: 'sessions#new_guest'
    # end

    # root 'top_pages#index'

    resources :inquiries, only: [:new, :create]

    resources :my_pages, only: [:show]

    resources :users, only: [:show, :index]

    resources :beans do
      collection do
        get 'countries'
        get 'varieties'
        get 'processes'
        get 'roasts'
      end
    end
    resources :bean_likes, only: [:create, :destroy]

    resources :recipes
    resources :recipe_likes, only: [:create, :destroy]

    resources :shops
    resources :shop_likes, only: [:create, :destroy]

    resources :impressions
    resources :tastes
  end
end
