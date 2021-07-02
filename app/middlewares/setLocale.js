/* @ts-check */

export default (next, request, response, app) => {
  console.log('Info: ', request, response, app);
  return next();
};
