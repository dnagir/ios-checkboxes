require 'spec_helper'

describe "iOS Checkboxes assets" do

  subject { ::Rails.application.assets }

  %w{on off slider slider_center slider_left slider_right}.each do |image_name|
    it { should serve "ios-checkboxes/#{image_name}.png" }
  end
end
