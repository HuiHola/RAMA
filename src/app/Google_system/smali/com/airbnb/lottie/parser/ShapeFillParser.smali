.class Lcom/airbnb/lottie/parser/ShapeFillParser;
.super Ljava/lang/Object;
.source "ShapeFillParser.java"


# static fields
.field private static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 13
    const/4 v0, 0x6

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

    const-string v3, "c"

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

    const-string v3, "fillEnabled"

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

    const-string v3, "hd"

    aput-object v3, v1, v2

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/ShapeFillParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeFill;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v9, 0x0

    move-object v2, v9

    .line 28
    const/4 v9, 0x0

    move v3, v9

    .line 29
    const/4 v9, 0x0

    move-object v4, v9

    .line 30
    const/4 v9, 0x0

    move-object v5, v9

    .line 31
    const/4 v9, 0x1

    move v6, v9

    .line 32
    const/4 v9, 0x0

    move v7, v9

    .line 34
    :goto_0
    move-object v9, v0

    invoke-virtual {v9}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 35
    move-object v9, v0

    sget-object v10, Lcom/airbnb/lottie/parser/ShapeFillParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v9, v10}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 55
    move-object v9, v0

    invoke-virtual {v9}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 56
    move-object v9, v0

    invoke-virtual {v9}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 37
    :pswitch_0
    move-object v9, v0

    invoke-virtual {v9}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 38
    goto :goto_0

    .line 40
    :pswitch_1
    move-object v9, v0

    move-object v10, v1

    invoke-static {v9, v10}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    move-result-object v9

    move-object v2, v9

    .line 41
    goto :goto_0

    .line 43
    :pswitch_2
    move-object v9, v0

    move-object v10, v1

    invoke-static {v9, v10}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v9

    move-object v4, v9

    .line 44
    goto :goto_0

    .line 46
    :pswitch_3
    move-object v9, v0

    invoke-virtual {v9}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v9

    move v3, v9

    .line 47
    goto :goto_0

    .line 49
    :pswitch_4
    move-object v9, v0

    invoke-virtual {v9}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v9

    move v6, v9

    .line 50
    goto :goto_0

    .line 52
    :pswitch_5
    move-object v9, v0

    invoke-virtual {v9}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v9

    move v7, v9

    .line 53
    goto :goto_0

    .line 60
    :cond_0
    move v9, v6

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    sget-object v9, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_1
    move-object v8, v9

    .line 61
    new-instance v9, Lcom/airbnb/lottie/model/content/ShapeFill;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object v11, v5

    move v12, v3

    move-object v13, v8

    move-object v14, v2

    move-object v15, v4

    move/from16 v16, v7

    invoke-direct/range {v10 .. v16}, Lcom/airbnb/lottie/model/content/ShapeFill;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Z)V

    move-object v0, v9

    return-object v0

    .line 60
    :cond_1
    sget-object v9, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_1

    .line 35
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
