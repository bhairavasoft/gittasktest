// program to check if a number is an Armstrong number

function isArmstrongNumber(number) {
    // Convert number to string to determine its number of digits
    const numStr = number.toString();
    const numDigits = numStr.length;
    let sum = 0;
    let temp = number;

    // Calculate the sum of the power of digits
    while (temp > 0) {
        let remainder = temp % 10;
        sum += Math.pow(remainder, numDigits);
        temp = Math.floor(temp / 10); // Remove last digit
    }

    return sum === number;
}

function main() {
    const input = prompt('Enter a positive integer: ');

    // Validate input
    if (!input || isNaN(input) || input <= 0 || !Number.isInteger(Number(input))) {
        console.error('Invalid input! Please enter a positive integer.');
        return;
    }

    const number = parseInt(input, 10);

    if (isArmstrongNumber(number)) {
        console.log(`${number} is an Armstrong number.`);
    } else {
        console.log(`${number} is not an Armstrong number.`);
    }
}

main();
