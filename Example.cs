using System.Collections.Generic;
using System;

namespace Example {
class Program {
		static void Main(string[] args) {
			var count = 10;
			var name = "hello";

			if (count > 5)
				Console.WriteLine(name);

			var items = new List<string>() { "a", "b", "c" };

			string Greet(string n) => $"Hello, {n}!";

			Console.WriteLine(Greet(name));
		}
}
}
