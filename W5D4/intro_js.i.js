// Mystery Scoping with var, let, const
// Test out each of following functions in Node. What does each log to the console? Do any of them throw errors? See if you can figure out why.

function mysteryScoping1() {
  var x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping2() {
  const x = 'out of block';
  if (true) {
    const x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping3() {
  const x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping4() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping5() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  let x = 'out of block again';
  console.log(x);
}


function madLib(verb, adj, noun) {
  return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`;
}

function isSubstring(searchString, subString) {
  return searchString.indexOf(subString) != -1;
}

function fizzBuzz(array) {
  const fizzBuzzArr = [];

  array.forEach(el => {
    if ((el % 3 === 0) ^ (el % 5 === 0)) {
      fizzBuzzArr.push(el);
    }
  });

  return fizzBuzzArr;
}

function isPrime(number) {
  if (number < 2) { return false; }

  for (let i = 2; i < number; i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}

function sumOfNPrimes(n) {
  let sum = 0
  let numPrimes = 0
  let i = 2

  while (countPrimes < n) {
    if (isPrime(n)) {
      sum += i;
      countPrimes++;
    }

    i++;
  }

  return sum;
}
