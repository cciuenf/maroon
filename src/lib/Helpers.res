let mergeStyles = (styles: array<string>) =>
  Belt.Array.reduce(styles, "", (acc, v) => acc ++ " " ++ v)
