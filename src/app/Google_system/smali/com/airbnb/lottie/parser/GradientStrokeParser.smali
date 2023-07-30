.class Lcom/airbnb/lottie/parser/GradientStrokeParser;
.super Ljava/lang/Object;
.source "GradientStrokeParser.java"


# static fields
.field private static final DASH_PATTERN_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static final GRADIENT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 21
    const/16 v0, 0xc

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

    const-string v3, "w"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    const-string v3, "lc"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    const-string v3, "lj"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    const-string v3, "ml"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa

    const-string v3, "hd"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb

    const-string v3, "d"

    aput-object v3, v1, v2

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/GradientStrokeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 35
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

    sput-object v0, Lcom/airbnb/lottie/parser/GradientStrokeParser;->GRADIENT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 39
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

    sput-object v0, Lcom/airbnb/lottie/parser/GradientStrokeParser;->DASH_PATTERN_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/GradientStroke;
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    const/16 v20, 0x0

    move-object/from16 v4, v20

    .line 47
    const/16 v20, 0x0

    move-object/from16 v5, v20

    .line 48
    const/16 v20, 0x0

    move-object/from16 v6, v20

    .line 49
    const/16 v20, 0x0

    move-object/from16 v7, v20

    .line 50
    const/16 v20, 0x0

    move-object/from16 v8, v20

    .line 51
    const/16 v20, 0x0

    move-object/from16 v9, v20

    .line 52
    const/16 v20, 0x0

    move-object/from16 v10, v20

    .line 53
    const/16 v20, 0x0

    move-object/from16 v11, v20

    .line 54
    const/16 v20, 0x0

    move-object/from16 v12, v20

    .line 55
    const/16 v20, 0x0

    move-object/from16 v13, v20

    .line 56
    const/16 v20, 0x0

    move/from16 v14, v20

    .line 57
    const/16 v20, 0x0

    move/from16 v15, v20

    .line 60
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v35, v20

    move-object/from16 v20, v35

    move-object/from16 v21, v35

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v20

    .line 62
    :cond_0
    :goto_0
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 63
    move-object/from16 v20, v2

    sget-object v21, Lcom/airbnb/lottie/parser/GradientStrokeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual/range {v20 .. v21}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v20

    packed-switch v20, :pswitch_data_0

    .line 147
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 148
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 65
    :pswitch_0
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v4, v20

    .line 66
    goto :goto_0

    .line 68
    :pswitch_1
    const/16 v20, -0x1

    move/from16 v17, v20

    .line 69
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 70
    :goto_1
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 71
    move-object/from16 v20, v2

    sget-object v21, Lcom/airbnb/lottie/parser/GradientStrokeParser;->GRADIENT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual/range {v20 .. v21}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v20

    packed-switch v20, :pswitch_data_1

    .line 79
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 80
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_1

    .line 73
    :pswitch_2
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v20

    move/from16 v17, v20

    .line 74
    goto :goto_1

    .line 76
    :pswitch_3
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move/from16 v22, v17

    invoke-static/range {v20 .. v22}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseGradientColor(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;I)Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    move-result-object v20

    move-object/from16 v5, v20

    .line 77
    goto :goto_1

    .line 83
    :cond_1
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 84
    goto :goto_0

    .line 86
    :pswitch_4
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-static/range {v20 .. v21}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v20

    move-object/from16 v6, v20

    .line 87
    goto :goto_0

    .line 89
    :pswitch_5
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    sget-object v20, Lcom/airbnb/lottie/model/content/GradientType;->LINEAR:Lcom/airbnb/lottie/model/content/GradientType;

    :goto_2
    move-object/from16 v7, v20

    .line 90
    goto/16 :goto_0

    .line 89
    :cond_2
    sget-object v20, Lcom/airbnb/lottie/model/content/GradientType;->RADIAL:Lcom/airbnb/lottie/model/content/GradientType;

    goto :goto_2

    .line 92
    :pswitch_6
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-static/range {v20 .. v21}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v20

    move-object/from16 v8, v20

    .line 93
    goto/16 :goto_0

    .line 95
    :pswitch_7
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-static/range {v20 .. v21}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v20

    move-object/from16 v9, v20

    .line 96
    goto/16 :goto_0

    .line 98
    :pswitch_8
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-static/range {v20 .. v21}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v20

    move-object/from16 v10, v20

    .line 99
    goto/16 :goto_0

    .line 101
    :pswitch_9
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v20

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v21

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    aget-object v20, v20, v21

    move-object/from16 v11, v20

    .line 102
    goto/16 :goto_0

    .line 104
    :pswitch_a
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v20

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v21

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    aget-object v20, v20, v21

    move-object/from16 v12, v20

    .line 105
    goto/16 :goto_0

    .line 107
    :pswitch_b
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v14, v20

    .line 108
    goto/16 :goto_0

    .line 110
    :pswitch_c
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v20

    move/from16 v15, v20

    .line 111
    goto/16 :goto_0

    .line 113
    :pswitch_d
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 114
    :goto_3
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 115
    const/16 v20, 0x0

    move-object/from16 v18, v20

    .line 116
    const/16 v20, 0x0

    move-object/from16 v19, v20

    .line 117
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 118
    :goto_4
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 119
    move-object/from16 v20, v2

    sget-object v21, Lcom/airbnb/lottie/parser/GradientStrokeParser;->DASH_PATTERN_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual/range {v20 .. v21}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v20

    packed-switch v20, :pswitch_data_2

    .line 127
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 128
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_4

    .line 121
    :pswitch_e
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v18, v20

    .line 122
    goto :goto_4

    .line 124
    :pswitch_f
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-static/range {v20 .. v21}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v20

    move-object/from16 v19, v20

    .line 125
    goto :goto_4

    .line 131
    :cond_3
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 133
    move-object/from16 v20, v18

    const-string v21, "o"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 134
    move-object/from16 v20, v19

    move-object/from16 v13, v20

    .line 139
    :cond_4
    :goto_5
    goto :goto_3

    .line 135
    :cond_5
    move-object/from16 v20, v18

    const-string v21, "d"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_6

    move-object/from16 v20, v18

    const-string v21, "g"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 136
    :cond_6
    move-object/from16 v20, v3

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/airbnb/lottie/LottieComposition;->setHasDashPattern(Z)V

    .line 137
    move-object/from16 v20, v16

    move-object/from16 v21, v19

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v20

    goto :goto_5

    .line 140
    :cond_7
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 141
    move-object/from16 v20, v16

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 143
    move-object/from16 v20, v16

    move-object/from16 v21, v16

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v20

    goto/16 :goto_0

    .line 152
    :cond_8
    new-instance v20, Lcom/airbnb/lottie/model/content/GradientStroke;

    move-object/from16 v35, v20

    move-object/from16 v20, v35

    move-object/from16 v21, v35

    move-object/from16 v22, v4

    move-object/from16 v23, v7

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v10

    move-object/from16 v29, v11

    move-object/from16 v30, v12

    move/from16 v31, v14

    move-object/from16 v32, v16

    move-object/from16 v33, v13

    move/from16 v34, v15

    invoke-direct/range {v21 .. v34}, Lcom/airbnb/lottie/model/content/GradientStroke;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FLjava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    move-object/from16 v2, v20

    return-object v2

    .line 63
    nop

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
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 71
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 119
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
