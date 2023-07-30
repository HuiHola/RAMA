.class Lcom/airbnb/lottie/parser/PathKeyframeParser;
.super Ljava/lang/Object;
.source "PathKeyframeParser.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v4

    sget-object v5, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v2, v4

    .line 21
    move-object v4, v0

    move-object v5, v1

    .line 22
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v6

    sget-object v7, Lcom/airbnb/lottie/parser/PathParser;->INSTANCE:Lcom/airbnb/lottie/parser/PathParser;

    move v8, v2

    .line 21
    invoke-static {v4, v5, v6, v7, v8}, Lcom/airbnb/lottie/parser/KeyframeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v4

    move-object v3, v4

    .line 24
    new-instance v4, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/value/Keyframe;)V

    move-object v0, v4

    return-object v0

    .line 20
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
