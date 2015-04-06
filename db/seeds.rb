User.create!([
  {email: "a@b.com", encrypted_password: "$2a$10$geMqgNxGTqfif9TSDldK0eEEJ8CYPGFPy/vRimcfxjB7n0LtxcwNe", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-04-06 12:23:03", last_sign_in_at: "2015-04-06 12:23:03", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
])
Profile.create!([
  {first_name: "Anonymous", last_name: "", date_of_birth: nil, user_id: 1}
])
