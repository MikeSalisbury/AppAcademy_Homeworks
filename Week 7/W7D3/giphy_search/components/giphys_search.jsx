import React from 'react';

import GiphysIndex from './giphys_index';

class GiphysSearch extends React.Component {
  constructor (props){
    super(props);
    this.state = {searchTerm: ""};
  }

  handleChange(e) => (
    this.setState(searchTerm: e.currentTarget.value);
  )

  handleSubmit(e) => (
    e.preventDefault;
  )

  render() => (

  )
}
