package hxmath.converters.zero;
import hxmath.math.Vector4;

// The public structure of Vec4 matching up with Vector4
typedef Vec4Shape =
{
    public var x(get, set):Float;
    public var y(get, set):Float;
    public var z(get, set):Float;
    public var w(get, set):Float;
}

/**
 * A set of converter functions for converting between hxmath Vector4 and zerolib Vec4.
 */
class Vector4Converter
{
    /**
     * Copy a Vector4 to a Vec4.
     * 
     * @param v     The Vector4 to copy.
     * @param z     The Vec4.
     */
    public static inline function copyToVec4(v:Vector4, z:Vec4Shape):Void
    {
        z.x = v.x;
        z.y = v.y;
        z.z = v.z;
        z.w = v.w;
    }
    
    /**
     * Copy a Vec4 to a Vector4.
     * 
     * @param v     The Vector4.
     * @param z     The Vec4 to copy.
     */
    public static inline function copyFromVec4(v:Vector4, z:Vec4Shape):Void
    {
        v.x = z.x;
        v.y = z.y;
        v.z = z.z;
        v.w = z.w;
    }
}