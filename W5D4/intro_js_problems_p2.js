function titleize(names, cb) {
  let titleized = names.map(name => `Mx. ${name} JIngleheimer Schmidt`)
  cb(titleized)

  titelize(['Mary', 'Joe', 'Bob'], (names) => {
    names.forEach(name => console.log(name))
  })
}
//not finished

function Elephant {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function() {
  console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!`);
}

Elephant.prototype.grow = function() {
  this.height += 12;
}

Elephant.prototype.addTrick = function() {
  this.tricks.push('Balance a ball');
}

Elephant.prototype.play = function() {
  i = Math.floor(Math.random() * this.tricks.length)
  console.log(`${this.name} plays ${this.tricks[i]}`)
}
