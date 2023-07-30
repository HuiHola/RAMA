.class public Lcom/airbnb/lottie/utils/LottieValueAnimator;
.super Lcom/airbnb/lottie/utils/BaseLottieAnimator;
.source "LottieValueAnimator.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private composition:Lcom/airbnb/lottie/LottieComposition;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private frame:F

.field private lastFrameTimeNs:J

.field private maxFrame:F

.field private minFrame:F

.field private repeatCount:I

.field protected running:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private speed:F

.field private speedReversedForRepeatMode:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;-><init>()V

    .line 20
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    .line 21
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    .line 22
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 23
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 24
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    .line 25
    move-object v1, v0

    const/high16 v2, -0x31000000

    iput v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 26
    move-object v1, v0

    const/high16 v2, 0x4f000000

    iput v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 28
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    .line 31
    return-void
.end method

.method private getFrameDurationNs()F
    .locals 3

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v1, :cond_0

    .line 123
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    move v0, v1

    .line 125
    :goto_0
    return v0

    :cond_0
    const v1, 0x4e6e6b28    # 1.0E9f

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getFrameRate()F

    move-result v2

    div-float/2addr v1, v2

    move-object v2, v0

    iget v2, v2, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v1, v2

    move v0, v1

    goto :goto_0
.end method

.method private isReversed()Z
    .locals 3

    .prologue
    .line 244
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getSpeed()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private verifyFrame()V
    .locals 9

    .prologue
    .line 282
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v1, :cond_0

    .line 288
    :goto_0
    return-void

    .line 285
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    move-object v2, v0

    iget v2, v2, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1

    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    move-object v2, v0

    iget v2, v2, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 286
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const-string v3, "Frame must be [%f,%f]. It is %f"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v0

    iget v7, v7, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x2

    move-object v7, v0

    iget v7, v7, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_2
    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 239
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->notifyCancel()V

    .line 240
    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback()V

    .line 241
    return-void
.end method

.method public clearComposition()V
    .locals 3

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 130
    move-object v1, v0

    const/high16 v2, -0x31000000

    iput v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 131
    move-object v1, v0

    const/high16 v2, 0x4f000000

    iput v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 132
    return-void
.end method

