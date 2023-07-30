.class final Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;
.super Ljava/lang/Object;
.source "BaseKeyframeAnimation.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyframesWrapperImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private cachedCurrentKeyframe:Lcom/airbnb/lottie/value/Keyframe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TT;>;"
        }
    .end annotation
.end field

.field private cachedInterpolatedProgress:F

.field private currentKeyframe:Lcom/airbnb/lottie/value/Keyframe;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final keyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 269
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 266
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->cachedCurrentKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    .line 267
    move-object v2, v0

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->cachedInterpolatedProgress:F

    .line 270
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->keyframes:Ljava/util/List;

    .line 271
    move-object v2, v0

    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->findKeyframe(F)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v3

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->currentKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    .line 272
    return-void
.end method

.method private findKeyframe(F)Lcom/airbnb/lottie/value/Keyframe;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 289
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->keyframes:Ljava/util/List;

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->keyframes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/value/Keyframe;

    move-object v2, v4

    .line 290
    move v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    move-result v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    .line 291
    move-object v4, v2

    move-object v0, v4

    .line 302
    :goto_0
    return-object v0

    .line 293
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->keyframes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    add-int/lit8 v4, v4, -0x2

    move v3, v4

    :goto_1
    move v4, v3

    const/4 v5, 0x1

    if-lt v4, v5, :cond_3

    .line 294
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->keyframes:Ljava/util/List;

    move v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/value/Keyframe;

    move-object v2, v4

    .line 295
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->currentKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    move-object v5, v2

    if-ne v4, v5, :cond_2

    .line 293
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 298
    :cond_2
    move-object v4, v2

    move v5, v1

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/value/Keyframe;->containsProgress(F)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 299
    move-object v4, v2

    move-object v0, v4

    goto :goto_0

    .line 302
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->keyframes:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/value/Keyframe;

    move-object v0, v4

    goto :goto_0
.end method


# virtual methods
.method public getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 308
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->currentKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    move-object v0, v1

    return-object v0
.end method

.method public getEndProgress()F
    .locals 4

    .prologue
    .line 318
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->keyframes:Ljava/util/List;

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->keyframes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {v1}, Lcom/airbnb/lottie/value/Keyframe;->getEndProgress()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public getStartDelayProgress()F
    .locals 3

    .prologue
    .line 313
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->keyframes:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {v1}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public isCachedValueEnabled(F)Z
    .locals 4

    .prologue
    .line 323
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->cachedCurrentKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->currentKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->cachedInterpolatedProgress:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 325
    const/4 v2, 0x1

    move v0, v2

    .line 329
    :goto_0
    return v0

    .line 327
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->currentKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->cachedCurrentKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    .line 328
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->cachedInterpolatedProgress:F

    .line 329
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 276
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public isValueChanged(F)Z
    .locals 5

    .prologue
    .line 281
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->currentKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/value/Keyframe;->containsProgress(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->currentKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {v2}, Lcom/airbnb/lottie/value/Keyframe;->isStatic()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 285
    :goto_1
    return v0

    .line 282
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 284
    :cond_1
    move-object v2, v0

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->findKeyframe(F)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v3

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->currentKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    .line 285
    const/4 v2, 0x1

    move v0, v2

    goto :goto_1
.end method
