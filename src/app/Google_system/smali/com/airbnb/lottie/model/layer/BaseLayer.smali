.class public abstract Lcom/airbnb/lottie/model/layer/BaseLayer;
.super Ljava/lang/Object;
.source "BaseLayer.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/DrawingContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/model/KeyPathElement;


# static fields
.field private static final CLIP_SAVE_FLAG:I = 0x2

.field private static final CLIP_TO_LAYER_SAVE_FLAG:I = 0x10

.field private static final MATRIX_SAVE_FLAG:I = 0x1

.field private static final SAVE_FLAGS:I = 0x13


# instance fields
.field private final animations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<**>;>;"
        }
    .end annotation
.end field

.field final boundsMatrix:Landroid/graphics/Matrix;

.field private final clearPaint:Landroid/graphics/Paint;

.field private final contentPaint:Landroid/graphics/Paint;

.field private final drawTraceName:Ljava/lang/String;

.field private final dstInPaint:Landroid/graphics/Paint;

.field private final dstOutPaint:Landroid/graphics/Paint;

.field private inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final layerModel:Lcom/airbnb/lottie/model/layer/Layer;

.field final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final maskBoundsRect:Landroid/graphics/RectF;

.field private final matrix:Landroid/graphics/Matrix;

.field private final matteBoundsRect:Landroid/graphics/RectF;

.field private matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mattePaint:Landroid/graphics/Paint;

.field private parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private parentLayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/layer/BaseLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;

.field private final rect:Landroid/graphics/RectF;

.field private final tempMaskBoundsRect:Landroid/graphics/RectF;

.field final transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

.field private visible:Z


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 11

    .prologue
    .line 99
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 66
    move-object v5, v0

    new-instance v6, Landroid/graphics/Path;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 67
    move-object v5, v0

    new-instance v6, Landroid/graphics/Matrix;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 68
    move-object v5, v0

    new-instance v6, Lcom/airbnb/lottie/animation/LPaint;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/animation/LPaint;-><init>(I)V

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 69
    move-object v5, v0

    new-instance v6, Lcom/airbnb/lottie/animation/LPaint;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8, v9}, Lcom/airbnb/lottie/animation/LPaint;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstInPaint:Landroid/graphics/Paint;

    .line 70
    move-object v5, v0

    new-instance v6, Lcom/airbnb/lottie/animation/LPaint;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8, v9}, Lcom/airbnb/lottie/animation/LPaint;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    .line 71
    move-object v5, v0

    new-instance v6, Lcom/airbnb/lottie/animation/LPaint;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/animation/LPaint;-><init>(I)V

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    .line 72
    move-object v5, v0

    new-instance v6, Lcom/airbnb/lottie/animation/LPaint;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/animation/LPaint;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearPaint:Landroid/graphics/Paint;

    .line 73
    move-object v5, v0

    new-instance v6, Landroid/graphics/RectF;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 74
    move-object v5, v0

    new-instance v6, Landroid/graphics/RectF;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 75
    move-object v5, v0

    new-instance v6, Landroid/graphics/RectF;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    .line 76
    move-object v5, v0

    new-instance v6, Landroid/graphics/RectF;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 78
    move-object v5, v0

    new-instance v6, Landroid/graphics/Matrix;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    .line 95
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/List;

    .line 97
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    .line 100
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 101
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 102
    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v2

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#draw"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    .line 103
    move-object v5, v2

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/layer/Layer;->getMatteType()Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v5

    sget-object v6, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->INVERT:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    if-ne v5, v6, :cond_0

    .line 104
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-result-object v5

    .line 109
    :goto_0
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Lcom/airbnb/lottie/model/layer/Layer;->getTransform()Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    move-result-object v6

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 110
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 112
    move-object v5, v2

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/layer/Layer;->getMasks()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    move-object v5, v2

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/layer/Layer;->getMasks()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 113
    move-object v5, v0

    new-instance v6, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    invoke-virtual {v8}, Lcom/airbnb/lottie/model/layer/Layer;->getMasks()Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;-><init>(Ljava/util/List;)V

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 114
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v5

    .line 117
    move-object v5, v4

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 118
    goto :goto_1

    .line 106
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-result-object v5

    goto :goto_0

    .line 119
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getOpacityAnimations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_2
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v5

    .line 120
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 121
    move-object v5, v4

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 122
    goto :goto_2

    .line 124
    :cond_2
    move-object v5, v0

    invoke-direct {v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setupInOutAnimations()V

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/lottie/model/layer/BaseLayer;Z)V
    .locals 4

    .prologue
    .line 30
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setVisible(Z)V

    return-void
