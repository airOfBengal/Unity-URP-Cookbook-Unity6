#if defined(UNITY_PROCEDURAL_INSTANCING_ENABLED)
StructuredBuffer<float2> PositionsBuffer;
#endif

StructuredBuffer<float2> PositionsBuffer;

void ShaderGraphFunction_float(uint instanceID, out float2 PositionOut)
{
    PositionOut = PositionsBuffer[instanceID];
}