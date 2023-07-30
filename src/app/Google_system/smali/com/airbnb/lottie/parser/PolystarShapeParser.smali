.class Lcom/airbnb/lottie/parser/PolystarShapeParser;
.super Ljava/lang/Object;
.source "PolystarShapeParser.java"


# static fields
.field private static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 14
    const/16 v0, 0xa

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

    const-string v3, "sy"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string v3, "pt"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string v3, "p"

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

    const-string v3, "or"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    const-string v3, "os"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    const-string v3, "ir"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    const-string v3, "is"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    const-string v3, "hd"

    aput-object v3, v1, v2

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/PolystarShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

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

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/PolystarShape;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v12, 0x0

    move-object v2, v12

    .line 32
    const/4 v12, 0x0

    move-object v3, v12

    .line 33
    const/4 v12, 0x0

    move-object v4, v12

    .line 34
    const/4 v12, 0x0

    move-object v5, v12

    .line 35
    const/4 v12, 0x0

    move-object v6, v12

    .line 36
    const/4 v12, 0x0

    move-object v7, v12

    .line 37
    const/4 v12, 0x0

    move-object v8, v12

    .line 38
    const/4 v12, 0x0

    move-object v9, v12

    .line 39
    const/4 v12, 0x0

    move-object v10, v12

    .line 40
    const/4 v12, 0x0

    move v11, v12

    .line 42
    :goto_0
    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 43
    move-object v12, v0

    sget-object v13, Lcom/airbnb/lottie/parser/PolystarShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v12, v13}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 75
    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 76
    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 45
    :pswitch_0
    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v12

    move-object v2, v12

    .line 46
    goto :goto_0

    .line 48
    :pswitch_1
    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v12

    invoke-static {v12}, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->forValue(I)Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    move-result-object v12

    move-object v3, v12

    .line 49
    goto :goto_0

    .line 51
    :pswitch_2
    move-object v12, v0

    move-object v13, v1

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v12

    move-object v4, v12

    .line 52
    goto :goto_0

    .line 54
    :pswitch_3
    move-object v12, v0

    move-object v13, v1

    invoke-static {v12, v13}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v12

    move-object v5, v12

    .line 55
    goto :goto_0

    .line 57
    :pswitch_4
    move-object v12, v0

    move-object v13, v1

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v12

    move-object v6, v12

    .line 58
    goto :goto_0

    .line 60
    :pswitch_5
    move-object v12, v0

    move-object v13, v1

    invoke-static {v12, v13}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v12

    move-object v7, v12

    .line 61
    goto :goto_0

    .line 63
    :pswitch_6
    move-object v12, v0

    move-object v13, v1

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v12

    move-object v8, v12

    .line 64
    goto :goto_0

    .line 66
    :pswitch_7
    move-object v12, v0

    move-object v13, v1

    invoke-static {v12, v13}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v12

    move-object v9, v12

    .line 67
    goto :goto_0

    .line 69
    :pswitch_8
    move-object v12, v0

    move-object v13, v1

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v12

    move-object v10, v12

    .line 70
    goto :goto_0

    .line 72
    :pswitch_9
    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v12

    move v11, v12

    .line 73
    goto :goto_0

    .line 80
    :cond_0
    new-instance v12, Lcom/airbnb/lottie/model/content/PolystarShape;

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v9

    move-object/from16 v20, v7

    move-object/from16 v21, v10

    move-object/from16 v22, v8

    move/from16 v23, v11

    invoke-direct/range {v13 .. v23}, Lcom/airbnb/lottie/model/content/PolystarShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/PolystarShape$Type;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    move-object v0, v12

    return-object v0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
