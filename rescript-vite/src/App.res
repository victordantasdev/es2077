open Render

// example with useState
// @react.component
// let make = () => {
//   // const [count, setCount] = useState(0)
//   let (count, setCount) = React.useState(_ => 0)
//   let handleClick = _ => setCount(count => count + 1)

//   <div className="main-container">
//     <h1> {count->Js.Int.toString->s} </h1>
//     <button onClick=handleClick> {"increment"->s} </button>
//   </div>
// }

// =============================================================================

type action = Inc | Dec

let countReducer = (count, action) => {
  switch action {
  | Inc => count + 1
  | Dec => count - 1
  }
}

// // example with useReducer
// @react.component
// let make = () => {
//   let (count, dispatch) = React.useReducer(countReducer, 0)

//   <div className="main-container">
//     <h1> {count->Js.Int.toString->s} </h1>
//     <div className="buttons-container">
//       <button onClick={_ => dispatch(Dec)}> {"decrement"->s} </button>
//       <button onClick={_ => dispatch(Inc)}> {"increment"->s} </button>
//     </div>
//   </div>
// }

// =============================================================================

// example with useEffect
@react.component
let make = () => {
  // React.useEffect(() => {

  // }, [])

  <div className="main-container" />
}
