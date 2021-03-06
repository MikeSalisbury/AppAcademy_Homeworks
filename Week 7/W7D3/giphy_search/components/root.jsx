import React from 'react';
import { Provider } from 'react-redux';

import GiphysSearchContainer from './giphys_search_container';

const Root = ({store}) => (
  <provider store={store}>
    <GiphysSearchContainer />
  </provider>
);

export default Root;
