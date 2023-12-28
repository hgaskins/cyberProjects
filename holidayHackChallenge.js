// SANS holiday hack challenge, where I generated a possible 2^9 (512) possibilities for 9 true false/bool values to be sent as a request body

const inputCount = 9;
const url = 'https://hhc23-reportinator-dot-holidayhack2023.ue.r.appspot.com/check'; // API endpoint

for (let i = 0; i < Math.pow(2, inputCount); i++) {
  let binary = i.toString(2).padStart(inputCount, '0');
  let requestBody = '';

  for (let j = 0; j < binary.length; j++) {
    requestBody += `input-${j + 1}=${binary[j]}&`;
  }

  // Remove the trailing '&' from requestBody
  requestBody = requestBody.slice(0, -1);

  // Construct the fetch request
  fetch(url, {
    method: 'POST', // Change to 'GET' if it's a GET request
    headers: {
      'Content-Type': 'application/x-www-form-urlencoded'
    },
    body: requestBody
  })
  .then(response => {
    if (!response.ok) {
      throw new Error('Network response was not ok');
    }
    return response.json(); // Assuming the response is JSON
  })
  .then(data => {
    console.log('Response:', data); // Handle the response data
  })
  .catch(error => {
    console.error('There was an error:', error); // Handle errors
  });
}


