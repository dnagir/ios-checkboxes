#= require ios-checkboxes

describe "iOS Checkboxes", ->

  iphonify = (rootClass='') ->
    setFixtures "<div class='#{rootClass}'>  <input id='box' type='checkbox' />  </div>"
    check = $("#box")
    check.iphoneStyle()
    check.parent()

  simulateSwitch = (container) ->
    # This sends the up/down events to the element simulating that the button is pressed
    container.trigger $.Event 'mousedown', pageX: 1
    container.trigger $.Event 'mouseup', pageX: 1

  it "should have jQuery extensions", ->
    expect(jQuery.fn.iphoneStyle).toBeTruthy()

  it "should be able to switch with mouse", ->
    container   = iphonify()
    input       = container.find ':checkbox'
    initialVal  = input.prop 'checked'

    simulateSwitch container
    expect( input.prop 'checked' ).toBe not initialVal

    simulateSwitch container
    expect( input.prop 'checked' ).toBe initialVal


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
    expect(wrap.find('.iPhoneCheckHandle').css 'background-image').toMatch /ios-checkboxes/

  it "should allow customizing the styles", ->
    wrap = iphonify('custom')
    label = wrap.find('label')
    handle = wrap.find('.iPhoneCheckHandle')
    expect(wrap.css   'height')         .toBe '33px'
    expect(label.css  'height')         .toBe '33px'
    expect(label.css  'line-height')    .toBe '30px'
    expect(label.css  'font-size')      .toBe '30px'
    expect(handle.css 'background-image') .toMatch /custom-path/
