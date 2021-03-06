package thx.core;

class Iterables
{
	public inline static function map<T, S>(it : Iterable<T>, f : T -> S) : Array<S>
	{
		return Iterators.map(it.iterator(), f);
	}

  public inline static function toArray<T>(it : Iterable<T>) : Array<T>
  {
    return Iterators.toArray(it.iterator());
  }

  public inline static function order<T>(it : Iterable<T>, sort : T -> T -> Int) : Array<T>
  {
    return Iterators.order(it.iterator(), sort);
  }
}