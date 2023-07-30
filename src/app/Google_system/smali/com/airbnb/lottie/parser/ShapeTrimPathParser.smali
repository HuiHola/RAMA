.class Lcom/airbnb/lottie/parser/ShapeTrimPathParser;
.super Ljava/lang/Object;
.source "ShapeTrimPathParser.java"


# static fields
.field private static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 16
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "s"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "e"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string v3, "o"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string v3, "nm"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string v3, "m"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string v3, "hd"

    aput-object v3, v1, v2

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/ShapeTrimPathParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeTrimPath;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v8, 0x0

    move-object v2, v8

    .line 27
    const/4 v8, 0x0

    move-object v3, v8

    .line 28
    const/4 v8, 0x0

    move-object v4, v8

    .line 29
    const/4 v8, 0x0

    move-object v5, v8

    .line 30
    const/4 v8, 0x0

    move-object v6, v8

    .line 31
    const/4 v8, 0x0

    move v7, v8

    .line 33
    :goto_0
    move-object v8, v0

    invoke-virtual {v8}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 34
    move-object v8, v0

    sget-object v9, Lcom/airbnb/lottie/parser/ShapeTrimPathParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v8, v9}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 54
    move-object v8, v0

    invoke-virtual {v8}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 36
    :pswitch_0
    move-object v8, v0

    move-object v9, v1

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v8

    move-object v4, v8

    .line 37
    goto :goto_0

    .line 39
    :pswitch_1
    move-object v8, v0

    move-object v9, v1

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v8

    move-object v5, v8

    .line 40
    goto :goto_0

    .line 42
    :pswitch_2
    move-object v8, v0

    move-object v9, v1

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v8

    move-object v6, v8

    .line 43
    goto :goto_0

    .line 45
    :pswitch_3
    move-object v8, v0

    invoke-virtual {v8}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 46
    goto :goto_0

    .line 48
    :pswitch_4
    move-object v8, v0

    invoke-virtual {v8}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v8

    invoke-static {v8}, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->forId(I)Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v8

    move-object v3, v8

    .line 49
    goto :goto_0

    .line 51
    :pswitch_5
    move-object v8, v0

    invoke-virtual {v8}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v8

    move v7, v8

    .line 52
    goto :goto_0

    .line 58
    :cond_0
    new-instance v8, Lcom/airbnb/lottie/model/content/ShapeTrimPath;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move v15, v7

    invoke-direct/range {v9 .. v15}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    move-object v0, v8

    return-object v0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
