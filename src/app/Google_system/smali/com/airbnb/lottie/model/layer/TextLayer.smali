.class public Lcom/airbnb/lottie/model/layer/TextLayer;
.super Lcom/airbnb/lottie/model/layer/BaseLayer;
.source "TextLayer.java"


# instance fields
.field private final codePointCache:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

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

.field private colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

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

.field private final composition:Lcom/airbnb/lottie/LottieComposition;

.field private final contentsForCharacter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/ContentGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field private final fillPaint:Landroid/graphics/Paint;

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final matrix:Landroid/graphics/Matrix;

.field private final rectF:Landroid/graphics/RectF;

.field private final stringBuilder:Ljava/lang/StringBuilder;

.field private strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

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

.field private strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

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

.field private final strokePaint:Landroid/graphics/Paint;

.field private strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field private textSizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 10

    .prologue
    .line 74
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 38
    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v5, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    .line 39
    move-object v4, v0

    new-instance v5, Landroid/graphics/RectF;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->rectF:Landroid/graphics/RectF;

    .line 40
    move-object v4, v0

    new-instance v5, Landroid/graphics/Matrix;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    .line 41
    move-object v4, v0

    new-instance v5, Lcom/airbnb/lottie/model/layer/TextLayer$1;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/airbnb/lottie/model/layer/TextLayer$1;-><init>(Lcom/airbnb/lottie/model/layer/TextLayer;I)V

    iput-object v5, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 44
    move-object v4, v0

    new-instance v5, Lcom/airbnb/lottie/model/layer/TextLayer$2;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/airbnb/lottie/model/layer/TextLayer$2;-><init>(Lcom/airbnb/lottie/model/layer/TextLayer;I)V

    iput-object v5, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 47
    move-object v4, v0

    new-instance v5, Ljava/util/HashMap;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    .line 48
    move-object v4, v0

    new-instance v5, Landroidx/collection/LongSparseArray;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v5, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    .line 75
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 76
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/layer/Layer;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 78
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/layer/Layer;->getText()Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 79
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 80
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 82
    move-object v4, v2

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/layer/Layer;->getTextProperties()Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    move-result-object v4

    move-object v3, v4

    .line 83
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    iget-object v4, v4, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    if-eqz v4, :cond_0

    .line 84
    move-object v4, v0

    move-object v5, v3

    iget-object v5, v5, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 85
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 86
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 89
    :cond_0
    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    iget-object v4, v4, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->stroke:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    if-eqz v4, :cond_1

    .line 90
    move-object v4, v0

    move-object v5, v3

    iget-object v5, v5, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->stroke:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 91
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 92
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 95
    :cond_1
    move-object v4, v3

    if-eqz v4, :cond_2

    move-object v4, v3

    iget-object v4, v4, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->strokeWidth:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    if-eqz v4, :cond_2

    .line 96
    move-object v4, v0

    move-object v5, v3

    iget-object v5, v5, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->strokeWidth:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 97
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 98
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 101
    :cond_2
    move-object v4, v3

    if-eqz v4, :cond_3

    move-object v4, v3

    iget-object v4, v4, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->tracking:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    if-eqz v4, :cond_3

    .line 102
    move-object v4, v0

    move-object v5, v3

    iget-object v5, v5, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->tracking:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 103
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 104
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 106
    :cond_3
    return-void
.end method

