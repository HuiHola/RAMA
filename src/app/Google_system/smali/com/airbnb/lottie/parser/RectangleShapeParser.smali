.class Lcom/airbnb/lottie/parser/RectangleShapeParser;
.super Ljava/lang/Object;
.source "RectangleShapeParser.java"


# static fields
.field private static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 16
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "nm"

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

    const-string v3, "r"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string v3, "hd"

    aput-object v3, v1, v2

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/RectangleShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/RectangleShape;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v7, 0x0

    move-object v2, v7

    .line 30
    const/4 v7, 0x0

    move-object v3, v7

    .line 31
    const/4 v7, 0x0

    move-object v4, v7

    .line 32
    const/4 v7, 0x0

    move-object v5, v7

    .line 33
    const/4 v7, 0x0

    move v6, v7

    .line 35
    :goto_0
    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 36
    move-object v7, v0

    sget-object v8, Lcom/airbnb/lottie/parser/RectangleShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 54
    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 38
    :pswitch_0
    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 39
    goto :goto_0

    .line 41
    :pswitch_1
    move-object v7, v0

    move-object v8, v1

    .line 42
    invoke-static {v7, v8}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v7

    move-object v3, v7

    .line 43
    goto :goto_0

    .line 45
    :pswitch_2
    move-object v7, v0

    move-object v8, v1

    invoke-static {v7, v8}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v7

    move-object v4, v7

    .line 46
    goto :goto_0

    .line 48
    :pswitch_3
    move-object v7, v0

    move-object v8, v1

    invoke-static {v7, v8}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v7

    move-object v5, v7

    .line 49
    goto :goto_0

    .line 51
    :pswitch_4
    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v7

    move v6, v7

    .line 52
    goto :goto_0

    .line 58
    :cond_0
    new-instance v7, Lcom/airbnb/lottie/model/content/RectangleShape;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move v13, v6

    invoke-direct/range {v8 .. v13}, Lcom/airbnb/lottie/model/content/RectangleShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    move-object v0, v7

    return-object v0

    .line 36
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
