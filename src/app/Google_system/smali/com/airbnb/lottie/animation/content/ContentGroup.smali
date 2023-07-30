.class public Lcom/airbnb/lottie/animation/content/ContentGroup;
.super Ljava/lang/Object;
.source "ContentGroup.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/DrawingContent;
.implements Lcom/airbnb/lottie/animation/content/PathContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/model/KeyPathElement;


# instance fields
.field private final contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;"
        }
    .end annotation
.end field

.field private final hidden:Z

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final matrix:Landroid/graphics/Matrix;

.field private final name:Ljava/lang/String;

.field private offScreenPaint:Landroid/graphics/Paint;

.field private offScreenRectF:Landroid/graphics/RectF;

.field private final path:Landroid/graphics/Path;

.field private pathContents:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/PathContent;",
            ">;"
        }
    .end annotation
.end field

.field private final rect:Landroid/graphics/RectF;

.field private transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeGroup;)V
    .locals 12

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/content/ShapeGroup;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    .line 68
    invoke-virtual {v8}, Lcom/airbnb/lottie/model/content/ShapeGroup;->isHidden()Z

    move-result v8

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    invoke-virtual {v11}, Lcom/airbnb/lottie/model/content/ShapeGroup;->getItems()Ljava/util/List;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/airbnb/lottie/animation/content/ContentGroup;->contentsFromModels(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    move-object v10, v3

    .line 69
    invoke-virtual {v10}, Lcom/airbnb/lottie/model/content/ShapeGroup;->getItems()Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lcom/airbnb/lottie/animation/content/ContentGroup;->findTransform(Ljava/util/List;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v10

    .line 67
    invoke-direct/range {v4 .. v10}, Lcom/airbnb/lottie/animation/content/ContentGroup;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Ljava/lang/String;ZLjava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;)V

    .line 70
    return-void
.end method

.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Ljava/lang/String;ZLjava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;)V
    .locals 14
    .param p6    # Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieDrawable;",
            "Lcom/airbnb/lottie/model/layer/BaseLayer;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableTransform;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v10, v0

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 30
    move-object v10, v0

    new-instance v11, Lcom/airbnb/lottie/animation/LPaint;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Lcom/airbnb/lottie/animation/LPaint;-><init>()V

    iput-object v11, v10, Lcom/airbnb/lottie/animation/content/ContentGroup;->offScreenPaint:Landroid/graphics/Paint;

    .line 31
    move-object v10, v0

    new-instance v11, Landroid/graphics/RectF;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    iput-object v11, v10, Lcom/airbnb/lottie/animation/content/ContentGroup;->offScreenRectF:Landroid/graphics/RectF;

    .line 55
    move-object v10, v0

    new-instance v11, Landroid/graphics/Matrix;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    iput-object v11, v10, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    .line 56
    move-object v10, v0

    new-instance v11, Landroid/graphics/Path;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    iput-object v11, v10, Lcom/airbnb/lottie/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    .line 57
    move-object v10, v0

    new-instance v11, Landroid/graphics/RectF;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    iput-object v11, v10, Lcom/airbnb/lottie/animation/content/ContentGroup;->rect:Landroid/graphics/RectF;

    .line 74
    move-object v10, v0

    move-object v11, v3

    iput-object v11, v10, Lcom/airbnb/lottie/animation/content/ContentGroup;->name:Ljava/lang/String;

    .line 75
    move-object v10, v0

    move-object v11, v1

    iput-object v11, v10, Lcom/airbnb/lottie/animation/content/ContentGroup;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 76
    move-object v10, v0

    move v11, v4

    iput-boolean v11, v10, Lcom/airbnb/lottie/animation/content/ContentGroup;->hidden:Z

    .line 77
    move-object v10, v0

    move-object v11, v5

    iput-object v11, v10, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    .line 79
    move-object v10, v6

    if-eqz v10, :cond_0

    .line 80
    move-object v10, v0

    move-object v11, v6

    invoke-virtual {v11}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    move-result-object v11

    iput-object v11, v10, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 81
    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    move-object v11, v2

    invoke-virtual {v10, v11}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->addAnimationsToLayer(Lcom/airbnb/lottie/model/layer/BaseLayer;)V

    .line 82
    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    move-object v11, v0

    invoke-virtual {v10, v11}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 85
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v10

    .line 86
    move-object v10, v5

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v8, v10

    :goto_0
    move v10, v8

    if-ltz v10, :cond_2

    .line 87
    move-object v10, v5

    move v11, v8

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/airbnb/lottie/animation/content/Content;

    move-object v9, v10

    .line 88
    move-object v10, v9

    instance-of v10, v10, Lcom/airbnb/lottie/animation/content/GreedyContent;

    if-eqz v10, :cond_1

    .line 89
    move-object v10, v7

    move-object v11, v9

    check-cast v11, Lcom/airbnb/lottie/animation/content/GreedyContent;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 86
    :cond_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 93
    :cond_2
    move-object v10, v7

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v8, v10

    :goto_1
    move v10, v8

    if-ltz v10, :cond_3

    .line 94
    move-object v10, v7

    move v11, v8

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/airbnb/lottie/animation/content/GreedyContent;

    move-object v11, v5

    move-object v12, v5

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/airbnb/lottie/animation/content/GreedyContent;->absorbContent(Ljava/util/ListIterator;)V

    .line 93
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 96
    :cond_3
    return-void
