abstract class Cache<T extends num> {}

class LocalCache<T extends num> extends Cache<T> {
  T obj;
  LocalCache(this.obj);
}

class CloudCache<T extends num, K> extends Cache<T> {}

void main() {
  // OK. 'int' and 'double' are subclasses of  // 'num' so this is allowed
  final local1 = LocalCache<int>(1);
  final local2 = LocalCache<double>(2.5);
  // NO. 'String' is not a subclass of 'num'  // so this is NOT allowed
  // final local3 = LocalCache<String>(3);
}
