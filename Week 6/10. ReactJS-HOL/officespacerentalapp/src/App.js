import './App.css';
import officeImage from './assets/office.jpg';

function App() {
  const element = 'Office Space';

  const jsxAtt = (
      <img
          src={officeImage}
          width="250"
          height="250"
          alt="Office Space"
      />
  );

  const itemName = {
    Name: 'DBS',
    Rent: 50000,
    Address: 'Chennai'
  };

  const rentStyle = {
    color: itemName.Rent <= 50000 ? 'red' : 'green'
  };

  return (
      <div className="container">
        <h1>{element}, at Affordable Range</h1>

        {jsxAtt}

        <h2>Name: {itemName.Name}</h2>

        <h3 style={rentStyle}>
          Rent: Rs. {itemName.Rent}
        </h3>

        <h3>Address: {itemName.Address}</h3>
      </div>
  );
}

export default App;