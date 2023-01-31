require "application_system_test_case"

class CelebsTest < ApplicationSystemTestCase
  setup do
    @celeb = celebs(:one)
  end

  test "visiting the index" do
    visit celebs_url
    assert_selector "h1", text: "Celebs"
  end

  test "should create celeb" do
    visit celebs_url
    click_on "New celeb"

    fill_in "Game", with: @celeb.game_id
    fill_in "Name", with: @celeb.name
    click_on "Create Celeb"

    assert_text "Celeb was successfully created"
    click_on "Back"
  end

  test "should update Celeb" do
    visit celeb_url(@celeb)
    click_on "Edit this celeb", match: :first

    fill_in "Game", with: @celeb.game_id
    fill_in "Name", with: @celeb.name
    click_on "Update Celeb"

    assert_text "Celeb was successfully updated"
    click_on "Back"
  end

  test "should destroy Celeb" do
    visit celeb_url(@celeb)
    click_on "Destroy this celeb", match: :first

    assert_text "Celeb was successfully destroyed"
  end
end
