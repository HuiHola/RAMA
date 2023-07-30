.class final Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$EmptyKeyframeWrapper;
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
    name = "EmptyKeyframeWrapper"
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


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 186
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$1;)V
    .locals 3

    .prologue
    .line 186
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$EmptyKeyframeWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "not implemented"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getEndProgress()F
    .locals 2

    .prologue
    .line 209
    move-object v0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    move v0, v1

    return v0
.end method

.method public getStartDelayProgress()F
    .locals 2

    .prologue
    .line 204
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public isCachedValueEnabled(F)Z
    .locals 6

    .prologue
    .line 214
    move-object v0, p0

    move v1, p1

    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "not implemented"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 189
    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method public isValueChanged(F)Z
    .locals 3

    .prologue
    .line 194
    move-object v0, p0

    move v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method
