.class public Lcom/airbnb/lottie/parser/LayerParser;
.super Ljava/lang/Object;
.source "LayerParser.java"


# static fields
.field private static final EFFECTS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static final TEXT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 27
    const/16 v0, 0x17

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

    const-string v3, "ind"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string v3, "refId"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string v3, "ty"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string v3, "parent"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string v3, "sw"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    const-string v3, "sh"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    const-string v3, "sc"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    const-string v3, "ks"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    const-string v3, "tt"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa

    const-string v3, "masksProperties"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb

    const-string v3, "shapes"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc

    const-string v3, "t"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd

    const-string v3, "ef"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe

    const-string v3, "sr"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf

    const-string v3, "st"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x10

    const-string v3, "w"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x11

    const-string v3, "h"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x12

    const-string v3, "ip"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x13

    const-string v3, "op"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x14

    const-string v3, "tm"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x15

    const-string v3, "cl"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x16

    const-string v3, "hd"

    aput-object v3, v1, v2

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LayerParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "d"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "a"

    aput-object v3, v1, v2

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LayerParser;->TEXT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "nm"

    aput-object v3, v1, v2

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LayerParser;->EFFECTS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 29

    .prologue
    .line 54
    move-object/from16 v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    move-object v1, v2

    .line 55
    new-instance v2, Lcom/airbnb/lottie/model/layer/Layer;

    move-object/from16 v28, v2

    move-object/from16 v2, v28

    move-object/from16 v3, v28

    .line 56
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    move-object v5, v0

    const-string v6, "__container"

    const-wide/16 v7, -0x1

    sget-object v9, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->PRE_COMP:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    new-instance v14, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-object/from16 v28, v14

    move-object/from16 v14, v28

    move-object/from16 v15, v28

    invoke-direct {v15}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>()V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v20, v1

    .line 59
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v20

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->height()I

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v24

    sget-object v25, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->NONE:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v3 .. v27}, Lcom/airbnb/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFIILcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    .line 55
    move-object v0, v2

    return-object v0
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 59
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    const-string v32, "UNSET"

    move-object/from16 v4, v32

    .line 74
    const/16 v32, 0x0

    move-object/from16 v5, v32

    .line 75
    const/16 v32, 0x0

    move-object/from16 v6, v32

    .line 76
    const-wide/16 v32, 0x0

    move-wide/from16 v7, v32

    .line 77
    const/16 v32, 0x0

    move/from16 v9, v32

    .line 78
    const/16 v32, 0x0

    move/from16 v10, v32

    .line 79
    const/16 v32, 0x0

    move/from16 v11, v32

    .line 80
    const/16 v32, 0x0

    move/from16 v12, v32

    .line 81
    const/16 v32, 0x0

    move/from16 v13, v32

    .line 82
    const-wide/16 v32, -0x1

    move-wide/from16 v14, v32

    .line 83
    const/high16 v32, 0x3f800000    # 1.0f

    move/from16 v16, v32

    .line 84
    const/16 v32, 0x0

    move/from16 v17, v32

    .line 85
    const/16 v32, 0x0

    move/from16 v18, v32

    .line 86
    const/16 v32, 0x0

    move/from16 v19, v32

    .line 87
    const/16 v32, 0x0

    move-object/from16 v20, v32

    .line 88
    const/16 v32, 0x0

    move/from16 v21, v32

    .line 90
    sget-object v32, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->NONE:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-object/from16 v22, v32

    .line 91
    const/16 v32, 0x0

    move-object/from16 v23, v32

    .line 92
    const/16 v32, 0x0

    move-object/from16 v24, v32

    .line 93
    const/16 v32, 0x0

    move-object/from16 v25, v32

    .line 94
    const/16 v32, 0x0

    move-object/from16 v26, v32

    .line 96
    new-instance v32, Ljava/util/ArrayList;

    move-object/from16 v58, v32

    move-object/from16 v32, v58

    move-object/from16 v33, v58

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v27, v32

    .line 97
    new-instance v32, Ljava/util/ArrayList;

    move-object/from16 v58, v32

    move-object/from16 v32, v58

    move-object/from16 v33, v58

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v28, v32

    .line 99
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 100
    :goto_0
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_9

    .line 101
    move-object/from16 v32, v2

    sget-object v33, Lcom/airbnb/lottie/parser/LayerParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual/range {v32 .. v33}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v32

    packed-switch v32, :pswitch_data_0

    .line 231
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 232
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 103
    :pswitch_0
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v4, v32

    .line 104
    goto :goto_0

    .line 106
    :pswitch_1
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v32

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v7, v32

    .line 107
    goto :goto_0

    .line 109
    :pswitch_2
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v6, v32

    .line 110
    goto :goto_0

    .line 112
    :pswitch_3
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v32

    move/from16 v29, v32

    .line 113
    move/from16 v32, v29

    sget-object v33, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->UNKNOWN:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    invoke-virtual/range {v33 .. v33}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->ordinal()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_0

    .line 114
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->values()[Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v32

    move/from16 v33, v29

    aget-object v32, v32, v33

    move-object/from16 v5, v32

    goto :goto_0

    .line 116
    :cond_0
    sget-object v32, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->UNKNOWN:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-object/from16 v5, v32

    .line 118
    goto :goto_0

    .line 120
    :pswitch_4
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v32

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v14, v32

    .line 121
    goto :goto_0

    .line 123
    :pswitch_5
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v33

    mul-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v9, v32

    .line 124
    goto/16 :goto_0

    .line 126
    :pswitch_6
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v33

    mul-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v10, v32

    .line 127
    goto/16 :goto_0

    .line 129
    :pswitch_7
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v32

    move/from16 v11, v32

    .line 130
    goto/16 :goto_0

    .line 132
    :pswitch_8
    move-object/from16 v32, v2

    move-object/from16 v33, v3

    invoke-static/range {v32 .. v33}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v32

    move-object/from16 v23, v32

    .line 133
    goto/16 :goto_0

    .line 135
    :pswitch_9
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->values()[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v32

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v33

    aget-object v32, v32, v33

    move-object/from16 v22, v32

    .line 136
    move-object/from16 v32, v3

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lcom/airbnb/lottie/LottieComposition;->incrementMatteOrMaskCount(I)V

    .line 137
    goto/16 :goto_0

    .line 139
    :pswitch_a
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 140
    :goto_1
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_1

    .line 141
    move-object/from16 v32, v27

    move-object/from16 v33, v2

    move-object/from16 v34, v3

    invoke-static/range {v33 .. v34}, Lcom/airbnb/lottie/parser/MaskParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/Mask;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v32

    goto :goto_1

    .line 143
    :cond_1
    move-object/from16 v32, v3

    move-object/from16 v33, v27

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Lcom/airbnb/lottie/LottieComposition;->incrementMatteOrMaskCount(I)V

    .line 144
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 145
    goto/16 :goto_0

    .line 147
    :pswitch_b
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 148
    :goto_2
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_3

    .line 149
    move-object/from16 v32, v2

    move-object/from16 v33, v3

    invoke-static/range {v32 .. v33}, Lcom/airbnb/lottie/parser/ContentModelParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    move-result-object v32

    move-object/from16 v30, v32

    .line 150
    move-object/from16 v32, v30

    if-eqz v32, :cond_2

    .line 151
    move-object/from16 v32, v28

    move-object/from16 v33, v30

    invoke-interface/range {v32 .. v33}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v32

    .line 153
    :cond_2
    goto :goto_2

    .line 154
    :cond_3
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 155
    goto/16 :goto_0

    .line 157
    :pswitch_c
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 158
    :goto_3
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_6

    .line 159
    move-object/from16 v32, v2

    sget-object v33, Lcom/airbnb/lottie/parser/LayerParser;->TEXT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual/range {v32 .. v33}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v32

    packed-switch v32, :pswitch_data_1

    .line 174
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 175
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_3

    .line 161
    :pswitch_d
    move-object/from16 v32, v2

    move-object/from16 v33, v3

    invoke-static/range {v32 .. v33}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseDocumentData(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    move-result-object v32

    move-object/from16 v24, v32

    .line 162
    goto :goto_3

    .line 164
    :pswitch_e
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 165
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_4

    .line 166
    move-object/from16 v32, v2

    move-object/from16 v33, v3

    invoke-static/range {v32 .. v33}, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    move-result-object v32

    move-object/from16 v25, v32

    .line 168
    :cond_4
    :goto_4
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_5

    .line 169
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_4

    .line 171
    :cond_5
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 172
    goto :goto_3

    .line 178
    :cond_6
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 179
    goto/16 :goto_0

    .line 181
    :pswitch_f
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 182
    new-instance v32, Ljava/util/ArrayList;

    move-object/from16 v58, v32

    move-object/from16 v32, v58

    move-object/from16 v33, v58

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v30, v32

    .line 183
    :goto_5
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_8

    .line 184
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 185
    :goto_6
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_7

    .line 186
    move-object/from16 v32, v2

    sget-object v33, Lcom/airbnb/lottie/parser/LayerParser;->EFFECTS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual/range {v32 .. v33}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v32

    packed-switch v32, :pswitch_data_2

    .line 191
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 192
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_6

    .line 188
    :pswitch_10
    move-object/from16 v32, v30

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v32

    .line 189
    goto :goto_6

    .line 196
    :cond_7
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    goto :goto_5

    .line 198
    :cond_8
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 199
    move-object/from16 v32, v3

    new-instance v33, Ljava/lang/StringBuilder;

    move-object/from16 v58, v33

    move-object/from16 v33, v58

    move-object/from16 v34, v58

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v34, v30

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 202
    goto/16 :goto_0

    .line 204
    :pswitch_11
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    move/from16 v16, v32

    .line 205
    goto/16 :goto_0

    .line 207
    :pswitch_12
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    move/from16 v17, v32

    .line 208
    goto/16 :goto_0

    .line 210
    :pswitch_13
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v33

    mul-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v12, v32

    .line 211
    goto/16 :goto_0

    .line 213
    :pswitch_14
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v33

    mul-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v13, v32

    .line 214
    goto/16 :goto_0

    .line 216
    :pswitch_15
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    move/from16 v18, v32

    .line 217
    goto/16 :goto_0

    .line 219
    :pswitch_16
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    move/from16 v19, v32

    .line 220
    goto/16 :goto_0

    .line 222
    :pswitch_17
    move-object/from16 v32, v2

    move-object/from16 v33, v3

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v32

    move-object/from16 v26, v32

    .line 223
    goto/16 :goto_0

    .line 225
    :pswitch_18
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v20, v32

    .line 226
    goto/16 :goto_0

    .line 228
    :pswitch_19
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v32

    move/from16 v21, v32

    .line 229
    goto/16 :goto_0

    .line 235
    :cond_9
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 240
    move/from16 v32, v18

    move/from16 v33, v16

    div-float v32, v32, v33

    move/from16 v18, v32

    .line 241
    move/from16 v32, v19

    move/from16 v33, v16

    div-float v32, v32, v33

    move/from16 v19, v32

    .line 243
    new-instance v32, Ljava/util/ArrayList;

    move-object/from16 v58, v32

    move-object/from16 v32, v58

    move-object/from16 v33, v58

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v29, v32

    .line 245
    move/from16 v32, v18

    const/16 v33, 0x0

    cmpl-float v32, v32, v33

    if-lez v32, :cond_a

    .line 246
    new-instance v32, Lcom/airbnb/lottie/value/Keyframe;

    move-object/from16 v58, v32

    move-object/from16 v32, v58

    move-object/from16 v33, v58

    move-object/from16 v34, v3

    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v35

    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v36

    const/16 v37, 0x0

    const/16 v38, 0x0

    move/from16 v39, v18

    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v39

    invoke-direct/range {v33 .. v39}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    move-object/from16 v30, v32

    .line 247
    move-object/from16 v32, v29

    move-object/from16 v33, v30

    invoke-interface/range {v32 .. v33}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v32

    .line 251
    :cond_a
    move/from16 v32, v19

    const/16 v33, 0x0

    cmpl-float v32, v32, v33

    if-lez v32, :cond_d

    move/from16 v32, v19

    :goto_7
    move/from16 v19, v32

    .line 252
    new-instance v32, Lcom/airbnb/lottie/value/Keyframe;

    move-object/from16 v58, v32

    move-object/from16 v32, v58

    move-object/from16 v33, v58

    move-object/from16 v34, v3

    const/high16 v35, 0x3f800000    # 1.0f

    .line 253
    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v35

    const/high16 v36, 0x3f800000    # 1.0f

    invoke-static/range {v36 .. v36}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v36

    const/16 v37, 0x0

    move/from16 v38, v18

    move/from16 v39, v19

    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v39

    invoke-direct/range {v33 .. v39}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    move-object/from16 v30, v32

    .line 254
    move-object/from16 v32, v29

    move-object/from16 v33, v30

    invoke-interface/range {v32 .. v33}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v32

    .line 256
    new-instance v32, Lcom/airbnb/lottie/value/Keyframe;

    move-object/from16 v58, v32

    move-object/from16 v32, v58

    move-object/from16 v33, v58

    move-object/from16 v34, v3

    const/16 v35, 0x0

    .line 257
    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v35

    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v36

    const/16 v37, 0x0

    move/from16 v38, v19

    const v39, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v39

    invoke-direct/range {v33 .. v39}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    move-object/from16 v31, v32

    .line 258
    move-object/from16 v32, v29

    move-object/from16 v33, v31

    invoke-interface/range {v32 .. v33}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v32

    .line 260
    move-object/from16 v32, v4

    const-string v33, ".ai"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_b

    const-string v32, "ai"

    move-object/from16 v33, v20

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_c

    .line 261
    :cond_b
    move-object/from16 v32, v3

    const-string v33, "Convert your Illustrator layers to shape layers."

    invoke-virtual/range {v32 .. v33}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 264
    :cond_c
    new-instance v32, Lcom/airbnb/lottie/model/layer/Layer;

    move-object/from16 v58, v32

    move-object/from16 v32, v58

    move-object/from16 v33, v58

    move-object/from16 v34, v28

    move-object/from16 v35, v3

    move-object/from16 v36, v4

    move-wide/from16 v37, v7

    move-object/from16 v39, v5

    move-wide/from16 v40, v14

    move-object/from16 v42, v6

    move-object/from16 v43, v27

    move-object/from16 v44, v23

    move/from16 v45, v9

    move/from16 v46, v10

    move/from16 v47, v11

    move/from16 v48, v16

    move/from16 v49, v17

    move/from16 v50, v12

    move/from16 v51, v13

    move-object/from16 v52, v24

    move-object/from16 v53, v25

    move-object/from16 v54, v29

    move-object/from16 v55, v22

    move-object/from16 v56, v26

    move/from16 v57, v21

    invoke-direct/range {v33 .. v57}, Lcom/airbnb/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFIILcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    move-object/from16 v2, v32

    return-object v2

    .line 251
    :cond_d
    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v32

    goto/16 :goto_7

    .line 101
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
        :pswitch_b
        :pswitch_c
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch

    .line 159
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 186
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method
