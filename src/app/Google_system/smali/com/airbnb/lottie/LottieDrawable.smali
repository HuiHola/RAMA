.class public Lcom/airbnb/lottie/LottieDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LottieDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;,
        Lcom/airbnb/lottie/LottieDrawable$RepeatMode;,
        Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;
    }
.end annotation


# static fields
.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private alpha:I

.field private final animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

.field private final colorFilterData:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;",
            ">;"
        }
    .end annotation
.end field

.field private composition:Lcom/airbnb/lottie/LottieComposition;

.field private compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private enableMergePaths:Z

.field fontAssetDelegate:Lcom/airbnb/lottie/FontAssetDelegate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fontAssetManager:Lcom/airbnb/lottie/manager/FontAssetManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private imageAssetDelegate:Lcom/airbnb/lottie/ImageAssetDelegate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private imageAssetsFolder:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private isApplyingOpacityToLayersEnabled:Z

.field private isDirty:Z

.field private isExtraScaleEnabled:Z

.field private final lazyCompositionTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;",
            ">;"
        }
    .end annotation
.end field

.field private final matrix:Landroid/graphics/Matrix;

.field private performanceTrackingEnabled:Z

.field private final progressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private safeMode:Z

.field private scale:F

.field private scaleType:Landroid/widget/ImageView$ScaleType;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private systemAnimationsEnabled:Z

.field textDelegate:Lcom/airbnb/lottie/TextDelegate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/LottieDrawable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 127
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 61
    move-object v1, v0

    new-instance v2, Landroid/graphics/Matrix;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v1, Lcom/airbnb/lottie/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    .line 63
    move-object v1, v0

    new-instance v2, Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;-><init>()V

    iput-object v2, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 64
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    .line 65
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/airbnb/lottie/LottieDrawable;->systemAnimationsEnabled:Z

    .line 66
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/airbnb/lottie/LottieDrawable;->safeMode:Z

    .line 68
    move-object v1, v0

    new-instance v2, Ljava/util/HashSet;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v1, Lcom/airbnb/lottie/LottieDrawable;->colorFilterData:Ljava/util/Set;

    .line 69
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 70
    move-object v1, v0

    new-instance v2, Lcom/airbnb/lottie/LottieDrawable$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/LottieDrawable$1;-><init>(Lcom/airbnb/lottie/LottieDrawable;)V

    iput-object v2, v1, Lcom/airbnb/lottie/LottieDrawable;->progressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 95
    move-object v1, v0

    const/16 v2, 0xff

    iput v2, v1, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    .line 98
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/airbnb/lottie/LottieDrawable;->isExtraScaleEnabled:Z

    .line 104
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z

    .line 128
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->progressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/lottie/LottieDrawable;)Lcom/airbnb/lottie/model/layer/CompositionLayer;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/lottie/LottieDrawable;)Lcom/airbnb/lottie/utils/LottieValueAnimator;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move-object v0, v1

    return-object v0
.end method

.method private buildCompositionLayer()V
    .locals 9

    .prologue
    .line 297
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Lcom/airbnb/lottie/model/layer/CompositionLayer;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 298
    invoke-static {v5}, Lcom/airbnb/lottie/parser/LayerParser;->parse(Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v6}, Lcom/airbnb/lottie/LottieComposition;->getLayers()Ljava/util/List;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/airbnb/lottie/model/layer/CompositionLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;)V

    iput-object v2, v1, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 299
    return-void
.end method

