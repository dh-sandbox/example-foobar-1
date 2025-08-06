// A simple example to demonstrate poor maintainability and complexity.
// This code is intentionally written with bad practices for demonstration purposes.

// 1. Global variables and magic numbers
// These values are not explained and can be confusing.
var MAX_ATTEMPTS = 5;
var DISCOUNT_CODE = "SAVE10";
var user_data = {};

// 2. Complex boolean logic without clear explanation
function isEligible(age, has_license, has_car, has_insurance) {
  if (age > 21 && (has_license || (has_car && has_insurance)) && !user_data.is_banned) {
    return true;
  } else if (age === 18 && has_license && !has_insurance) {
    return false;
  }
  return false;
}

// 3. Deeply nested code
function process_order(order) {
  if (order.status === "pending") {
    if (order.items.length > 0) {
      if (order.items[0].price > 100) {
        if (order.customer.is_premium) {
          // This nested logic is difficult to read and modify
          console.log("Processing high-value premium order.");
          // More logic here...
        } else {
          console.log("Processing high-value standard order.");
        }
      } else {
        console.log("Processing standard order.");
      }
    } else {
      console.log("Order is empty.");
    }
  } else {
    console.log("Order is not pending.");
  }
}

// 4. Tight coupling and lack of separation of concerns
// This function does too many things: fetching, processing, and rendering.
function fetch_and_render_data(url) {
  fetch(url)
    .then(function(response) {
      return response.json();
    })
    .then(function(data) {
      // Logic for processing the data is here, tightly coupled with the fetch call
      var processed_data = data.items.map(item => {
        return {
          name: item.name.toUpperCase(),
          value: item.value * 2
        };
      });

      // Directly manipulating the DOM, which is another concern
      var container = document.getElementById("data-container");
      container.innerHTML = processed_data.map(item => `<div>${item.name}: ${item.value}</div>`).join("");
    })
    .catch(function(error) {
      console.error("Error fetching data:", error);
    });
}

// 5. Long function with many lines of code and multiple responsibilities
function perform_complex_calculation(a, b, c) {
  // Missing comments to explain the logic.
  var result1 = a * 2 + 5;
  var result2 = b / 3 - 7;
  var result3 = (c % 10) * result1;
  var final_result;

  if (result1 > 100) {
    final_result = result3 + result2;
  } else {
    final_result = result3 - result2;
  }

  // Another block of unrelated logic
  var another_value = 100;
  if (final_result > another_value) {
    // This part is completely separate from the main calculation logic
    console.log("Result is very high.");
  } else {
    console.log("Result is within range.");
  }

  // Another responsibility: writing to a global variable
  user_data.last_calculation = final_result;

  return final_result;
}

// 6. Inconsistent variable naming
// Mixing snake_case and camelCase.
var user_count = 0;
var totalUsers = 100;

// 7. Unhandled errors or ignoring potential issues
function risky_division(numerator, denominator) {
  // No check for denominator being zero, will throw an error.
  return numerator / denominator;
}

// 8. Unused parameters
function do_something_else(param1, param2) {
  console.log(param1);
  // param2 is never used
}

