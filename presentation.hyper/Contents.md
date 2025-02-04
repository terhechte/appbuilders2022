

### Clone the repository 

![](326C6AAB-B0A9-4AD5-BA8E-EE2B39AB7AEF.png)

`github.com/terhechte/appbuilders2022`

--- :: master: regular1

## Feel invited to work in pairs!

--- :: master: regular1

# Language Introduction

--- :: master: title2

## Cargo

``` sh
cargo new
cargo check
cargo run 
cargo build 
cargo test
cargo build --release 
cargo run --release 

```

--- :: master: code

## `cargo --help`

``` sh
cargo search graphql
cargo doc --open
cargo bench 
cargo update
cargo clean
```

--- :: master: code

## First steps

``` sh
sh$ cargo new my-fancy-project
sh$ ls .
my-fancy-project
sh$ 
```

--- :: master: code



## Structure of a binary Rust project

:: theme: Solarized (dark)
``` sh
Cargo.toml
Cargo.lock
src/
  main.rs
target/
  debug/
  release/
```

--- :: master: code

## Structure of a library Rust project

:: theme: Solarized (dark)
``` sh
Cargo.toml
Cargo.lock
src/
  lib.rs
```

--- :: master: code

## Cargo.toml

``` toml
[package]
name = "my-project"
version = "0.1.0"
edition = "2021"

[dependencies]
serde_json = "1.0"
serde = { version = "1.0.137", features = ["derive"]}
eyere = "*"
```

--- :: master: code





:: size: 70
| Rust  | Swift |
|-------|-------|
| String | String  |
| usize | UInt  |
| isize | Int   |
| i8    | Int8  |
| i32    | Int32  |
| u8    | UInt8  |
| u32    | UInt32  |
| bool    | Bool  |
| f32    | Float  |
| f64    | Double  |
    

--- :: master: regular1




# Functions

--- :: master: regular1




:: label: Swift
``` swift

func example(content: String) -> String {
    content
}
    
```

:: label: Rust, animate: (0.50;move;bottom)
``` rust

fn example(content: String) -> String {
    content
}
    
```

*** :: alignment: left



:: label: Swift
``` swift

func example(content: Int) -> Int {
    let output = content * 2
    return output
}

example(content: 42)
    
```

:: label: Rust, animate: (0.50;move;bottom)
``` rust

fn example(content: usize) -> usize {
    let output = content * 2;
    output
}

example(42)
    
```

*** :: alignment: left



:: label: Swift
``` swift

func example(content: String) -> String {
    var output = content * 2
    output += 50
    return output
}
    
```

:: label: Rust, animate: (0.50;move;bottom)
``` rust

fn example(content: usize) -> usize {
    let mut output = content * 2;
    output += 50;
    output
}
    
```

*** :: alignment: left



:: label: Swift
``` swift

func example<T>(content: T) -> T {
    content
}
    
```

:: label: Rust, animate: (0.50;move;bottom)
``` rust

fn example<T>(content: T) -> T {
    content
}
    
```

*** :: alignment: left



:: label: Swift
``` swift

func compareTwo<T: Equatable>(a: T, b: T) -> Bool {
    a == b
}
    
```

:: label: Rust, animate: (0.50;move;bottom)
``` rust

fn compare_two<T: Eq>(a: T, b: T) -> bool {
    a == b
}
    
```

*** :: alignment: left



:: label: Swift
``` swift

func compareTwo<T: Equatable>(a: T, b: T) -> Bool 
where T: Equatable {
    a == b
}
    
```

:: label: Rust, animate: (0.50;move;bottom)
``` rust

fn compare_two<T>(a: T, b: T) -> bool
where T: Eq {
    a == b
}
    
```

*** :: alignment: left



# Closures

--- :: master: regular1




:: label: Swift
``` swift

callAction({ a, b in
    a * b
})

callAction {
    $0 * $1
}

func takesClosure(action: (Int) -> bool)
    
```

:: label: Rust, animate: (0.50;move;bottom)
``` rust

call_action(|a, b| {
    a * b
})

call_action(|a, b| a * b)

fn takes_closure(action impl Fn(usize) -> bool)
    
```

*** :: alignment: left



# Printing

--- :: master: regular1




:: label: Swift
``` swift

let o = 42
print(o)
    
```

:: label: Rust, animate: (0.50;move;bottom)
``` rust

let o = 42;
println!("{}", o);
    
```

