function titleize(arr, func) {
    console.log(arr)
    let newNames = arr.map((name) =>
        `Mx. ${name} Jingleheime Schmidt`);
    func(newNames)
}
//what's wrong with function below? clearly some scope issue
// function titleize(arr, func) {
//     console.log(arr)
//     const names = arr
//     let newNames = names.map(function(name) {
//         `Mx. ${name} Jingleheime Schmidt`});
//     func(newNames)
// }



function printCallback(names) {
    names.forEach(function(name) {
        console.log(name)
    });
    
}

// console.log(titleize(["Mary", "Brian", "Leo"], printCallback));



function Cat(name, height, tricks) {
    this.name = name;
    this.height = height;
    this.tricks = tricks;
}

Cat.prototype.trumpet = function() {
    console.log(`${this} the elepthant goes phRRRRRRRRR!!!!`);
}

Cat.prototype.grow = function() {
    this.height += 12;
}

Cat.prototype.addTrick = function(trick) {
    this.tricks.push(trick);
}

Cat.prototype.play = function(trick) {
    let i = Math.floor(math.random() * this.tricks.length)
    console.log(`${this.name} is ${trick}!`)
}   

let elliot = new Cat('Elliot', 60, ['giving big lick', 'receiving best scritches', 'sleeps on your heart when you need it'])

console.log(elliot)

function dinerBreakfast(foods) {
    let string = "I'd like ";
    let count = 0 ;
    foods.forEach(function (food) {
        if (count === 0) {
            string += `${food} `;
        } else {
            string += `and ${food} `;
        }
        count++;
    });
    string += 'please.'
    return string 
}



console.log(dinerBreakfast(['cheesy eggs', 'ham' ,'toast']))