import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);
    this.state = {result: 0, num1: "", num2: ""};
    this.setNum1 = this.setNum1.bind(this);
    this.add = this.add.bind(this);
    this.subtract = this.subtract.bind(this);
    this.multiply = this.multiply.bind(this);
    this.divide = this.divide.bind(this);
    this.clear = this.clear.bind(this);
  }

  setnum1(e) {
    e.preventDefault();
    this.state.num1 = parseInt(e.target.value);
    const num1 = parseInt(e.target.value);
    this.setState({num1});
  }

  setnum2(e) {
    e.preventDefault();
    this.state.num2 = parseInt(e.target.value);
    const num2 = parseInt(e.target.value);
    this.setState({num2});
  }

  add(e) {
    e.preventDefault();
    this.state.result = this.state.num1 + this.state.num2;
    const result = this.state.result;
    this.setState({result});
  }

  subtract(e){
    e.preventDefault();
    this.state.result = this.state.num1 - this.state.num2;
    const result = this.state.result;
    this.setState({result});
  }

  multiply(e) {
    e.preventDefault();
    this.state.result = this.state.num1 * this.state.num2;
    const result = this.state.result;
    this.setState({result});
  }

  divide(e){
    e.preventDefault();
    this.state.result = this.state.num1 / this.state.num2;
    const result = this.state.result;
    this.setState({result});
  }

  clear(e) {
    e.preventDefault();
    this.state.num1 = "";
    this.state.num2 = "";
    const num1 = this.state.num1;
    const num2 = this.state.num2;
    this.setState({num1, num2});
  }

  render(){
    return (
      <div>
        <h1>{this.state.result}</h1>
        <input onChange={this.setNum1} value={this.state.num1}></input>
        <button onClick={this.clear}>CLEAR</button>
        <br />
        <input onChange={this.setNum2} value={this.state.num2}></input>
        <button onClick={this.add}>+</button>
        <button onClick={this.subtract}>-</button>
        <button onClick={this.multiply}>*</button>
        <button onClick={this.divide}>/</button>

      </div>
    );
  }
  
}

export default Calculator;
