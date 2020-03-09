package hxmath.converters.zero;
import hxmath.math.Vector3;

// The public structure of Vec3 matching up with Vector3
typedef Vec3Shape =
{
    public var x(get, set):Float;
    public var y(get, set):Float;
    public var z(get, set):Float;
}

/**
 * A set of converter functions for converting between hxmath Vector3 and zerolib Vec3.
 */
class Vector3Converter
{
    /**
     * Copy a Vector3 to a Vec3.
     * 
     * @param v     The Vector3 to copy.
     * @param p     The Vec3.
     */
    public static inline function copyToVec3(v:Vector3, z:Vec3Shape):Void
    {
        z.x = v.x;
        z.y = v.y;
        z.z = v.z;
    }

    /**
     * Copy a Vec3 to a Vector3.
     * 
     * @param v     The Vector3.
     * @param p     The Vec3 to copy.
     */
    public static inline function copyFromVec3(v:Vector3, z:Vec3Shape):Void
    {
        v.x = z.x;
        v.y = z.y;
        v.z = z.z;
    }
}