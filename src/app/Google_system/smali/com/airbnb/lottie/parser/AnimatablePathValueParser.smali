.class public Lcom/airbnb/lottie/parser/AnimatablePathValueParser;
.super Ljava/lang/Object;
.source "AnimatablePathValueParser.java"


# static fields
.field private static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "k"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "x"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string v3, "y"

    aput-object v3, v1, v2

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Ljava/util/ArrayList;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 32
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v3

    sget-object v4, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v3, v4, :cond_1

    .line 33
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 34
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    move-object v3, v2

    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/airbnb/lottie/parser/PathKeyframeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 37
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 38
    move-object v3, v2

    invoke-static {v3}, Lcom/airbnb/lottie/parser/KeyframesParser;->setEndFrames(Ljava/util/List;)V

    .line 42
    :goto_1
    new-instance v3, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;-><init>(Ljava/util/List;)V

    move-object v0, v3

    return-object v0

    .line 40
    :cond_1
    move-object v3, v2

    new-instance v4, Lcom/airbnb/lottie/value/Keyframe;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v7

    invoke-static {v6, v7}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1
.end method

.method static parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            ")",
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, p1

    const/4 v6, 0x0

    move-object v2, v6

    .line 52
    const/4 v6, 0x0

    move-object v3, v6

    .line 53
    const/4 v6, 0x0

    move-object v4, v6

    .line 55
    const/4 v6, 0x0

    move v5, v6

    .line 57
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 58
    :goto_0
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v6

    sget-object v7, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-eq v6, v7, :cond_2

    .line 59
    move-object v6, v0

    sget-object v7, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 80
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 81
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 61
    :pswitch_0
    move-object v6, v0

    move-object v7, v1

    invoke-static {v6, v7}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    move-result-object v6

    move-object v2, v6

    .line 62
    goto :goto_0

    .line 64
    :pswitch_1
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v6

    sget-object v7, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->STRING:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v6, v7, :cond_0

    .line 65
    const/4 v6, 0x1

    move v5, v6

    .line 66
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 68
    :cond_0
    move-object v6, v0

    move-object v7, v1

    invoke-static {v6, v7}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v6

    move-object v3, v6

    .line 70
    goto :goto_0

    .line 72
    :pswitch_2
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v6

    sget-object v7, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->STRING:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v6, v7, :cond_1

    .line 73
    const/4 v6, 0x1

    move v5, v6

    .line 74
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 76
    :cond_1
    move-object v6, v0

    move-object v7, v1

    invoke-static {v6, v7}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v6

    move-object v4, v6

    .line 78
    goto :goto_0

    .line 84
    :cond_2
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 86
    move v6, v5

    if-eqz v6, :cond_3

    .line 87
    move-object v6, v1

    const-string v7, "Lottie doesn\'t support expressions."

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 90
    :cond_3
    move-object v6, v2

    if-eqz v6, :cond_4

    .line 91
    move-object v6, v2

    move-object v0, v6

    .line 93
    :goto_1
    return-object v0

    :cond_4
    new-instance v6, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    move-object v0, v6

    goto :goto_1

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
