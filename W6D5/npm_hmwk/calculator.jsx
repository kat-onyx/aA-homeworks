import React from 'react';

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    this.state: {
      result: 0,
      num1: "",
      num2: ""
    }
    this.sumNum1 = this.sumNum1.bind(this);
  }

  sumNum1(e) {
    e.preventDefault();
    this.setState({ num1: this.state.num1 })
  }

  render() {
    return (
      <div>
        <input onChange=(this.sumNum1)></input>
        <input onChange=(this.sumNum1.bind(this)></input>
        <h1>{this.state.result}</h1>
      </div>
    );
  }
}

export default Calculator;
