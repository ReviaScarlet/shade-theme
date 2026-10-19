// This is a single-line comment
console.log("Hello, World!");

const user = "Alice";
let loginCount = 3;

// Embedding variables inside a string
const message = `Welcome back, ${user}! You have logged in ${loginCount} times today.`;
console.log(message);

// Function that calculates the area of a rectangle
function calculateArea(width, height) {
    return width * height;
}

// Calling the function and saving the result
const area = calculateArea(5, 10);
console.log(`The area is: ${area}`); // Output: The area is: 50


const fruits = ["Apple", "Banana", "Cherry"];

// Loop through each item in the array
fruits.forEach((fruit, index) => {
    console.log(`${index + 1}: ${fruit}`);
});

// Assuming you have an HTML element like: <p id="status-text">Loading...</p>

// Find the element by its ID
const statusElement = document.getElementById("status-text");

// Change its text content
statusElement.textContent = "Data successfully loaded!";
