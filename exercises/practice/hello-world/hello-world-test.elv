# Import the hello-world module
use ./hello-world

fn tests {
  put [
    [$hello-world:hello~ "says hello world" [] "Hello, World!"]
  ]
}