*** :: alignment: left



:: label: Swift
``` swift

let o = 42
print("\(o)")
    
```

:: label: Rust, animate: (0.50;move;bottom)
``` rust

let o = 42;
println!("{o}");
    
```

*** :: alignment: left



:: label: Swift
``` swift

let o = 42
print("\(o)")
    
```

:: label: Rust, animate: (0.50;move;bottom)
``` rust

let o = make_complex_type();
println!("{:?}", &o);
    
```

*** :: alignment: left



# Arrays / Vectors

--- :: master: regular1




:: label: Swift
``` swift

let array = [1, 2, 3]
    
```

:: label: Rust, animate: (0.50;move;bottom)
``` rust

let array = [1, 2, 3];
    
```

*** :: alignment: left



:: label: Swift
``` swift

// Dynamic array
var array = [1, 2, 3]
    
```

:: label: Rust, animate: (0.50;move;bottom)
``` rust

// Static array, can't be extended
let mut array = [1, 2, 3];
    
```

*** :: alignment: left



:: label: Swift
``` swift

// Dynamic array
var array = [1, 2, 3]
    
```

:: label: Rust, animate: (0.50;move;bottom)
``` rust

// Dynamic array
let mut array = vec![1, 2, 3];
let mut array = vec![];

array.push(7);
array.push(8);
    
```

*** :: alignment: left



:: label: Swift
``` swift

let map = [
    5: "My favorite book."
]
    
```

:: label: Rust, animate: (0.50;move;bottom)
``` rust

let mut map = HashMap::new();
map.insert(5, "My favorite book.");
);
    
```

*** :: alignment: left



# Tuples

--- :: master: regular1




:: label: Swift
``` swift

let tuple = ("a", 5, 42.0, true)
print(tuple.0)
    
```

:: label: Rust, animate: (0.50;move;bottom)
``` rust

let tuple = ("a", 5, 42.0, true);
println!(tuple.0);
    
```

*** :: alignment: left



# Control Structures

--- :: master: regular1




:: label: Swift
``` swift

if 5 > 10 {
    return 20
} else {
    return 30
}
    
```

:: label: Rust, animate: (0.50;move;bottom)
``` rust

if 5 > 10 {
    return 20;
} else {
    return 30;
}
    
```

*** :: alignment: left



:: label: Rust
``` rust

fn test() -> usize {
    // The last expression is returned
    let a = 4 + 2;
    let b = a * 3
    b
}
    
```

***




:: label: Rust
``` rust

let hello = if a > b {
    23
} else {
    24
};

let what = loop {
    if a > 3 {
        break 23;
    }
};
    
```

***




:: label: Swift
``` swift

for x in array {
    print(x)
}
    
```

:: label: Rust, animate: (0.50;move;bottom)
``` rust

for x in array {
    println!(x);
}
    
```

*** :: alignment: left



# First task

--- :: master: title1

## Tip: Debug Printing

You can use `dbg!(...)` for debug printing

``` rs
// It will just pipe the data through
let my_thing = dbg!(call_thing());
```

--- :: master: regular2

## Tip: Debugger

- If you installed the debugger VSCode extension, you have a proper debugger
-  Just press `F5` to run the app in the debugger

--- :: master: regular2

# Strings

- Rust has two String types. This will be explained later.
- The initial examples try to use `String`. You might see `&str` though.
- A `String` is composed out of `char`s. You can get them via `string.chars()`

--- :: master: regular2

# Demo

- Docs
- Crates.io
- VSCode

--- :: master: title1

# Project 1

- Read characters from a file
- Figure out how many symbols are math symbols
- Some code has already been written
- See `Readme.md`

--- :: master: regular2

    


# Enums

--- :: master: regular1




:: label: Swift
``` swift

enum Gender {
    case male
    case female
    case neutral
}
    
```

:: label: Rust, animate: (0.50;move;bottom)
``` rust

enum Gender {
    Male,
    Female
    Neutral
}
    
```

*** :: alignment: left



:: label: Swift
``` swift

enum Example {
    case first(String)
    case second(Float)
    case third(Int, String)
}
    
```

:: label: Rust, animate: (0.50;move;bottom)
``` rust

enum Example {
    First(String),
    Second(f32),
    Third(i32, String),
}
    
```

*** :: alignment: left



