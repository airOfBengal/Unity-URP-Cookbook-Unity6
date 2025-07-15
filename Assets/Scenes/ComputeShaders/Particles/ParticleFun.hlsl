#ifndef PARTICLE_FUN
#define PARTICLE_FUN

struct Particle
{
    float3 position;
    float3 velocity;
    float life;
};

StructuredBuffer<Particle> particleBuffer;

void ParticleAttributes_float(uint instanceID, out float3 position, out float3 velocity, out float life)
{
    Particle particle = particleBuffer[instanceID];
    position = particle.position;
    velocity = particle.velocity;
    life = particle.life;
}

#endif