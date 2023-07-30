.class public final Lcom/airbnb/lottie/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final INV_SQRT_2:F

.field public static final SECOND_IN_NANOS:I = 0x3b9aca00

.field private static dpScale:F

.field private static final pathMeasure:Landroid/graphics/PathMeasure;

.field private static final points:[F

.field private static final tempPath:Landroid/graphics/Path;

.field private static final tempPath2:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 37
    new-instance v0, Landroid/graphics/PathMeasure;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroid/graphics/PathMeasure;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    .line 38
    new-instance v0, Landroid/graphics/Path;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    .line 39
    new-instance v0, Landroid/graphics/Path;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->points:[F

    .line 41
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/airbnb/lottie/utils/Utils;->INV_SQRT_2:F

    .line 42
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/airbnb/lottie/utils/Utils;->dpScale:F

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V
    .locals 15

    .prologue
    .line 111
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const-string v10, "applyTrimPathIfNeeded"

    invoke-static {v10}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 112
    sget-object v10, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    move-object v11, v0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 114
    sget-object v10, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v10}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v10

    move v4, v10

    .line 115
    move v10, v1

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-nez v10, :cond_0

    move v10, v2

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_0

    .line 116
    const-string v10, "applyTrimPathIfNeeded"

    invoke-static {v10}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v10

    .line 182
    :goto_0
    return-void

    .line 119
    :cond_0
    move v10, v4

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_1

    move v10, v2

    move v11, v1

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v10, v10

    const-wide v12, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v10, v10, v12

    if-gez v10, :cond_2

    .line 120
    :cond_1
    const-string v10, "applyTrimPathIfNeeded"

    invoke-static {v10}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v10

    .line 121
    goto :goto_0

    .line 123
    :cond_2
    move v10, v4

    move v11, v1

    mul-float/2addr v10, v11

    move v5, v10

    .line 124
    move v10, v4

    move v11, v2

    mul-float/2addr v10, v11

    move v6, v10

    .line 125
    move v10, v5

    move v11, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    move v7, v10

    .line 126
    move v10, v5

    move v11, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    move v8, v10

    .line 128
    move v10, v3

    move v11, v4

    mul-float/2addr v10, v11

    move v9, v10

    .line 129
    move v10, v7

    move v11, v9

    add-float/2addr v10, v11

    move v7, v10

    .line 130
    move v10, v8

    move v11, v9

    add-float/2addr v10, v11

    move v8, v10

    .line 133
    move v10, v7

    move v11, v4

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_3

    move v10, v8

    move v11, v4

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_3

    .line 134
    move v10, v7

    move v11, v4

    invoke-static {v10, v11}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result v10

    int-to-float v10, v10

    move v7, v10

    .line 135
    move v10, v8

    move v11, v4

    invoke-static {v10, v11}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result v10

    int-to-float v10, v10

    move v8, v10

    .line 138
    :cond_3
    move v10, v7

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_4

    .line 139
    move v10, v7

    move v11, v4

    invoke-static {v10, v11}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result v10

    int-to-float v10, v10

    move v7, v10

    .line 141
    :cond_4
    move v10, v8

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_5

    .line 142
    move v10, v8

    move v11, v4

    invoke-static {v10, v11}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result v10

    int-to-float v10, v10

    move v8, v10

    .line 146
    :cond_5
    move v10, v7

    move v11, v8

    cmpl-float v10, v10, v11

    if-nez v10, :cond_6

    .line 147
    move-object v10, v0

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 148
    const-string v10, "applyTrimPathIfNeeded"

    invoke-static {v10}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v10

    .line 149
    goto/16 :goto_0

    .line 152
    :cond_6
    move v10, v7

    move v11, v8

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_7

    .line 153
    move v10, v7

    move v11, v4

    sub-float/2addr v10, v11

    move v7, v10

    .line 156
    :cond_7
    sget-object v10, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 157
    sget-object v10, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    move v11, v7

    move v12, v8

    sget-object v13, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    const/4 v14, 0x1

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    move-result v10

    .line 163
    move v10, v8

    move v11, v4

    cmpl-float v10, v10, v11

    if-lez v10, :cond_9

    .line 164
    sget-object v10, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 165
    sget-object v10, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    const/4 v11, 0x0

    move v12, v8

    move v13, v4

    rem-float/2addr v12, v13

    sget-object v13, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    const/4 v14, 0x1

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    move-result v10

    .line 170
    sget-object v10, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    sget-object v11, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v10, v11}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 180
    :cond_8
    :goto_1
    move-object v10, v0

    sget-object v11, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v10, v11}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 181
    const-string v10, "applyTrimPathIfNeeded"

    invoke-static {v10}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v10

    .line 182
    goto/16 :goto_0

    .line 171
    :cond_9
    move v10, v7

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_8

    .line 172
    sget-object v10, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 173
    sget-object v10, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    move v11, v4

    move v12, v7

    add-float/2addr v11, v12

    move v12, v4

    sget-object v13, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    const/4 v14, 0x1

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    move-result v10

    .line 178
    sget-object v10, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    sget-object v11, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v10, v11}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_1