.end method

.method private static contentsFromModels(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieDrawable;",
            "Lcom/airbnb/lottie/model/layer/BaseLayer;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/content/ContentModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v6

    .line 36
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 37
    move-object v6, v2

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/model/content/ContentModel;

    move-object v7, v0

    move-object v8, v1

    invoke-interface {v6, v7, v8}, Lcom/airbnb/lottie/model/content/ContentModel;->toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;

    move-result-object v6

    move-object v5, v6

    .line 38
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 39
    move-object v6, v3

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 36
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 42
    :cond_1
    move-object v6, v3

    move-object v0, v6

    return-object v0
.end method

.method static findTransform(Ljava/util/List;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/content/ContentModel;",
            ">;)",
            "Lcom/airbnb/lottie/model/animatable/AnimatableTransform;"
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    const/4 v3, 0x0

    move v1, v3

    :goto_0
    move v3, v1

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 47
    move-object v3, v0

    move v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/model/content/ContentModel;

    move-object v2, v3

    .line 48
    move-object v3, v2

    instance-of v3, v3, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    if-eqz v3, :cond_0

    .line 49
    move-object v3, v2

    check-cast v3, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-object v0, v3

    .line 52
    :goto_1
    return-object v0

    .line 46
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method private hasTwoOrMoreDrawableContent()Z
    .locals 5

    .prologue
    .line 195
    move-object v0, p0

    const/4 v3, 0x0

    move v1, v3

    .line 196
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 197
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/airbnb/lottie/animation/content/DrawingContent;

    if-eqz v3, :cond_0

    .line 198
    add-int/lit8 v1, v1, 0x1

    .line 199
    move v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 200
    const/4 v3, 0x1

    move v0, v3

    .line 204
    :goto_1
    return v0

    .line 196
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 204
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 6
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
    .line 250
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    if-eqz v3, :cond_0

    .line 251
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->applyValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)Z

    move-result v3

    .line 253
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 14

    .prologue
    .line 159
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v9, v0

    iget-boolean v9, v9, Lcom/airbnb/lottie/animation/content/ContentGroup;->hidden:Z

    if-eqz v9, :cond_0

    .line 192
    :goto_0
    return-void

    .line 162
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    move-object v10, v2

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 164
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    if-eqz v9, :cond_4

    .line 165
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v9

    .line 166
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v9

    if-nez v9, :cond_3

    const/16 v9, 0x64

    :goto_1
    move v5, v9

    .line 167
    move v9, v5

    int-to-float v9, v9

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v9, v10

    move v10, v3

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x437f0000    # 255.0f

    div-float/2addr v9, v10

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    move v4, v9

    .line 173
    :goto_2
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/animation/content/ContentGroup;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v9}, Lcom/airbnb/lottie/LottieDrawable;->isApplyingOpacityToLayersEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v0

    invoke-direct {v9}, Lcom/airbnb/lottie/animation/content/ContentGroup;->hasTwoOrMoreDrawableContent()Z

    move-result v9

    if-eqz v9, :cond_5

    move v9, v4

    const/16 v10, 0xff

    if-eq v9, v10, :cond_5

    const/4 v9, 0x1

    :goto_3
    move v5, v9

    .line 174
    move v9, v5

    if-eqz v9, :cond_1

    .line 175
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/animation/content/ContentGroup;->offScreenRectF:Landroid/graphics/RectF;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 176
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/animation/content/ContentGroup;->offScreenRectF:Landroid/graphics/RectF;

    move-object v11, v0

    iget-object v11, v11, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 177
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/animation/content/ContentGroup;->offScreenPaint:Landroid/graphics/Paint;

    move v10, v4

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 178
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/animation/content/ContentGroup;->offScreenRectF:Landroid/graphics/RectF;

    move-object v11, v0

    iget-object v11, v11, Lcom/airbnb/lottie/animation/content/ContentGroup;->offScreenPaint:Landroid/graphics/Paint;

    invoke-static {v9, v10, v11}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 181
    :cond_1
    move v9, v5

    if-eqz v9, :cond_6

    const/16 v9, 0xff

    :goto_4
    move v6, v9

    .line 182
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v7, v9

    :goto_5
    move v9, v7

    if-ltz v9, :cond_7

    .line 183
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    move v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    .line 184
    move-object v9, v8

    instance-of v9, v9, Lcom/airbnb/lottie/animation/content/DrawingContent;

    if-eqz v9, :cond_2

    .line 185
    move-object v9, v8

    check-cast v9, Lcom/airbnb/lottie/animation/content/DrawingContent;

    move-object v10, v1

    move-object v11, v0

    iget-object v11, v11, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    move v12, v6

    invoke-interface {v9, v10, v11, v12}, Lcom/airbnb/lottie/animation/content/DrawingContent;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 182
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    .line 166
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto/16 :goto_1

    .line 169
    :cond_4
    move v9, v3

    move v4, v9

    goto/16 :goto_2

    .line 173
    :cond_5
    const/4 v9, 0x0

    goto :goto_3

    .line 181
    :cond_6
    move v9, v4

    goto :goto_4

    .line 189
    :cond_7
    move v9, v5

    if-eqz v9, :cond_8

    .line 190
    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 192
    :cond_8
    goto/16 :goto_0
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 11

    .prologue
    .line 208
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 209
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    if-eqz v6, :cond_0

    .line 210
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v6

    .line 212
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/content/ContentGroup;->rect:Landroid/graphics/RectF;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 213
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    :goto_0
    move v6, v4

    if-ltz v6, :cond_2

    .line 214
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/animation/content/Content;

    move-object v5, v6

    .line 215
    move-object v6, v5

    instance-of v6, v6, Lcom/airbnb/lottie/animation/content/DrawingContent;

    if-eqz v6, :cond_1

    .line 216
    move-object v6, v5

    check-cast v6, Lcom/airbnb/lottie/animation/content/DrawingContent;

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/ContentGroup;->rect:Landroid/graphics/RectF;

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    move v9, v3

    invoke-interface {v6, v7, v8, v9}, Lcom/airbnb/lottie/animation/content/DrawingContent;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 217
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/ContentGroup;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 213
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 220
    :cond_2
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/ContentGroup;->name:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 6

    .prologue
    .line 141
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 142
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    if-eqz v3, :cond_0

    .line 143
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 145
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 146
    move-object v3, v0

    iget-boolean v3, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->hidden:Z

    if-eqz v3, :cond_1

    .line 147
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    move-object v0, v3

    .line 155
    :goto_0
    return-object v0

    .line 149
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v1, v3

    :goto_1
    move v3, v1

    if-ltz v3, :cond_3

    .line 150
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    move v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/animation/content/Content;

    move-object v2, v3

    .line 151
    move-object v3, v2

    instance-of v3, v3, Lcom/airbnb/lottie/animation/content/PathContent;

    if-eqz v3, :cond_2

    .line 152
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    move-object v4, v2

    check-cast v4, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v4}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 149
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 155
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    move-object v0, v3

    goto :goto_0