.method private applyJustification(Lcom/airbnb/lottie/model/DocumentData$Justification;Landroid/graphics/Canvas;F)V
    .locals 7

    .prologue
    .line 329
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    sget-object v4, Lcom/airbnb/lottie/model/layer/TextLayer$3;->$SwitchMap$com$airbnb$lottie$model$DocumentData$Justification:[I

    move-object v5, v1

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/DocumentData$Justification;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 340
    :goto_0
    return-void

    .line 332
    :pswitch_0
    goto :goto_0

    .line 334
    :pswitch_1
    move-object v4, v2

    move v5, v3

    neg-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 335
    goto :goto_0

    .line 337
    :pswitch_2
    move-object v4, v2

    move v5, v3

    neg-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private codePointToString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 13

    .prologue
    .line 412
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v9, v1

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    move v3, v9

    .line 413
    move v9, v3

    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    move v4, v9

    .line 414
    move v9, v3

    move v5, v9

    .line 415
    move v9, v2

    move v10, v4

    add-int/2addr v9, v10

    move v6, v9

    .line 416
    :goto_0
    move v9, v6

    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 417
    move-object v9, v1

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    move v7, v9

    .line 418
    move-object v9, v0

    move v10, v7

    invoke-direct {v9, v10}, Lcom/airbnb/lottie/model/layer/TextLayer;->isModifier(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 426
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    move v10, v5

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 427
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    move v10, v5

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v0, v9

    .line 438
    :goto_1
    return-object v0

    .line 421
    :cond_1
    move v9, v7

    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    move v8, v9

    .line 422
    move v9, v6

    move v10, v8

    add-int/2addr v9, v10

    move v6, v9

    .line 423
    move v9, v5

    const/16 v10, 0x1f

    mul-int/lit8 v9, v9, 0x1f

    move v10, v7

    add-int/2addr v9, v10

    move v5, v9

    .line 424
    goto :goto_0

    .line 430
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 431
    move v9, v2

    move v7, v9

    :goto_2
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_3

    .line 432
    move-object v9, v1

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    move v8, v9

    .line 433
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    move v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 434
    move v9, v7

    move v10, v8

    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int/2addr v9, v10

    move v7, v9

    .line 435
    goto :goto_2

    .line 436
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 437
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    move v10, v5

    int-to-long v10, v10

    move-object v12, v7

    invoke-virtual {v9, v10, v11, v12}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 438
    move-object v9, v7

    move-object v0, v9

    goto :goto_1
.end method

.method private drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    if-nez v4, :cond_0

    .line 394
    :goto_0
    return-void

    .line 390
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v4

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v4, v5, :cond_1

    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    .line 391
    goto :goto_0

    .line 393
    :cond_1
    move-object v4, v3

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, v2

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 394
    goto :goto_0
.end method

.method private drawCharacterAsGlyph(Lcom/airbnb/lottie/model/FontCharacter;Landroid/graphics/Matrix;FLcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    .line 348
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Lcom/airbnb/lottie/model/layer/TextLayer;->getContentsForCharacter(Lcom/airbnb/lottie/model/FontCharacter;)Ljava/util/List;

    move-result-object v9

    move-object v6, v9

    .line 349
    const/4 v9, 0x0

    move v7, v9

    :goto_0
    move v9, v7

    move-object v10, v6

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 350
    move-object v9, v6

    move v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/airbnb/lottie/animation/content/ContentGroup;

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getPath()Landroid/graphics/Path;

    move-result-object v9

    move-object v8, v9

    .line 351
    move-object v9, v8

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/TextLayer;->rectF:Landroid/graphics/RectF;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 352
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    move-object v10, v2

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 353
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    const/4 v10, 0x0

    move-object v11, v4

    iget v11, v11, Lcom/airbnb/lottie/model/DocumentData;->baselineShift:F

    neg-float v11, v11

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v12

    mul-float/2addr v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v9

    .line 354
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    move v10, v3

    move v11, v3

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->preScale(FF)Z

    move-result v9

    .line 355
    move-object v9, v8

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 356
    move-object v9, v4

    iget-boolean v9, v9, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    if-eqz v9, :cond_0

    .line 357
    move-object v9, v0

    move-object v10, v8

    move-object v11, v0

    iget-object v11, v11, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    move-object v12, v5

    invoke-direct {v9, v10, v11, v12}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 358
    move-object v9, v0

    move-object v10, v8

    move-object v11, v0

    iget-object v11, v11, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    move-object v12, v5

    invoke-direct {v9, v10, v11, v12}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 349
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 360
    :cond_0
    move-object v9, v0

    move-object v10, v8

    move-object v11, v0

    iget-object v11, v11, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    move-object v12, v5

    invoke-direct {v9, v10, v11, v12}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 361
    move-object v9, v0

    move-object v10, v8

    move-object v11, v0

    iget-object v11, v11, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    move-object v12, v5

    invoke-direct {v9, v10, v11, v12}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 364
    :cond_1
    return-void
.end method

.method private drawCharacterFromFont(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 377
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v2

    iget-boolean v4, v4, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    if-eqz v4, :cond_0

    .line 378
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 379
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 384
    :goto_0
    return-void

    .line 381
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 382
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawFontTextLine(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;F)V
    .locals 14

    .prologue
    .line 296
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    const/4 v10, 0x0

    move v5, v10

    :goto_0
    move v10, v5

    move-object v11, v1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_2

    .line 297
    move-object v10, v0

    move-object v11, v1

    move v12, v5

    invoke-direct {v10, v11, v12}, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 298
    move v10, v5

    move-object v11, v6

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    move v5, v10

    .line 299
    move-object v10, v0

    move-object v11, v6

    move-object v12, v2

    move-object v13, v3

    invoke-direct {v10, v11, v12, v13}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacterFromFont(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;)V

    .line 300
    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    move-object v11, v6

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v10

    move v7, v10

    .line 302
    move-object v10, v2

    iget v10, v10, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    int-to-float v10, v10

    const/high16 v11, 0x41200000    # 10.0f

    div-float/2addr v10, v11

    move v8, v10

    .line 303
    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v10, :cond_1

    .line 304
    move v10, v8

    move-object v11, v0

    iget-object v11, v11, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v11}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    add-float/2addr v10, v11

    move v8, v10

    .line 308
    :cond_0
    :goto_1
    move v10, v7

    move v11, v8

    move v12, v4

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    move v9, v10

    .line 309
    move-object v10, v3

    move v11, v9

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 310
    goto :goto_0

    .line 305
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v10, :cond_0

    .line 306
    move v10, v8

    move-object v11, v0

    iget-object v11, v11, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v11}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    add-float/2addr v10, v11

    move v8, v10

    goto :goto_1

    .line 311
    :cond_2
    return-void
.end method

.method private drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 367
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    if-nez v4, :cond_0

    .line 374
    :goto_0
    return-void

    .line 370
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v4

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v4, v5, :cond_1

    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    .line 371
    goto :goto_0

    .line 373
    :cond_1
    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 374
    goto :goto_0
.end method

.method private drawGlyphTextLine(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Canvas;FF)V
    .locals 20

    .prologue
    .line 213
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    const/4 v14, 0x0

    move v8, v14

    :goto_0
    move v14, v8

    move-object v15, v1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v14, v15, :cond_3

    .line 214
    move-object v14, v1

    move v15, v8

    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move v9, v14

    .line 215
    move v14, v9

    move-object v15, v4

    invoke-virtual {v15}, Lcom/airbnb/lottie/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Lcom/airbnb/lottie/model/Font;->getStyle()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/airbnb/lottie/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    move-result v14

    move v10, v14

    .line 216
    move-object v14, v0

    iget-object v14, v14, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v14}, Lcom/airbnb/lottie/LottieComposition;->getCharacters()Landroidx/collection/SparseArrayCompat;

    move-result-object v14

    move v15, v10

    invoke-virtual {v14, v15}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/airbnb/lottie/model/FontCharacter;

    move-object v11, v14

    .line 217
    move-object v14, v11

    if-nez v14, :cond_0

    .line 213
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 221
    :cond_0
    move-object v14, v0

    move-object v15, v11

    move-object/from16 v16, v3

    move/from16 v17, v7

    move-object/from16 v18, v2

    move-object/from16 v19, v5

    invoke-direct/range {v14 .. v19}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacterAsGlyph(Lcom/airbnb/lottie/model/FontCharacter;Landroid/graphics/Matrix;FLcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;)V

    .line 222
    move-object v14, v11

    invoke-virtual {v14}, Lcom/airbnb/lottie/model/FontCharacter;->getWidth()D

    move-result-wide v14

    double-to-float v14, v14

    move v15, v7

    mul-float/2addr v14, v15

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v15

    mul-float/2addr v14, v15

    move v15, v6

    mul-float/2addr v14, v15

    move v12, v14

    .line 224
    move-object v14, v2

    iget v14, v14, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    int-to-float v14, v14

    const/high16 v15, 0x41200000    # 10.0f

    div-float/2addr v14, v15

    move v13, v14

    .line 225
    move-object v14, v0

    iget-object v14, v14, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v14, :cond_2

    .line 226
    move v14, v13

    move-object v15, v0

    iget-object v15, v15, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v15}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    add-float/2addr v14, v15

    move v13, v14

    .line 230
    :cond_1
    :goto_2
    move v14, v12

    move v15, v13

    move/from16 v16, v6

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    move v12, v14

    .line 231
    move-object v14, v5

    move v15, v12

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 227
    :cond_2
    move-object v14, v0

    iget-object v14, v14, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v14, :cond_1

    .line 228
    move v14, v13

    move-object v15, v0

    iget-object v15, v15, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v15}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    add-float/2addr v14, v15

    move v13, v14

    goto :goto_2

    .line 233
    :cond_3
    return-void