.method private drawInternal(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 377
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable;->scaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v2, v3, :cond_0

    .line 378
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->drawWithNewAspectRatio(Landroid/graphics/Canvas;)V

    .line 382
    :goto_0
    return-void

    .line 380
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->drawWithOriginalAspectRatio(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawWithNewAspectRatio(Landroid/graphics/Canvas;)V
    .locals 17

    .prologue
    .line 1141
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v12, v0

    iget-object v12, v12, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-nez v12, :cond_0

    .line 1181
    :goto_0
    return-void

    .line 1145
    :cond_0
    const/4 v12, -0x1

    move v2, v12

    .line 1146
    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/LottieDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    move-object v3, v12

    .line 1148
    move-object v12, v3

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    move-object v13, v0

    iget-object v13, v13, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v13}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    move v4, v12

    .line 1149
    move-object v12, v3

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    move-object v13, v0

    iget-object v13, v13, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v13}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    move v5, v12

    .line 1151
    move-object v12, v0

    iget-boolean v12, v12, Lcom/airbnb/lottie/LottieDrawable;->isExtraScaleEnabled:Z

    if-eqz v12, :cond_2

    .line 1152
    move v12, v4

    move v13, v5

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    move v6, v12

    .line 1153
    const/high16 v12, 0x3f800000    # 1.0f

    move v7, v12

    .line 1154
    move v12, v6

    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    .line 1155
    move v12, v7

    move v13, v6

    div-float/2addr v12, v13

    move v7, v12

    .line 1156
    move v12, v4

    move v13, v7

    div-float/2addr v12, v13

    move v4, v12

    .line 1157
    move v12, v5

    move v13, v7

    div-float/2addr v12, v13

    move v5, v12

    .line 1160
    :cond_1
    move v12, v7

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2

    .line 1161
    move-object v12, v1

    invoke-virtual {v12}, Landroid/graphics/Canvas;->save()I

    move-result v12

    move v2, v12

    .line 1162
    move-object v12, v3

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move v8, v12

    .line 1163
    move-object v12, v3

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move v9, v12

    .line 1164
    move v12, v8

    move v13, v6

    mul-float/2addr v12, v13

    move v10, v12

    .line 1165
    move v12, v9

    move v13, v6

    mul-float/2addr v12, v13

    move v11, v12

    .line 1167
    move-object v12, v1

    move v13, v8

    move v14, v10

    sub-float/2addr v13, v14

    move v14, v9

    move v15, v11

    sub-float/2addr v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1170
    move-object v12, v1

    move v13, v7

    move v14, v7

    move v15, v10

    move/from16 v16, v11

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1174
    :cond_2
    move-object v12, v0

    iget-object v12, v12, Lcom/airbnb/lottie/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v12}, Landroid/graphics/Matrix;->reset()V

    .line 1175
    move-object v12, v0

    iget-object v12, v12, Lcom/airbnb/lottie/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    move v13, v4

    move v14, v5

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->preScale(FF)Z

    move-result v12

    .line 1176
    move-object v12, v0

    iget-object v12, v12, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    move-object v13, v1

    move-object v14, v0

    iget-object v14, v14, Lcom/airbnb/lottie/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    move-object v15, v0

    iget v15, v15, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    invoke-virtual {v12, v13, v14, v15}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 1178
    move v12, v2

    if-lez v12, :cond_3

    .line 1179
    move-object v12, v1

    move v13, v2

    invoke-virtual {v12, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1181
    :cond_3
    goto/16 :goto_0
.end method

.method private drawWithOriginalAspectRatio(Landroid/graphics/Canvas;)V
    .locals 15

    .prologue
    .line 1184
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-nez v10, :cond_0

    .line 1226
    :goto_0
    return-void

    .line 1188
    :cond_0
    move-object v10, v0

    iget v10, v10, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    move v2, v10

    .line 1189
    const/high16 v10, 0x3f800000    # 1.0f

    move v3, v10

    .line 1190
    move-object v10, v0

    move-object v11, v1

    invoke-direct {v10, v11}, Lcom/airbnb/lottie/LottieDrawable;->getMaxScale(Landroid/graphics/Canvas;)F

    move-result v10

    move v4, v10

    .line 1191
    move v10, v2

    move v11, v4

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1

    .line 1192
    move v10, v4

    move v2, v10

    .line 1193
    move-object v10, v0

    iget v10, v10, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    move v11, v2

    div-float/2addr v10, v11

    move v3, v10

    .line 1196
    :cond_1
    const/4 v10, -0x1

    move v5, v10

    .line 1197
    move v10, v3

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    .line 1207
    move-object v10, v1

    invoke-virtual {v10}, Landroid/graphics/Canvas;->save()I

    move-result v10

    move v5, v10

    .line 1208
    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v10}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    move v6, v10

    .line 1209
    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v10}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    move v7, v10

    .line 1210
    move v10, v6

    move v11, v2

    mul-float/2addr v10, v11

    move v8, v10

    .line 1211
    move v10, v7

    move v11, v2

    mul-float/2addr v10, v11

    move v9, v10

    .line 1213
    move-object v10, v1

    move-object v11, v0

    .line 1214
    invoke-virtual {v11}, Lcom/airbnb/lottie/LottieDrawable;->getScale()F

    move-result v11

    move v12, v6

    mul-float/2addr v11, v12

    move v12, v8

    sub-float/2addr v11, v12

    move-object v12, v0

    .line 1215
    invoke-virtual {v12}, Lcom/airbnb/lottie/LottieDrawable;->getScale()F

    move-result v12

    move v13, v7

    mul-float/2addr v12, v13

    move v13, v9

    sub-float/2addr v12, v13

    .line 1213
    invoke-virtual {v10, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1216
    move-object v10, v1

    move v11, v3

    move v12, v3

    move v13, v8

    move v14, v9

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1219
    :cond_2
    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 1220
    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    move v11, v2

    move v12, v2

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->preScale(FF)Z

    move-result v10

    .line 1221
    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Lcom/airbnb/lottie/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    move-object v13, v0

    iget v13, v13, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    invoke-virtual {v10, v11, v12, v13}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 1223
    move v10, v5

    if-lez v10, :cond_3

    .line 1224
    move-object v10, v1

    move v11, v5

    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1226
    :cond_3
    goto/16 :goto_0
.end method

.method private getContext()Landroid/content/Context;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1084
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    move-object v1, v2

    .line 1085
    move-object v2, v1

    if-nez v2, :cond_0

    .line 1086
    const/4 v2, 0x0

    move-object v0, v2

    .line 1092
    :goto_0
    return-object v0

    .line 1089
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1090
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 1092
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method private getFontAssetManager()Lcom/airbnb/lottie/manager/FontAssetManager;
    .locals 7

    .prologue
    .line 1070
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1072
    const/4 v1, 0x0

    move-object v0, v1

    .line 1079
    :goto_0
    return-object v0

    .line 1075
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->fontAssetManager:Lcom/airbnb/lottie/manager/FontAssetManager;

    if-nez v1, :cond_1

    .line 1076
    move-object v1, v0

    new-instance v2, Lcom/airbnb/lottie/manager/FontAssetManager;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/LottieDrawable;->fontAssetDelegate:Lcom/airbnb/lottie/FontAssetDelegate;

    invoke-direct {v3, v4, v5}, Lcom/airbnb/lottie/manager/FontAssetManager;-><init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/airbnb/lottie/FontAssetDelegate;)V

    iput-object v2, v1, Lcom/airbnb/lottie/LottieDrawable;->fontAssetManager:Lcom/airbnb/lottie/manager/FontAssetManager;

    .line 1079
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->fontAssetManager:Lcom/airbnb/lottie/manager/FontAssetManager;

    move-object v0, v1

    goto :goto_0