.end method

.method private applyAddMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/airbnb/lottie/model/content/Mask;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 444
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v4

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Path;

    move-object v6, v7

    .line 445
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 446
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 447
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    move-object v8, v5

    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x40233333    # 2.55f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 448
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 449
    return-void
.end method

.method private applyIntersectMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/airbnb/lottie/model/content/Mask;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 485
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstInPaint:Landroid/graphics/Paint;

    invoke-static {v7, v8, v9}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 486
    move-object v7, v4

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Path;

    move-object v6, v7

    .line 487
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 488
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 489
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    move-object v8, v5

    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x40233333    # 2.55f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 490
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 491
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 492
    return-void
.end method

.method private applyInvertedAddMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/airbnb/lottie/model/content/Mask;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 453
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-static {v7, v8, v9}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 454
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 455
    move-object v7, v4

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Path;

    move-object v6, v7

    .line 456
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 457
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 458
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    move-object v8, v5

    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x40233333    # 2.55f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 459
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 460
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 461
    return-void
.end method

.method private applyInvertedIntersectMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/airbnb/lottie/model/content/Mask;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 496
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstInPaint:Landroid/graphics/Paint;

    invoke-static {v7, v8, v9}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 497
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 498
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    move-object v8, v5

    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x40233333    # 2.55f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 499
    move-object v7, v4

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Path;

    move-object v6, v7

    .line 500
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 501
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 502
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 503
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 504
    return-void
.end method

.method private applyInvertedSubtractMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/airbnb/lottie/model/content/Mask;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 473
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    invoke-static {v7, v8, v9}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 474
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 475
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    move-object v8, v5

    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x40233333    # 2.55f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 476
    move-object v7, v4

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Path;

    move-object v6, v7

    .line 477
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 478
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 479
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 480
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 481
    return-void
.end method

