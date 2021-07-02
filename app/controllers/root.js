/* @ts-check */

export default async (request, response) => {
  if (process.env.DEVELOPMENT) {
    console.log('Incoming request: ', request);
    console.log('Incoming response: ', response);
  }
};
