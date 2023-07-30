.class Lcom/airbnb/lottie/parser/GradientFillParser;
.super Ljava/lang/Object;
.source "GradientFillParser.java"


# static fields
.field private static final GRADIENT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 17
    const/16 v0, 0x8

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

    const-string v3, "g"

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

    const-string v3, "t"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string v3, "s"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string v3, "e"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    const-string v3, "r"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    const-string v3, "hd"

    aput-object v3, v1, v2

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/GradientFillParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "p"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "k"

    aput-object v3, v1, v2

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/GradientFillParser;->GRADIENT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/GradientFill;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v11, 0x0

    move-object v2, v11

    .line 37
    const/4 v11, 0x0

    move-object v3, v11

    .line 38
    const/4 v11, 0x0

    move-object v4, v11

    .line 39
    const/4 v11, 0x0

    move-object v5, v11

    .line 40
    const/4 v11, 0x0

    move-object v6, v11

    .line 41
    const/4 v11, 0x0

    move-object v7, v11

    .line 42
    sget-object v11, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    move-object v8, v11

    .line 43
    const/4 v11, 0x0

    move v9, v11

    .line 45
    :goto_0
    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 46
    move-object v11, v0

    sget-object v12, Lcom/airbnb/lottie/parser/GradientFillParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v11, v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 87
    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 88
    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 48
    :pswitch_0
    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v11

    move-object v2, v11

    .line 49
    goto :goto_0

    .line 51
    :pswitch_1
    const/4 v11, -0x1

    move v10, v11

    .line 52
    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 53
    :goto_1
    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 54
    move-object v11, v0

    sget-object v12, Lcom/airbnb/lottie/parser/GradientFillParser;->GRADIENT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v11, v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v11

    packed-switch v11, :pswitch_data_1

    .line 62
    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 63
    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_1

    .line 56
    :pswitch_2
    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v11

    move v10, v11

    .line 57
    goto :goto_1

    .line 59
    :pswitch_3
    move-object v11, v0

    move-object v12, v1

    move v13, v10

    invoke-static {v11, v12, v13}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseGradientColor(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;I)Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    move-result-object v11

    move-object v3, v11

    .line 60
    goto :goto_1

    .line 66
    :cond_0
    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 67
    goto :goto_0

    .line 69
    :pswitch_4
    move-object v11, v0

    move-object v12, v1

    invoke-static {v11, v12}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v11

    move-object v4, v11

    .line 70
    goto :goto_0

    .line 72
    :pswitch_5
    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    sget-object v11, Lcom/airbnb/lottie/model/content/GradientType;->LINEAR:Lcom/airbnb/lottie/model/content/GradientType;

    :goto_2
    move-object v5, v11

    .line 73
    goto :goto_0

    .line 72
    :cond_1
    sget-object v11, Lcom/airbnb/lottie/model/content/GradientType;->RADIAL:Lcom/airbnb/lottie/model/content/GradientType;

    goto :goto_2

    .line 75
    :pswitch_6
    move-object v11, v0

    move-object v12, v1

    invoke-static {v11, v12}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v11

    move-object v6, v11

    .line 76
    goto :goto_0

    .line 78
    :pswitch_7
    move-object v11, v0

    move-object v12, v1

    invoke-static {v11, v12}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v11

    move-object v7, v11

    .line 79
    goto :goto_0

    .line 81
    :pswitch_8
    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    sget-object v11, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_3
    move-object v8, v11

    .line 82
    goto/16 :goto_0

    .line 81
    :cond_2
    sget-object v11, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_3

    .line 84
    :pswitch_9
    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v11

    move v9, v11

    .line 85
    goto/16 :goto_0

    .line 92
    :cond_3
    new-instance v11, Lcom/airbnb/lottie/model/content/GradientFill;

    move-object/from16 v23, v11

    move-object/from16 v11, v23

    move-object/from16 v12, v23

    move-object v13, v2

    move-object v14, v5

    move-object v15, v8

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v22, v9

    invoke-direct/range {v12 .. v22}, Lcom/airbnb/lottie/model/content/GradientFill;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Landroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    move-object v0, v11

    return-object v0

    .line 46
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 54
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
