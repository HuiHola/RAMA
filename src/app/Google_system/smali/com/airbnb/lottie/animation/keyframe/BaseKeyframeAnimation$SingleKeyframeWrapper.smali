.class final Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper;
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
    name = "SingleKeyframeWrapper"
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
.field private cachedInterpolatedProgress:F

.field private final keyframe:Lcom/airbnb/lottie/value/Keyframe;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TT;>;"
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
    .line 223
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 221
    move-object v2, v0

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper;->cachedInterpolatedProgress:F

    .line 224
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/value/Keyframe;

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper;->keyframe:Lcom/airbnb/lottie/value/Keyframe;

    .line 225
    return-void
.end method


# virtual methods
.method public getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 239
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper;->keyframe:Lcom/airbnb/lottie/value/Keyframe;

    move-object v0, v1

    return-object v0
.end method

.method public getEndProgress()F
    .locals 2

    .prologue
    .line 249
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper;->keyframe:Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {v1}, Lcom/airbnb/lottie/value/Keyframe;->getEndProgress()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public getStartDelayProgress()F
    .locals 2

    .prologue
    .line 244
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper;->keyframe:Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {v1}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public isCachedValueEnabled(F)Z
    .locals 4

    .prologue
    .line 254
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper;->cachedInterpolatedProgress:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 255
    const/4 v2, 0x1

    move v0, v2

    .line 258
    :goto_0
    return v0

    .line 257
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper;->cachedInterpolatedProgress:F

    .line 258
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 229
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public isValueChanged(F)Z
    .locals 3

    .prologue
    .line 234
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper;->keyframe:Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {v2}, Lcom/airbnb/lottie/value/Keyframe;->isStatic()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
