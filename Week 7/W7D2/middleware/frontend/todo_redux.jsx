import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

// phase 1
// const addLoggingToDispatch = (store) => {
//   const oldStore = store.dispatch;
//   return (action) => {
//     console.log(store.getState());
//     console.log(action);
//     next(action);
//     console.log(store.getState());
//   };
// };

// phase 2
// function addLoggingToDispatch(store) {
//   return function(next) {
//     return function(action) {
//       console.log(store.getState());
//       console.log(action);
//       next(action);
//       console.log(store.getState());
//     };
//   };
// }

// const addLoggingToDispatch = store => next => action => {
//   console.log(store.getState());
//   console.log(action);
//   next(action);
//   console.log(store.getState());
// };
//
// const applyMiddlewares = (store, ...middleWares) => {
//   const dispatch = store.dispatch;
//   middleWares.forEach((middleware) => {
//     dispatch = middleware(store)(dispatch);
//   });
//   return Object.assign({}, store, { dispatch });
// };

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  const store = configureStore(preloadedState);
  // phase 1
  // store.dispatch = addLoggingToDispatch(store);
  // phase 2
  // store = applyMiddlewares(store, addLoggingToDispatch)

  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);
});
