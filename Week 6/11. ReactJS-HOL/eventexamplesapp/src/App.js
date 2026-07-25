import React, { Component } from 'react';
import CurrencyConvertor from './CurrencyConvertor';
import './App.css';

class App extends Component {
  constructor(props) {
    super(props);

    this.state = {
      counter: 0
    };
  }

  increment = () => {
    this.setState(
        {
          counter: this.state.counter + 1
        },
        () => {
          this.sayHello();
        }
    );
  };

  decrement = () => {
    this.setState({
      counter: this.state.counter - 1
    });
  };

  sayHello = () => {
    alert('Hello! Member!');
  };

  sayWelcome = (message) => {
    alert(message);
  };

  handleClick = (event) => {
    alert('I was clicked');
  };

  render() {
    return (
        <div className="container">
          <h2>{this.state.counter}</h2>

          <button onClick={this.increment}>Increment</button>
          <br />

          <button onClick={this.decrement}>Decrement</button>
          <br />

          <button onClick={() => this.sayWelcome('welcome')}>
            Say welcome
          </button>
          <br />

          <button onClick={this.handleClick}>Click on me</button>

          <CurrencyConvertor />
        </div>
    );
  }
}

export default App;
