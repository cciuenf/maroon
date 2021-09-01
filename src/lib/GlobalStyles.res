open CssJs

let addStyles = () => {
  global(.
    "html, body, #__next",
    [height(100.->pct), width(100.->pct), padding(zero), margin(zero)],
  )
  global(. "html", [fontSize(10->px), unsafe("scrollBehavior", "smooth")])
}
