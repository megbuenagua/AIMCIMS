json.array!(@login_accounts) do |login_account|
  json.extract! login_account, :id, :loginId, :username, :password
  json.url login_account_url(login_account, format: :json)
end
