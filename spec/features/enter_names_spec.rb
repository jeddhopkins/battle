feature '#entering names' do
  scenario 'players can fill in names, submit, and see the names' do
    sign_in_and_play
    expect(page).to have_content("Jedd Vs. Enemy")
  end
end
