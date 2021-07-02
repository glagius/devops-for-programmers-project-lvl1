/* @ts-check */

export default (next, request, response, app) => {
  if (process.env.DEVELOPMENT) {
    console.log('Info: ', request, response, app);
  }
  return next();
};