.end method

.method private getImageAssetManager()Lcom/airbnb/lottie/manager/ImageAssetManager;
    .locals 9

    .prologue
    .line 1043
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1045
    const/4 v1, 0x0

    move-object v0, v1

    .line 1057
    :goto_0
    return-object v0

    .line 1048
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/LottieDrawable;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/manager/ImageAssetManager;->hasSameContext(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1049
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    .line 1052
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    if-nez v1, :cond_2

    .line 1053
    move-object v1, v0

    new-instance v2, Lcom/airbnb/lottie/manager/ImageAssetManager;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/LottieDrawable;->imageAssetsFolder:Ljava/lang/String;

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/LottieDrawable;->imageAssetDelegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 1054
    invoke-virtual {v7}, Lcom/airbnb/lottie/LottieComposition;->getImages()Ljava/util/Map;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/airbnb/lottie/manager/ImageAssetManager;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/airbnb/lottie/ImageAssetDelegate;Ljava/util/Map;)V

    iput-object v2, v1, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    .line 1057
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    move-object v0, v1

    goto :goto_0
.end method

.method private getMaxScale(Landroid/graphics/Canvas;)F
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1135
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move v2, v4

    .line 1136
    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move v3, v4

    .line 1137
    move v4, v2

    move v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    move v0, v4

    return v0
.end method

.method private updateBounds()V
    .locals 8

    .prologue
    .line 905
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v2, :cond_0

    .line 911
    :goto_0
    return-void

    .line 908
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getScale()F

    move-result v2

    move v1, v2

    .line 909
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    move v6, v1

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 910
    invoke-virtual {v6}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    move v7, v1

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 909
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/airbnb/lottie/LottieDrawable;->setBounds(IIII)V

    .line 911
    goto :goto_0
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 4

    .prologue
    .line 713
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 714
    return-void
.end method

.method public addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 4

    .prologue
    .line 700
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 701
    return-void
.end method

.method public addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "TT;",
            "Lcom/airbnb/lottie/value/LottieValueCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 965
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-nez v7, :cond_0

    .line 966
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v8, Lcom/airbnb/lottie/LottieDrawable$16;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move-object v13, v3

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/airbnb/lottie/LottieDrawable$16;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 996
    :goto_0
    return-void

    .line 975
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/KeyPath;->getResolvedElement()Lcom/airbnb/lottie/model/KeyPathElement;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 976
    move-object v7, v1

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/KeyPath;->getResolvedElement()Lcom/airbnb/lottie/model/KeyPathElement;

    move-result-object v7

    move-object v8, v2

    move-object v9, v3

    invoke-interface {v7, v8, v9}, Lcom/airbnb/lottie/model/KeyPathElement;->addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 977
    const/4 v7, 0x1

    move v4, v7

    .line 987
    :goto_1
    move v7, v4

    if-eqz v7, :cond_1

    .line 988
    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 989
    move-object v7, v2

    sget-object v8, Lcom/airbnb/lottie/LottieProperty;->TIME_REMAP:Ljava/lang/Float;

    if-ne v7, v8, :cond_1

    .line 993
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Lcom/airbnb/lottie/LottieDrawable;->getProgress()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    .line 996
    :cond_1
    goto :goto_0

    .line 979
    :cond_2
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieDrawable;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;

    move-result-object v7

    move-object v5, v7

    .line 981
    const/4 v7, 0x0

    move v6, v7

    :goto_2
    move v7, v6

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 983
    move-object v7, v5

    move v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/lottie/model/KeyPath;

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/KeyPath;->getResolvedElement()Lcom/airbnb/lottie/model/KeyPathElement;

    move-result-object v7

    move-object v8, v2

    move-object v9, v3

    invoke-interface {v7, v8, v9}, Lcom/airbnb/lottie/model/KeyPathElement;->addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 981
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 985
    :cond_3
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x1

    :goto_3
    move v4, v7

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    goto :goto_3
.end method

