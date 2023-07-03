abstract type Entity end
abstract type Game end
abstract type FlyingEntity <: Entity end
abstract type BalisticEntity <: Entity end

mutable struct AirPlane <: FlyingEntity
    id::Symbol

    # Components
    physics::PhysicsComponent
    render::RenderComponent
    game::GameComponent
end

struct PhysicsComponent
    pose::MultiVector
    rate::MultiVector
    inertia::MultiVector
end

struct RenderComponent
    mesh::Mesh  # Or however you plan to represent the renderable data
    material::Material  # Ditto for material data
end

mutable struct GameState
    entities::Dict{Symbol, Entity}
    environment::Environment
end

"""
entity
    plane
        physics
        render
        game
        control
    missile
        physics
        render
        game
        control
    bullet
        physics
        render
        game
environment
    main fractal
    obstical
        physics
        render
        game
        control
"""

"""
aileron
rudder
horizontal stabalizer
flaps
air brake
denstiy
velocity x3
"""