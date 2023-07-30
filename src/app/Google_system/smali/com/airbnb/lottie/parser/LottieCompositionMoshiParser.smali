.class public Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;
.super Ljava/lang/Object;
.source "LottieCompositionMoshiParser.java"


# static fields
.field static ASSETS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static final FONT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static final MARKER_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 27
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

    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 138
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "id"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "layers"

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

    const-string v3, "h"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string v3, "p"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string v3, "u"

    aput-object v3, v1, v2

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->ASSETS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 204
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "list"

    aput-object v3, v1, v2

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->FONT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 237
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "cm"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "tm"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string v3, "dr"

    aput-object v3, v1, v2

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->MARKER_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
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
    .line 42
    move-object/from16 v2, p0

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v22

    move/from16 v3, v22

    .line 43
    const/16 v22, 0x0

    move/from16 v4, v22

    .line 44
    const/16 v22, 0x0

    move/from16 v5, v22

    .line 45
    const/16 v22, 0x0

    move/from16 v6, v22

    .line 46
    new-instance v22, Landroidx/collection/LongSparseArray;

    move-object/from16 v34, v22

    move-object/from16 v22, v34

    move-object/from16 v23, v34

    invoke-direct/range {v23 .. v23}, Landroidx/collection/LongSparseArray;-><init>()V

    move-object/from16 v7, v22

    .line 47
    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v34, v22

    move-object/from16 v22, v34

    move-object/from16 v23, v34

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v8, v22

    .line 48
    const/16 v22, 0x0

    move/from16 v9, v22

    .line 49
    const/16 v22, 0x0

    move/from16 v10, v22

    .line 50
    new-instance v22, Ljava/util/HashMap;

    move-object/from16 v34, v22

    move-object/from16 v22, v34

    move-object/from16 v23, v34

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v11, v22

    .line 51
    new-instance v22, Ljava/util/HashMap;

    move-object/from16 v34, v22

    move-object/from16 v22, v34

    move-object/from16 v23, v34

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v12, v22

    .line 52
    new-instance v22, Ljava/util/HashMap;

    move-object/from16 v34, v22

    move-object/from16 v22, v34

    move-object/from16 v23, v34

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v13, v22

    .line 53
    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v34, v22

    move-object/from16 v22, v34

    move-object/from16 v23, v34

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v14, v22

    .line 54
    new-instance v22, Landroidx/collection/SparseArrayCompat;

    move-object/from16 v34, v22

    move-object/from16 v22, v34

    move-object/from16 v23, v34

    invoke-direct/range {v23 .. v23}, Landroidx/collection/SparseArrayCompat;-><init>()V

    move-object/from16 v15, v22

    .line 56
    new-instance v22, Lcom/airbnb/lottie/LottieComposition;

    move-object/from16 v34, v22

    move-object/from16 v22, v34

    move-object/from16 v23, v34

    invoke-direct/range {v23 .. v23}, Lcom/airbnb/lottie/LottieComposition;-><init>()V

    move-object/from16 v16, v22

    .line 57
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 58
    :cond_0
    :goto_0
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 59
    move-object/from16 v22, v2

    sget-object v23, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual/range {v22 .. v23}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v22

    packed-switch v22, :pswitch_data_0

    .line 102
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 103
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 61
    :pswitch_0
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v22

    move/from16 v9, v22

    .line 62
    goto :goto_0

    .line 64
    :pswitch_1
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v22

    move/from16 v10, v22

    .line 65
    goto :goto_0

    .line 67
    :pswitch_2
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move/from16 v4, v22

    .line 68
    goto :goto_0

    .line 70
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

    .line 71
    goto :goto_0

    .line 73
    :pswitch_4
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move/from16 v6, v22

    .line 74
    goto :goto_0

    .line 76
    :pswitch_5
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v17, v22

    .line 77
    move-object/from16 v22, v17

    const-string v23, "\\."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v18, v22

    .line 78
    move-object/from16 v22, v18

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v19, v22

    .line 79
    move-object/from16 v22, v18

    const/16 v23, 0x1

    aget-object v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v20, v22

    .line 80
    move-object/from16 v22, v18

    const/16 v23, 0x2

    aget-object v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v21, v22

    .line 81
    move/from16 v22, v19

    move/from16 v23, v20

    move/from16 v24, v21

    const/16 v25, 0x4

    const/16 v26, 0x4

    const/16 v27, 0x0

    invoke-static/range {v22 .. v27}, Lcom/airbnb/lottie/utils/Utils;->isAtLeastVersion(IIIIII)Z

    move-result v22

    if-nez v22, :cond_0

    .line 83
    move-object/from16 v22, v16

    const-string v23, "Lottie only supports bodymovin >= 4.4.0"

    invoke-virtual/range {v22 .. v23}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 87
    :pswitch_6
    move-object/from16 v22, v2

    move-object/from16 v23, v16

    move-object/from16 v24, v8

    move-object/from16 v25, v7

    invoke-static/range {v22 .. v25}, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->parseLayers(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/List;Landroidx/collection/LongSparseArray;)V

    .line 88
    goto/16 :goto_0

    .line 90
    :pswitch_7
    move-object/from16 v22, v2

    move-object/from16 v23, v16

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    invoke-static/range {v22 .. v25}, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->parseAssets(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/Map;Ljava/util/Map;)V

    .line 91
    goto/16 :goto_0

    .line 93
    :pswitch_8
    move-object/from16 v22, v2

    move-object/from16 v23, v13

    invoke-static/range {v22 .. v23}, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->parseFonts(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/util/Map;)V

    .line 94
    goto/16 :goto_0

    .line 96
    :pswitch_9
    move-object/from16 v22, v2

    move-object/from16 v23, v16

    move-object/from16 v24, v15

    invoke-static/range {v22 .. v24}, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->parseChars(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Landroidx/collection/SparseArrayCompat;)V

    .line 97
    goto/16 :goto_0

    .line 99
    :pswitch_a
    move-object/from16 v22, v2

    move-object/from16 v23, v16

    move-object/from16 v24, v14

    invoke-static/range {v22 .. v24}, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->parseMarkers(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/List;)V

    .line 100
    goto/16 :goto_0

    .line 106
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

    .line 107
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

    .line 108
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

    .line 110
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

    .line 113
    move-object/from16 v22, v16

    move-object/from16 v2, v22

    return-object v2

    .line 59
    nop

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
        :pswitch_a
    .end packed-switch
