import React, { Component } from 'react';

class CurrencyConvertor extends Component {
    constructor(props) {
        super(props);

        this.state = {
            amount: '',
            currency: ''
        };
    }

    handleAmountChange = (event) => {
        this.setState({
            amount: event.target.value
        });
    };

    handleCurrencyChange = (event) => {
        this.setState({
            currency: event.target.value
        });
    };

    handleSubmit = (event) => {
        event.preventDefault();

        const euroValue = Number(this.state.amount) / 90;

        alert(
            `Converting to Euro. Amount is ${euroValue.toFixed(2)}`
        );
    };

    render() {
        return (
            <div>
                <h1 style={{ color: 'green' }}>Currency Convertor!!!</h1>

                <form onSubmit={this.handleSubmit}>
                    <div>
                        <label>Amount: </label>
                        <input
                            type="number"
                            value={this.state.amount}
                            onChange={this.handleAmountChange}
                        />
                    </div>

                    <br />

                    <div>
                        <label>Currency: </label>
                        <input
                            type="text"
                            value={this.state.currency}
                            onChange={this.handleCurrencyChange}
                        />
                    </div>

                    <br />

                    <button type="submit">Submit</button>
                </form>
            </div>
        );
    }
}

export default CurrencyConvertor;