.class public Lcom/airbnb/lottie/animation/content/GradientFillContent;
.super Ljava/lang/Object;
.source "GradientFillContent.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/DrawingContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;


# static fields
.field private static final CACHE_STEPS_MS:I = 0x20


# instance fields
.field private final boundsRect:Landroid/graphics/RectF;

.field private final cacheSteps:I

.field private final colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Lcom/airbnb/lottie/model/content/GradientColor;",
            "Lcom/airbnb/lottie/model/content/GradientColor;",
            ">;"
        }
    .end annotation
.end field

.field private colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final hidden:Z

.field private final layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

.field private final linearGradientCache:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray",
            "<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final name:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/PathContent;",
            ">;"
        }
    .end annotation
.end field

.field private final radialGradientCache:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray",
            "<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/airbnb/lottie/model/content/GradientType;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/GradientFill;)V
    .locals 9

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 45
    move-object v4, v0

    new-instance v5, Landroidx/collection/LongSparseArray;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/GradientFillContent;->linearGradientCache:Landroidx/collection/LongSparseArray;

    .line 46
    move-object v4, v0

    new-instance v5, Landroidx/collection/LongSparseArray;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/GradientFillContent;->radialGradientCache:Landroidx/collection/LongSparseArray;

    .line 47
    move-object v4, v0

    new-instance v5, Landroid/graphics/Path;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    .line 48
    move-object v4, v0

    new-instance v5, Lcom/airbnb/lottie/animation/LPaint;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lcom/airbnb/lottie/animation/LPaint;-><init>(I)V

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/GradientFillContent;->paint:Landroid/graphics/Paint;

    .line 49
    move-object v4, v0

    new-instance v5, Landroid/graphics/RectF;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

    .line 50
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/GradientFillContent;->paths:Ljava/util/List;

    .line 62
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/GradientFillContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 63
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/GradientFill;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/GradientFillContent;->name:Ljava/lang/String;

    .line 64
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/GradientFill;->isHidden()Z

    move-result v5

    iput-boolean v5, v4, Lcom/airbnb/lottie/animation/content/GradientFillContent;->hidden:Z

    .line 65
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/GradientFillContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 66
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/GradientFill;->getGradientType()Lcom/airbnb/lottie/model/content/GradientType;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/GradientFillContent;->type:Lcom/airbnb/lottie/model/content/GradientType;

    .line 67
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/GradientFill;->getFillType()Landroid/graphics/Path$FillType;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 68
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieDrawable;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieComposition;->getDuration()F

    move-result v5

    const/high16 v6, 0x42000000    # 32.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Lcom/airbnb/lottie/animation/content/GradientFillContent;->cacheSteps:I

    .line 70
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/GradientFill;->getGradientColor()Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 71
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 72
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 74
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/GradientFill;->getOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/GradientFillContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 75
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/GradientFillContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 76
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/GradientFillContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 78
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/GradientFill;->getStartPoint()Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/GradientFillContent;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 79
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/GradientFillContent;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 80
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/GradientFillContent;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 82
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/GradientFill;->getEndPoint()Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/GradientFillContent;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 83
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/GradientFillContent;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 84
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/GradientFillContent;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 85
    return-void
.end method

