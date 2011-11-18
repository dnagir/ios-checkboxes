#= require ios-checkboxes

describe "iOS Checkboxes", ->

  iphonify = ->
    setFixtures "<input id='box' type='checkbox' />"
    check = $("#box")
    check.iphoneStyle()
    check.parent()


  it "should have jQuery extensions", ->
    expect(jQuery.fn.iphoneStyle).toBeTruthy()

  it "should apply css classes to the on/off button", ->
    wrap = iphonify()
    expect(wrap).toBe ".iPhoneCheckContainer"

  it "should apply styles for the checkboxes from the CSS", ->
    wrap = iphonify()
    # Make sure some basic CSS has been applied.
    # It's a basic test to make sure the CSS is actually loaded
    expect(wrap.css 'height')   .toBe '27px'
    expect(wrap.css 'position') .toBe 'relative'
    expect(wrap.css 'cursor')   .toBe 'pointer'
