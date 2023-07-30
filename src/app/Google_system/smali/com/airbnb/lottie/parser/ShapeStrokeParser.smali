.class Lcom/airbnb/lottie/parser/ShapeStrokeParser;
.super Ljava/lang/Object;
.source "ShapeStrokeParser.java"


# static fields
.field private static final DASH_PATTERN_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 17
    const/16 v0, 0x9

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

    const-string v3, "w"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string v3, "o"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string v3, "lc"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string v3, "lj"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    const-string v3, "ml"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    const-string v3, "hd"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    const-string v3, "d"

    aput-object v3, v1, v2

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "n"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "v"

    aput-object v3, v1, v2

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->DASH_PATTERN_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeStroke;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    const/16 v18, 0x0

    move-object/from16 v4, v18

    .line 39
    const/16 v18, 0x0

    move-object/from16 v5, v18

    .line 40
    const/16 v18, 0x0

    move-object/from16 v6, v18

    .line 41
    const/16 v18, 0x0

    move-object/from16 v7, v18

    .line 42
    const/16 v18, 0x0

    move-object/from16 v8, v18

    .line 43
    const/16 v18, 0x0

    move-object/from16 v9, v18

    .line 44
    const/16 v18, 0x0

    move-object/from16 v10, v18

    .line 45
    const/16 v18, 0x0

    move/from16 v11, v18

    .line 46
    const/16 v18, 0x0

    move/from16 v12, v18

    .line 48
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v30, v18

    move-object/from16 v18, v30

    move-object/from16 v19, v30

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v13, v18

    .line 50
    :cond_0
    :goto_0
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 51
    move-object/from16 v18, v2

    sget-object v19, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual/range {v18 .. v19}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 117
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 53
    :pswitch_0
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v4, v18

    .line 54
    goto :goto_0

    .line 56
    :pswitch_1
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-static/range {v18 .. v19}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    move-result-object v18

    move-object/from16 v5, v18

    .line 57
    goto :goto_0

    .line 59
    :pswitch_2
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-static/range {v18 .. v19}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v18

    move-object/from16 v6, v18

    .line 60
    goto :goto_0

    .line 62
    :pswitch_3
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-static/range {v18 .. v19}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v18

    move-object/from16 v7, v18

    .line 63
    goto :goto_0

    .line 65
    :pswitch_4
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v18

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v19

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    aget-object v18, v18, v19

    move-object/from16 v8, v18

    .line 66
    goto :goto_0

    .line 68
    :pswitch_5
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v18

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v19

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    aget-object v18, v18, v19

    move-object/from16 v9, v18

    .line 69
    goto :goto_0

    .line 71
    :pswitch_6
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v11, v18

    .line 72
    goto :goto_0

    .line 74
    :pswitch_7
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v18

    move/from16 v12, v18

    .line 75
    goto :goto_0

    .line 77
    :pswitch_8
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 78
    :goto_1
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 79
    const/16 v18, 0x0

    move-object/from16 v14, v18

    .line 80
    const/16 v18, 0x0

    move-object/from16 v15, v18

    .line 82
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 83
    :goto_2
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 84
    move-object/from16 v18, v2

    sget-object v19, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->DASH_PATTERN_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual/range {v18 .. v19}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v18

    packed-switch v18, :pswitch_data_1

    .line 92
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 93
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_2

    .line 86
    :pswitch_9
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v14, v18

    .line 87
    goto :goto_2

    .line 89
    :pswitch_a
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-static/range {v18 .. v19}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v18

    move-object/from16 v15, v18

    .line 90
    goto :goto_2

    .line 96
    :cond_1
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 98
    move-object/from16 v18, v14

    move-object/from16 v16, v18

    const/16 v18, -0x1

    move/from16 v17, v18

    move-object/from16 v18, v16

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    :cond_2
    :goto_3
    move/from16 v18, v17

    packed-switch v18, :pswitch_data_2

    .line 108
    :goto_4
    goto :goto_1

    .line 98
    :sswitch_0
    move-object/from16 v18, v16

    const-string v19, "o"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    const/16 v18, 0x0

    move/from16 v17, v18

    goto :goto_3

    :sswitch_1
    move-object/from16 v18, v16

    const-string v19, "d"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    const/16 v18, 0x1

    move/from16 v17, v18

    goto :goto_3

    :sswitch_2
    move-object/from16 v18, v16

    const-string v19, "g"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    const/16 v18, 0x2

    move/from16 v17, v18

    goto :goto_3

    .line 100
    :pswitch_b
    move-object/from16 v18, v15

    move-object/from16 v10, v18

    .line 101
    goto :goto_4

    .line 104
    :pswitch_c
    move-object/from16 v18, v3

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/airbnb/lottie/LottieComposition;->setHasDashPattern(Z)V

    .line 105
    move-object/from16 v18, v13

    move-object/from16 v19, v15

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v18

    goto :goto_4

    .line 109
    :cond_3
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 111
    move-object/from16 v18, v13

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 113
    move-object/from16 v18, v13

    move-object/from16 v19, v13

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v18

    goto/16 :goto_0

    .line 121
    :cond_4
    new-instance v18, Lcom/airbnb/lottie/model/content/ShapeStroke;

    move-object/from16 v30, v18

    move-object/from16 v18, v30

    move-object/from16 v19, v30

    move-object/from16 v20, v4

    move-object/from16 v21, v10

    move-object/from16 v22, v13

    move-object/from16 v23, v5

    move-object/from16 v24, v7

    move-object/from16 v25, v6

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move/from16 v28, v11

    move/from16 v29, v12

    invoke-direct/range {v19 .. v29}, Lcom/airbnb/lottie/model/content/ShapeStroke;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FZ)V

    move-object/from16 v2, v18

    return-object v2

    .line 51
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
    .end packed-switch

    .line 84
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 98
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x67 -> :sswitch_2
        0x6f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method
