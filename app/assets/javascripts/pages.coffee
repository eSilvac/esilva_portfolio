position = $(window).scrollTop()
class PageFuncionality
  constructor: ->
    $(window).on "scroll", @onscroll
    $('#navbar a').on "click", @navbarButtonScroll

  navbarButtonScroll: (e) ->
    if this.hash != ""
      e.preventDefault()
      hash = this.hash
      $('html, body').animate
        scrollTop: $(hash).offset().top
        800 
        ->      
          window.location.hash = hash;

  onscroll: (e) ->
    activeSection()
    navbarEffect()

  activeSection = ->
    actual = $('.navbar .navbar-nav .active').data('scroll')
    $('body').find(actual).addClass('finish')

  navbarEffect = ->
    scroll = $(window).scrollTop()
    if scroll > position
      $('.navbar').addClass('nav-up')
    else
      $('.navbar').removeClass('nav-up');

    position = scroll;

window.PageFuncionality = PageFuncionality