.end method

.method getPathList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/PathContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->pathContents:Ljava/util/List;

    if-nez v3, :cond_1

    .line 120
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->pathContents:Ljava/util/List;

    .line 121
    const/4 v3, 0x0

    move v1, v3

    :goto_0
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 122
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    move v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/animation/content/Content;

    move-object v2, v3

    .line 123
    move-object v3, v2

    instance-of v3, v3, Lcom/airbnb/lottie/animation/content/PathContent;

    if-eqz v3, :cond_0

    .line 124
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->pathContents:Ljava/util/List;

    move-object v4, v2

    check-cast v4, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 121
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->pathContents:Ljava/util/List;

    move-object v0, v3

    return-object v0
.end method

.method getTransformationMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    if-eqz v1, :cond_0

    .line 133
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    move-object v0, v1

    .line 136
    :goto_0
    return-object v0

    .line 135
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 136
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    move-object v0, v1

    goto :goto_0
.end method

.method public onValueChanged()V
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/ContentGroup;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 100
    return-void
.end method

.method public resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 14
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
    .line 224
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v9, v1

    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getName()Ljava/lang/String;

    move-result-object v10

    move v11, v2

    invoke-virtual {v9, v10, v11}, Lcom/airbnb/lottie/model/KeyPath;->matches(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 246
    :goto_0
    return-void

    .line 228
    :cond_0
    const-string v9, "__container"

    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 229
    move-object v9, v4

    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/airbnb/lottie/model/KeyPath;->addKey(Ljava/lang/String;)Lcom/airbnb/lottie/model/KeyPath;

    move-result-object v9

    move-object v4, v9

    .line 231
    move-object v9, v1

    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getName()Ljava/lang/String;

    move-result-object v10

    move v11, v2

    invoke-virtual {v9, v10, v11}, Lcom/airbnb/lottie/model/KeyPath;->fullyResolvesTo(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 232
    move-object v9, v3

    move-object v10, v4

    move-object v11, v0

    invoke-virtual {v10, v11}, Lcom/airbnb/lottie/model/KeyPath;->resolve(Lcom/airbnb/lottie/model/KeyPathElement;)Lcom/airbnb/lottie/model/KeyPath;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 236
    :cond_1
    move-object v9, v1

    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getName()Ljava/lang/String;

    move-result-object v10

    move v11, v2

    invoke-virtual {v9, v10, v11}, Lcom/airbnb/lottie/model/KeyPath;->propagateToChildren(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 237
    move v9, v2

    move-object v10, v1

    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getName()Ljava/lang/String;

    move-result-object v11

    move v12, v2

    invoke-virtual {v10, v11, v12}, Lcom/airbnb/lottie/model/KeyPath;->incrementDepthBy(Ljava/lang/String;I)I

    move-result v10

    add-int/2addr v9, v10

    move v5, v9

    .line 238
    const/4 v9, 0x0

    move v6, v9

    :goto_1
    move v9, v6

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 239
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    move v10, v6

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/airbnb/lottie/animation/content/Content;

    move-object v7, v9

    .line 240
    move-object v9, v7

    instance-of v9, v9, Lcom/airbnb/lottie/model/KeyPathElement;

    if-eqz v9, :cond_2

    .line 241
    move-object v9, v7

    check-cast v9, Lcom/airbnb/lottie/model/KeyPathElement;

    move-object v8, v9

    .line 242
    move-object v9, v8

    move-object v10, v1

    move v11, v5

    move-object v12, v3

    move-object v13, v4

    invoke-interface {v9, v10, v11, v12, v13}, Lcom/airbnb/lottie/model/KeyPathElement;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V

    .line 238
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 246
    :cond_3
    goto :goto_0
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 12
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
    .line 108
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v6, Ljava/util/ArrayList;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v6

    .line 109
    move-object v6, v3

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v6

    .line 111
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    :goto_0
    move v6, v4

    if-ltz v6, :cond_0

    .line 112
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/animation/content/Content;

    move-object v5, v6

    .line 113
    move-object v6, v5

    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    const/4 v9, 0x0

    move v10, v4

    invoke-interface {v8, v9, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/airbnb/lottie/animation/content/Content;->setContents(Ljava/util/List;Ljava/util/List;)V

    .line 114
    move-object v6, v3

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 111
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method
