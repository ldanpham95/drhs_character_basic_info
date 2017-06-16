require 'test_helper'

class CharacterInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character_info = character_infos(:one)
  end

  test "should get index" do
    get character_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_character_info_url
    assert_response :success
  end

  test "should create character_info" do
    assert_difference('CharacterInfo.count') do
      post character_infos_url, params: { character_info: { associates: @character_info.associates, birthday: @character_info.birthday, bloodtype: @character_info.bloodtype, chest: @character_info.chest, dislike: @character_info.dislike, eyecolor: @character_info.eyecolor, haircolor: @character_info.haircolor, height: @character_info.height, likes: @character_info.likes, name: @character_info.name, nicknames: @character_info.nicknames, shsl: @character_info.shsl, weight: @character_info.weight } }
    end

    assert_redirected_to character_info_url(CharacterInfo.last)
  end

  test "should show character_info" do
    get character_info_url(@character_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_character_info_url(@character_info)
    assert_response :success
  end

  test "should update character_info" do
    patch character_info_url(@character_info), params: { character_info: { associates: @character_info.associates, birthday: @character_info.birthday, bloodtype: @character_info.bloodtype, chest: @character_info.chest, dislike: @character_info.dislike, eyecolor: @character_info.eyecolor, haircolor: @character_info.haircolor, height: @character_info.height, likes: @character_info.likes, name: @character_info.name, nicknames: @character_info.nicknames, shsl: @character_info.shsl, weight: @character_info.weight } }
    assert_redirected_to character_info_url(@character_info)
  end

  test "should destroy character_info" do
    assert_difference('CharacterInfo.count', -1) do
      delete character_info_url(@character_info)
    end

    assert_redirected_to character_infos_url
  end
end
