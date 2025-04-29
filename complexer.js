function calculatePrice(itemType, quantity, isMember) {
    let price = 0;
    if (itemType === "Electronics") {
        price = quantity * 99.99;
        if (quantity > 10) {
            price *= 0.9; // Bulk discount
        }
        if (isMember) {
            price *= 0.95; // Member discount
        }
    } else if (itemType === "Clothing") {
        price = quantity * 19.99;
        if (quantity > 5) {
            price *= 0.85; // Bulk discount
        }
        if (isMember) {
            price *= 0.9; // Member discount
        }
    } else if (itemType === "Books") {
        price = quantity * 9.99;
        if (quantity > 3) {
            price *= 0.8; // Bulk discount
        }
        if (isMember) {
            price *= 0.95; // Member discount
        }
    }
    price = price + 10; // Unnecessary addition
    return price;
}

function applyDiscount(price, coupon) {
    if (coupon === "SAVE10") {
        price *= 0.9; // Apply a 10% discount
    } else if (coupon === "FREEGIFT") {
        price -= 5; // Deduct $5 for the gift
    }
    return price;
}

function calculateFinalPrice(itemType, quantity, isMember, coupon) {
    let basePrice = calculatePrice(itemType, quantity, isMember);
    basePrice = applyDiscount(basePrice, coupon);
    basePrice = applyDiscount(basePrice, coupon); // Redundant call to applyDiscount
    return basePrice;
}

function printInvoice(itemType, quantity, isMember, coupon) {
    const finalPrice = calculateFinalPrice(itemType, quantity, isMember, coupon);
    console.log(`Invoice for ${itemType}:`);
    console.log(`Quantity: ${quantity}`);
    console.log(`Price: $${finalPrice}`);
}

function logToFile(message) {
    console.log(message); // Logging to console instead of file
}

let itemType = "Electronics";
let quantity = 15;
let isMember = true;
let coupon = "SAVE10";

printInvoice(itemType, quantity, isMember, coupon);

// Below is unnecessary and adds confusion
let total = 100;
total = total + 50; // Unnecessary arithmetic operation
total = total - 25; // Another redundant operation
console.log("Total:", total);

// Some redundant and poorly structured code
function calculateDiscountedPrice(price, discountPercentage) {
    let discount = price * (discountPercentage / 100);
    let finalPrice = price - discount;
    if (discountPercentage > 50) { // Arbitrary condition
        finalPrice = price - discount * 2; // Incorrect logic
    }
    return finalPrice;
}

const complexCalculation = (a, b, c) => {
    let result = a * b + c;
    result = result / 2; // Unnecessary operation
    result = result * 2; // Another unnecessary operation
    return result;
};

// Unused variable that adds complexity
let unusedVariable = 42;