.end method

.method private static parseAssets(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/Map;Ljava/util/Map;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 150
    :goto_0
    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 151
    const/4 v12, 0x0

    move-object v4, v12

    .line 153
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v12

    .line 154
    new-instance v12, Landroidx/collection/LongSparseArray;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    invoke-direct {v13}, Landroidx/collection/LongSparseArray;-><init>()V

    move-object v6, v12

    .line 156
    const/4 v12, 0x0

    move v7, v12

    .line 157
    const/4 v12, 0x0

    move v8, v12

    .line 158
    const/4 v12, 0x0

    move-object v9, v12

    .line 159
    const/4 v12, 0x0

    move-object v10, v12

    .line 160
    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 161
    :goto_1
    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 162
    move-object v12, v0

    sget-object v13, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->ASSETS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v12, v13}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 188
    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 189
    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_1

    .line 164
    :pswitch_0
    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v12

    move-object v4, v12

    .line 165
    goto :goto_1

    .line 167
    :pswitch_1
    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 168
    :goto_2
    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 169
    move-object v12, v0

    move-object v13, v1

    invoke-static {v12, v13}, Lcom/airbnb/lottie/parser/LayerParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v12

    move-object v11, v12

    .line 170
    move-object v12, v6

    move-object v13, v11

    invoke-virtual {v13}, Lcom/airbnb/lottie/model/layer/Layer;->getId()J

    move-result-wide v13

    move-object v15, v11

    invoke-virtual {v12, v13, v14, v15}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 171
    move-object v12, v5

    move-object v13, v11

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 172
    goto :goto_2

    .line 173
    :cond_0
    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 174
    goto :goto_1

    .line 176
    :pswitch_2
    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v12

    move v7, v12

    .line 177
    goto :goto_1

    .line 179
    :pswitch_3
    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v12

    move v8, v12

    .line 180
    goto :goto_1

    .line 182
    :pswitch_4
    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    .line 183
    goto :goto_1

    .line 185
    :pswitch_5
    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    .line 186
    goto :goto_1

    .line 192
    :cond_1
    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 193
    move-object v12, v9

    if-eqz v12, :cond_2

    .line 194
    new-instance v12, Lcom/airbnb/lottie/LottieImageAsset;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move v14, v7

    move v15, v8

    move-object/from16 v16, v4

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    invoke-direct/range {v13 .. v18}, Lcom/airbnb/lottie/LottieImageAsset;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v12

    .line 196
    move-object v12, v3

    move-object v13, v11

    invoke-virtual {v13}, Lcom/airbnb/lottie/LottieImageAsset;->getId()Ljava/lang/String;

    move-result-object v13

    move-object v14, v11

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 200
    :goto_3
    goto/16 :goto_0

    .line 198
    :cond_2
    move-object v12, v2

    move-object v13, v4

    move-object v14, v5

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_3

    .line 201
    :cond_3
    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 202
    return-void

    .line 162
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