.method public doFrame(J)V
    .locals 15

    .prologue
    .line 81
    move-object v0, p0

    move-wide/from16 v1, p1

    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->postFrameCallback()V

    .line 82
    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v10, :cond_0

    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isRunning()Z

    move-result v10

    if-nez v10, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const-string v10, "LottieValueAnimator#doFrame"

    invoke-static {v10}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 87
    move-wide v10, v1

    move-wide v3, v10

    .line 88
    move-object v10, v0

    iget-wide v10, v10, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_3

    const-wide/16 v10, 0x0

    :goto_1
    move-wide v5, v10

    .line 89
    move-object v10, v0

    invoke-direct {v10}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getFrameDurationNs()F

    move-result v10

    move v7, v10

    .line 90
    move-wide v10, v5

    long-to-float v10, v10

    move v11, v7

    div-float/2addr v10, v11

    move v8, v10

    .line 92
    move-object v10, v0

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    iget v11, v11, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    move-object v12, v0

    invoke-direct {v12}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v12

    if-eqz v12, :cond_4

    move v12, v8

    neg-float v12, v12

    :goto_2
    add-float/2addr v11, v12

    iput v11, v10, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 93
    move-object v10, v0

    iget v10, v10, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v11

    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v12

    invoke-static {v10, v11, v12}, Lcom/airbnb/lottie/utils/MiscUtils;->contains(FFF)Z

    move-result v10

    if-nez v10, :cond_5

    const/4 v10, 0x1

    :goto_3
    move v9, v10

    .line 94
    move-object v10, v0

    move-object v11, v0

    iget v11, v11, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v12

    move-object v13, v0

    invoke-virtual {v13}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v13

    invoke-static {v11, v12, v13}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v11

    iput v11, v10, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 96
    move-object v10, v0

    move-wide v11, v3

    iput-wide v11, v10, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 98
    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->notifyUpdate()V

    .line 99
    move v10, v9

    if-eqz v10, :cond_2

    .line 100
    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getRepeatCount()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_7

    move-object v10, v0

    iget v10, v10, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getRepeatCount()I

    move-result v11

    if-lt v10, v11, :cond_7

    .line 101
    move-object v10, v0

    move-object v11, v0

    iget v11, v11, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gez v11, :cond_6

    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v11

    :goto_4
    iput v11, v10, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 102
    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback()V

    .line 103
    move-object v10, v0

    move-object v11, v0

    invoke-direct {v11}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->notifyEnd(Z)V

    .line 117
    :cond_2
    :goto_5
    move-object v10, v0

    invoke-direct {v10}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->verifyFrame()V

    .line 118
    const-string v10, "LottieValueAnimator#doFrame"

    invoke-static {v10}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v10

    .line 119
    goto/16 :goto_0

    .line 88
    :cond_3
    move-wide v10, v3

    move-object v12, v0

    iget-wide v12, v12, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    sub-long/2addr v10, v12

    goto/16 :goto_1

    .line 92
    :cond_4
    move v12, v8

    goto :goto_2

    .line 93
    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    .line 101
    :cond_6
    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v11

    goto :goto_4

    .line 105
    :cond_7
    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->notifyRepeat()V

    .line 106
    move-object v10, v0

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    iget v11, v11, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    .line 107
    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getRepeatMode()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_9

    .line 108
    move-object v10, v0

    move-object v11, v0

    iget-boolean v11, v11, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    if-nez v11, :cond_8

    const/4 v11, 0x1

    :goto_6
    iput-boolean v11, v10, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    .line 109
    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->reverseAnimationSpeed()V

    .line 113
    :goto_7
    move-object v10, v0

    move-wide v11, v3

    iput-wide v11, v10, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    goto :goto_5

    .line 108
    :cond_8
    const/4 v11, 0x0

    goto :goto_6

    .line 111
    :cond_9
    move-object v10, v0

    move-object v11, v0

    invoke-direct {v11}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v11

    if-eqz v11, :cond_a

    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v11

    :goto_8
    iput v11, v10, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    goto :goto_7

    :cond_a
    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v11

    goto :goto_8
.end method

.method public endAnimation()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 216
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback()V

    .line 217
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->notifyEnd(Z)V

    .line 218
    return-void
.end method

