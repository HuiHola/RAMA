.class Lcom/airbnb/lottie/parser/KeyframeParser;
.super Ljava/lang/Object;
.source "KeyframeParser.java"


# static fields
.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MAX_CP_VALUE:F = 100.0f

.field static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 26
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 29
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "t"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "s"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string v3, "e"

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

    const-string v3, "i"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string v3, "h"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    const-string v3, "to"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    const-string v3, "ti"

    aput-object v3, v1, v2

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getInterpolator(I)Ljava/lang/ref/WeakReference;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/animation/Interpolator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    move v0, p0

    const-class v3, Lcom/airbnb/lottie/parser/KeyframeParser;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 52
    :try_start_0
    invoke-static {}, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache()Landroidx/collection/SparseArrayCompat;

    move-result-object v3

    move v4, v0

    invoke-virtual {v3, v4}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    return-object v0

    .line 53
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Lcom/airbnb/lottie/value/Keyframe;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "F",
            "Lcom/airbnb/lottie/parser/ValueParser",
            "<TT;>;Z)",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, v4

    if-eqz v5, :cond_0

    .line 68
    move-object v5, v1

    move-object v6, v0

    move v7, v2

    move-object v8, v3

    invoke-static {v5, v6, v7, v8}, Lcom/airbnb/lottie/parser/KeyframeParser;->parseKeyframe(Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/parser/moshi/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v5

    move-object v0, v5

    .line 70
    :goto_0
    return-object v0

    :cond_0
    move-object v5, v0

    move v6, v2

    move-object v7, v3

    invoke-static {v5, v6, v7}, Lcom/airbnb/lottie/parser/KeyframeParser;->parseStaticValue(Lcom/airbnb/lottie/parser/moshi/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method private static parseKeyframe(Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/parser/moshi/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "F",
            "Lcom/airbnb/lottie/parser/ValueParser",
            "<TT;>;)",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    const/16 v18, 0x0

    move-object/from16 v6, v18

    .line 81
    const/16 v18, 0x0

    move-object/from16 v7, v18

    .line 82
    const/16 v18, 0x0

    move/from16 v8, v18

    .line 83
    const/16 v18, 0x0

    move-object/from16 v9, v18

    .line 84
    const/16 v18, 0x0

    move-object/from16 v10, v18

    .line 85
    const/16 v18, 0x0

    move/from16 v11, v18

    .line 86
    const/16 v18, 0x0

    move-object/from16 v12, v18

    .line 89
    const/16 v18, 0x0

    move-object/from16 v13, v18

    .line 90
    const/16 v18, 0x0

    move-object/from16 v14, v18

    .line 92
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 93
    :goto_0
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 94
    move-object/from16 v18, v3

    sget-object v19, Lcom/airbnb/lottie/parser/KeyframeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual/range {v18 .. v19}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 120
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 96
    :pswitch_0
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v8, v18

    .line 97
    goto :goto_0

    .line 99
    :pswitch_1
    move-object/from16 v18, v5

    move-object/from16 v19, v3

    move/from16 v20, v4

    invoke-interface/range {v18 .. v20}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v9, v18

    .line 100
    goto :goto_0

    .line 102
    :pswitch_2
    move-object/from16 v18, v5

    move-object/from16 v19, v3

    move/from16 v20, v4

    invoke-interface/range {v18 .. v20}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v10, v18

    .line 103
    goto :goto_0

    .line 105
    :pswitch_3
    move-object/from16 v18, v3

    move/from16 v19, v4

    invoke-static/range {v18 .. v19}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v18

    move-object/from16 v6, v18

    .line 106
    goto :goto_0

    .line 108
    :pswitch_4
    move-object/from16 v18, v3

    move/from16 v19, v4

    invoke-static/range {v18 .. v19}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v18

    move-object/from16 v7, v18

    .line 109
    goto :goto_0

    .line 111
    :pswitch_5
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    const/16 v18, 0x1

    :goto_1
    move/from16 v11, v18

    .line 112
    goto :goto_0

    .line 111
    :cond_0
    const/16 v18, 0x0

    goto :goto_1

    .line 114
    :pswitch_6
    move-object/from16 v18, v3

    move/from16 v19, v4

    invoke-static/range {v18 .. v19}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v18

    move-object/from16 v13, v18

    .line 115
    goto :goto_0

    .line 117
    :pswitch_7
    move-object/from16 v18, v3

    move/from16 v19, v4

    invoke-static/range {v18 .. v19}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v18

    move-object/from16 v14, v18

    .line 118
    goto/16 :goto_0

    .line 123
    :cond_1
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 125
    move/from16 v18, v11

    if-eqz v18, :cond_2

    .line 126
    move-object/from16 v18, v9

    move-object/from16 v10, v18

    .line 128
    sget-object v18, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v12, v18

    .line 171
    :goto_2
    new-instance v18, Lcom/airbnb/lottie/value/Keyframe;

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    move-object/from16 v20, v2

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v12

    move/from16 v24, v8

    const/16 v25, 0x0

    invoke-direct/range {v19 .. v25}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    move-object/from16 v15, v18

    .line 173
    move-object/from16 v18, v15

    move-object/from16 v19, v13

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/airbnb/lottie/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    .line 174
    move-object/from16 v18, v15

    move-object/from16 v19, v14

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/airbnb/lottie/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    .line 175
    move-object/from16 v18, v15

    move-object/from16 v2, v18

    return-object v2

    .line 129
    :cond_2
    move-object/from16 v18, v6

    if-eqz v18, :cond_7

    move-object/from16 v18, v7

    if-eqz v18, :cond_7

    .line 130
    move-object/from16 v18, v6

    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    move/from16 v20, v4

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    move/from16 v21, v4

    invoke-static/range {v19 .. v21}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 131
    move-object/from16 v18, v6

    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v19, v0

    const/high16 v20, -0x3d380000    # -100.0f

    const/high16 v21, 0x42c80000    # 100.0f

    invoke-static/range {v19 .. v21}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 132
    move-object/from16 v18, v7

    move-object/from16 v19, v7

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    move/from16 v20, v4

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    move/from16 v21, v4

    invoke-static/range {v19 .. v21}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 133
    move-object/from16 v18, v7

    move-object/from16 v19, v7

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v19, v0

    const/high16 v20, -0x3d380000    # -100.0f

    const/high16 v21, 0x42c80000    # 100.0f

    invoke-static/range {v19 .. v21}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 134
    move-object/from16 v18, v6

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v18, v0

    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v19, v0

    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    invoke-static/range {v18 .. v21}, Lcom/airbnb/lottie/utils/Utils;->hashFor(FFFF)I

    move-result v18

    move/from16 v15, v18

    .line 135
    move/from16 v18, v15

    invoke-static/range {v18 .. v18}, Lcom/airbnb/lottie/parser/KeyframeParser;->getInterpolator(I)Ljava/lang/ref/WeakReference;

    move-result-object v18

    move-object/from16 v16, v18

    .line 136
    move-object/from16 v18, v16

    if-eqz v18, :cond_3

    .line 137
    move-object/from16 v18, v16

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/animation/Interpolator;

    move-object/from16 v12, v18

    .line 139
    :cond_3
    move-object/from16 v18, v16

    if-eqz v18, :cond_4

    move-object/from16 v18, v12

    if-nez v18, :cond_5

    .line 140
    :cond_4
    move-object/from16 v18, v6

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    move/from16 v20, v4

    div-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 141
    move-object/from16 v18, v6

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v19, v0

    move/from16 v20, v4

    div-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 142
    move-object/from16 v18, v7

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    move/from16 v20, v4

    div-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 143
    move-object/from16 v18, v7

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v19, v0

    move/from16 v20, v4

    div-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 145
    move-object/from16 v18, v6

    :try_start_0
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v18, v0

    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v19, v0

    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    invoke-static/range {v18 .. v21}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    move-object/from16 v12, v18

    .line 158
    :goto_3
    move/from16 v18, v15

    :try_start_1
    new-instance v19, Ljava/lang/ref/WeakReference;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    move-object/from16 v21, v12

    invoke-direct/range {v20 .. v21}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static/range {v18 .. v19}, Lcom/airbnb/lottie/parser/KeyframeParser;->putInterpolator(ILjava/lang/ref/WeakReference;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    :cond_5
    :goto_4
    goto/16 :goto_2

    .line 146
    :catch_0
    move-exception v18

    move-object/from16 v17, v18

    .line 147
    move-object/from16 v18, v17

    invoke-virtual/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v18

    const-string v19, "The Path cannot loop back on itself."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 151
    move-object/from16 v18, v6

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v18

    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v19, v0

    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(FF)F

    move-result v20

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    invoke-static/range {v18 .. v21}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v18

    move-object/from16 v12, v18

    goto :goto_3

    .line 154
    :cond_6
    new-instance v18, Landroid/view/animation/LinearInterpolator;

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v12, v18

    goto :goto_3

    .line 159
    :catch_1
    move-exception v18

    move-object/from16 v17, v18

    goto :goto_4

    .line 168
    :cond_7
    sget-object v18, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v12, v18

    goto/16 :goto_2

    .line 94
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
    .end packed-switch
.end method

.method private static parseStaticValue(Lcom/airbnb/lottie/parser/moshi/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "F",
            "Lcom/airbnb/lottie/parser/ValueParser",
            "<TT;>;)",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v2

    move-object v5, v0

    move v6, v1

    invoke-interface {v4, v5, v6}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 181
    new-instance v4, Lcom/airbnb/lottie/value/Keyframe;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    move-object v0, v4

    return-object v0
.end method

.method private static pathInterpolatorCache()Landroidx/collection/SparseArrayCompat;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 41
    sget-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/collection/SparseArrayCompat;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    .line 44
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    return-object v0
.end method

.method private static putInterpolator(ILjava/lang/ref/WeakReference;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/animation/Interpolator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    move v0, p0

    move-object v1, p1

    const-class v4, Lcom/airbnb/lottie/parser/KeyframeParser;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 60
    :try_start_0
    sget-object v4, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    move v5, v0

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 61
    move-object v4, v2

    monitor-exit v4

    .line 62
    return-void

    .line 61
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method
