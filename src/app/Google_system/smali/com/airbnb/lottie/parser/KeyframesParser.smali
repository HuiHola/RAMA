.class Lcom/airbnb/lottie/parser/KeyframesParser;
.super Ljava/lang/Object;
.source "KeyframesParser.java"


# static fields
.field static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 14
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

    sput-object v0, Lcom/airbnb/lottie/parser/KeyframesParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "F",
            "Lcom/airbnb/lottie/parser/ValueParser",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    new-instance v5, Ljava/util/ArrayList;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    .line 24
    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v5

    sget-object v6, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->STRING:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v5, v6, :cond_0

    .line 25
    move-object v5, v1

    const-string v6, "Lottie doesn\'t support expressions."

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 26
    move-object v5, v4

    move-object v0, v5

    .line 56
    :goto_0
    return-object v0

    .line 29
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 30
    :goto_1
    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 31
    move-object v5, v0

    sget-object v6, Lcom/airbnb/lottie/parser/KeyframesParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 50
    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_1

    .line 33
    :pswitch_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v5

    sget-object v6, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v5, v6, :cond_3

    .line 34
    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 36
    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v5

    sget-object v6, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v5, v6, :cond_2

    .line 38
    move-object v5, v4

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/airbnb/lottie/parser/KeyframeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 44
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    goto :goto_1

    .line 40
    :cond_2
    :goto_2
    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 41
    move-object v5, v4

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    const/4 v10, 0x1

    invoke-static {v6, v7, v8, v9, v10}, Lcom/airbnb/lottie/parser/KeyframeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_2

    .line 46
    :cond_3
    move-object v5, v4

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/airbnb/lottie/parser/KeyframeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 48
    goto :goto_1

    .line 53
    :cond_4
    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 55
    move-object v5, v4

    invoke-static {v5}, Lcom/airbnb/lottie/parser/KeyframesParser;->setEndFrames(Ljava/util/List;)V

    .line 56
    move-object v5, v4

    move-object v0, v5

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static setEndFrames(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v1, v5

    .line 65
    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move v5, v2

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_1

    .line 67
    move-object v5, v0

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/value/Keyframe;

    move-object v3, v5

    .line 68
    move-object v5, v0

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/value/Keyframe;

    move-object v4, v5

    .line 69
    move-object v5, v3

    move-object v6, v4

    iget v6, v6, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iput-object v6, v5, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    .line 70
    move-object v5, v3

    iget-object v5, v5, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    if-nez v5, :cond_0

    move-object v5, v4

    iget-object v5, v5, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 71
    move-object v5, v3

    move-object v6, v4

    iget-object v6, v6, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    iput-object v6, v5, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 72
    move-object v5, v3

    instance-of v5, v5, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    if-eqz v5, :cond_0

    .line 73
    move-object v5, v3

    check-cast v5, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->createPath()V

    .line 65
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_1
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/value/Keyframe;

    move-object v2, v5

    .line 78
    move-object v5, v2

    iget-object v5, v5, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v5, :cond_2

    move-object v5, v2

    iget-object v5, v5, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    if-nez v5, :cond_3

    :cond_2
    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    .line 82
    move-object v5, v0

    move-object v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 84
    :cond_3
    return-void
.end method