.method public getAnimatedFraction()F
    .locals 4
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v1, :cond_0

    .line 59
    const/4 v1, 0x0

    move v0, v1

    .line 64
    :goto_0
    return v0

    .line 61
    :cond_0
    move-object v1, v0

    invoke-direct {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v1

    move-object v2, v0

    iget v2, v2, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    sub-float/2addr v1, v2

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    move v0, v1

    goto :goto_0

    .line 64
    :cond_1
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v2

    sub-float/2addr v1, v2

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    move v0, v1

    goto :goto_0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getAnimatedValueAbsolute()F
    .locals 4
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v1, :cond_0

    .line 47
    const/4 v1, 0x0

    move v0, v1

    .line 49
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v2

    sub-float/2addr v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    move v0, v1

    goto :goto_0
.end method

.method public getDuration()J
    .locals 3

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    :goto_0
    move-wide v0, v1

    return-wide v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getDuration()F

    move-result v1

    float-to-long v1, v1

    goto :goto_0
.end method

.method public getFrame()F
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    move v0, v1

    return v0
.end method

.method public getMaxFrame()F
    .locals 3

    .prologue
    .line 255
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v1, :cond_0

    .line 256
    const/4 v1, 0x0

    move v0, v1

    .line 258
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    const/high16 v2, 0x4f000000

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    goto :goto_1
.end method

.method public getMinFrame()F
    .locals 3

    .prologue
    .line 248
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v1, :cond_0

    .line 249
    const/4 v1, 0x0

    move v0, v1

    .line 251
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    const/high16 v2, -0x31000000

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    goto :goto_1
.end method

.method public getSpeed()F
    .locals 2

    .prologue
    .line 193
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    move v0, v1

    return v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    move v0, v1

    return v0
.end method

.method public pauseAnimation()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 222
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback()V

    .line 223
    return-void
.end method

.method public playAnimation()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 206
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    .line 207
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->notifyStart(Z)V

    .line 208
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v2

    :goto_0
    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(F)V

    .line 209
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 210
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    .line 211
    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->postFrameCallback()V

    .line 212
    return-void

    .line 208
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v2

    goto :goto_0
.end method

.method protected postFrameCallback()V
    .locals 3

    .prologue
    .line 262
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback(Z)V

    .line 264
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 266
    :cond_0
    return-void
.end method

.method protected removeFrameCallback()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 270
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback(Z)V

    .line 271
    return-void
.end method

.method protected removeFrameCallback(Z)V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 275
    move-object v0, p0

    move v1, p1

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 276
    move v2, v1

    if-eqz v2, :cond_0

    .line 277
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    .line 279
    :cond_0
    return-void
.end method

.method public resumeAnimation()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 227
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    .line 228
    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->postFrameCallback()V

    .line 229
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 230
    move-object v1, v0

    invoke-direct {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getFrame()F

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 231
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v2

    iput v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    move-object v1, v0

    invoke-direct {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getFrame()F

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 233
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v2

    iput v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    goto :goto_0
.end method

.method public reverseAnimationSpeed()V
    .locals 3

    .prologue
    .line 182
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getSpeed()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setSpeed(F)V

    .line 183
    return-void
.end method

.method public setComposition(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 8

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v2, v4

    .line 137
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 139
    move v4, v2

    if-eqz v4, :cond_1

    .line 140
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    move-object v6, v1

    .line 141
    invoke-virtual {v6}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    move-object v6, v0

    iget v6, v6, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    move-object v7, v1

    .line 142
    invoke-virtual {v7}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    .line 140
    invoke-virtual {v4, v5, v6}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    .line 147
    :goto_1
    move-object v4, v0

    iget v4, v4, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    move v3, v4

    .line 148
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 149
    move-object v4, v0

    move v5, v3

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(F)V

    .line 150
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->notifyUpdate()V

    .line 151
    return-void

    .line 136
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 145
    :cond_1
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    move-object v6, v1

    invoke-virtual {v6}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    goto :goto_1
.end method

.method public setFrame(F)V
    .locals 6

    .prologue
    .line 154
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 160
    :goto_0
    return-void

    .line 157
    :cond_0
    move-object v2, v0

    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v3

    iput v3, v2, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 158
    move-object v2, v0

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 159
    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->notifyUpdate()V

    .line 160
    goto :goto_0
.end method

.method public setMaxFrame(F)V
    .locals 5

    .prologue
    .line 167
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    .line 168
    return-void
.end method

.method public setMinAndMaxFrames(FF)V
    .locals 13

    .prologue
    .line 171
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v1

    move v6, v2

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 172
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const-string v7, "minFrame (%s) must be <= maxFrame (%s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move v11, v1

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move v11, v2

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 174
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v5, :cond_1

    const v5, -0x800001

    :goto_0
    move v3, v5

    .line 175
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v5, :cond_2

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    :goto_1
    move v4, v5

    .line 176
    move-object v5, v0

    move v6, v1

    move v7, v3

    move v8, v4

    invoke-static {v6, v7, v8}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v6

    iput v6, v5, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 177
    move-object v5, v0

    move v6, v2

    move v7, v3

    move v8, v4

    invoke-static {v6, v7, v8}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v6

    iput v6, v5, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 178
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    move v7, v1

    move v8, v2

    invoke-static {v6, v7, v8}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(F)V

    .line 179
    return-void

    .line 174
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v5

    goto :goto_0

    .line 175
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v5

    goto :goto_1
.end method

.method public setMinFrame(I)V
    .locals 5

    .prologue
    .line 163
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    int-to-float v3, v3

    move-object v4, v0

    iget v4, v4, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    .line 164
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 4

    .prologue
    .line 197
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->setRepeatMode(I)V

    .line 198
    move v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    if-eqz v2, :cond_0

    .line 199
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    .line 200
    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->reverseAnimationSpeed()V

    .line 202
    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 4

    .prologue
    .line 186
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    .line 187
    return-void
.end method
