.class public Lcom/airbnb/lottie/parser/LottieCompositionParser;
.super Ljava/lang/Object;
.source "LottieCompositionParser.java"


# static fields
.field static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 26
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "w"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "h"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string v3, "ip"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string v3, "op"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string v3, "fr"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string v3, "v"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    const-string v3, "layers"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    const-string v3, "assets"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    const-string v3, "fonts"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    const-string v3, "chars"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa

    const-string v3, "markers"

    aput-object v3, v1, v2

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;)Lcom/airbnb/lottie/LottieComposition;
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    move-object/from16 v2, p0

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v22

    move/from16 v3, v22

    .line 41
    const/16 v22, 0x0

    move/from16 v4, v22

    .line 42
    const/16 v22, 0x0

    move/from16 v5, v22

    .line 43
    const/16 v22, 0x0

    move/from16 v6, v22

    .line 44
    new-instance v22, Landroidx/collection/LongSparseArray;

    move-object/from16 v34, v22

    move-object/from16 v22, v34

    move-object/from16 v23, v34

    invoke-direct/range {v23 .. v23}, Landroidx/collection/LongSparseArray;-><init>()V

    move-object/from16 v7, v22

    .line 45
    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v34, v22

    move-object/from16 v22, v34

    move-object/from16 v23, v34

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v8, v22

    .line 46
    const/16 v22, 0x0

    move/from16 v9, v22

    .line 47
    const/16 v22, 0x0

    move/from16 v10, v22

    .line 48
    new-instance v22, Ljava/util/HashMap;

    move-object/from16 v34, v22

    move-object/from16 v22, v34

    move-object/from16 v23, v34

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v11, v22

    .line 49
    new-instance v22, Ljava/util/HashMap;

    move-object/from16 v34, v22

    move-object/from16 v22, v34

    move-object/from16 v23, v34

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v12, v22

    .line 50
    new-instance v22, Ljava/util/HashMap;

    move-object/from16 v34, v22

    move-object/from16 v22, v34

    move-object/from16 v23, v34

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v13, v22

    .line 51
    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v34, v22

    move-object/from16 v22, v34

    move-object/from16 v23, v34

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v14, v22

    .line 52
    new-instance v22, Landroidx/collection/SparseArrayCompat;

    move-object/from16 v34, v22

    move-object/from16 v22, v34

    move-object/from16 v23, v34

    invoke-direct/range {v23 .. v23}, Landroidx/collection/SparseArrayCompat;-><init>()V

    move-object/from16 v15, v22

    .line 54
    new-instance v22, Lcom/airbnb/lottie/LottieComposition;

    move-object/from16 v34, v22

    move-object/from16 v22, v34

    move-object/from16 v23, v34

    invoke-direct/range {v23 .. v23}, Lcom/airbnb/lottie/LottieComposition;-><init>()V

    move-object/from16 v16, v22

    .line 55
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 56
    :cond_0
    :goto_0
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 57
    move-object/from16 v22, v2

    sget-object v23, Lcom/airbnb/lottie/parser/LottieCompositionParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual/range {v22 .. v23}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v22

    packed-switch v22, :pswitch_data_0

    .line 87
    :goto_1
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 59
    :pswitch_0
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v22

    move/from16 v9, v22

    .line 60
    goto :goto_0

    .line 62
    :pswitch_1
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v22

    move/from16 v10, v22

    .line 63
    goto :goto_0

    .line 65
    :pswitch_2
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move/from16 v4, v22

    .line 66
    goto :goto_0

    .line 68
    :pswitch_3
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    const v23, 0x3c23d70a    # 0.01f

    sub-float v22, v22, v23

    move/from16 v5, v22

    .line 69
    goto :goto_0

    .line 71
    :pswitch_4
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move/from16 v6, v22

    .line 72
    goto :goto_0

    .line 74
    :pswitch_5
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v17, v22

    .line 75
    move-object/from16 v22, v17

    const-string v23, "\\."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v18, v22

    .line 76
    move-object/from16 v22, v18

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v19, v22

    .line 77
    move-object/from16 v22, v18

    const/16 v23, 0x1

    aget-object v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v20, v22

    .line 78
    move-object/from16 v22, v18

    const/16 v23, 0x2

    aget-object v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v21, v22

    .line 79
    move/from16 v22, v19

    move/from16 v23, v20

    move/from16 v24, v21

    const/16 v25, 0x4

    const/16 v26, 0x4

    const/16 v27, 0x0

    invoke-static/range {v22 .. v27}, Lcom/airbnb/lottie/utils/Utils;->isAtLeastVersion(IIIIII)Z

    move-result v22

    if-nez v22, :cond_0

    .line 81
    move-object/from16 v22, v16

    const-string v23, "Lottie only supports bodymovin >= 4.4.0"

    invoke-virtual/range {v22 .. v23}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 85
    :pswitch_6
    move-object/from16 v22, v2

    move-object/from16 v23, v16

    move-object/from16 v24, v8

    move-object/from16 v25, v7

    invoke-static/range {v22 .. v25}, Lcom/airbnb/lottie/parser/LottieCompositionParser;->parseLayers(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/List;Landroidx/collection/LongSparseArray;)V

    goto/16 :goto_1

    .line 91
    :cond_1
    move/from16 v22, v9

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v23, v3

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v17, v22

    .line 92
    move/from16 v22, v10

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v23, v3

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v18, v22

    .line 93
    new-instance v22, Landroid/graphics/Rect;

    move-object/from16 v34, v22

    move-object/from16 v22, v34

    move-object/from16 v23, v34

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v26, v17

    move/from16 v27, v18

    invoke-direct/range {v23 .. v27}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v19, v22

    .line 95
    move-object/from16 v22, v16

    move-object/from16 v23, v19

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v6

    move-object/from16 v27, v8

    move-object/from16 v28, v7

    move-object/from16 v29, v11

    move-object/from16 v30, v12

    move-object/from16 v31, v15

    move-object/from16 v32, v13

    move-object/from16 v33, v14

    invoke-virtual/range {v22 .. v33}, Lcom/airbnb/lottie/LottieComposition;->init(Landroid/graphics/Rect;FFFLjava/util/List;Landroidx/collection/LongSparseArray;Ljava/util/Map;Ljava/util/Map;Landroidx/collection/SparseArrayCompat;Ljava/util/Map;Ljava/util/List;)V

    .line 98
    move-object/from16 v22, v16

    move-object/from16 v2, v22

    return-object v2

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static parseLayers(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/List;Landroidx/collection/LongSparseArray;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;",
            "Landroidx/collection/LongSparseArray",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const/4 v6, 0x0

    move v4, v6

    .line 104
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 105
    :goto_0
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 106
    move-object v6, v0

    move-object v7, v1

    invoke-static {v6, v7}, Lcom/airbnb/lottie/parser/LayerParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v6

    move-object v5, v6

    .line 107
    move-object v6, v5

    invoke-virtual {v6}, Lcom/airbnb/lottie/model/layer/Layer;->getLayerType()Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v6

    sget-object v7, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->IMAGE:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    if-ne v6, v7, :cond_0

    .line 108
    add-int/lit8 v4, v4, 0x1

    .line 110
    :cond_0
    move-object v6, v2

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 111
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/Layer;->getId()J

    move-result-wide v7

    move-object v9, v5

    invoke-virtual {v6, v7, v8, v9}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 113
    move v6, v4

    const/4 v7, 0x4

    if-le v6, v7, :cond_1

    .line 114
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "You have "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 118
    :cond_1
    goto :goto_0

    .line 119
    :cond_2
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 120
    return-void
.end method
