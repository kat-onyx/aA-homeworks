const readline = require('readline')

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function teaAndBuscuits () {
  let first, second;

  reader.question("Would you like tea?", function (answer) {
    first = answer;
      console.log(`You said ${answer}`)
  });

  if (first === 'yes') {
    reader.question("Would you like some buscuits?", function (answer) {
      second= answer;
      console.log(`You said ${answer}.`)
    })
  }

  const firstRes = (first === 'yes') ? 'do' : 'don\'t';
  const secondRes = (second === 'yes') ? 'do' : 'don\'t';
  console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
  reader.close();
}
