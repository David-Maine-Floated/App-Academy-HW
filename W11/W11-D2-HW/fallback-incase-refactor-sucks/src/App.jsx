import coffeeBeans from './mockData/coffeeBeans.json';
import SelectedCoffeeBean from './components/SelectedCoffeeBean';
import CoffeeProvider from './context/CoffeeContext';
import SetCoffeeBean from './components/SetCoffeeBean';

function App() {
  return (
    <>
      <CoffeeProvider>
        <h1>Welcome to Coffee App</h1>
        <SetCoffeeBean coffeeBeans={coffeeBeans}/>
        <SelectedCoffeeBean />
      </CoffeeProvider>
    </>
  );
}

export default App;
