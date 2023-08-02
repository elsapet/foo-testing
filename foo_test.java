public class Foo {
  public void main() {
    java.util.Random numGen = java.security.SecureRandom.getInstance("SHA1PRNG");
    double rand = getNextNumber(numGen);
    String key = Double.toString(rand).substring(2);
  }

  double getNextNumber(java.util.Random generator) {
    return generator.nextDouble();
  }
}