import { useContext } from "react";
import {CoffeeContext} from "../context/CoffeeContext";
import { useCoffee } from "../context/CoffeeContext";

// const SelectedCoffeeBean = () => {

//   const {coffeeBean} = useContext(CoffeeContext)
//   return (
//     <div className="selected-coffee">
//       <h2>Current Selection: {coffeeBean.name}</h2>
//     </div>
//   );
// }

const SelectedCoffeeBean = () => {
  // console.log(useCoffee)
  const {coffeeBean} = useCoffee();

  // const { coffeeBean } = useContext(CoffeeContext);
  return (
    <div className="selected-coffee">
      <h2>Current Selection: {coffeeBean.name}</h2>
    </div>
  );
};




export default SelectedCoffeeBean;