.method private applyDynamicColorsIfNeeded([I)[I
    .locals 8

    .prologue
    .line 211
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz v4, :cond_0

    .line 212
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Integer;

    move-object v2, v4

    .line 213
    move-object v4, v1

    array-length v4, v4

    move-object v5, v2

    array-length v5, v5

    if-ne v4, v5, :cond_1

    .line 214
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 215
    move-object v4, v1

    move v5, v3

    move-object v6, v2

    move v7, v3

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v5

    .line 214
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 224
    :cond_0
    move-object v4, v1

    move-object v0, v4

    return-object v0

    .line 218
    :cond_1
    move-object v4, v2

    array-length v4, v4

    new-array v4, v4, [I

    move-object v1, v4

    .line 219
    const/4 v4, 0x0

    move v3, v4

    :goto_1
    move v4, v3

    move-object v5, v2

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 220
    move-object v4, v1

    move v5, v3

    move-object v6, v2

    move v7, v3

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v5

    .line 219
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private getGradientHash()I
    .locals 7

    .prologue
    .line 194
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/GradientFillContent;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getProgress()F

    move-result v5

    move-object v6, v0

    iget v6, v6, Lcom/airbnb/lottie/animation/content/GradientFillContent;->cacheSteps:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    move v1, v5

    .line 195
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/GradientFillContent;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getProgress()F

    move-result v5

    move-object v6, v0

    iget v6, v6, Lcom/airbnb/lottie/animation/content/GradientFillContent;->cacheSteps:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    move v2, v5

    .line 196
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getProgress()F

    move-result v5

    move-object v6, v0

    iget v6, v6, Lcom/airbnb/lottie/animation/content/GradientFillContent;->cacheSteps:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    move v3, v5

    .line 197
    const/16 v5, 0x11

    move v4, v5

    .line 198
    move v5, v1

    if-eqz v5, :cond_0

    .line 199
    move v5, v4

    const/16 v6, 0x1f

    mul-int/lit8 v5, v5, 0x1f

    move v6, v1

    mul-int/2addr v5, v6

    move v4, v5

    .line 201
    :cond_0
    move v5, v2

    if-eqz v5, :cond_1

    .line 202
    move v5, v4

    const/16 v6, 0x1f

    mul-int/lit8 v5, v5, 0x1f

    move v6, v2

    mul-int/2addr v5, v6

    move v4, v5

    .line 204
    :cond_1
    move v5, v3

    if-eqz v5, :cond_2

    .line 205
    move v5, v4

    const/16 v6, 0x1f

    mul-int/lit8 v5, v5, 0x1f

    move v6, v3

    mul-int/2addr v5, v6

    move v4, v5

    .line 207
    :cond_2
    move v5, v4

    move v0, v5

    return v0
.end method

.method private getLinearGradient()Landroid/graphics/LinearGradient;
    .locals 18

    .prologue
    .line 153
    move-object/from16 v0, p0

    move-object v8, v0

    invoke-direct {v8}, Lcom/airbnb/lottie/animation/content/GradientFillContent;->getGradientHash()I

    move-result v8

    move v1, v8

    .line 154
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/animation/content/GradientFillContent;->linearGradientCache:Landroidx/collection/LongSparseArray;

    move v9, v1

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/LinearGradient;

    move-object v2, v8

    .line 155
    move-object v8, v2

    if-eqz v8, :cond_0

    .line 156
    move-object v8, v2

    move-object v0, v8

    .line 166
    :goto_0
    return-object v0

    .line 158
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/animation/content/GradientFillContent;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    move-object v3, v8

    .line 159
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/animation/content/GradientFillContent;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    move-object v4, v8

    .line 160
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/lottie/model/content/GradientColor;

    move-object v5, v8

    .line 161
    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v9}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/airbnb/lottie/animation/content/GradientFillContent;->applyDynamicColorsIfNeeded([I)[I

    move-result-object v8

    move-object v6, v8

    .line 162
    move-object v8, v5

    invoke-virtual {v8}, Lcom/airbnb/lottie/model/content/GradientColor;->getPositions()[F

    move-result-object v8

    move-object v7, v8

    .line 163
    new-instance v8, Landroid/graphics/LinearGradient;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    move-object v10, v3

    iget v10, v10, Landroid/graphics/PointF;->x:F

    move-object v11, v3

    iget v11, v11, Landroid/graphics/PointF;->y:F

    move-object v12, v4

    iget v12, v12, Landroid/graphics/PointF;->x:F

    move-object v13, v4

    iget v13, v13, Landroid/graphics/PointF;->y:F

    move-object v14, v6

    move-object v15, v7

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object v2, v8

    .line 165
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/animation/content/GradientFillContent;->linearGradientCache:Landroidx/collection/LongSparseArray;

    move v9, v1

    int-to-long v9, v9

    move-object v11, v2

    invoke-virtual {v8, v9, v10, v11}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 166
    move-object v8, v2

    move-object v0, v8

    goto :goto_0
.end method

.method private getRadialGradient()Landroid/graphics/RadialGradient;
    .locals 22

    .prologue
    .line 170
    move-object/from16 v0, p0

    move-object v13, v0

    invoke-direct {v13}, Lcom/airbnb/lottie/animation/content/GradientFillContent;->getGradientHash()I

    move-result v13

    move v1, v13

    .line 171
    move-object v13, v0

    iget-object v13, v13, Lcom/airbnb/lottie/animation/content/GradientFillContent;->radialGradientCache:Landroidx/collection/LongSparseArray;

    move v14, v1

    int-to-long v14, v14

    invoke-virtual {v13, v14, v15}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/RadialGradient;

    move-object v2, v13

    .line 172
    move-object v13, v2

    if-eqz v13, :cond_0

    .line 173
    move-object v13, v2

    move-object v0, v13

    .line 190
    :goto_0
    return-object v0

    .line 175
    :cond_0
    move-object v13, v0

    iget-object v13, v13, Lcom/airbnb/lottie/animation/content/GradientFillContent;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v13}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/PointF;

    move-object v3, v13

    .line 176
    move-object v13, v0

    iget-object v13, v13, Lcom/airbnb/lottie/animation/content/GradientFillContent;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v13}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/PointF;

    move-object v4, v13

    .line 177
    move-object v13, v0

    iget-object v13, v13, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v13}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/airbnb/lottie/model/content/GradientColor;

    move-object v5, v13

    .line 178
    move-object v13, v0

    move-object v14, v5

    invoke-virtual {v14}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/airbnb/lottie/animation/content/GradientFillContent;->applyDynamicColorsIfNeeded([I)[I

    move-result-object v13

    move-object v6, v13

    .line 179
    move-object v13, v5

    invoke-virtual {v13}, Lcom/airbnb/lottie/model/content/GradientColor;->getPositions()[F

    move-result-object v13

    move-object v7, v13

    .line 180
    move-object v13, v3

    iget v13, v13, Landroid/graphics/PointF;->x:F

    move v8, v13

    .line 181
    move-object v13, v3

    iget v13, v13, Landroid/graphics/PointF;->y:F

    move v9, v13

    .line 182
    move-object v13, v4

    iget v13, v13, Landroid/graphics/PointF;->x:F

    move v10, v13

    .line 183
    move-object v13, v4

    iget v13, v13, Landroid/graphics/PointF;->y:F

    move v11, v13

    .line 184
    move v13, v10

    move v14, v8

    sub-float/2addr v13, v14

    float-to-double v13, v13

    move v15, v11

    move/from16 v16, v9

    sub-float v15, v15, v16

    float-to-double v15, v15

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v13

    double-to-float v13, v13

    move v12, v13

    .line 185
    move v13, v12

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_1

    .line 186
    const v13, 0x3a83126f    # 0.001f

    move v12, v13

    .line 188
    :cond_1
    new-instance v13, Landroid/graphics/RadialGradient;

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    move v15, v8

    move/from16 v16, v9

    move/from16 v17, v12

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v14 .. v20}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object v2, v13

    .line 189
    move-object v13, v0

    iget-object v13, v13, Lcom/airbnb/lottie/animation/content/GradientFillContent;->radialGradientCache:Landroidx/collection/LongSparseArray;

    move v14, v1

    int-to-long v14, v14

    move-object/from16 v16, v2

    invoke-virtual/range {v13 .. v16}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 190
    move-object v13, v2

    move-object v0, v13

    goto :goto_0
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 8
    .param p2    # Lcom/airbnb/lottie/value/LottieValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/airbnb/lottie/value/LottieValueCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 235
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->OPACITY:Ljava/lang/Integer;

    if-ne v3, v4, :cond_1

    .line 236
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/GradientFillContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    if-ne v3, v4, :cond_4

    .line 238
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v3, :cond_2

    .line 239
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/GradientFillContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 242
    :cond_2
    move-object v3, v2

    if-nez v3, :cond_3

    .line 243
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 245
    :cond_3
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object v4, v3, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 247
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 248
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/GradientFillContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_0

    .line 250
    :cond_4
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->GRADIENT_COLOR:[Ljava/lang/Integer;

    if-ne v3, v4, :cond_0

    .line 251
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz v3, :cond_5

    .line 252
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/GradientFillContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 255
    :cond_5
    move-object v3, v2

    if-nez v3, :cond_6

    .line 256
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    goto :goto_0

    .line 259
    :cond_6
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object v4, v3, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 260
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 261
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/GradientFillContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 10

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v0

    iget-boolean v6, v6, Lcom/airbnb/lottie/animation/content/GradientFillContent;->hidden:Z

    if-eqz v6, :cond_0

    .line 130
    :goto_0
    return-void

    .line 104
    :cond_0
    const-string v6, "GradientFillContent#draw"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 105
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 106
    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/GradientFillContent;->paths:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 107
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/GradientFillContent;->paths:Ljava/util/List;

    move v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v7}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 106
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 110
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 113
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/content/GradientFillContent;->type:Lcom/airbnb/lottie/model/content/GradientType;

    sget-object v7, Lcom/airbnb/lottie/model/content/GradientType;->LINEAR:Lcom/airbnb/lottie/model/content/GradientType;

    if-ne v6, v7, :cond_3

    .line 114
    move-object v6, v0

    invoke-direct {v6}, Lcom/airbnb/lottie/animation/content/GradientFillContent;->getLinearGradient()Landroid/graphics/LinearGradient;

    move-result-object v6

    move-object v4, v6

    .line 118
    :goto_2
    move-object v6, v4

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 119
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/content/GradientFillContent;->paint:Landroid/graphics/Paint;

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v6

    .line 121
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v6, :cond_2

    .line 122
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/content/GradientFillContent;->paint:Landroid/graphics/Paint;

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/ColorFilter;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v6

    .line 125
    :cond_2
    move v6, v3

    int-to-float v6, v6

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/GradientFillContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    move v5, v6

    .line 126
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/content/GradientFillContent;->paint:Landroid/graphics/Paint;

    move v7, v5

    const/4 v8, 0x0

    const/16 v9, 0xff

    invoke-static {v7, v8, v9}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(III)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 128
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/animation/content/GradientFillContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 129
    const-string v6, "GradientFillContent#draw"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v6

    .line 130
    goto/16 :goto_0

    .line 116
    :cond_3
    move-object v6, v0

    invoke-direct {v6}, Lcom/airbnb/lottie/animation/content/GradientFillContent;->getRadialGradient()Landroid/graphics/RadialGradient;

    move-result-object v6

    move-object v4, v6

    goto :goto_2
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 11

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 134
    const/4 v5, 0x0

    move v4, v5

    :goto_0
    move v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/content/GradientFillContent;->paths:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 135
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/content/GradientFillContent;->paths:Ljava/util/List;

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v6}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 134
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 138
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 140
    move-object v5, v1

    move-object v6, v1

    iget v6, v6, Landroid/graphics/RectF;->left:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v6, v7

    move-object v7, v1

    iget v7, v7, Landroid/graphics/RectF;->top:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v7, v8

    move-object v8, v1

    iget v8, v8, Landroid/graphics/RectF;->right:F

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v8, v9

    move-object v9, v1

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 146
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/GradientFillContent;->name:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public onValueChanged()V
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/GradientFillContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 89
    return-void
.end method

.method public resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ">;",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ")V"
        }
    .end annotation

    .prologue
    .line 229
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    move-object v8, v4

    move-object v9, v0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/airbnb/lottie/utils/MiscUtils;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;Lcom/airbnb/lottie/animation/content/KeyPathElementContent;)V

    .line 230
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 93
    move-object v5, v2

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/animation/content/Content;

    move-object v4, v5

    .line 94
    move-object v5, v4

    instance-of v5, v5, Lcom/airbnb/lottie/animation/content/PathContent;

    if-eqz v5, :cond_0

    .line 95
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/GradientFillContent;->paths:Ljava/util/List;

    move-object v6, v4

    check-cast v6, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 92
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    :cond_1
    return-void
.end method
