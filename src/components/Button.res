open AncestorMaroon

module Option = Belt.Option
module Icons = Assets.Icons

@react.component
let make = (~children, ~className=?, ~href=?, ~onClick=?, ~loading=false, ~disabled=?, ~icon=?) => {
  let defaultClassName = Helpers.mergeStyles(["bg-white", "rounded-full", "py-2", "px-6", "w-80"])

  let className = switch className {
  | None => defaultClassName
  | Some(additionalClasses) => defaultClassName ++ " " ++ additionalClasses
  }

  <Base
    className
    tag={href->Option.map(_ => #a)->Option.getWithDefault(#button)}
    href=?{href->Option.map(Router.toString)}
    ?onClick
    ?disabled>
    {switch loading {
    | false =>
      <Grid
        justifyContent=[#xs(#"space-between")] alignItems=[#xs(#center)] spacing=[#xs(1), #md(3)]>
        <Box columns=[xs(#6)]>
          {switch icon {
          | Some(iconPath) =>
            <span className="mr-1"> <Next.Image src={iconPath} width="30" height="30" /> </span>
          | None => React.null
          }}
        </Box>
        <Box columns=[xs(#6)]>
          <span className="text-blue-700 uppercase font-black"> children </span>
        </Box>
      </Grid>
    | true => <Base tag=#img width=[xs(3.2->#rem)] src={Icons.make(#loading)} />
    }}
  </Base>
}
