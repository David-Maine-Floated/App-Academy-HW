


function madLib(verb, adj, noun) {
    console.log(`We shall ${verb} the ${adj} ${noun}`)
}

madLib('make', 'best', 'guac');

const isSubstring = (searchString, subString) => {
    return searchString.includes(subString)
}

function fizzBUzz(array) {
    let newArray = []
        array.forEach( (el) => {
            if (el % 3 === 0 || el % 5 === 0) {
            newArray.push(el)
        }
    })
    return newArray 
}


function isPrime(num) {
    let i = 2 
    while (i < num) {
        if (num % i === 0) {return false}
        i++
    }
    return true 
}

function sumOfNPrimes(num) {
    if (num === 0) {return 0}
    let j = 2
    let i = 1
    let result = 0
    while (i <= num) {
        if (isPrime(j)) {
            result += j
        }
        console.log("result", result)
        console.log('j', j)
        // debugger
        j++
        i++
        // debugger
    }
    return result 
}