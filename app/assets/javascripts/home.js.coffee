# The easing effect list:
#   easeInQuad
#   easeOutQuad
#   easeInOutQuad
#   easeInCubic
#   easeOutCubic
#   easeInOutCubic
#   easeInQuart
#   easeOutQuart
#   easeInOutQuart
#   easeInQuint
#   easeOutQuint
#   easeInOutQuint
#   easeInSine
#   easeOutSine
#   easeInOutSine
#   easeInExpo
#   easeOutExpo
#   easeInOutExpo
#   easeInCirc
#   easeOutCirc
#   easeInOutCirc
#   easeInElastic
#   easeOutElastic
#   easeInOutElastic
#   easeInBack
#   easeOutBack
#   easeInOutBack
#   easeInBounce
#   easeOutBounce
#   easeInOutBounce

$(document).on 'page:load ready', ->
  $('#home-sexy-kwicks .kwicks').kwicks
    size: 323
    maxSize: 900 # That is minSize = (((323*3)-900) / (nPanels-1))
    spacing: 0
    duration: 1200
    behavior: 'menu'
    easing: 'easeOutBounce'
    isVertical: false

  $(".panel-item").mouseenter ->
    section = $(this)[0].id

    $(".panel-sumary", this).css "opacity", 0
    $(".panel-sumary", this).animate {opacity: 0.8}, 1800

    $(".extra-info > div").each ->
      if this.id is section
        $(this).show()
        $(this).css "opacity", 0
        $(this).animate {opacity: 1}, 2000
      else
        $(this).hide()