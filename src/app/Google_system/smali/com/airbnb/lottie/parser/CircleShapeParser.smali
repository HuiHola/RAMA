.class Lcom/airbnb/lottie/parser/CircleShapeParser;
.super Ljava/lang/Object;
.source "CircleShapeParser.java"


# static fields
.field private static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 15
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

    const-string v3, "hd"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string v3, "d"

    aput-object v3, v1, v2

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/CircleShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;I)Lcom/airbnb/lottie/model/content/CircleShape;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v8, 0x0

    move-object v3, v8

    .line 28
    const/4 v8, 0x0

    move-object v4, v8

    .line 29
    const/4 v8, 0x0

    move-object v5, v8

    .line 30
    move v8, v2

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    const/4 v8, 0x1

    :goto_0
    move v6, v8

    .line 31
    const/4 v8, 0x0

    move v7, v8

    .line 33
    :goto_1
    move-object v8, v0

    invoke-virtual {v8}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 34
    move-object v8, v0

    sget-object v9, Lcom/airbnb/lottie/parser/CircleShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v8, v9}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 52
    move-object v8, v0

    invoke-virtual {v8}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 53
    move-object v8, v0

    invoke-virtual {v8}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_1

    .line 30
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 36
    :pswitch_0
    move-object v8, v0

    invoke-virtual {v8}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 37
    goto :goto_1

    .line 39
    :pswitch_1
    move-object v8, v0

    move-object v9, v1

    invoke-static {v8, v9}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v8

    move-object v4, v8

    .line 40
    goto :goto_1

    .line 42
    :pswitch_2
    move-object v8, v0

    move-object v9, v1

    invoke-static {v8, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v8

    move-object v5, v8

    .line 43
    goto :goto_1

    .line 45
    :pswitch_3
    move-object v8, v0

    invoke-virtual {v8}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v8

    move v7, v8

    .line 46
    goto :goto_1

    .line 49
    :pswitch_4
    move-object v8, v0

    invoke-virtual {v8}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    const/4 v8, 0x1

    :goto_2
    move v6, v8

    .line 50
    goto :goto_1

    .line 49
    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    .line 57
    :cond_2
    new-instance v8, Lcom/airbnb/lottie/model/content/CircleShape;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move v13, v6

    move v14, v7

    invoke-direct/range {v9 .. v14}, Lcom/airbnb/lottie/model/content/CircleShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;ZZ)V

    move-object v0, v8

    return-object v0

    .line 34
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
