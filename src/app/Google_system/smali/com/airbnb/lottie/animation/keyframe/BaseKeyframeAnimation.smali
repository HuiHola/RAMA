.class public abstract Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
.super Ljava/lang/Object;
.source "BaseKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;,
        Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper;,
        Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$EmptyKeyframeWrapper;,
        Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;,
        Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private cachedEndProgress:F

.field private cachedGetValue:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private cachedStartDelayProgress:F

.field private isDiscrete:Z

.field private final keyframesWrapper:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper",
            "<TK;>;"
        }
    .end annotation
.end field

.field final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field protected progress:F

.field protected valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/value/LottieValueCallback",
            "<TA;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TK;>;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 24
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    .line 25
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->isDiscrete:Z

    .line 28
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    .line 31
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedGetValue:Ljava/lang/Object;

    .line 33
    move-object v2, v0

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedStartDelayProgress:F

    .line 34
    move-object v2, v0

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedEndProgress:F

    .line 37
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->wrap(Ljava/util/List;)Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;

    move-result-object v3

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->keyframesWrapper:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;

    .line 38
    return-void
.end method

.method private getStartDelayProgress()F
    .locals 3
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedStartDelayProgress:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 114
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->keyframesWrapper:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;

    invoke-interface {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;->getStartDelayProgress()F

    move-result v2

    iput v2, v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedStartDelayProgress:F

    .line 116
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedStartDelayProgress:F

    move v0, v1

    return v0
.end method

.method private static wrap(Ljava/util/List;)Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TT;>;>;)",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    move-object v1, v0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    new-instance v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$EmptyKeyframeWrapper;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$EmptyKeyframeWrapper;-><init>(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$1;)V

    move-object v0, v1

    .line 167
    :goto_0
    return-object v0

    .line 164
    :cond_0
    move-object v1, v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 165
    new-instance v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper;-><init>(Ljava/util/List;)V

    move-object v0, v1

    goto :goto_0

    .line 167
    :cond_1
    new-instance v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;-><init>(Ljava/util/List;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 46
    return-void
.end method

.method protected getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    const-string v2, "BaseKeyframeAnimation#getCurrentKeyframe"

    invoke-static {v2}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 75
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->keyframesWrapper:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;

    invoke-interface {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;->getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v2

    move-object v1, v2

    .line 76
    const-string v2, "BaseKeyframeAnimation#getCurrentKeyframe"

    invoke-static {v2}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v2

    .line 77
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method getEndProgress()F
    .locals 3
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedEndProgress:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 122
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->keyframesWrapper:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;

    invoke-interface {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;->getEndProgress()F

    move-result v2

    iput v2, v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedEndProgress:F

    .line 124
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedEndProgress:F

    move v0, v1

    return v0
.end method

.method protected getInterpolatedCurrentKeyframeProgress()F
    .locals 4

    .prologue
    .line 103
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v2

    move-object v1, v2

    .line 104
    move-object v2, v1

    invoke-virtual {v2}, Lcom/airbnb/lottie/value/Keyframe;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    const/4 v2, 0x0

    move v0, v2

    .line 108
    :goto_0
    return v0

    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/airbnb/lottie/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getLinearCurrentKeyframeProgress()F

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method getLinearCurrentKeyframeProgress()F
    .locals 6

    .prologue
    .line 85
    move-object v0, p0

    move-object v4, v0

    iget-boolean v4, v4, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->isDiscrete:Z

    if-eqz v4, :cond_0

    .line 86
    const/4 v4, 0x0

    move v0, v4

    .line 95
    :goto_0
    return v0

    .line 89
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v4

    move-object v1, v4

    .line 90
    move-object v4, v1

    invoke-virtual {v4}, Lcom/airbnb/lottie/value/Keyframe;->isStatic()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 91
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 93
    :cond_1
    move-object v4, v0

    iget v4, v4, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    move-object v5, v1

    invoke-virtual {v5}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    move-result v5

    sub-float/2addr v4, v5

    move v2, v4

    .line 94
    move-object v4, v1

    invoke-virtual {v4}, Lcom/airbnb/lottie/value/Keyframe;->getEndProgress()F

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    move-result v5

    sub-float/2addr v4, v5

    move v3, v4

    .line 95
    move v4, v2

    move v5, v3

    div-float/2addr v4, v5

    move v0, v4

    goto :goto_0
.end method

.method public getProgress()F
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    move v0, v1

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getInterpolatedCurrentKeyframeProgress()F

    move-result v4

    move v1, v4

    .line 129
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->keyframesWrapper:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;

    move v5, v1

    invoke-interface {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;->isCachedValueEnabled(F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedGetValue:Ljava/lang/Object;

    move-object v0, v4

    .line 137
    :goto_0
    return-object v0

    .line 133
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v4

    move-object v2, v4

    .line 134
    move-object v4, v0

    move-object v5, v2

    move v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 135
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedGetValue:Ljava/lang/Object;

    .line 137
    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method abstract getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TK;>;F)TA;"
        }
    .end annotation
.end method

.method public notifyListeners()V
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 69
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    move v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;

    invoke-interface {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;->onValueChanged()V

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method

.method public setIsDiscrete()V
    .locals 3

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->isDiscrete:Z

    .line 42
    return-void
.end method

.method public setProgress(F)V
    .locals 4
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 49
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->keyframesWrapper:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;

    invoke-interface {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    :goto_0
    return-void

    .line 52
    :cond_0
    move v2, v1

    move-object v3, v0

    invoke-direct {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getStartDelayProgress()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 53
    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getStartDelayProgress()F

    move-result v2

    move v1, v2

    .line 58
    :cond_1
    :goto_1
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    .line 59
    goto :goto_0

    .line 54
    :cond_2
    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getEndProgress()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 55
    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getEndProgress()F

    move-result v2

    move v1, v2

    goto :goto_1

    .line 61
    :cond_3
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    .line 62
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->keyframesWrapper:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;->isValueChanged(F)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 63
    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->notifyListeners()V

    .line 65
    :cond_4
    goto :goto_0
.end method

.method public setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 4
    .param p1    # Lcom/airbnb/lottie/value/LottieValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/LottieValueCallback",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    if-eqz v2, :cond_0

    .line 146
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/value/LottieValueCallback;->setAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 148
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    .line 149
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 150
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/value/LottieValueCallback;->setAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 152
    :cond_1
    return-void
.end method
