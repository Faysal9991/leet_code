//Creating Objects Based on Input Parameters
class Shape {
  factory Shape (String type) {
    if (type == 'circle') {
      return Circle();
    } else if (type == 'rectangle') {
      return Rectangle();
    }
    return Blank();
  }
}

class Circle implements Shape {
  // Implementation for Circle
}

class Rectangle implements Shape {
  // Implementation for Rectangle
}
class Blank implements Shape {
  // Implementation for Rectangle
}

//Object Pooling

class Connection {
  factory Connection() {
    if (connectionPool.isNotEmpty) {
      return connectionPool.removeLast();
    } else {
      return Connection._();
    }
  }

  Connection._(); // Private constructor

  void close() {
    connectionPool.add(this);
  }
}

List<Connection> connectionPool = [];

//Conditional Object Creation
class Configuration {
  factory Configuration(String environment) {
    if (environment == 'development') {
      return DevelopmentConfig();
    } else if (environment == 'production') {
      return ProductionConfig();
    }
    return Blank2();
    // Handle other cases or throw an exception for unknown environments
  }
}

class DevelopmentConfig implements Configuration {
  // Implementation for development environment
}

class ProductionConfig implements Configuration {
  // Implementation for production environment
}
class Blank2 implements Configuration {
  // Implementation for Rectangle
}