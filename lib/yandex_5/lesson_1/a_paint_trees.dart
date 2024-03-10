class Pair {
  int p, v;
  Pair(this.p, this.v);
  int get lLength => p - v;
  int get rLength => p + v;
}

Pair minPair(Pair l, Pair r) {
  return l.lLength < r.lLength ? l : r;
}

Pair maxPair(Pair l, Pair r) {
  return l.rLength > r.rLength ? l : r;
}

class Solution {
  int calculateCountOfPaintedTrees(int p, int v, int q, int m) {
    final pair1 = Pair(p, v);
    final pair2 = Pair(q, m);
    final lPair = minPair(pair1, pair2);
    final rPair = maxPair(pair1, pair2);

    if (lPair.rLength >= rPair.lLength) {
      return rPair.rLength - lPair.lLength + 1;
    }

    return v * 2 + 1 + m * 2 + 1;
  }
}
