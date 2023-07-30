.class public Lcom/airbnb/lottie/parser/AnimatableTransformParser;
.super Ljava/lang/Object;
.source "AnimatableTransformParser.java"


# static fields
.field private static ANIMATABLE_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 24
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "a"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "p"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string v3, "s"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string v3, "rz"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string v3, "r"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string v3, "o"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    const-string v3, "so"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    const-string v3, "eo"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    const-string v3, "sk"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    const-string v3, "sa"

    aput-object v3, v1, v2

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "k"

    aput-object v3, v1, v2

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->ANIMATABLE_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method private static isAnchorPointIdentity(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;)Z
    .locals 4

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isPositionIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableValue;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 147
    move-object v0, p0

    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    instance-of v1, v1, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;

    if-nez v1, :cond_1

    move-object v1, v0

    .line 149
    invoke-interface {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    invoke-interface {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 147
    :goto_0
    move v0, v1

    return v0

    .line 149
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isRotationIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z
    .locals 3

    .prologue
    .line 153
    move-object v0, p0

    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isScaleIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;)Z
    .locals 4

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/value/ScaleXY;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/lottie/value/ScaleXY;->equals(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isSkewAngleIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z
    .locals 3

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isSkewIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z
    .locals 3

    .prologue
    .line 161
    move-object v0, p0

    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v12, 0x0

    move-object v2, v12

    .line 41
    const/4 v12, 0x0

    move-object v3, v12

    .line 42
    const/4 v12, 0x0

    move-object v4, v12

    .line 43
    const/4 v12, 0x0

    move-object v5, v12

    .line 44
    const/4 v12, 0x0

    move-object v6, v12

    .line 45
    const/4 v12, 0x0

    move-object v7, v12

    .line 46
    const/4 v12, 0x0

    move-object v8, v12

    .line 47
    const/4 v12, 0x0

    move-object v9, v12

    .line 48
    const/4 v12, 0x0

    move-object v10, v12

    .line 50
    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v12

    sget-object v13, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v12, v13, :cond_1

    const/4 v12, 0x1

    :goto_0
    move v11, v12

    .line 51
    move v12, v11

    if-eqz v12, :cond_0

    .line 52
    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 54
    :cond_0
    :goto_1
    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 55
    move-object v12, v0

    sget-object v13, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v12, v13}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 113
    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 114
    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_1

    .line 50
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 57
    :pswitch_0
    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 58
    :goto_2
    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 59
    move-object v12, v0

    sget-object v13, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->ANIMATABLE_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v12, v13}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v12

    packed-switch v12, :pswitch_data_1

    .line 64
    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 65
    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_2

    .line 61
    :pswitch_1
    move-object v12, v0

    move-object v13, v1

    invoke-static {v12, v13}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    move-result-object v12

    move-object v2, v12

    .line 62
    goto :goto_2

    .line 68
    :cond_2
    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 69
    goto :goto_1

    .line 71
    :pswitch_2
    move-object v12, v0

    move-object v13, v1

    .line 72
    invoke-static {v12, v13}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v12

    move-object v3, v12

    .line 73
    goto :goto_1

    .line 75
    :pswitch_3
    move-object v12, v0

    move-object v13, v1

    invoke-static {v12, v13}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseScale(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    move-result-object v12

    move-object v4, v12

    .line 76
    goto :goto_1

    .line 78
    :pswitch_4
    move-object v12, v1

    const-string v13, "Lottie doesn\'t support 3D layers."

    invoke-virtual {v12, v13}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 90
    :pswitch_5
    move-object v12, v0

    move-object v13, v1

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v12

    move-object v5, v12

    .line 91
    move-object v12, v5

    invoke-virtual {v12}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 92
    move-object v12, v5

    invoke-virtual {v12}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v12

    new-instance v13, Lcom/airbnb/lottie/value/Keyframe;

    move-object/from16 v23, v13

    move-object/from16 v13, v23

    move-object/from16 v14, v23

    move-object v15, v1

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v20, v1

    invoke-virtual/range {v20 .. v20}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    invoke-direct/range {v14 .. v20}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v12

    goto/16 :goto_1

    .line 93
    :cond_3
    move-object v12, v5

    invoke-virtual {v12}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v12, v12, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    if-nez v12, :cond_0

    .line 94
    move-object v12, v5

    invoke-virtual {v12}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    new-instance v14, Lcom/airbnb/lottie/value/Keyframe;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    move-object/from16 v16, v1

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    invoke-direct/range {v15 .. v21}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-interface {v12, v13, v14}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto/16 :goto_1

    .line 98
    :pswitch_6
    move-object v12, v0

    move-object v13, v1

    invoke-static {v12, v13}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v12

    move-object v6, v12

    .line 99
    goto/16 :goto_1

    .line 101
    :pswitch_7
    move-object v12, v0

    move-object v13, v1

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v12

    move-object v7, v12

    .line 102
    goto/16 :goto_1

    .line 104
    :pswitch_8
    move-object v12, v0

    move-object v13, v1

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v12

    move-object v8, v12

    .line 105
    goto/16 :goto_1

    .line 107
    :pswitch_9
    move-object v12, v0

    move-object v13, v1

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v12

    move-object v9, v12

    .line 108
    goto/16 :goto_1

    .line 110
    :pswitch_a
    move-object v12, v0

    move-object v13, v1

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v12

    move-object v10, v12

    .line 111
    goto/16 :goto_1

    .line 117
    :cond_4
    move v12, v11

    if-eqz v12, :cond_5

    .line 118
    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 121
    :cond_5
    move-object v12, v2

    invoke-static {v12}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isAnchorPointIdentity(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 122
    const/4 v12, 0x0

    move-object v2, v12

    .line 124
    :cond_6
    move-object v12, v3

    invoke-static {v12}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isPositionIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableValue;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 125
    const/4 v12, 0x0

    move-object v3, v12

    .line 127
    :cond_7
    move-object v12, v5

    invoke-static {v12}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isRotationIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 128
    const/4 v12, 0x0

    move-object v5, v12

    .line 130
    :cond_8
    move-object v12, v4

    invoke-static {v12}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isScaleIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 131
    const/4 v12, 0x0

    move-object v4, v12

    .line 133
    :cond_9
    move-object v12, v9

    invoke-static {v12}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isSkewIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 134
    const/4 v12, 0x0

    move-object v9, v12

    .line 136
    :cond_a
    move-object v12, v10

    invoke-static {v12}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isSkewAngleIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 137
    const/4 v12, 0x0

    move-object v10, v12

    .line 139
    :cond_b
    new-instance v12, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-object/from16 v23, v12

    move-object/from16 v12, v23

    move-object/from16 v13, v23

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    invoke-direct/range {v13 .. v22}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    move-object v0, v12

    return-object v0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 59
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
