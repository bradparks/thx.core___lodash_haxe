package thx.core;

import Map;
using thx.core.Iterators;

class AnonymousMap<V> implements IMap<String, V>
{
	var o : Dynamic<V>;
	public function new(o : Dynamic<V>)
	{
		this.o = o;
	}

	public function get(k : String) : Null<V>
		return Reflect.field(o, k);

	public function set(k : String, v : V) : Void
		Reflect.setField(o, k, v);

	public function exists(k : String) : Bool
		return Reflect.hasField(o, k);

	public function remove(k : String) : Bool
		return Reflect.deleteField(o, k);

	public function keys() : Iterator<String>
		return Reflect.fields(o).iterator();

	public function iterator() : Iterator<V>
		return keys().map(function(k) return Reflect.field(o, k)).iterator();

	public function toString() : String
		return Std.string(o);
}