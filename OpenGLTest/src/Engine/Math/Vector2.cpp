//
// Created by André on 16/08/2018.
//

#include "Vector2.h"

namespace Engine {

    Vector2::Vector2() : Vector2(0.0f, 0.0f){
    }

    Vector2::Vector2(Engine::Vector2& v) : Vector2(v.m_x, v.m_y){
    }

    Vector2::Vector2(float x, float y) {
        m_x = x;
        m_y = y;
    }

    const Vector2 Vector2::LEFT(-1.0f, 0.0f);
    const Vector2 RIGHT;
    const Vector2 UP;
    const Vector2 DOWN;
    const Vector2 ONE;
    const Vector2 ZERO;

    float Vector2::GetX() {
        return m_x;
    }

    float Vector2::GetY() {
        return m_y;
    }
}