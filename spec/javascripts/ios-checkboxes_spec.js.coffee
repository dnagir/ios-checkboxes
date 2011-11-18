#= require ios-checkboxes

describe "iOS Checkboxes", ->

  it "should have jQuery extensions", ->
    expect(jQuery.fn.iphoneStyle).toBeTruthy()

  it "should apply css to the on/off button", ->
    setFixtures "<input id='box' type='checkbox' />"
    check = $("#box")
    check.iphoneStyle()
    expect(check.parent()).toBe ".iPhoneCheckContainer"

  it "should apply styles for the checkboxes from the CSS", -> expect("TODO").toBe 'done'
