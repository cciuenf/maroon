@react.component
let make = (~label: string, ~onClick, ~icon=?) => {
  <button className="flex items-center bg-white rounded-full py-3 px-6 w-80 justify-center" onClick>
    {switch icon {
    | Some(iconPath) =>
      <span className="mr-1"> <Next.Image src={iconPath} width="30" height="30" /> </span>
    | None => React.null
    }}
    <span className="text-blue-700 uppercase font-black"> {label->React.string} </span>
  </button>
}