.method private applyMasks(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 13

    .prologue
    .line 373
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string v7, "Layer#saveLayer"

    invoke-static {v7}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 374
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstInPaint:Landroid/graphics/Paint;

    const/16 v10, 0x13

    invoke-static {v7, v8, v9, v10}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 375
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1c

    if-ge v7, v8, :cond_0

    .line 378
    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 380
    :cond_0
    const-string v7, "Layer#saveLayer"

    invoke-static {v7}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v7

    .line 381
    const/4 v7, 0x0

    move v3, v7

    :goto_0
    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 382
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v7

    move v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/lottie/model/content/Mask;

    move-object v4, v7

    .line 383
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v7

    move v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v5, v7

    .line 384
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getOpacityAnimations()Ljava/util/List;

    move-result-object v7

    move v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v6, v7

    .line 385
    sget-object v7, Lcom/airbnb/lottie/model/layer/BaseLayer$2;->$SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode:[I

    move-object v8, v4

    invoke-virtual {v8}, Lcom/airbnb/lottie/model/content/Mask;->getMaskMode()Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 381
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 391
    :pswitch_0
    move-object v7, v0

    invoke-direct {v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->areAllMasksNone()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 392
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    const/16 v8, 0xff

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 393
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 397
    :pswitch_1
    move-object v7, v4

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/content/Mask;->isInverted()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 398
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/airbnb/lottie/model/layer/BaseLayer;->applyInvertedAddMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_1

    .line 400
    :cond_2
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/airbnb/lottie/model/layer/BaseLayer;->applyAddMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 402
    goto :goto_1

    .line 404
    :pswitch_2
    move v7, v3

    if-nez v7, :cond_3

    .line 405
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    const/high16 v8, -0x1000000

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 406
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    const/16 v8, 0xff

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 407
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 409
    :cond_3
    move-object v7, v4

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/content/Mask;->isInverted()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 410
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/airbnb/lottie/model/layer/BaseLayer;->applyInvertedSubtractMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_1

    .line 412
    :cond_4
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/airbnb/lottie/model/layer/BaseLayer;->applySubtractMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 414
    goto :goto_1

    .line 416
    :pswitch_3
    move-object v7, v4

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/content/Mask;->isInverted()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 417
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/airbnb/lottie/model/layer/BaseLayer;->applyInvertedIntersectMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_1

    .line 419
    :cond_5
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/airbnb/lottie/model/layer/BaseLayer;->applyIntersectMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    goto/16 :goto_1

    .line 424
    :cond_6
    const-string v7, "Layer#restoreLayer"

    invoke-static {v7}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 425
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 426
    const-string v7, "Layer#restoreLayer"

    invoke-static {v7}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v7

    .line 427
    return-void

    .line 385
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private applySubtractMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/airbnb/lottie/model/content/Mask;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 465
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v4

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Path;

    move-object v6, v7

    .line 466
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 467
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 468
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 469
    return-void
.end method

.method private areAllMasksNone()Z
    .locals 5

    .prologue
    .line 430
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 431
    const/4 v3, 0x0

    move v0, v3

    .line 439
    :goto_0
    return v0

    .line 433
    :cond_0
    const/4 v3, 0x1

    move v1, v3

    .line 434
    const/4 v3, 0x0

    move v2, v3

    :goto_1
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 435
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v3

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/model/content/Mask;

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/content/Mask;->getMaskMode()Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    move-result-object v3

    sget-object v4, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_NONE:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    if-eq v3, v4, :cond_1

    .line 436
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 434
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 439
    :cond_2
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method private buildParentLayerListIfNeeded()V
    .locals 6

    .prologue
    .line 543
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 557
    :goto_0
    return-void

    .line 546
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    if-nez v2, :cond_1

    .line 547
    move-object v2, v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 548
    goto :goto_0

    .line 551
    :cond_1
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 552
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    move-object v1, v2

    .line 553
    :goto_1
    move-object v2, v1

    if-eqz v2, :cond_2

    .line 554
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 555
    move-object v2, v1

    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    move-object v1, v2

    goto :goto_1

    .line 557
    :cond_2
    goto :goto_0
.end method

.method private clearCanvas(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 294
    move-object v0, p0

    move-object v1, p1

    const-string v2, "Layer#clearLayer"

    invoke-static {v2}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 296
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 297
    const-string v2, "Layer#clearLayer"

    invoke-static {v2}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v2

    .line 298
    return-void
.end method

.method static forModel(Lcom/airbnb/lottie/model/layer/Layer;Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/BaseLayer;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-object v3, Lcom/airbnb/lottie/model/layer/BaseLayer$2;->$SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType:[I

    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/layer/Layer;->getLayerType()Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown layer type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/layer/Layer;->getLayerType()Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 62
    const/4 v3, 0x0

    move-object v0, v3

    :goto_0
    return-object v0

    .line 46
    :pswitch_0
    new-instance v3, Lcom/airbnb/lottie/model/layer/ShapeLayer;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/model/layer/ShapeLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    move-object v0, v3

    goto :goto_0

    .line 48
    :pswitch_1
    new-instance v3, Lcom/airbnb/lottie/model/layer/CompositionLayer;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    move-object v6, v0

    move-object v7, v2

    move-object v8, v0

    .line 49
    invoke-virtual {v8}, Lcom/airbnb/lottie/model/layer/Layer;->getRefId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieComposition;->getPrecomps(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/airbnb/lottie/model/layer/CompositionLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;)V

    .line 48
    move-object v0, v3

    goto :goto_0

    .line 51
    :pswitch_2
    new-instance v3, Lcom/airbnb/lottie/model/layer/SolidLayer;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/model/layer/SolidLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    move-object v0, v3

    goto :goto_0

    .line 53
    :pswitch_3
    new-instance v3, Lcom/airbnb/lottie/model/layer/ImageLayer;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/model/layer/ImageLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    move-object v0, v3

    goto :goto_0

    .line 55
    :pswitch_4
    new-instance v3, Lcom/airbnb/lottie/model/layer/NullLayer;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/model/layer/NullLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    move-object v0, v3

    goto :goto_0

    .line 57
    :pswitch_5
    new-instance v3, Lcom/airbnb/lottie/model/layer/TextLayer;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/model/layer/TextLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    move-object v0, v3

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private intersectBoundsWithMask(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 14

    .prologue
    .line 301
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 302
    move-object v8, v0

    invoke-virtual {v8}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v8

    if-nez v8, :cond_0

    .line 349
    :goto_0
    return-void

    .line 306
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v3, v8

    .line 307
    const/4 v8, 0x0

    move v4, v8

    :goto_1
    move v8, v4

    move v9, v3

    if-ge v8, v9, :cond_3

    .line 308
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v8

    move v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/lottie/model/content/Mask;

    move-object v5, v8

    .line 309
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v8

    move v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v6, v8

    .line 310
    move-object v8, v6

    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Path;

    move-object v7, v8

    .line 311
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 312
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 314
    sget-object v8, Lcom/airbnb/lottie/model/layer/BaseLayer$2;->$SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode:[I

    move-object v9, v5

    invoke-virtual {v9}, Lcom/airbnb/lottie/model/content/Mask;->getMaskMode()Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    move-result-object v9

    invoke-virtual {v9}, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 328
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 332
    move v8, v4

    if-nez v8, :cond_2

    .line 333
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 307
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 317
    :pswitch_0
    goto :goto_0

    .line 321
    :pswitch_1
    goto :goto_0

    .line 324
    :pswitch_2
    move-object v8, v5

    invoke-virtual {v8}, Lcom/airbnb/lottie/model/content/Mask;->isInverted()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 325
    goto :goto_0

    .line 335
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    .line 336
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    move-object v11, v0

    iget-object v11, v11, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    .line 337
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    move-object v12, v0

    iget-object v12, v12, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->right:F

    .line 338
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    move-object v12, v0

    iget-object v12, v12, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    move-object v13, v0

    iget-object v13, v13, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    .line 339
    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 335
    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    .line 345
    :cond_3
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v8

    move v4, v8

    .line 346
    move v8, v4

    if-nez v8, :cond_4

    .line 347
    move-object v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 349
    :cond_4
    goto/16 :goto_0

    .line 314
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private intersectBoundsWithMatte(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 9

    .prologue
    .line 352
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v4

    if-nez v4, :cond_0

    .line 368
    :goto_0
    return-void

    .line 356
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/layer/Layer;->getMatteType()Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v4

    sget-object v5, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->INVERT:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    if-ne v4, v5, :cond_1

    .line 359
    goto :goto_0

    .line 362
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 363
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    move-object v6, v2

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 364
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v4

    move v3, v4

    .line 365
    move v4, v3

    if-nez v4, :cond_2

    .line 366
    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 368
    :cond_2
    goto :goto_0
.end method

.method private invalidateSelf()V
    .locals 2

    .prologue
    .line 166
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 167
    return-void
.end method

.method private recordRenderTime(F)V
    .locals 5

    .prologue
    .line 288
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v2

    .line 289
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object v3

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/lottie/PerformanceTracker;->recordRenderTime(Ljava/lang/String;F)V

    .line 291
    return-void
.end method

.method private setVisible(Z)V
    .locals 4

    .prologue
    .line 511
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    if-eq v2, v3, :cond_0

    .line 512
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    .line 513
    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->invalidateSelf()V

    .line 515
    :cond_0
    return-void
.end method

.method private setupInOutAnimations()V
    .locals 6

    .prologue
    .line 149
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/Layer;->getInOutKeyframes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    move-object v1, v0

    new-instance v2, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/layer/Layer;->getInOutKeyframes()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;-><init>(Ljava/util/List;)V

    iput-object v2, v1, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 151
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->setIsDiscrete()V

    .line 152
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    new-instance v2, Lcom/airbnb/lottie/model/layer/BaseLayer$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/model/layer/BaseLayer$1;-><init>(Lcom/airbnb/lottie/model/layer/BaseLayer;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 158
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-direct {v1, v2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setVisible(Z)V

    .line 159
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 163
    :goto_1
    return-void

    .line 158
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 161
    :cond_1
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setVisible(Z)V

    goto :goto_1
.end method


# virtual methods
.method public addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 4
    .param p1    # Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 170
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    .line 174
    :goto_0
    return-void

    .line 173
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 174
    goto :goto_0
.end method

.method public addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 6
    .param p2    # Lcom/airbnb/lottie/value/LottieValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

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
    .line 597
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->applyValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)Z

    move-result v3

    .line 598
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 11

    .prologue
    .line 203
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    invoke-static {v6}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 204
    move-object v6, v0

    iget-boolean v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v6}, Lcom/airbnb/lottie/model/layer/Layer;->isHidden()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 205
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    invoke-static {v6}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v6

    .line 285
    :goto_0
    return-void

    .line 208
    :cond_1
    move-object v6, v0

    invoke-direct {v6}, Lcom/airbnb/lottie/model/layer/BaseLayer;->buildParentLayerListIfNeeded()V

    .line 209
    const-string v6, "Layer#parentMatrix"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 210
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 211
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 212
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    :goto_1
    move v6, v4

    if-ltz v6, :cond_2

    .line 213
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    move v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/lottie/model/layer/BaseLayer;

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v6

    .line 212
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 215
    :cond_2
    const-string v6, "Layer#parentMatrix"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v6

    .line 216
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v6

    if-nez v6, :cond_3

    const/16 v6, 0x64

    :goto_2
    move v4, v6

    .line 217
    move v6, v3

    int-to-float v6, v6

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    move v7, v4

    int-to-float v7, v7

    mul-float/2addr v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    move v5, v6

    .line 219
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v6

    if-nez v6, :cond_4

    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v6

    if-nez v6, :cond_4

    .line 220
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v6

    .line 221
    const-string v6, "Layer#drawLayer"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 222
    move-object v6, v0

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    move v9, v5

    invoke-virtual {v6, v7, v8, v9}, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 223
    const-string v6, "Layer#drawLayer"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v6

    .line 224
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    invoke-static {v7}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v7

    invoke-direct {v6, v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->recordRenderTime(F)V

    .line 225
    goto/16 :goto_0

    .line 216
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_2

    .line 228
    :cond_4
    const-string v6, "Layer#computeBounds"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 229
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 238
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lcom/airbnb/lottie/model/layer/BaseLayer;->intersectBoundsWithMatte(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 240
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v6

    .line 241
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-direct {v6, v7, v8}, Lcom/airbnb/lottie/model/layer/BaseLayer;->intersectBoundsWithMask(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 243
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    int-to-float v9, v9

    move-object v10, v1

    invoke-virtual {v10}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v6

    if-nez v6, :cond_5

    .line 244
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 247
    :cond_5
    const-string v6, "Layer#computeBounds"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v6

    .line 249
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 250
    const-string v6, "Layer#saveLayer"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 251
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 252
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-static {v6, v7, v8}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 253
    const-string v6, "Layer#saveLayer"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v6

    .line 256
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 257
    const-string v6, "Layer#drawLayer"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 258
    move-object v6, v0

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    move v9, v5

    invoke-virtual {v6, v7, v8, v9}, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 259
    const-string v6, "Layer#drawLayer"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v6

    .line 261
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 262
    move-object v6, v0

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-direct {v6, v7, v8}, Lcom/airbnb/lottie/model/layer/BaseLayer;->applyMasks(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 265
    :cond_6
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 266
    const-string v6, "Layer#drawMatte"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 267
    const-string v6, "Layer#saveLayer"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 268
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    const/16 v9, 0x13

    invoke-static {v6, v7, v8, v9}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 269
    const-string v6, "Layer#saveLayer"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v6

    .line 270
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 272
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    move-object v7, v1

    move-object v8, v2

    move v9, v5

    invoke-virtual {v6, v7, v8, v9}, Lcom/airbnb/lottie/model/layer/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 273
    const-string v6, "Layer#restoreLayer"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 274
    move-object v6, v1

    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 275
    const-string v6, "Layer#restoreLayer"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v6

    .line 276
    const-string v6, "Layer#drawMatte"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v6

    .line 279
    :cond_7
    const-string v6, "Layer#restoreLayer"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 280
    move-object v6, v1

    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 281
    const-string v6, "Layer#restoreLayer"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v6

    .line 284
    :cond_8
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    invoke-static {v7}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v7

    invoke-direct {v6, v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->recordRenderTime(F)V

    .line 285
    goto/16 :goto_0
.end method

.method abstract drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 10
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 184
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 185
    move-object v5, v0

    invoke-direct {v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->buildParentLayerListIfNeeded()V

    .line 186
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 188
    move v5, v3

    if-eqz v5, :cond_0

    .line 189
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 190
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    :goto_0
    move v5, v4

    if-ltz v5, :cond_0

    .line 191
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/model/layer/BaseLayer;

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v5

    .line 190
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 198
    :cond_0
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v5

    .line 199
    return-void

    .line 193
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    if-eqz v5, :cond_0

    .line 194
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v5

    goto :goto_1
.end method

.method getLayerModel()Lcom/airbnb/lottie/model/layer/Layer;
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    move-object v0, v1

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 561
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method hasMasksOnThisLayer()Z
    .locals 2

    .prologue
    .line 507
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method hasMatteOnThisLayer()Z
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onValueChanged()V
    .locals 2

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->invalidateSelf()V

    .line 130
    return-void
.end method

.method public removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 177
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 178
    return-void
.end method

.method resolveChildKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 0
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
    .line 592
    return-void
.end method

.method public resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 11
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
    .line 572
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v7

    move v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/airbnb/lottie/model/KeyPath;->matches(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 588
    :goto_0
    return-void

    .line 576
    :cond_0
    const-string v6, "__container"

    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 577
    move-object v6, v4

    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/model/KeyPath;->addKey(Ljava/lang/String;)Lcom/airbnb/lottie/model/KeyPath;

    move-result-object v6

    move-object v4, v6

    .line 579
    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v7

    move v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/airbnb/lottie/model/KeyPath;->fullyResolvesTo(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 580
    move-object v6, v3

    move-object v7, v4

    move-object v8, v0

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/model/KeyPath;->resolve(Lcom/airbnb/lottie/model/KeyPathElement;)Lcom/airbnb/lottie/model/KeyPath;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 584
    :cond_1
    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v7

    move v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/airbnb/lottie/model/KeyPath;->propagateToChildren(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 585
    move v6, v2

    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v8

    move v9, v2

    invoke-virtual {v7, v8, v9}, Lcom/airbnb/lottie/model/KeyPath;->incrementDepthBy(Ljava/lang/String;I)I

    move-result v7

    add-int/2addr v6, v7

    move v5, v6

    .line 586
    move-object v6, v0

    move-object v7, v1

    move v8, v5

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/airbnb/lottie/model/layer/BaseLayer;->resolveChildKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V

    .line 588
    :cond_2
    goto :goto_0
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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
    .line 567
    return-void
.end method

.method setMatteLayer(Lcom/airbnb/lottie/model/layer/BaseLayer;)V
    .locals 4
    .param p1    # Lcom/airbnb/lottie/model/layer/BaseLayer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 137
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 138
    return-void
.end method

.method setParentLayer(Lcom/airbnb/lottie/model/layer/BaseLayer;)V
    .locals 4
    .param p1    # Lcom/airbnb/lottie/model/layer/BaseLayer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 145
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 146
    return-void
.end method

.method setProgress(F)V
    .locals 6
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 519
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->setProgress(F)V

    .line 520
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    if-eqz v3, :cond_0

    .line 521
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 522
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v3

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 521
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 525
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/layer/Layer;->getTimeStretch()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    .line 526
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/layer/Layer;->getTimeStretch()F

    move-result v4

    div-float/2addr v3, v4

    move v1, v3

    .line 528
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    if-eqz v3, :cond_2

    .line 530
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/layer/Layer;->getTimeStretch()F

    move-result v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->setProgress(F)V

    .line 532
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    if-eqz v3, :cond_3

    .line 534
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/layer/Layer;->getTimeStretch()F

    move-result v3

    move v2, v3

    .line 535
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    move v4, v1

    move v5, v2

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setProgress(F)V

    .line 537
    :cond_3
    const/4 v3, 0x0

    move v2, v3

    :goto_1
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 538
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/List;

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 537
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 540
    :cond_4
    return-void
.end method
