package com.example;

import static spark.Spark.*;

public class App {
  public static void main(String[] args) {
    port(Integer.parseInt(System.getenv("PORT")));

    get("/", (req, res) -> "Hello, World!");
  }
}
