.class public Lcom/airbnb/lottie/model/layer/CompositionLayer;
.super Lcom/airbnb/lottie/model/layer/BaseLayer;
.source "CompositionLayer.java"


# instance fields
.field private hasMasks:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private hasMatte:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private layerPaint:Landroid/graphics/Paint;

.field private final layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/layer/BaseLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final newClipRect:Landroid/graphics/RectF;

.field private final rect:Landroid/graphics/RectF;

.field private timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
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
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieDrawable;",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;",
            "Lcom/airbnb/lottie/LottieComposition;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v13, v0

    move-object v14, v1

    move-object v15, v2

    invoke-direct {v13, v14, v15}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 28
    move-object v13, v0

    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v13, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 29
    move-object v13, v0

    new-instance v14, Landroid/graphics/RectF;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Landroid/graphics/RectF;-><init>()V

    iput-object v14, v13, Lcom/airbnb/lottie/model/layer/CompositionLayer;->rect:Landroid/graphics/RectF;

    .line 30
    move-object v13, v0

    new-instance v14, Landroid/graphics/RectF;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Landroid/graphics/RectF;-><init>()V

    iput-object v14, v13, Lcom/airbnb/lottie/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    .line 31
    move-object v13, v0

    new-instance v14, Landroid/graphics/Paint;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    iput-object v14, v13, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layerPaint:Landroid/graphics/Paint;

    .line 40
    move-object v13, v2

    invoke-virtual {v13}, Lcom/airbnb/lottie/model/layer/Layer;->getTimeRemapping()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v13

    move-object v5, v13

    .line 41
    move-object v13, v5

    if-eqz v13, :cond_0

    .line 42
    move-object v13, v0

    move-object v14, v5

    invoke-virtual {v14}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v14

    iput-object v14, v13, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 43
    move-object v13, v0

    move-object v14, v0

    iget-object v14, v14, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v13, v14}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 45
    move-object v13, v0

    iget-object v13, v13, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v14, v0

    invoke-virtual {v13, v14}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 50
    :goto_0
    new-instance v13, Landroidx/collection/LongSparseArray;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v4

    .line 51
    invoke-virtual {v15}, Lcom/airbnb/lottie/LottieComposition;->getLayers()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    invoke-direct {v14, v15}, Landroidx/collection/LongSparseArray;-><init>(I)V

    move-object v6, v13

    .line 53
    const/4 v13, 0x0

    move-object v7, v13

    .line 54
    move-object v13, v3

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v8, v13

    :goto_1
    move v13, v8

    if-ltz v13, :cond_3

    .line 55
    move-object v13, v3

    move v14, v8

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/airbnb/lottie/model/layer/Layer;

    move-object v9, v13

    .line 56
    move-object v13, v9

    move-object v14, v1

    move-object v15, v4

    invoke-static {v13, v14, v15}, Lcom/airbnb/lottie/model/layer/BaseLayer;->forModel(Lcom/airbnb/lottie/model/layer/Layer;Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/BaseLayer;

    move-result-object v13

    move-object v10, v13

    .line 57
    move-object v13, v10

    if-nez v13, :cond_1

    .line 54
    :goto_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 47
    :cond_0
    move-object v13, v0

    const/4 v14, 0x0

    iput-object v14, v13, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 60
    :cond_1
    move-object v13, v6

    move-object v14, v10

    invoke-virtual {v14}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getLayerModel()Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/airbnb/lottie/model/layer/Layer;->getId()J

    move-result-wide v14

    move-object/from16 v16, v10

    invoke-virtual/range {v13 .. v16}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 61
    move-object v13, v7

    if-eqz v13, :cond_2

    .line 62
    move-object v13, v7

    move-object v14, v10

    invoke-virtual {v13, v14}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setMatteLayer(Lcom/airbnb/lottie/model/layer/BaseLayer;)V

    .line 63
    const/4 v13, 0x0

    move-object v7, v13

    goto :goto_2

    .line 65
    :cond_2
    move-object v13, v0

    iget-object v13, v13, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    const/4 v14, 0x0

    move-object v15, v10

    invoke-interface {v13, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 66
    sget-object v13, Lcom/airbnb/lottie/model/layer/CompositionLayer$1;->$SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType:[I

    move-object v14, v9

    invoke-virtual {v14}, Lcom/airbnb/lottie/model/layer/Layer;->getMatteType()Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v14

    invoke-virtual {v14}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    goto :goto_2

    .line 69
    :pswitch_0
    move-object v13, v10

    move-object v7, v13

    goto :goto_2

    .line 75
    :cond_3
    const/4 v13, 0x0

    move v8, v13

    :goto_3
    move v13, v8

    move-object v14, v6

    invoke-virtual {v14}, Landroidx/collection/LongSparseArray;->size()I

    move-result v14

    if-ge v13, v14, :cond_6

    .line 76
    move-object v13, v6

    move v14, v8

    invoke-virtual {v13, v14}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v13

    move-wide v9, v13

    .line 77
    move-object v13, v6

    move-wide v14, v9

    invoke-virtual {v13, v14, v15}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/airbnb/lottie/model/layer/BaseLayer;

    move-object v11, v13

    .line 81
    move-object v13, v11

    if-nez v13, :cond_5

    .line 75
    :cond_4
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 84
    :cond_5
    move-object v13, v6

    move-object v14, v11

    invoke-virtual {v14}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getLayerModel()Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/airbnb/lottie/model/layer/Layer;->getParentId()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/airbnb/lottie/model/layer/BaseLayer;

    move-object v12, v13

    .line 85
    move-object v13, v12

    if-eqz v13, :cond_4

    .line 86
    move-object v13, v11

    move-object v14, v12

    invoke-virtual {v13, v14}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setParentLayer(Lcom/airbnb/lottie/model/layer/BaseLayer;)V

    goto :goto_4

    .line 89
    :cond_6
    return-void

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
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
    .line 199
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 201
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->TIME_REMAP:Ljava/lang/Float;

    if-ne v3, v4, :cond_0

    .line 202
    move-object v3, v2

    if-nez v3, :cond_1

    .line 203
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v3, :cond_0

    .line 204
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object v4, v3, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 208
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 209
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_0
.end method

.method drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 14

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const-string v9, "CompositionLayer#draw"

    invoke-static {v9}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 93
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v12, v0

    iget-object v12, v12, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v12}, Lcom/airbnb/lottie/model/layer/Layer;->getPreCompWidth()I

    move-result v12

    int-to-float v12, v12

    move-object v13, v0

    iget-object v13, v13, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v13}, Lcom/airbnb/lottie/model/layer/Layer;->getPreCompHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 94
    move-object v9, v2

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v9

    .line 97
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/CompositionLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v9}, Lcom/airbnb/lottie/LottieDrawable;->isApplyingOpacityToLayersEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_2

    move v9, v3

    const/16 v10, 0xff

    if-eq v9, v10, :cond_2

    const/4 v9, 0x1

    :goto_0
    move v4, v9

    .line 98
    move v9, v4

    if-eqz v9, :cond_3

    .line 99
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layerPaint:Landroid/graphics/Paint;

    move v10, v3

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 100
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    move-object v11, v0

    iget-object v11, v11, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layerPaint:Landroid/graphics/Paint;

    invoke-static {v9, v10, v11}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 105
    :goto_1
    move v9, v4

    if-eqz v9, :cond_4

    const/16 v9, 0xff

    :goto_2
    move v5, v9

    .line 106
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v6, v9

    :goto_3
    move v9, v6

    if-ltz v9, :cond_5

    .line 107
    const/4 v9, 0x1

    move v7, v9

    .line 108
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 109
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v9

    move v7, v9

    .line 111
    :cond_0
    move v9, v7

    if-eqz v9, :cond_1

    .line 112
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    move v10, v6

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/airbnb/lottie/model/layer/BaseLayer;

    move-object v8, v9

    .line 113
    move-object v9, v8

    move-object v10, v1

    move-object v11, v2

    move v12, v5

    invoke-virtual {v9, v10, v11, v12}, Lcom/airbnb/lottie/model/layer/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 106
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 97
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 102
    :cond_3
    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    move-result v9

    goto :goto_1

    .line 105
    :cond_4
    move v9, v3

    goto :goto_2

    .line 116
    :cond_5
    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 117
    const-string v9, "CompositionLayer#draw"

    invoke-static {v9}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v9

    .line 118
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 10

    .prologue
    .line 121
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-super {v5, v6, v7, v8}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 122
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    :goto_0
    move v5, v4

    if-ltz v5, :cond_0

    .line 123
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/CompositionLayer;->rect:Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 124
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    move v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/model/layer/BaseLayer;

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/CompositionLayer;->rect:Landroid/graphics/RectF;

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/CompositionLayer;->boundsMatrix:Landroid/graphics/Matrix;

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 125
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/CompositionLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 122
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 127
    :cond_0
    return-void