.end method

.method public static applyTrimPathIfNeeded(Landroid/graphics/Path;Lcom/airbnb/lottie/animation/content/TrimPathContent;)V
    .locals 10
    .param p1    # Lcom/airbnb/lottie/animation/content/TrimPathContent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v1

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->isHidden()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getStart()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v5

    move v2, v5

    .line 104
    move-object v5, v1

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getEnd()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v5

    move v3, v5

    .line 105
    move-object v5, v1

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getOffset()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v5

    move v4, v5

    .line 106
    move-object v5, v0

    move v6, v2

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    move v7, v3

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    move v8, v4

    const/high16 v9, 0x43b40000    # 360.0f

    div-float/2addr v8, v9

    invoke-static {v5, v6, v7, v8}, Lcom/airbnb/lottie/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    .line 107
    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 3

    .prologue
    .line 63
    move-object v0, p0

    move-object v2, v0

    if-eqz v2, :cond_0

    .line 65
    move-object v2, v0

    :try_start_0
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 67
    move-object v2, v1

    throw v2

    .line 68
    :catch_1
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method

.method public static createPath(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;
    .locals 13

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    new-instance v5, Landroid/graphics/Path;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    move-object v4, v5

    .line 49
    move-object v5, v4

    move-object v6, v0

    iget v6, v6, Landroid/graphics/PointF;->x:F

    move-object v7, v0

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 51
    move-object v5, v2

    if-eqz v5, :cond_1

    move-object v5, v3

    if-eqz v5, :cond_1

    move-object v5, v2

    invoke-virtual {v5}, Landroid/graphics/PointF;->length()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    move-object v5, v3

    invoke-virtual {v5}, Landroid/graphics/PointF;->length()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    .line 52
    :cond_0
    move-object v5, v4

    move-object v6, v0

    iget v6, v6, Landroid/graphics/PointF;->x:F

    move-object v7, v2

    iget v7, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Landroid/graphics/PointF;->y:F

    move-object v8, v2

    iget v8, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v8

    move-object v8, v1

    iget v8, v8, Landroid/graphics/PointF;->x:F

    move-object v9, v3

    iget v9, v9, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v9

    move-object v9, v1

    iget v9, v9, Landroid/graphics/PointF;->y:F

    move-object v10, v3

    iget v10, v10, Landroid/graphics/PointF;->y:F

    add-float/2addr v9, v10

    move-object v10, v1

    iget v10, v10, Landroid/graphics/PointF;->x:F

    move-object v11, v1

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 59
    :goto_0
    move-object v5, v4

    move-object v0, v5

    return-object v0

    .line 57
    :cond_1
    move-object v5, v4

    move-object v6, v1

    iget v6, v6, Landroid/graphics/PointF;->x:F

    move-object v7, v1

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method

.method public static dpScale()F
    .locals 2

    .prologue
    .line 220
    sget v0, Lcom/airbnb/lottie/utils/Utils;->dpScale:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 221
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/airbnb/lottie/utils/Utils;->dpScale:F

    .line 223
    :cond_0
    sget v0, Lcom/airbnb/lottie/utils/Utils;->dpScale:F

    return v0
.end method

.method public static getAnimationScale(Landroid/content/Context;)F
    .locals 4

    .prologue
    .line 227
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 228
    move-object v1, v0

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "animator_duration_scale"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    move v0, v1

    .line 232
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "animator_duration_scale"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public static getScale(Landroid/graphics/Matrix;)F
    .locals 7

    .prologue
    .line 74
    move-object v0, p0

    sget-object v3, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 75
    sget-object v3, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 77
    sget-object v3, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v4, 0x2

    sget v5, Lcom/airbnb/lottie/utils/Utils;->INV_SQRT_2:F

    aput v5, v3, v4

    .line 78
    sget-object v3, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v4, 0x3

    sget v5, Lcom/airbnb/lottie/utils/Utils;->INV_SQRT_2:F

    aput v5, v3, v4

    .line 79
    move-object v3, v0

    sget-object v4, Lcom/airbnb/lottie/utils/Utils;->points:[F

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 80
    sget-object v3, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    sget-object v4, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-float/2addr v3, v4

    move v1, v3

    .line 81
    sget-object v3, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    sget-object v4, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-float/2addr v3, v4

    move v2, v3

    .line 83
    move v3, v1

    float-to-double v3, v3

    move v5, v2

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    move v0, v3

    return v0
.end method

.method public static hasZeroScaleAxis(Landroid/graphics/Matrix;)Z
    .locals 4

    .prologue
    .line 87
    move-object v0, p0

    sget-object v1, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 88
    sget-object v1, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 90
    sget-object v1, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v2, 0x2

    const v3, 0x471212bb

    aput v3, v1, v2

    .line 91
    sget-object v1, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v2, 0x3

    const v3, 0x471a973c

    aput v3, v1, v2

    .line 92
    move-object v1, v0

    sget-object v2, Lcom/airbnb/lottie/utils/Utils;->points:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 93
    sget-object v1, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    sget-object v2, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    sget-object v1, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    sget-object v2, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 94
    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .line 96
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static hashFor(FFFF)I
    .locals 7

    .prologue
    .line 203
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    const/16 v5, 0x11

    move v4, v5

    .line 204
    move v5, v0

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 205
    const/16 v5, 0x1f

    move v6, v4

    mul-int/2addr v5, v6

    int-to-float v5, v5

    move v6, v0

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move v4, v5

    .line 207
    :cond_0
    move v5, v1

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    .line 208
    const/16 v5, 0x1f

    move v6, v4

    mul-int/2addr v5, v6

    int-to-float v5, v5

    move v6, v1

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move v4, v5

    .line 210
    :cond_1
    move v5, v2

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    .line 211
    const/16 v5, 0x1f

    move v6, v4

    mul-int/2addr v5, v6

    int-to-float v5, v5

    move v6, v2

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move v4, v5

    .line 213
    :cond_2
    move v5, v3

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_3

    .line 214
    const/16 v5, 0x1f

    move v6, v4

    mul-int/2addr v5, v6

    int-to-float v5, v5

    move v6, v3

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move v4, v5

    .line 216
    :cond_3
    move v5, v4

    move v0, v5

    return v0
.end method

.method public static isAtLeastVersion(IIIIII)Z
    .locals 8

    .prologue
    .line 187
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, v0

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 188
    const/4 v6, 0x0

    move v0, v6

    .line 199
    :goto_0
    return v0

    .line 189
    :cond_0
    move v6, v0

    move v7, v3

    if-le v6, v7, :cond_1

    .line 190
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 193
    :cond_1
    move v6, v1

    move v7, v4

    if-ge v6, v7, :cond_2

    .line 194
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 195
    :cond_2
    move v6, v1

    move v7, v4

    if-le v6, v7, :cond_3

    .line 196
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 199
    :cond_3
    move v6, v2

    move v7, v5

    if-lt v6, v7, :cond_4

    const/4 v6, 0x1

    :goto_1
    move v0, v6

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static isNetworkException(Ljava/lang/Throwable;)Z
    .locals 2

    .prologue
    .line 254
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Ljava/net/SocketException;

    if-nez v1, :cond_0

    move-object v1, v0

    instance-of v1, v1, Ljava/nio/channels/ClosedChannelException;

    if-nez v1, :cond_0

    move-object v1, v0

    instance-of v1, v1, Ljava/io/InterruptedIOException;

    if-nez v1, :cond_0

    move-object v1, v0

    instance-of v1, v1, Ljava/net/ProtocolException;

    if-nez v1, :cond_0

    move-object v1, v0

    instance-of v1, v1, Ljavax/net/ssl/SSLException;

    if-nez v1, :cond_0

    move-object v1, v0

    instance-of v1, v1, Ljava/net/UnknownHostException;

    if-nez v1, :cond_0

    move-object v1, v0

    instance-of v1, v1, Ljava/net/UnknownServiceException;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static renderPath(Landroid/graphics/Path;)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    .line 280
    move-object v0, p0

    new-instance v5, Landroid/graphics/RectF;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    move-object v1, v5

    .line 281
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 282
    move-object v5, v1

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    move-object v6, v1

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v2, v5

    .line 283
    new-instance v5, Landroid/graphics/Canvas;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v3, v5

    .line 284
    new-instance v5, Lcom/airbnb/lottie/animation/LPaint;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lcom/airbnb/lottie/animation/LPaint;-><init>()V

    move-object v4, v5

    .line 285
    move-object v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 286
    move-object v5, v4

    const v6, -0xffff01

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 287
    move-object v5, v3

    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 288
    move-object v5, v2

    move-object v0, v5

    return-object v0
.end method

.method public static resizeBitmapIfNeeded(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 242
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move v5, v1

    if-ne v4, v5, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v5, v2

    if-ne v4, v5, :cond_0

    .line 243
    move-object v4, v0

    move-object v0, v4

    .line 247
    :goto_0
    return-object v0

    .line 245
    :cond_0
    move-object v4, v0

    move v5, v1

    move v6, v2

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v3, v4

    .line 246
    move-object v4, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 247
    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method public static saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 7

    .prologue
    .line 261
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/16 v6, 0x1f

    invoke-static {v3, v4, v5, v6}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 262
    return-void
.end method

.method public static saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V
    .locals 8

    .prologue
    .line 265
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    const-string v4, "Utils#saveLayer"

    invoke-static {v4}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 266
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_0

    .line 269
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v4

    .line 273
    :goto_0
    const-string v4, "Utils#saveLayer"

    invoke-static {v4}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v4

    .line 274
    return-void

    .line 271
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    move-result v4

    goto :goto_0
.end method
