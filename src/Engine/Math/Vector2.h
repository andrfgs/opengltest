//
// Created by André on 16/08/2018.
// Partially adapted from Uhro3d:
// https://github.com/urho3d/Urho3D/blob/master/Source/Urho3D/Math/Vector2.h
//

#pragma once

namespace Engine {

    /**
     * Represents a 2D point or a vector in space.
     */
    class Vector2 {
    private:
        float m_x;
        float m_y;

    public:
        Vector2();
        Vector2(float x, float y);
        Vector2(Vector2 *v);

        static const Vector2 LEFT;
        static const Vector2 RIGHT;
        static const Vector2 UP;
        static const Vector2 DOWN;
        static const Vector2 ONE;
        static const Vector2 ZERO;

        /**
         * Gets the X component of the vector
         * @return the value of this vector's X
         */
        inline float GetX();

        /**
         * Gets the Y component of the vector
         * @return the value of this vector's Y
         */
        inline float GetY();

    };

}