.method private static parseChars(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Landroidx/collection/SparseArrayCompat;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Landroidx/collection/SparseArrayCompat",
            "<",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 230
    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 231
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/airbnb/lottie/parser/FontCharacterParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/FontCharacter;

    move-result-object v4

    move-object v3, v4

    .line 232
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/FontCharacter;->hashCode()I

    move-result v5

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 233
    goto :goto_0

    .line 234
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 235
    return-void
.end method

.method private static parseFonts(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/Font;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 208
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    move-object v3, v0

    sget-object v4, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->FONT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 219
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 220
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 211
    :pswitch_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 212
    :goto_1
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    move-object v3, v0

    invoke-static {v3}, Lcom/airbnb/lottie/parser/FontParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;)Lcom/airbnb/lottie/model/Font;

    move-result-object v3

    move-object v2, v3

    .line 214
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/Font;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 215
    goto :goto_1

    .line 216
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 217
    goto :goto_0

    .line 223
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 224
    return-void

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
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
    .line 118
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const/4 v6, 0x0

    move v4, v6

    .line 119
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 120
    :goto_0
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 121
    move-object v6, v0

    move-object v7, v1

    invoke-static {v6, v7}, Lcom/airbnb/lottie/parser/LayerParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v6

    move-object v5, v6

    .line 122
    move-object v6, v5

    invoke-virtual {v6}, Lcom/airbnb/lottie/model/layer/Layer;->getLayerType()Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v6

    sget-object v7, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->IMAGE:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    if-ne v6, v7, :cond_0

    .line 123
    add-int/lit8 v4, v4, 0x1

    .line 125
    :cond_0
    move-object v6, v2

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 126
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/Layer;->getId()J

    move-result-wide v7

    move-object v9, v5

    invoke-virtual {v6, v7, v8, v9}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 128
    move v6, v4

    const/4 v7, 0x4

    if-le v6, v7, :cond_1

    .line 129
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

    .line 133
    :cond_1
    goto :goto_0

    .line 134
    :cond_2
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 135
    return-void
.end method

.method private static parseMarkers(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/Marker;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 246
    :goto_0
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 247
    const/4 v6, 0x0

    move-object v3, v6

    .line 248
    const/4 v6, 0x0

    move v4, v6

    .line 249
    const/4 v6, 0x0

    move v5, v6

    .line 250
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 251
    :goto_1
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 252
    move-object v6, v0

    sget-object v7, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->MARKER_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 263
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 264
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_1

    .line 254
    :pswitch_0
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 255
    goto :goto_1

    .line 257
    :pswitch_1
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v6, v6

    move v4, v6

    .line 258
    goto :goto_1

    .line 260
    :pswitch_2
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v6, v6

    move v5, v6

    .line 261
    goto :goto_1

    .line 267
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 268
    move-object v6, v2

    new-instance v7, Lcom/airbnb/lottie/model/Marker;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v3

    move v10, v4

    move v11, v5

    invoke-direct {v8, v9, v10, v11}, Lcom/airbnb/lottie/model/Marker;-><init>(Ljava/lang/String;FF)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 269
    goto :goto_0

    .line 270
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 271
    return-void

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
