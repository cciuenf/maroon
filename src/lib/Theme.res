module Colors = {
  let blue = "#88B8CC"
  let blue2 = "#277DA1"
  let lightBlue = "#BCE0EF"
  let darkBlue = "#0E4771"

  let green = "#25CE52"

  let orange = "#F8961E"

  let yellow = "#F5BD00"

  let red = "#FF635D"

  let white = "#fff"

  let black = "#000"

  module Ancestor = {
    let blue = #hex(blue)
    let blue2 = #hex(blue2)
    let lightBlue1 = #hex(lightBlue)
    let darkBlue = #hex(darkBlue)

    let green = #hex(green)

    let orange = #hex(orange)

    let yellow = #hex(yellow)

    let red = #hex(red)

    let white = #hex(white)

    let black = #hex(black)
  }
}

module Radius = {
  let small = "6px"
  let medium = "12px"
  let large = "16px"
}

module Spacing = {
  let make = (value: float) => value->(v => v *. 0.8)->Js.Float.toString ++ "rem"
}

let fontFamily = "'DM Sans', sans-serif"
let wrapperMaxW = #rem(144.0)