:: label: Rust
``` rust

enum Example {
    First { value: String },
    Second { value: f32 },
    Third { value: i32, content: String }
}
    
```

***




:: label: Swift
``` swift

enum Gender { case male, female }
let x = Gender.female
    
```

:: label: Rust, animate: (0.50;move;bottom)
``` rust

enum Gender { Male, Female }
let x = Gender::Male;
    
```

*** :: alignment: left



# Optionals

--- :: master: regular1




:: label: Swift
``` swift

enum Optional<T> {
    case some(T)
    case none
}
        
```

:: label: Rust, animate: (0.50;move;bottom)
``` rust

enum Option<T> {
    Some(T)
    None
}
        
```

*** :: alignment: left



:: label: Rust
``` rust

if let Some(unwrapped) = optional_value {
}

if let Option::Some(unwrapped) = optional_value {
}
        
```

***




# Pattern Matching

--- :: master: regular1




:: label: Swift
``` swift

let o = Optional.some(Value.number(42))
switch readUser() {
    case .some(.number(let n)) where n > 10: print(n),
    case .some(let o): print(o),
    default: ()
}
        
```

:: label: Rust, animate: (0.50;move;bottom)
``` rust

let o = Some(Value::Number(42))
match read_user() {
    Some(Value::Number(n)) if n > 10 => println!(n),
    Some(o) => println!("{o}"),
    _ => ()
}
        
```

*** :: alignment: left



:: label: Swift
``` swift

guard case let .number(n) = readUser, n > 10 else { return }
        
```

:: label: Rust, animate: (0.50;move;bottom)
``` rust

let nr = match read_user() {
    Some(Value::Number(n)) if n > 10 => n,
    _ => return
}
        
```

*** :: alignment: left



:: label: Rust
``` rust

fn ex() -> Option<()> {
    let lastChar = user?.name?.chars().first?.int;
}
        
```

***




# Structures

--- :: master: regular1




:: label: Swift
``` swift

struct Hello {
    let first: String
    var second: Int
}
        
```

:: label: Rust, animate: (0.50;move;bottom)
``` rust

struct Hello {
    first: String,
    second: i32
}
        
```

*** :: alignment: left



:: label: Rust
``` rust

struct Hello {
    first: String,
}
impl Hello {
    // self.print_intro();
    fn print_intro(&self) {
        // In rust, `self.` is required
        println!("Hello {}", self.first)
    }

    // static fn: Hello.print_intro();
    fn print_intro() {
      ...
    }
}
        
```

***




:: label: Swift
``` swift

struct Hello: Codable {
    let first: String
    var second: Int
}
        
```

:: label: Rust, animate: (0.50;move;bottom)
``` rust

// Requires `serde` dependency
#[derive(Serialize, Deserialize)]
struct Hello {
    first: String,
    second: i32
}
        
```

*** :: alignment: left



:: label: Rust
``` rust

#[derive(Debug, Clone, Default)]
struct Hello {
    first: String,
    second: i32
}

let x = Hello::default();
let y = x.clone();
println!("{:?}", x);
        
```

***




# Error Handling

--- :: master: regular1




:: label: Rust
``` rust

fn parse_me(content: String) -> Result<i32> {
    let parsed: i32 = content.parse()?;
    parsed *= 100;
    Ok(parsed)
}
    
```

***




:: label: Rust
``` rust

fn parse_me(content: String) -> Option<i32> {
    let parsed: i32 = content.optional_fn().ok()?;
    parsed *= 100;
    Some(parsed)
}
    
```

***




### Importing

``` st
std
  ::result
         ::Result
  ::collections
              ::HashMap
              ::Vec
              ::BTreeSet

use std::result::Result;
use std::collections::{HashMap, Vec};
```

--- :: master: code

``` st
src/
  lib.rs
  utils.rs
  project.rs
```

``` rs
mod utils;
mod project;

use std::result::Result;
```

--- :: master: code, layout: left

## Unit Tests

``` rust
fn my_func(u: usize) -> bool { ... }

// At the bottom of source file
#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_my_func() {
      assert_eq!(my_func(3), true);
    }
}

```

--- :: master: code

# Second Task

--- :: master: title1

## Tip: Unwrap

- Instead of using `match` or `if let` use `.unwrap()` which force unwraps

```
let x: Option<usize> = None;

use_me(x.unwrap());
```

--- :: master: regular2

## Tip: Clone

