.class public Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;
.super Ljava/lang/Object;
.source "AnimatableTextPropertiesParser.java"


# static fields
.field private static ANIMATABLE_PROPERTIES_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static PROPERTIES_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 13
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "a"

    aput-object v3, v1, v2

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->PROPERTIES_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "fc"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "sc"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string v3, "sw"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string v3, "t"

    aput-object v3, v1, v2

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->ANIMATABLE_PROPERTIES_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move-object v2, v3

    .line 27
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 28
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 29
    move-object v3, v0

    sget-object v4, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->PROPERTIES_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 34
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 35
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 31
    :pswitch_0
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->parseAnimatableTextProperties(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    move-result-object v3

    move-object v2, v3

    .line 32
    goto :goto_0

    .line 38
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 39
    move-object v3, v2

    if-nez v3, :cond_1

    .line 41
    new-instance v3, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    move-object v0, v3

    .line 43
    :goto_1
    return-object v0

    :cond_1
    move-object v3, v2

    move-object v0, v3

    goto :goto_1

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static parseAnimatableTextProperties(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    const/4 v6, 0x0

    move-object v2, v6

    .line 49
    const/4 v6, 0x0

    move-object v3, v6

    .line 50
    const/4 v6, 0x0

    move-object v4, v6

    .line 51
    const/4 v6, 0x0

    move-object v5, v6

    .line 53
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 54
    :goto_0
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 55
    move-object v6, v0

    sget-object v7, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->ANIMATABLE_PROPERTIES_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 69
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 70
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 57
    :pswitch_0
    move-object v6, v0

    move-object v7, v1

    invoke-static {v6, v7}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    move-result-object v6

    move-object v2, v6

    .line 58
    goto :goto_0

    .line 60
    :pswitch_1
    move-object v6, v0

    move-object v7, v1

    invoke-static {v6, v7}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    move-result-object v6

    move-object v3, v6

    .line 61
    goto :goto_0

    .line 63
    :pswitch_2
    move-object v6, v0

    move-object v7, v1

    invoke-static {v6, v7}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v6

    move-object v4, v6

    .line 64
    goto :goto_0

    .line 66
    :pswitch_3
    move-object v6, v0

    move-object v7, v1

    invoke-static {v6, v7}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v6

    move-object v5, v6

    .line 67
    goto :goto_0

    .line 73
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 75
    new-instance v6, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    move-object v0, v6

    return-object v0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