.end method

.method private drawTextGlyphs(Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Canvas;)V
    .locals 27

    .prologue
    .line 170
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 171
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    move/from16 v7, v19

    .line 177
    :goto_0
    move/from16 v19, v7

    const/high16 v20, 0x42c80000    # 100.0f

    div-float v19, v19, v20

    move/from16 v8, v19

    .line 178
    move-object/from16 v19, v4

    invoke-static/range {v19 .. v19}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v19

    move/from16 v9, v19

    .line 180
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v10, v19

    .line 183
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    move/from16 v19, v0

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v20

    mul-float v19, v19, v20

    move/from16 v11, v19

    .line 186
    move-object/from16 v19, v2

    move-object/from16 v20, v10

    invoke-direct/range {v19 .. v20}, Lcom/airbnb/lottie/model/layer/TextLayer;->getTextLines(Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v12, v19

    .line 187
    move-object/from16 v19, v12

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v13, v19

    .line 188
    const/16 v19, 0x0

    move/from16 v14, v19

    :goto_1
    move/from16 v19, v14

    move/from16 v20, v13

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 190
    move-object/from16 v19, v12

    move/from16 v20, v14

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v15, v19

    .line 191
    move-object/from16 v19, v2

    move-object/from16 v20, v15

    move-object/from16 v21, v5

    move/from16 v22, v8

    move/from16 v23, v9

    invoke-direct/range {v19 .. v23}, Lcom/airbnb/lottie/model/layer/TextLayer;->getTextLineWidthForGlyphs(Ljava/lang/String;Lcom/airbnb/lottie/model/Font;FF)F

    move-result v19

    move/from16 v16, v19

    .line 193
    move-object/from16 v19, v6

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Canvas;->save()I

    move-result v19

    .line 196
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/airbnb/lottie/model/DocumentData;->justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

    move-object/from16 v20, v0

    move-object/from16 v21, v6

    move/from16 v22, v16

    invoke-direct/range {v19 .. v22}, Lcom/airbnb/lottie/model/layer/TextLayer;->applyJustification(Lcom/airbnb/lottie/model/DocumentData$Justification;Landroid/graphics/Canvas;F)V

    .line 199
    move/from16 v19, v13

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v11

    mul-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move/from16 v17, v19

    .line 200
    move/from16 v19, v14

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v11

    mul-float v19, v19, v20

    move/from16 v20, v17

    sub-float v19, v19, v20

    move/from16 v18, v19

    .line 201
    move-object/from16 v19, v6

    const/16 v20, 0x0

    move/from16 v21, v18

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Canvas;->translate(FF)V

    .line 204
    move-object/from16 v19, v2

    move-object/from16 v20, v15

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move/from16 v25, v9

    move/from16 v26, v8

    invoke-direct/range {v19 .. v26}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyphTextLine(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Canvas;FF)V

    .line 207
    move-object/from16 v19, v6

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Canvas;->restore()V

    .line 188
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 172
    :cond_0
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 173
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    move/from16 v7, v19

    goto/16 :goto_0

    .line 175
    :cond_1
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Lcom/airbnb/lottie/model/DocumentData;->size:F

    move/from16 v19, v0

    move/from16 v7, v19

    goto/16 :goto_0

    .line 209
    :cond_2
    return-void
.end method

.method private drawTextWithFont(Lcom/airbnb/lottie/model/DocumentData;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V
    .locals 25

    .prologue
    .line 237
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v20, v5

    invoke-static/range {v20 .. v20}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v20

    move/from16 v7, v20

    .line 238
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object/from16 v20, v0

    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Lcom/airbnb/lottie/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/airbnb/lottie/model/Font;->getStyle()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/airbnb/lottie/LottieDrawable;->getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v20

    move-object/from16 v8, v20

    .line 239
    move-object/from16 v20, v8

    if-nez v20, :cond_0

    .line 285
    :goto_0
    return-void

    .line 242
    :cond_0
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v9, v20

    .line 243
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/airbnb/lottie/LottieDrawable;->getTextDelegate()Lcom/airbnb/lottie/TextDelegate;

    move-result-object v20

    move-object/from16 v10, v20

    .line 244
    move-object/from16 v20, v10

    if-eqz v20, :cond_1

    .line 245
    move-object/from16 v20, v10

    move-object/from16 v21, v9

    invoke-virtual/range {v20 .. v21}, Lcom/airbnb/lottie/TextDelegate;->getTextInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v9, v20

    .line 247
    :cond_1
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v21, v8

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v20

    .line 249
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 250
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Float;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v20

    move/from16 v11, v20

    .line 256
    :goto_1
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move/from16 v21, v11

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v22

    mul-float v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 257
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v20

    .line 258
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Paint;->getTextSize()F

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 261
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    move/from16 v20, v0

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v21

    mul-float v20, v20, v21

    move/from16 v12, v20

    .line 264
    move-object/from16 v20, v2

    move-object/from16 v21, v9

    invoke-direct/range {v20 .. v21}, Lcom/airbnb/lottie/model/layer/TextLayer;->getTextLines(Ljava/lang/String;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v13, v20

    .line 265
    move-object/from16 v20, v13

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v14, v20

    .line 266
    const/16 v20, 0x0

    move/from16 v15, v20

    :goto_2
    move/from16 v20, v15

    move/from16 v21, v14

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 268
    move-object/from16 v20, v13

    move/from16 v21, v15

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v16, v20

    .line 269
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v21, v16

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v20

    move/from16 v17, v20

    .line 272
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/airbnb/lottie/model/DocumentData;->justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

    move-object/from16 v21, v0

    move-object/from16 v22, v6

    move/from16 v23, v17

    invoke-direct/range {v20 .. v23}, Lcom/airbnb/lottie/model/layer/TextLayer;->applyJustification(Lcom/airbnb/lottie/model/DocumentData$Justification;Landroid/graphics/Canvas;F)V

    .line 275
    move/from16 v20, v14

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v21, v12

    mul-float v20, v20, v21

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    move/from16 v18, v20

    .line 276
    move/from16 v20, v15

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v21, v12

    mul-float v20, v20, v21

    move/from16 v21, v18

    sub-float v20, v20, v21

    move/from16 v19, v20

    .line 277
    move-object/from16 v20, v6

    const/16 v21, 0x0

    move/from16 v22, v19

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Canvas;->translate(FF)V

    .line 280
    move-object/from16 v20, v2

    move-object/from16 v21, v16

    move-object/from16 v22, v3

    move-object/from16 v23, v6

    move/from16 v24, v7

    invoke-direct/range {v20 .. v24}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawFontTextLine(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;F)V

    .line 283
    move-object/from16 v20, v6

    move-object/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 266
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 251
    :cond_2
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 252
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Float;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v20

    move/from16 v11, v20

    goto/16 :goto_1

    .line 254
    :cond_3
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Lcom/airbnb/lottie/model/DocumentData;->size:F

    move/from16 v20, v0

    move/from16 v11, v20

    goto/16 :goto_1

    .line 285
    :cond_4
    goto/16 :goto_0
.end method

.method private getContentsForCharacter(Lcom/airbnb/lottie/model/FontCharacter;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/ContentGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 397
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    move-object v8, v1

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 398
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    move-object v8, v1

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    move-object v0, v7

    .line 408
    :goto_0
    return-object v0

    .line 400
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/FontCharacter;->getShapes()Ljava/util/List;

    move-result-object v7

    move-object v2, v7

    .line 401
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v3, v7

    .line 402
    new-instance v7, Ljava/util/ArrayList;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move v9, v3

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v7

    .line 403
    const/4 v7, 0x0

    move v5, v7

    :goto_1
    move v7, v5

    move v8, v3

    if-ge v7, v8, :cond_1

    .line 404
    move-object v7, v2

    move v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/lottie/model/content/ShapeGroup;

    move-object v6, v7

    .line 405
    move-object v7, v4

    new-instance v8, Lcom/airbnb/lottie/animation/content/ContentGroup;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v11, v0

    move-object v12, v6

    invoke-direct {v9, v10, v11, v12}, Lcom/airbnb/lottie/animation/content/ContentGroup;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeGroup;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 403
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 407
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    move-object v8, v1

    move-object v9, v4

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 408
    move-object v7, v4

    move-object v0, v7

    goto :goto_0
.end method

.method private getTextLineWidthForGlyphs(Ljava/lang/String;Lcom/airbnb/lottie/model/Font;FF)F
    .locals 16

    .prologue
    .line 315
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v10, 0x0

    move v5, v10

    .line 316
    const/4 v10, 0x0

    move v6, v10

    :goto_0
    move v10, v6

    move-object v11, v1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 317
    move-object v10, v1

    move v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v7, v10

    .line 318
    move v10, v7

    move-object v11, v2

    invoke-virtual {v11}, Lcom/airbnb/lottie/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v11

    move-object v12, v2

    invoke-virtual {v12}, Lcom/airbnb/lottie/model/Font;->getStyle()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/airbnb/lottie/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    move-result v10

    move v8, v10

    .line 319
    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v10}, Lcom/airbnb/lottie/LottieComposition;->getCharacters()Landroidx/collection/SparseArrayCompat;

    move-result-object v10

    move v11, v8

    invoke-virtual {v10, v11}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/airbnb/lottie/model/FontCharacter;

    move-object v9, v10

    .line 320
    move-object v10, v9

    if-nez v10, :cond_0

    .line 316
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 323
    :cond_0
    move v10, v5

    float-to-double v10, v10

    move-object v12, v9

    invoke-virtual {v12}, Lcom/airbnb/lottie/model/FontCharacter;->getWidth()D

    move-result-wide v12

    move v14, v3

    float-to-double v14, v14

    mul-double/2addr v12, v14

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v14

    float-to-double v14, v14

    mul-double/2addr v12, v14

    move v14, v4

    float-to-double v14, v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v10, v10

    move v5, v10

    goto :goto_1

    .line 325
    :cond_1
    move v10, v5

    move v0, v10

    return v0
.end method

.method private getTextLines(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    const-string v5, "\r\n"

    const-string v6, "\r"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n"

    const-string v6, "\r"

    .line 290
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 291
    move-object v4, v2

    const-string v5, "\r"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 292
    move-object v4, v3

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method private isModifier(I)Z
    .locals 4

    .prologue
    .line 442
    move-object v0, p0

    move v1, p1

    move v2, v1

    invoke-static {v2}, Ljava/lang/Character;->getType(I)I

    move-result v2

    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    move v2, v1

    .line 443
    invoke-static {v2}, Ljava/lang/Character;->getType(I)I

    move-result v2

    const/16 v3, 0x1b

    if-eq v2, v3, :cond_0

    move v2, v1

    .line 444
    invoke-static {v2}, Ljava/lang/Character;->getType(I)I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    move v2, v1

    .line 445
    invoke-static {v2}, Ljava/lang/Character;->getType(I)I

    move-result v2

    const/16 v3, 0x1c

    if-eq v2, v3, :cond_0

    move v2, v1

    .line 446
    invoke-static {v2}, Ljava/lang/Character;->getType(I)I

    move-result v2

    const/16 v3, 0x13

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 442
    :goto_0
    move v0, v2

    return v0

    .line 446
    :cond_1
    const/4 v2, 0x0

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
    .line 452
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 453
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->COLOR:Ljava/lang/Integer;

    if-ne v3, v4, :cond_3

    .line 454
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v3, :cond_0

    .line 455
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/model/layer/TextLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 458
    :cond_0
    move-object v3, v2

    if-nez v3, :cond_2

    .line 459
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 514
    :cond_1
    :goto_0
    return-void

    .line 461
    :cond_2
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object v4, v3, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 462
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 463
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_0

    .line 465
    :cond_3
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->STROKE_COLOR:Ljava/lang/Integer;

    if-ne v3, v4, :cond_6

    .line 466
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v3, :cond_4

    .line 467
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/model/layer/TextLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 470
    :cond_4
    move-object v3, v2

    if-nez v3, :cond_5

    .line 471
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 473
    :cond_5
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object v4, v3, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 474
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 475
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_0

    .line 477
    :cond_6
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->STROKE_WIDTH:Ljava/lang/Float;

    if-ne v3, v4, :cond_9

    .line 478
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v3, :cond_7

    .line 479
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/model/layer/TextLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 482
    :cond_7
    move-object v3, v2

    if-nez v3, :cond_8

    .line 483
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 485
    :cond_8
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object v4, v3, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 486
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 487
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    goto/16 :goto_0

    .line 489
    :cond_9
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->TEXT_TRACKING:Ljava/lang/Float;

    if-ne v3, v4, :cond_c

    .line 490
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v3, :cond_a

    .line 491
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/model/layer/TextLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 494
    :cond_a
    move-object v3, v2

    if-nez v3, :cond_b

    .line 495
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto/16 :goto_0

    .line 497
    :cond_b
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object v4, v3, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 498
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 499
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    goto/16 :goto_0

    .line 501
    :cond_c
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->TEXT_SIZE:Ljava/lang/Float;

    if-ne v3, v4, :cond_1

    .line 502
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v3, :cond_d

    .line 503
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/model/layer/TextLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 506
    :cond_d
    move-object v3, v2

    if-nez v3, :cond_e

    .line 507
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto/16 :goto_0

    .line 509
    :cond_e
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object v4, v3, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 510
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 511
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    goto/16 :goto_0
.end method

.method drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 14

    .prologue
    .line 117
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 118
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v9}, Lcom/airbnb/lottie/LottieDrawable;->useTextGlyphs()Z

    move-result v9

    if-nez v9, :cond_0

    .line 119
    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 121
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/airbnb/lottie/model/DocumentData;

    move-object v4, v9

    .line 122
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v9}, Lcom/airbnb/lottie/LottieComposition;->getFonts()Ljava/util/Map;

    move-result-object v9

    move-object v10, v4

    iget-object v10, v10, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/airbnb/lottie/model/Font;

    move-object v5, v9

    .line 123
    move-object v9, v5

    if-nez v9, :cond_1

    .line 125
    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 165
    :goto_0
    return-void

    .line 129
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v9, :cond_2

    .line 130
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    :goto_1
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v9, :cond_4

    .line 138
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    :goto_2
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v9

    if-nez v9, :cond_6

    const/16 v9, 0x64

    :goto_3
    move v6, v9

    .line 145
    move v9, v6

    const/16 v10, 0xff

    mul-int/lit16 v9, v9, 0xff

    const/16 v10, 0x64

    div-int/lit8 v9, v9, 0x64

    move v7, v9

    .line 146
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    move v10, v7

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 147
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    move v10, v7

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 149
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v9, :cond_7

    .line 150
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 158
    :goto_4
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v9}, Lcom/airbnb/lottie/LottieDrawable;->useTextGlyphs()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 159
    move-object v9, v0

    move-object v10, v4

    move-object v11, v2

    move-object v12, v5

    move-object v13, v1

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawTextGlyphs(Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Canvas;)V

    .line 164
    :goto_5
    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 165
    goto/16 :goto_0

    .line 131
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v9, :cond_3

    .line 132
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 134
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    move-object v10, v4

    iget v10, v10, Lcom/airbnb/lottie/model/DocumentData;->color:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 139
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v9, :cond_5

    .line 140
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_2

    .line 142
    :cond_5
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    move-object v10, v4

    iget v10, v10, Lcom/airbnb/lottie/model/DocumentData;->strokeColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_2

    .line 144
    :cond_6
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto/16 :goto_3

    .line 151
    :cond_7
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v9, :cond_8

    .line 152
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/16 :goto_4

    .line 154
    :cond_8
    move-object v9, v2

    invoke-static {v9}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v9

    move v8, v9

    .line 155
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    move-object v10, v4

    iget v10, v10, Lcom/airbnb/lottie/model/DocumentData;->strokeWidth:F

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v11

    mul-float/2addr v10, v11

    move v11, v8

    mul-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/16 :goto_4

    .line 161
    :cond_9
    move-object v9, v0

    move-object v10, v4

    move-object v11, v5

    move-object v12, v2

    move-object v13, v1

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawTextWithFont(Lcom/airbnb/lottie/model/DocumentData;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V

    goto/16 :goto_5
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 9

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-super {v4, v5, v6, v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 112
    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v7}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v8}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 113
    return-void
.end method
