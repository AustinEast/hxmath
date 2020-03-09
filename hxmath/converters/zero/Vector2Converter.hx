package hxmath.converters.zero;
import hxmath.math.Vector2;

// The public structure of Vec2 matching up with Vector2
typedef Vec2Shape =
{
    public var x(get, set):Float;
    public var y(get, set):Float;
}

/**
 * A set of converter functions for converting between hxmath Vector2 and zerolib Vec2.
 */
class Vector2Converter
{
    /**
     * Copy a Vector2 to a Vec2.
     * 
     * @param v     The Vector2 to copy.
     * @param p     The Vec2.
     */
    public static inline function copyToVec2(v:Vector2, z:Vec2Shape):Void
    {
        z.x = v.x;
        z.y = v.y;
    }
    
     /**
     * Copy a Vec2 to a Vector2.
     * 
     * @param v     The Vector2.
     * @param p     The Vec2 to copy.
     */
    public static inline function copyFromVec2(v:Vector2, z:Vec2Shape):Void
    {
        v.x = z.x;
        v.y = z.y;
    }
}