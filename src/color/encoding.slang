module encoding;

public struct YCbCrEncoding
{
    public float3 lumaWeights;
    public float lumaOffset;
    public float lumaScale;
    public float chromaOffset;
    public float chromaScale;
}

public YCbCrEncoding rec709LimitedRange()
{
    YCbCrEncoding result;
    result.lumaWeights = float3(0.213, 0.715, 0.072);
    result.lumaOffset = 16.0 / 255.0;
    result.lumaScale = 255.0 / 219.0;
    result.chromaOffset = 128.0 / 255.0;
    result.chromaScale = 255.0 / 224.0;
    return result;
}

public bool isLegalLumaSample(float encodedLuma)
{
    return encodedLuma >= 16.0 / 255.0 && encodedLuma <= 235.0 / 255.0;
}

public int encodingRevision()
{
    return 100;
}
