require 'spec_helper'

describe "iOS Checkboxes assets" do

  subject { ::Rails.application.assets }

  it { should serve "ios-checkboxes.js" }
  it { should serve "ios-checkboxes.css" }

  %w{on off slider slider_center slider_left slider_right}.each do |image_name|
    it { should serve "ios-checkboxes/#{image_name}.png" }
  end
end
