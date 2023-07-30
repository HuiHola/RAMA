.class public Lcom/airbnb/lottie/animation/content/StrokeContent;
.super Lcom/airbnb/lottie/animation/content/BaseStrokeContent;
.source "StrokeContent.java"


# instance fields
.field private final colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
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

.field private final hidden:Z

.field private final layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeStroke;)V
    .locals 14

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/content/ShapeStroke;->getCapType()Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->toPaintCap()Landroid/graphics/Paint$Cap;

    move-result-object v7

    move-object v8, v3

    .line 29
    invoke-virtual {v8}, Lcom/airbnb/lottie/model/content/ShapeStroke;->getJoinType()Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->toPaintJoin()Landroid/graphics/Paint$Join;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v9}, Lcom/airbnb/lottie/model/content/ShapeStroke;->getMiterLimit()F

    move-result v9

    move-object v10, v3

    invoke-virtual {v10}, Lcom/airbnb/lottie/model/content/ShapeStroke;->getOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v10

    move-object v11, v3

    .line 30
    invoke-virtual {v11}, Lcom/airbnb/lottie/model/content/ShapeStroke;->getWidth()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v11

    move-object v12, v3

    invoke-virtual {v12}, Lcom/airbnb/lottie/model/content/ShapeStroke;->getLineDashPattern()Ljava/util/List;

    move-result-object v12

    move-object v13, v3

    invoke-virtual {v13}, Lcom/airbnb/lottie/model/content/ShapeStroke;->getDashOffset()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v13

    .line 28
    invoke-direct/range {v4 .. v13}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    .line 31
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/StrokeContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 32
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/ShapeStroke;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/StrokeContent;->name:Ljava/lang/String;

    .line 33
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/ShapeStroke;->isHidden()Z

    move-result v5

    iput-boolean v5, v4, Lcom/airbnb/lottie/animation/content/StrokeContent;->hidden:Z

    .line 34
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/ShapeStroke;->getColor()Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/StrokeContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 35
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/StrokeContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 36
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/StrokeContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 37
    return-void
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
    .line 57
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 58
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->STROKE_COLOR:Ljava/lang/Integer;

    if-ne v3, v4, :cond_1

    .line 59
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/StrokeContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    if-ne v3, v4, :cond_0

    .line 61
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/StrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v3, :cond_2

    .line 62
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/StrokeContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/StrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 65
    :cond_2
    move-object v3, v2

    if-nez v3, :cond_3

    .line 66
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/airbnb/lottie/animation/content/StrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 68
    :cond_3
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object v4, v3, Lcom/airbnb/lottie/animation/content/StrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 70
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/StrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 71
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/StrokeContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/StrokeContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 8

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    iget-boolean v4, v4, Lcom/airbnb/lottie/animation/content/StrokeContent;->hidden:Z

    if-eqz v4, :cond_0

    .line 48
    :goto_0
    return-void

    .line 43
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/StrokeContent;->paint:Landroid/graphics/Paint;

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/StrokeContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    check-cast v5, Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;->getIntValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/StrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v4, :cond_1

    .line 45
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/StrokeContent;->paint:Landroid/graphics/Paint;

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/StrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/ColorFilter;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v4

    .line 47
    :cond_1
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-super {v4, v5, v6, v7}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 48
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/StrokeContent;->name:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method
