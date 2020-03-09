package test;

import hxmath.converters.flixel.Vector2Converter;
import hxmath.math.Vector2;
import test.TestFlixelConverters.FlxPointMock;
    
class FlxPointMock
{
    public var x(default, set):Float = 0.0;
    public var y(default, set):Float = 0.0;
    
    public function new(X:Float = 0.0, Y:Float = 0.0)
    {
        this.x = X;
        this.y = Y;
    }
    
    private function set_x(value:Float):Float
    {
        return this.x = value;
    }
    
    private function set_y(value:Float):Float
    {
        return this.y = value;
    }
    
    public function toString():String
    {
        return '$x, $y';
    }
}

/**
 * ...
 * @author TABIV
 */
class TestFlixelConverters extends MathTestCase
{
    public function new() 
    {
        super();
    }
    
    public function testFlxPointConversion()
    {
        var v = new Vector2(3.0, 1.0);
        
        var q = new FlxPointMock();
        Vector2Converter.copyToFlxPoint(v, q);
        assertEquals(v.x, q.x);
        assertEquals(v.y, q.y);
        
        var u = Vector2.zero;
        Vector2Converter.copyFromFlxPoint(u, q);
        assertEquals(u.x, q.x);
        assertEquals(u.y, q.y);
    }
}