> `error[E0382]: borrow of moved value: name-of-variable`

Try `.clone()`. This will be explained later

```
let u = MyStruct::default();
my_func(u.clone());
```

--- :: master: regular2

# Project 2

- Detect language of Tweet
- Remove stop words depending on the tweet language
- Find most used words in a set of tweets
- Some code has already been written
- Checkout `utils.rs`.
- `Readme.md`

--- :: master: regular2

    


## Remember this? So verbose

``` rust
let mut o = vec![];
for x in items {
   if something(x) {
     o.push(x);
   }
}
```

--- :: master: code

## What about.. `map` & friends?

``` rust
collection
 .map(|e| e * 2)
 .filter(|e| e > 5)
```

> Stay Tuned!

--- :: master: code




# Traits / Protocols

## Interfaces

--- :: master: regular1




:: label: Swift
``` swift

protocol MyProtocol {
    func partyBoy() -> Int;
}

extension Hello: MyProtocol {
    func partyBoy() -> Int {
        42
    }
}
        
```

:: label: Rust, animate: (0.50;move;bottom)
``` rust

trait MyTrait {
    fn party_boy() -> i32;
}

impl MyTrait for Hello {
    func party_boy() -> i32 {
        42
    }
}
        
```

*** :: alignment: left



:: label: Swift
``` swift

protocol MyProtocol {
    associatedType Output;
    func partyBoy() -> Self.Output;
}

extension Hello: MyProtocol {
    func partyBoy() -> Int {
        42
    }
}
        
```

:: label: Rust, animate: (0.50;move;bottom)
``` rust

trait MyTrait: PartialEq {
    type Output;
    fn party_boy(&self) -> Self::Output;
}

impl MyTrait for Hello {
    type Output = i32;
    fn party_boy(&self) -> i32 {
        42
    }
}
        
```

*** :: alignment: left



:: label: Swift
``` swift

struct Hello {
    let first: String
    var second: Int
}

extension Hello: Equatable {
    static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.second == rhs.second
    }
}
        
```

:: label: Rust, animate: (0.50;move;bottom)
``` rust

struct Hello {
    first: String,
    second: i32
}

impl PartialEq for Hello {
    fn eq(&self, other: &Self)
      -> bool {
        self.second == other.second
    }
}
        
```

*** :: alignment: left



:: label: Swift
``` swift

struct Hello: Equatable {
    let first: String
    var second: Int
}
        
```

:: label: Rust, animate: (0.50;move;bottom)
``` rust

#[derive(Eq, PartialEq)]
struct Hello {
    first: String,
    second: i32
}
        
```

*** :: alignment: left



:: label: Rust
``` rust

// std::iter::Iterator Trait
pub trait Iterator {
    ...
    fn count(self) -> usize
    fn filter<P>(self, predicate: P) -> Filter<Self, P>
    fn take_while<P>(self, predicate: P) -> TakeWhile<Self, P>
    fn flat_map<U, F>(self, f: F) -> FlatMap<Self, U, F>
    fn enumerate(self) -> Enumerate<Self>
    ...
}
        
```

***




:: label: Swift
``` swift

data.map { $0 * 2 }
    .filter { $0 > 10 }
    .prefix(3)
    .reduce(0, +)
        
```

:: label: Rust, animate: (0.50;move;bottom)
``` rust

data.iter()
    .map(|a| a * 2)
    .filter(|a| a > 10)
    .take(3)
    .sum();
        
```

*** :: alignment: left



:: label: Rust
``` rust

// Getting a iterator
collection.iter().map(...)

collection.into_iter().map(...)
        
```

***




# Memory Management

--- :: master: regular1





## Rust distinguishes between Stack and Heap.



--- :: master: regular1






### Stack

- Values on the stack are fast to access
- They're oftentimes values such as `usize` or `enum` types



--- :: master: regular1






### Heap

- Slower to access because they work by allocating data via a pointer
- References to data
- Oftentimes bigger data like `Vec` or `HashMap`

    

--- :: master: regular1





The developer can decide where to put the data:

``` rust
let x = 5; // Stack
let y = Box::new(5) // Heap
let x = MyStruct::new(); // Stack
let x = Box::new(MyStruct::new()) // Heap
```
    

--- :: master: regular1




# Ownership

--- :: master: title1

``` rust

let container = vec![1, 2, 3];
let other_container = container;

println!("{}", other_container);

// Error: borrow of moved value: `container`
println!("{}", container);

```

