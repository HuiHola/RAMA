.class public Lcom/airbnb/lottie/parser/GradientColorParser;
.super Ljava/lang/Object;
.source "GradientColorParser.java"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/parser/ValueParser",
        "<",
        "Lcom/airbnb/lottie/model/content/GradientColor;",
        ">;"
    }
.end annotation


# instance fields
.field private colorPoints:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 21
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 22
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 23
    return-void
.end method

.method private addOpacityStopsToGradientIfNeeded(Lcom/airbnb/lottie/model/content/GradientColor;Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/content/GradientColor;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v9, v0

    iget v9, v9, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    const/4 v10, 0x4

    mul-int/lit8 v9, v9, 0x4

    move v3, v9

    .line 107
    move-object v9, v2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v10, v3

    if-gt v9, v10, :cond_0

    .line 134
    :goto_0
    return-void

    .line 111
    :cond_0
    move-object v9, v2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v10, v3

    sub-int/2addr v9, v10

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    move v4, v9

    .line 112
    move v9, v4

    new-array v9, v9, [D

    move-object v5, v9

    .line 113
    move v9, v4

    new-array v9, v9, [D

    move-object v6, v9

    .line 115
    move v9, v3

    move v7, v9

    const/4 v9, 0x0

    move v8, v9

    :goto_1
    move v9, v7

    move-object v10, v2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 116
    move v9, v7

    const/4 v10, 0x2

    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_1

    .line 117
    move-object v9, v5

    move v10, v8

    move-object v11, v2

    move v12, v7

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    float-to-double v11, v11

    aput-wide v11, v9, v10

    .line 115
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 119
    :cond_1
    move-object v9, v6

    move v10, v8

    move-object v11, v2

    move v12, v7

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    float-to-double v11, v11

    aput-wide v11, v9, v10

    .line 120
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 124
    :cond_2
    const/4 v9, 0x0

    move v7, v9

    :goto_3
    move v9, v7

    move-object v10, v1

    invoke-virtual {v10}, Lcom/airbnb/lottie/model/content/GradientColor;->getSize()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 125
    move-object v9, v1

    invoke-virtual {v9}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object v9

    move v10, v7

    aget v9, v9, v10

    move v8, v9

    .line 126
    move-object v9, v0

    move-object v10, v1

    .line 127
    invoke-virtual {v10}, Lcom/airbnb/lottie/model/content/GradientColor;->getPositions()[F

    move-result-object v10

    move v11, v7

    aget v10, v10, v11

    float-to-double v10, v10

    move-object v12, v5

    move-object v13, v6

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/airbnb/lottie/parser/GradientColorParser;->getOpacityAtPosition(D[D[D)I

    move-result v9

    move v10, v8

    .line 128
    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v10

    move v11, v8

    .line 129
    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v11

    move v12, v8

    .line 130
    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    .line 126
    invoke-static {v9, v10, v11, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    move v8, v9

    .line 132
    move-object v9, v1

    invoke-virtual {v9}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object v9

    move v10, v7

    move v11, v8

    aput v11, v9, v10

    .line 124
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 134
    :cond_3
    goto/16 :goto_0
.end method

.method private getOpacityAtPosition(D[D[D)I
    .locals 20
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
        to = 0xffL
    .end annotation

    .prologue
    .line 138
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v12, 0x1

    move v5, v12

    :goto_0
    move v12, v5

    move-object v13, v3

    array-length v13, v13

    if-ge v12, v13, :cond_1

    .line 139
    move-object v12, v3

    move v13, v5

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    aget-wide v12, v12, v13

    move-wide v6, v12

    .line 140
    move-object v12, v3

    move v13, v5

    aget-wide v12, v12, v13

    move-wide v8, v12

    .line 141
    move-object v12, v3

    move v13, v5

    aget-wide v12, v12, v13

    move-wide v14, v1

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_0

    .line 142
    move-wide v12, v1

    move-wide v14, v6

    sub-double/2addr v12, v14

    move-wide v14, v8

    move-wide/from16 v16, v6

    sub-double v14, v14, v16

    div-double/2addr v12, v14

    move-wide v10, v12

    .line 143
    const-wide v12, 0x406fe00000000000L    # 255.0

    move-object v14, v4

    move v15, v5

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    aget-wide v14, v14, v15

    move-object/from16 v16, v4

    move/from16 v17, v5

    aget-wide v16, v16, v17

    move-wide/from16 v18, v10

    invoke-static/range {v14 .. v19}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(DDD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-int v12, v12

    move v0, v12

    .line 146
    :goto_1
    return v0

    .line 138
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 146
    :cond_1
    const-wide v12, 0x406fe00000000000L    # 255.0

    move-object v14, v4

    move-object v15, v4

    array-length v15, v15

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    aget-wide v14, v14, v15

    mul-double/2addr v12, v14

    double-to-int v12, v12

    move v0, v12

    goto :goto_1
.end method


# virtual methods
.method public parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Lcom/airbnb/lottie/model/content/GradientColor;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v5, v16

    .line 51
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v16

    sget-object v17, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1

    const/16 v16, 0x1

    :goto_0
    move/from16 v6, v16

    .line 52
    move/from16 v16, v6

    if-eqz v16, :cond_0

    .line 53
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 55
    :cond_0
    :goto_1
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 56
    move-object/from16 v16, v5

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v16

    goto :goto_1

    .line 51
    :cond_1
    const/16 v16, 0x0

    goto :goto_0

    .line 58
    :cond_2
    move/from16 v16, v6

    if-eqz v16, :cond_3

    .line 59
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 61
    :cond_3
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 62
    move-object/from16 v16, v2

    move-object/from16 v17, v5

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x4

    div-int/lit8 v17, v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 65
    :cond_4
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    move-object/from16 v7, v16

    .line 66
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    move-object/from16 v8, v16

    .line 68
    const/16 v16, 0x0

    move/from16 v9, v16

    .line 69
    const/16 v16, 0x0

    move/from16 v10, v16

    .line 70
    const/16 v16, 0x0

    move/from16 v11, v16

    :goto_2
    move/from16 v16, v11

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    move/from16 v17, v0

    const/16 v18, 0x4

    mul-int/lit8 v17, v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 71
    move/from16 v16, v11

    const/16 v17, 0x4

    div-int/lit8 v16, v16, 0x4

    move/from16 v12, v16

    .line 72
    move-object/from16 v16, v5

    move/from16 v17, v11

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Float;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v13, v16

    .line 73
    move/from16 v16, v11

    const/16 v17, 0x4

    rem-int/lit8 v16, v16, 0x4

    packed-switch v16, :pswitch_data_0

    .line 70
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 76
    :pswitch_0
    move-object/from16 v16, v7

    move/from16 v17, v12

    move-wide/from16 v18, v13

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    .line 77
    goto :goto_3

    .line 79
    :pswitch_1
    move-wide/from16 v16, v13

    const-wide v18, 0x406fe00000000000L    # 255.0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    move/from16 v9, v16

    .line 80
    goto :goto_3

    .line 82
    :pswitch_2
    move-wide/from16 v16, v13

    const-wide v18, 0x406fe00000000000L    # 255.0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    move/from16 v10, v16

    .line 83
    goto :goto_3

    .line 85
    :pswitch_3
    move-wide/from16 v16, v13

    const-wide v18, 0x406fe00000000000L    # 255.0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    move/from16 v15, v16

    .line 86
    move-object/from16 v16, v8

    move/from16 v17, v12

    const/16 v18, 0xff

    move/from16 v19, v9

    move/from16 v20, v10

    move/from16 v21, v15

    invoke-static/range {v18 .. v21}, Landroid/graphics/Color;->argb(IIII)I

    move-result v18

    aput v18, v16, v17

    goto :goto_3

    .line 91
    :cond_5
    new-instance v16, Lcom/airbnb/lottie/model/content/GradientColor;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    invoke-direct/range {v17 .. v19}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    move-object/from16 v11, v16

    .line 92
    move-object/from16 v16, v2

    move-object/from16 v17, v11

    move-object/from16 v18, v5

    invoke-direct/range {v16 .. v18}, Lcom/airbnb/lottie/parser/GradientColorParser;->addOpacityStopsToGradientIfNeeded(Lcom/airbnb/lottie/model/content/GradientColor;Ljava/util/List;)V

    .line 93
    move-object/from16 v16, v11

    move-object/from16 v2, v16

    return-object v2

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/parser/GradientColorParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Lcom/airbnb/lottie/model/content/GradientColor;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method
