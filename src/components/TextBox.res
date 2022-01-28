@react.component
let make = (~placeholder) => {
    <textarea 
   className=" gap-4 col-span-2 h-64 pt-6  mb-10
              md:text-left space-y-4 
              font-semibold form-textarea rounded-3xl bg-white 
              placeholder-blue2-700" placeholder>
    </textarea>
}