.method public addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "TT;",
            "Lcom/airbnb/lottie/value/SimpleLottieValueCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1005
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    new-instance v7, Lcom/airbnb/lottie/LottieDrawable$17;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lcom/airbnb/lottie/LottieDrawable$17;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    invoke-virtual {v4, v5, v6, v7}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 1011
    return-void
.end method

.method public cancelAnimation()V
    .locals 2

    .prologue
    .line 914
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 915
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->cancel()V

    .line 916
    return-void
.end method

.method public clearComposition()V
    .locals 3

    .prologue
    .line 302
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->cancel()V

    .line 305
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 306
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 307
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    .line 308
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->clearComposition()V

    .line 309
    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 310
    return-void
.end method

.method public disableExtraScaleModeInFitXY()V
    .locals 3

    .prologue
    .line 289
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/airbnb/lottie/LottieDrawable;->isExtraScaleEnabled:Z

    .line 290
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 359
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z

    .line 361
    const-string v3, "Drawable#draw"

    invoke-static {v3}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 363
    move-object v3, v0

    iget-boolean v3, v3, Lcom/airbnb/lottie/LottieDrawable;->safeMode:Z

    if-eqz v3, :cond_0

    .line 365
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-direct {v3, v4}, Lcom/airbnb/lottie/LottieDrawable;->drawInternal(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_0
    const-string v3, "Drawable#draw"

    invoke-static {v3}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v3

    .line 374
    return-void

    .line 366
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 367
    const-string v3, "Lottie crashed in draw!"

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/airbnb/lottie/utils/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 368
    goto :goto_0

    .line 370
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/LottieDrawable;->drawInternal(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public enableMergePathsForKitKatAndAbove(Z)V
    .locals 4

    .prologue
    .line 157
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/airbnb/lottie/LottieDrawable;->enableMergePaths:Z

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 169
    :goto_0
    return-void

    .line 161
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_1

    .line 162
    const-string v2, "Merge paths are not supported pre-Kit Kat."

    invoke-static {v2}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 163
    goto :goto_0

    .line 165
    :cond_1
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/airbnb/lottie/LottieDrawable;->enableMergePaths:Z

    .line 166
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v2, :cond_2

    .line 167
    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/LottieDrawable;->buildCompositionLayer()V

    .line 169
    :cond_2
    goto :goto_0
.end method

.method public enableMergePathsForKitKatAndAbove()Z
    .locals 2

    .prologue
    .line 146
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/LottieDrawable;->enableMergePaths:Z

    move v0, v1

    return v0
.end method

.method public endAnimation()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 430
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 431
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->endAnimation()V

    .line 432
    return-void
.end method

.method public getAlpha()I
    .locals 2

    .prologue
    .line 344
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    move v0, v1

    return v0
.end method

.method public getComposition()Lcom/airbnb/lottie/LottieComposition;
    .locals 2

    .prologue
    .line 901
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    move-object v0, v1

    return-object v0
.end method

.method public getFrame()I
    .locals 2

    .prologue
    .line 747
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getFrame()F

    move-result v1

    float-to-int v1, v1

    move v0, v1

    return v0
.end method

.method public getImageAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1035
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Lcom/airbnb/lottie/LottieDrawable;->getImageAssetManager()Lcom/airbnb/lottie/manager/ImageAssetManager;

    move-result-object v3

    move-object v2, v3

    .line 1036
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1037
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/manager/ImageAssetManager;->bitmapForId(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    .line 1039
    :goto_0
    return-object v0

    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 200
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->imageAssetsFolder:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 3

    .prologue
    .line 935
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getScale()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 3

    .prologue
    .line 930
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getScale()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0
.end method

.method public getMaxFrame()F
    .locals 2

    .prologue
    .line 518
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public getMinFrame()F
    .locals 2

    .prologue
    .line 479
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 354
    move-object v0, p0

    const/4 v1, -0x3

    move v0, v1

    return v0
.end method

.method public getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 254
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v1, :cond_0

    .line 255
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;

    move-result-object v1

    move-object v0, v1

    .line 257
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getProgress()F
    .locals 2
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .prologue
    .line 925
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public getRepeatCount()I
    .locals 2

    .prologue
    .line 813
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getRepeatCount()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getRepeatMode()I
    .locals 2

    .prologue
    .line 791
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getRepeatMode()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getScale()F
    .locals 2

    .prologue
    .line 897
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    move v0, v1

    return v0
.end method

.method public getSpeed()F
    .locals 2

    .prologue
    .line 696
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getSpeed()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public getTextDelegate()Lcom/airbnb/lottie/TextDelegate;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 889
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->textDelegate:Lcom/airbnb/lottie/TextDelegate;

    move-object v0, v1

    return-object v0
.end method

.method public getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1062
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Lcom/airbnb/lottie/LottieDrawable;->getFontAssetManager()Lcom/airbnb/lottie/manager/FontAssetManager;

    move-result-object v4

    move-object v3, v4

    .line 1063
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 1064
    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/airbnb/lottie/manager/FontAssetManager;->getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    move-object v0, v4

    .line 1066
    :goto_0
    return-object v0

    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public hasMasks()Z
    .locals 2

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMasks()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasMatte()Z
    .locals 2

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMatte()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1101
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v3

    move-object v2, v3

    .line 1102
    move-object v3, v2

    if-nez v3, :cond_0

    .line 1106
    :goto_0
    return-void

    .line 1105
    :cond_0
    move-object v3, v2

    move-object v4, v0

    invoke-interface {v3, v4}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1106
    goto :goto_0
.end method

.method public invalidateSelf()V
    .locals 4

    .prologue
    .line 326
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z

    if-eqz v2, :cond_0

    .line 334
    :goto_0
    return-void

    .line 329
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z

    .line 330
    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    move-object v1, v2

    .line 331
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 332
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    :cond_1
    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 2

    .prologue
    .line 824
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    if-nez v1, :cond_0

    .line 825
    const/4 v1, 0x0

    move v0, v1

    .line 827
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isRunning()Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public isApplyingOpacityToLayersEnabled()Z
    .locals 2

    .prologue
    .line 293
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/LottieDrawable;->isApplyingOpacityToLayersEnabled:Z

    move v0, v1

    return v0
.end method

.method public isLooping()Z
    .locals 3

    .prologue
    .line 818
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getRepeatCount()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMergePathsEnabledForKitKatAndAbove()Z
    .locals 2

    .prologue
    .line 172
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/LottieDrawable;->enableMergePaths:Z

    move v0, v1

    return v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 400
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->isAnimating()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public loop(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 770
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move v3, v1

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    :goto_0
    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setRepeatCount(I)V

    .line 771
    return-void

    .line 770
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public pauseAnimation()V
    .locals 2

    .prologue
    .line 919
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 920
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->pauseAnimation()V

    .line 921
    return-void
.end method

.method public playAnimation()V
    .locals 6
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 409
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-nez v1, :cond_0

    .line 410
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v2, Lcom/airbnb/lottie/LottieDrawable$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/LottieDrawable$2;-><init>(Lcom/airbnb/lottie/LottieDrawable;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 426
    :goto_0
    return-void

    .line 419
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/LottieDrawable;->systemAnimationsEnabled:Z

    if-nez v1, :cond_1

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 420
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->playAnimation()V

    .line 422
    :cond_2
    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/LottieDrawable;->systemAnimationsEnabled:Z

    if-nez v1, :cond_3

    .line 423
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getSpeed()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getMinFrame()F

    move-result v2

    :goto_1
    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieDrawable;->setFrame(I)V

    .line 424
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->endAnimation()V

    .line 426
    :cond_3
    goto :goto_0

    .line 423
    :cond_4
    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getMaxFrame()F

    move-result v2

    goto :goto_1
.end method

.method public removeAllAnimatorListeners()V
    .locals 2

    .prologue
    .line 721
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeAllListeners()V

    .line 722
    return-void
.end method

.method public removeAllUpdateListeners()V
    .locals 3

    .prologue
    .line 708
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeAllUpdateListeners()V

    .line 709
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->progressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 710
    return-void
.end method

.method public removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 4

    .prologue
    .line 717
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 718
    return-void
.end method

.method public removeAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 4

    .prologue
    .line 704
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 705
    return-void
.end method

.method public resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ">;"
        }
    .end annotation

    .prologue
    .line 947
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-nez v3, :cond_0

    .line 948
    const-string v3, "Cannot resolve KeyPath. Composition is not set yet."

    invoke-static {v3}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 949
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    .line 953
    :goto_0
    return-object v0

    .line 951
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 952
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v2

    new-instance v7, Lcom/airbnb/lottie/model/KeyPath;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-direct {v8, v9}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V

    .line 953
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public resumeAnimation()V
    .locals 6
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 440
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-nez v1, :cond_0

    .line 441
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v2, Lcom/airbnb/lottie/LottieDrawable$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/LottieDrawable$3;-><init>(Lcom/airbnb/lottie/LottieDrawable;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 457
    :goto_0
    return-void

    .line 450
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/LottieDrawable;->systemAnimationsEnabled:Z

    if-nez v1, :cond_1

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 451
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->resumeAnimation()V

    .line 453
    :cond_2
    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/LottieDrawable;->systemAnimationsEnabled:Z

    if-nez v1, :cond_3

    .line 454
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getSpeed()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getMinFrame()F

    move-result v2

    :goto_1
    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieDrawable;->setFrame(I)V

    .line 455
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->endAnimation()V

    .line 457
    :cond_3
    goto :goto_0

    .line 454
    :cond_4
    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getMaxFrame()F

    move-result v2

    goto :goto_1
.end method

.method public reverseAnimationSpeed()V
    .locals 2

    .prologue
    .line 682
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->reverseAnimationSpeed()V

    .line 683
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 11
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1110
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v6

    move-object v5, v6

    .line 1111
    move-object v6, v5

    if-nez v6, :cond_0

    .line 1115
    :goto_0
    return-void

    .line 1114
    :cond_0
    move-object v6, v5

    move-object v7, v0

    move-object v8, v2

    move-wide v9, v3

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 1115
    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .prologue
    .line 338
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    .line 339
    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 340
    return-void
.end method

.method public setApplyingOpacityToLayersEnabled(Z)V
    .locals 4

    .prologue
    .line 274
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/airbnb/lottie/LottieDrawable;->isApplyingOpacityToLayersEnabled:Z

    .line 275
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 3
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 349
    move-object v0, p0

    move-object v1, p1

    const-string v2, "Use addColorFilter instead."

    invoke-static {v2}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method public setComposition(Lcom/airbnb/lottie/LottieComposition;)Z
    .locals 8

    .prologue
    .line 209
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 210
    const/4 v4, 0x0

    move v0, v4

    .line 242
    :goto_0
    return v0

    .line 213
    :cond_0
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z

    .line 214
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieDrawable;->clearComposition()V

    .line 215
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 216
    move-object v4, v0

    invoke-direct {v4}, Lcom/airbnb/lottie/LottieDrawable;->buildCompositionLayer()V

    .line 217
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    .line 218
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v5}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedFraction()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    .line 219
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/LottieDrawable;->setScale(F)V

    .line 220
    move-object v4, v0

    invoke-direct {v4}, Lcom/airbnb/lottie/LottieDrawable;->updateBounds()V

    .line 224
    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    .line 225
    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 226
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;

    move-object v3, v4

    .line 227
    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;->run(Lcom/airbnb/lottie/LottieComposition;)V

    .line 228
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 229
    goto :goto_1

    .line 230
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 232
    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Lcom/airbnb/lottie/LottieDrawable;->performanceTrackingEnabled:Z

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/LottieComposition;->setPerformanceTrackingEnabled(Z)V

    .line 236
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v4

    move-object v3, v4

    .line 237
    move-object v4, v3

    instance-of v4, v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    .line 238
    move-object v4, v3

    check-cast v4, Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    move-object v4, v3

    check-cast v4, Landroid/widget/ImageView;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    :cond_2
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method public setFontAssetDelegate(Lcom/airbnb/lottie/FontAssetDelegate;)V
    .locals 4

    .prologue
    .line 877
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/LottieDrawable;->fontAssetDelegate:Lcom/airbnb/lottie/FontAssetDelegate;

    .line 878
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->fontAssetManager:Lcom/airbnb/lottie/manager/FontAssetManager;

    if-eqz v2, :cond_0

    .line 879
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->fontAssetManager:Lcom/airbnb/lottie/manager/FontAssetManager;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/manager/FontAssetManager;->setDelegate(Lcom/airbnb/lottie/FontAssetDelegate;)V

    .line 881
    :cond_0
    return-void
.end method

.method public setFrame(I)V
    .locals 8

    .prologue
    .line 730
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v2, :cond_0

    .line 731
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v3, Lcom/airbnb/lottie/LottieDrawable$14;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/LottieDrawable$14;-><init>(Lcom/airbnb/lottie/LottieDrawable;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 741
    :goto_0
    return-void

    .line 740
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move v3, v1

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(F)V

    .line 741
    goto :goto_0
.end method

.method public setImageAssetDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V
    .locals 4

    .prologue
    .line 866
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/LottieDrawable;->imageAssetDelegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    .line 867
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    if-eqz v2, :cond_0

    .line 868
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/manager/ImageAssetManager;->setDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V

    .line 870
    :cond_0
    return-void
.end method

.method public setImagesAssetsFolder(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 195
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/LottieDrawable;->imageAssetsFolder:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setMaxFrame(I)V
    .locals 8

    .prologue
    .line 502
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v2, :cond_0

    .line 503
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v3, Lcom/airbnb/lottie/LottieDrawable$6;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/LottieDrawable$6;-><init>(Lcom/airbnb/lottie/LottieDrawable;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 512
    :goto_0
    return-void

    .line 511
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move v3, v1

    int-to-float v3, v3

    const v4, 0x3f7d70a4    # 0.99f

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMaxFrame(F)V

    .line 512
    goto :goto_0
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 563
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v3, :cond_0

    .line 564
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v4, Lcom/airbnb/lottie/LottieDrawable$9;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/airbnb/lottie/LottieDrawable$9;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 577
    :goto_0
    return-void

    .line 572
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieComposition;->getMarker(Ljava/lang/String;)Lcom/airbnb/lottie/model/Marker;

    move-result-object v3

    move-object v2, v3

    .line 573
    move-object v3, v2

    if-nez v3, :cond_1

    .line 574
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot find marker with name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 576
    :cond_1
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Lcom/airbnb/lottie/model/Marker;->startFrame:F

    move-object v5, v2

    iget v5, v5, Lcom/airbnb/lottie/model/Marker;->durationFrames:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieDrawable;->setMaxFrame(I)V

    .line 577
    goto :goto_0
.end method

.method public setMaxProgress(F)V
    .locals 8
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 525
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v2, :cond_0

    .line 526
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v3, Lcom/airbnb/lottie/LottieDrawable$7;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/LottieDrawable$7;-><init>(Lcom/airbnb/lottie/LottieDrawable;F)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 535
    :goto_0
    return-void

    .line 534
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v4

    move v5, v1

    invoke-static {v3, v4, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setMaxFrame(I)V

    .line 535
    goto :goto_0
.end method

.method public setMinAndMaxFrame(II)V
    .locals 10

    .prologue
    .line 640
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v3, :cond_0

    .line 641
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v4, Lcom/airbnb/lottie/LottieDrawable$12;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/airbnb/lottie/LottieDrawable$12;-><init>(Lcom/airbnb/lottie/LottieDrawable;II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 651
    :goto_0
    return-void

    .line 650
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move v4, v1

    int-to-float v4, v4

    move v5, v2

    int-to-float v5, v5

    const v6, 0x3f7d70a4    # 0.99f

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    .line 651
    goto :goto_0
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 585
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v4, :cond_0

    .line 586
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v5, Lcom/airbnb/lottie/LottieDrawable$10;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Lcom/airbnb/lottie/LottieDrawable$10;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 600
    :goto_0
    return-void

    .line 594
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/LottieComposition;->getMarker(Ljava/lang/String;)Lcom/airbnb/lottie/model/Marker;

    move-result-object v4

    move-object v2, v4

    .line 595
    move-object v4, v2

    if-nez v4, :cond_1

    .line 596
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot find marker with name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 598
    :cond_1
    move-object v4, v2

    iget v4, v4, Lcom/airbnb/lottie/model/Marker;->startFrame:F

    float-to-int v4, v4

    move v3, v4

    .line 599
    move-object v4, v0

    move v5, v3

    move v6, v3

    move-object v7, v2

    iget v7, v7, Lcom/airbnb/lottie/model/Marker;->durationFrames:F

    float-to-int v7, v7

    add-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(II)V

    .line 600
    goto :goto_0
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 16

    .prologue
    .line 611
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v8, :cond_0

    .line 612
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v9, Lcom/airbnb/lottie/LottieDrawable$11;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move v14, v3

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/airbnb/lottie/LottieDrawable$11;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 633
    :goto_0
    return-void

    .line 620
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    move-object v9, v1

    invoke-virtual {v8, v9}, Lcom/airbnb/lottie/LottieComposition;->getMarker(Ljava/lang/String;)Lcom/airbnb/lottie/model/Marker;

    move-result-object v8

    move-object v4, v8

    .line 621
    move-object v8, v4

    if-nez v8, :cond_1

    .line 622
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot find marker with name "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 624
    :cond_1
    move-object v8, v4

    iget v8, v8, Lcom/airbnb/lottie/model/Marker;->startFrame:F

    float-to-int v8, v8

    move v5, v8

    .line 626
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    move-object v9, v2

    invoke-virtual {v8, v9}, Lcom/airbnb/lottie/LottieComposition;->getMarker(Ljava/lang/String;)Lcom/airbnb/lottie/model/Marker;

    move-result-object v8

    move-object v6, v8

    .line 627
    move-object v8, v2

    if-nez v8, :cond_2

    .line 628
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot find marker with name "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 630
    :cond_2
    move-object v8, v6

    iget v8, v8, Lcom/airbnb/lottie/model/Marker;->startFrame:F

    move v9, v3

    if-eqz v9, :cond_3

    const/high16 v9, 0x3f800000    # 1.0f

    :goto_1
    add-float/2addr v8, v9

    float-to-int v8, v8

    move v7, v8

    .line 632
    move-object v8, v0

    move v9, v5

    move v10, v7

    invoke-virtual {v8, v9, v10}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(II)V

    .line 633
    goto :goto_0

    .line 630
    :cond_3
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public setMinAndMaxProgress(FF)V
    .locals 10
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 660
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v3, :cond_0

    .line 661
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v4, Lcom/airbnb/lottie/LottieDrawable$13;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/airbnb/lottie/LottieDrawable$13;-><init>(Lcom/airbnb/lottie/LottieDrawable;FF)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 672
    :goto_0
    return-void

    .line 670
    :cond_0
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v5

    move v6, v1

    invoke-static {v4, v5, v6}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v4

    float-to-int v4, v4

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 671
    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v6}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v6

    move v7, v2

    invoke-static {v5, v6, v7}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v5

    float-to-int v5, v5

    .line 670
    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(II)V

    .line 672
    goto :goto_0
.end method

.method public setMinFrame(I)V
    .locals 8

    .prologue
    .line 463
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v2, :cond_0

    .line 464
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v3, Lcom/airbnb/lottie/LottieDrawable$4;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/LottieDrawable$4;-><init>(Lcom/airbnb/lottie/LottieDrawable;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 473
    :goto_0
    return-void

    .line 472
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinFrame(I)V

    .line 473
    goto :goto_0
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 542
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v3, :cond_0

    .line 543
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v4, Lcom/airbnb/lottie/LottieDrawable$8;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/airbnb/lottie/LottieDrawable$8;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 556
    :goto_0
    return-void

    .line 551
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieComposition;->getMarker(Ljava/lang/String;)Lcom/airbnb/lottie/model/Marker;

    move-result-object v3

    move-object v2, v3

    .line 552
    move-object v3, v2

    if-nez v3, :cond_1

    .line 553
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot find marker with name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 555
    :cond_1
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Lcom/airbnb/lottie/model/Marker;->startFrame:F

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieDrawable;->setMinFrame(I)V

    .line 556
    goto :goto_0
.end method

.method public setMinProgress(F)V
    .locals 8

    .prologue
    .line 486
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v2, :cond_0

    .line 487
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v3, Lcom/airbnb/lottie/LottieDrawable$5;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/LottieDrawable$5;-><init>(Lcom/airbnb/lottie/LottieDrawable;F)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 496
    :goto_0
    return-void

    .line 495
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v4

    move v5, v1

    invoke-static {v3, v4, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setMinFrame(I)V

    .line 496
    goto :goto_0
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 4

    .prologue
    .line 246
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/airbnb/lottie/LottieDrawable;->performanceTrackingEnabled:Z

    .line 247
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v2, :cond_0

    .line 248
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieComposition;->setPerformanceTrackingEnabled(Z)V

    .line 250
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 8
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 751
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v2, :cond_0

    .line 752
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v3, Lcom/airbnb/lottie/LottieDrawable$15;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/LottieDrawable$15;-><init>(Lcom/airbnb/lottie/LottieDrawable;F)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 763
    :goto_0
    return-void

    .line 760
    :cond_0
    const-string v2, "Drawable#setProgress"

    invoke-static {v2}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 761
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v4

    move v5, v1

    invoke-static {v3, v4, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(F)V

    .line 762
    const-string v2, "Drawable#setProgress"

    invoke-static {v2}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v2

    .line 763
    goto :goto_0
.end method

.method public setRepeatCount(I)V
    .locals 4

    .prologue
    .line 803
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setRepeatCount(I)V

    .line 804
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 4

    .prologue
    .line 781
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setRepeatMode(I)V

    .line 782
    return-void
.end method

.method public setSafeMode(Z)V
    .locals 4

    .prologue
    .line 321
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/airbnb/lottie/LottieDrawable;->safeMode:Z

    .line 322
    return-void
.end method

.method public setScale(F)V
    .locals 4

    .prologue
    .line 849
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    .line 850
    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/LottieDrawable;->updateBounds()V

    .line 851
    return-void
.end method

.method setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 4

    .prologue
    .line 1127
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/LottieDrawable;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 1128
    return-void
.end method

.method public setSpeed(F)V
    .locals 4

    .prologue
    .line 689
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setSpeed(F)V

    .line 690
    return-void
.end method

.method setSystemAnimationsAreEnabled(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    .line 831
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v2, Lcom/airbnb/lottie/LottieDrawable;->systemAnimationsEnabled:Z

    .line 832
    return-void
.end method

.method public setTextDelegate(Lcom/airbnb/lottie/TextDelegate;)V
    .locals 4

    .prologue
    .line 884
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/LottieDrawable;->textDelegate:Lcom/airbnb/lottie/TextDelegate;

    .line 885
    return-void
.end method

.method public start()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 389
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation()V

    .line 390
    return-void
.end method

.method public stop()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 395
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->endAnimation()V

    .line 396
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 7
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1119
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v4

    move-object v3, v4

    .line 1120
    move-object v4, v3

    if-nez v4, :cond_0

    .line 1124
    :goto_0
    return-void

    .line 1123
    :cond_0
    move-object v4, v3

    move-object v5, v0

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 1124
    goto :goto_0
.end method

.method public updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1022
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    invoke-direct {v5}, Lcom/airbnb/lottie/LottieDrawable;->getImageAssetManager()Lcom/airbnb/lottie/manager/ImageAssetManager;

    move-result-object v5

    move-object v3, v5

    .line 1023
    move-object v5, v3

    if-nez v5, :cond_0

    .line 1024
    const-string v5, "Cannot update bitmap. Most likely the drawable is not added to a View which prevents Lottie from getting a Context."

    invoke-static {v5}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 1026
    const/4 v5, 0x0

    move-object v0, v5

    .line 1030
    :goto_0
    return-object v0

    .line 1028
    :cond_0
    move-object v5, v3

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/airbnb/lottie/manager/ImageAssetManager;->updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v4, v5

    .line 1029
    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 1030
    move-object v5, v4

    move-object v0, v5

    goto :goto_0
.end method

.method public useTextGlyphs()Z
    .locals 2

    .prologue
    .line 893
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->textDelegate:Lcom/airbnb/lottie/TextDelegate;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getCharacters()Landroidx/collection/SparseArrayCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
