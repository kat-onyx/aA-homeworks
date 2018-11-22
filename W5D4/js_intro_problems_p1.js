function mysteryScoping1() {
  var x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}
//functionally scoped, no error

function mysteryScoping2() {
  const x = 'out of block';
  if (true) {
    const x = 'in block';
    console.log(x);
  }
  console.log(x);
}
// constant redefined in inner block will not throw an error.  They're block scoped.

function mysteryScoping3() {
  const x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}
// const defined in outer scope and var is scoped per function so there is overlap on delcaring.
//Cannot redefine const.

function mysteryScoping4() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  console.log(x);
}
// each in their own block, no error.

function mysteryScoping5() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  let x = 'out of block again';
  console.log(x);
}
//let declared twice in the same scope.

function madLib(verb, adj, noun) {
  return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`
}

function isSubstring(string, word) {
  var str = string.split(" ");

  for (let i = 0; i < str.length; i++ ) {
    if (word == str[i])
      return true;
  }
  return false;
}

function fizzBuzz(array) {
  fizzed = []

  for (let i = 0; i < array.length; i++) {
    if (array[i] % 3 === 0 && array[i] % 5 === 0)
      continue;
    else if (array[i] % 3 === 0)
      fizzed.push(array[i]);
    else if (array[i] % 5 === 0)
      fizzed.push(array[i]);
  }

  return fizzed;
}

function isPrime(num) {
  if (num < 2) {
    return false;
  }

  for (let i = 2; i < num; i++) {
    if (num % i === 0)
      return false;
  }
  return true;
}

function sumOfNPrimes(n) {
  let sum = 0;
  let countPrimes = 0;

  while (countPrimes < n) {
    if (isPrime(i)) {
      sum += i;
      countPrimes += 1;
    }
    i++;
  }

  return sum;
}
