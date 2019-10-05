Rails.application.routes.draw do

  get 'searches/criteria'
  get 'searches/criteria/:q' => 'searches#criteria'
  post '/webhooks/telegram_vbc43edbf1614a0759545954dvd4bfab34l1' => 'webhooks#callback'

end
