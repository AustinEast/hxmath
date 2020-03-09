package test;

import hxmath.converters.zero.Vector2Converter;
import hxmath.math.Vector2;
import hxmath.math.Vector3;
import hxmath.math.Vector3.Vector3Shape;
import test.TestZerolibConverters.Vec2Mock;

abstract Vec2Mock(Array<Float>)
{
    public var x(get, set):Float;
    public var y(get, set):Float;
    
    public function new(x:Float = 0, y:Float = 0) this = [x, y];

    inline function get_x() return this[0];
    inline function set_x(v) return this[0] = v;
    
    inline function get_y() return this[1];
	  inline function set_y(v) return this[1] = v;
}

/**
 * ...
 * @author TABIV
 */
class TestZerolibConverters extends MathTestCase
{
    public function new() 
    {
        super();
    }
   
    public function testVec2Conversion()
    {
        var v = new Vector2(3.0, 1.0);
        
        var q = new Vec2Mock();
        Vector2Converter.copyToVec2(v, q);
        assertEquals(v.x, q.x);
        assertEquals(v.y, q.y);
        
        var u = Vector2.zero;
        Vector2Converter.copyFromVec2(u, q);
        assertEquals(u.x, q.x);
        assertEquals(u.y, q.y);
    }
}