--- :: master: code

``` rust

let container = vec![1, 2, 3];

// Don't move, *borrow*
let other_container = &container;

println!("{}", &other_container);

println!("{}", &container);

```

--- :: master: code

# `&something` means **borrow** something

## Don't own it, just borrow it, somebody else still owns it.

--- :: master: regular2

``` rust
fn ppp(value: &Vec<usize>) {
    println!("{value}");
}

let x = vec![1, 2, 3];
ppp(&x);

// Works!
println!("{:?}", &x);

```

--- :: master: code

## Some types change shape as references [^1]

:: size: 80
| Owned  | Borrowed |
|-------|-------|
| String | &str  |
| Vec<T> | &[T]  |
| PathBuf | &Path   |

[^1]: `&String` or `&Vec<T>` is not wrong, but will emit a warning

--- :: master: regular1

``` rust
let first: &str = "Hello";
let second: String = "Hello".to_owned();

fn test(input: &str) -> { ... }

test(first);
test(second); // Fails
test(&second); // works
```

--- :: master: code

## Because

- `String` is just a `&str` allocated on the heap
- `Vec<T>` is just a `&[T]` allocated on the heap

--- :: master: regular2

// Get a &T Iterator (Borrow the value)
`collection.iter().map(...)`

// Get a T Iterator (Own the value)
`collection.into_iter().map(...)`

--- :: master: code2

## Borrow Checker

There can only be two types of references

- Unlimited immutable references
- One mutable reference
- References are short-lived

--- :: master: regular2, skip: true


# Tip 1

## `clone` instead of moving

``` rust

#[derive(Clone)]
struct MyStruct;

let p = MyStruct;

fn test(input: MyStruct) { ... }
test(p.clone());

```

--- :: master: code

# Tip 2

## Use Reference-Counting

``` rust
use std::rc::Rc;

let p = Rc::new(vec![1]);

fn test(input: Rc<Vec<usize>>) { ... }
test(p.clone());

// Atomic Reference Counting: For Multi-Threading
use std::sync::Arc;
let p = Arc::new(5);
```

--- :: master: code

# Building Mobile Libraries

--- :: master: title1

- `cbindgen` for C / C++
- Mozilla `Uniffi` for Android, Swift, Python, Ruby
- Define interface in `udl` file

--- :: master: regular1

``` udl
dictionary EmojiCount {
    string emoji;
    u32 count;
};

interface EmojiStream {
    sequence<EmojiCount> next_items(u32 limit);
};

```

--- :: master: code

``` udl
# Android
uniffi-bindgen generate src/libemojistream.udl --language kotlin --out-dir generated/

# iOS
xcode_uniffi create
```

--- :: master: code

# Demo

- Show how the final project runs in Xcode
- Show the uniffi Bindings

--- :: master: title1

# Final Project

- Implement the `grouped_charts` and `grouped_emoji` functions
- It will find all emoji in a set of Tweets and group them
- Then it will calculate a tree map for these emoji groups
- You can run the binary (`cargo run`)
- Or you can run it from Xcode by opening the Xcode project

--- :: master: regular1





# Outlook


--- :: master: regular1





## Macros in Rust

- Build-In Macro system
- Expand the language at compile time

``` rust
format!("{}", hello);
```



--- :: master: regular1





## Macros in Rust

- Build-In Macro system
- Expand the language at compile time

``` rust
html! {
        <body>
            <h1>{ content.title }</h1>
            { content.items.map(|item| html!(
                <h2>{ format!("{}", item.name) }</h2>
            }
        </body>
    }
```



--- :: master: regular1





## Lots of crazy stuff

``` rust
let n = 5;
python! {
    for i in range('n):
        print(i, "Hello", 'who)
    print("Goodbye")
}
```



--- :: master: regular1




## Rayon

One additional line to run your code on all cores

``` rust
data
    .par_iter()
    .map(|a| a * 2)
    .filter(|a| a > 10)
    .take(3)
    .sum();
```

--- :: master: code

## Other Targets

- C: cbindgen
- C++: cxx
- Swift: swift-bridge
- Flutter: flutter_rust_bridge
- Dart: membrane
- Python: Pyo3
- Ruby: rutie
- Javascript / Wasm: Trunk
- Example: https://github.com/imWildCat/uniffi-rs-fullstack-examples