.end method

.method public hasMasks()Z
    .locals 5

    .prologue
    .line 152
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    if-nez v3, :cond_3

    .line 153
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v1, v3

    :goto_0
    move v3, v1

    if-ltz v3, :cond_2

    .line 154
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    move v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/model/layer/BaseLayer;

    move-object v2, v3

    .line 155
    move-object v3, v2

    instance-of v3, v3, Lcom/airbnb/lottie/model/layer/ShapeLayer;

    if-eqz v3, :cond_0

    .line 156
    move-object v3, v2

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    move-object v3, v0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    .line 158
    const/4 v3, 0x1

    move v0, v3

    .line 167
    :goto_1
    return v0

    .line 160
    :cond_0
    move-object v3, v2

    instance-of v3, v3, Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/airbnb/lottie/model/layer/CompositionLayer;

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMasks()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    move-object v3, v0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    .line 162
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1

    .line 153
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 165
    :cond_2
    move-object v3, v0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    .line 167
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v0, v3

    goto :goto_1
.end method

.method public hasMatte()Z
    .locals 4

    .prologue
    .line 171
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    .line 172
    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMatteOnThisLayer()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    move-object v2, v0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    .line 174
    const/4 v2, 0x1

    move v0, v2

    .line 185
    :goto_0
    return v0

    .line 177
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    :goto_1
    move v2, v1

    if-ltz v2, :cond_2

    .line 178
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    move v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/layer/BaseLayer;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    move-object v2, v0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    .line 180
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 177
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 183
    :cond_2
    move-object v2, v0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    .line 185
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method protected resolveChildKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
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
    .line 191
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v5

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 192
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    move v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/model/layer/BaseLayer;

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/airbnb/lottie/model/layer/BaseLayer;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V

    .line 191
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 194
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 7
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 130
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    move v6, v1

    invoke-super {v5, v6}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setProgress(F)V

    .line 131
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v5, :cond_0

    .line 135
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/CompositionLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieDrawable;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieComposition;->getDurationFrames()F

    move-result v5

    const v6, 0x3c23d70a    # 0.01f

    add-float/2addr v5, v6

    move v2, v5

    .line 136
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/layer/Layer;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v5

    move v3, v5

    .line 137
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v6}, Lcom/airbnb/lottie/model/layer/Layer;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/lottie/LottieComposition;->getFrameRate()F

    move-result v6

    mul-float/2addr v5, v6

    move v6, v3

    sub-float/2addr v5, v6

    move v4, v5

    .line 138
    move v5, v4

    move v6, v2

    div-float/2addr v5, v6

    move v1, v5

    .line 140
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v5, :cond_1

    .line 141
    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v6}, Lcom/airbnb/lottie/model/layer/Layer;->getStartProgress()F

    move-result v6

    sub-float/2addr v5, v6

    move v1, v5

    .line 143
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/layer/Layer;->getTimeStretch()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    .line 144
    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v6}, Lcom/airbnb/lottie/model/layer/Layer;->getTimeStretch()F

    move-result v6

    div-float/2addr v5, v6

    move v1, v5

    .line 146
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v2, v5

    :goto_0
    move v5, v2

    if-ltz v5, :cond_3

    .line 147
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/model/layer/BaseLayer;

    move v6, v1

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setProgress(F)V

    .line 146
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 149
    :cond_3
    return-void
.end method
