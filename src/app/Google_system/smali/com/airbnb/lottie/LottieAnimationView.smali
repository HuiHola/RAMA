.class public Lcom/airbnb/lottie/LottieAnimationView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "LottieAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieAnimationView$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_FAILURE_LISTENER:Lcom/airbnb/lottie/LottieListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/LottieListener",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private animationName:Ljava/lang/String;

.field private animationResId:I
    .annotation build Landroidx/annotation/RawRes;
    .end annotation
.end field

.field private autoPlay:Z

.field private buildDrawingCacheDepth:I

.field private cacheComposition:Z

.field private composition:Lcom/airbnb/lottie/LottieComposition;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private compositionTask:Lcom/airbnb/lottie/LottieTask;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/LottieTask",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation
.end field

.field private failureListener:Lcom/airbnb/lottie/LottieListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/LottieListener",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private fallbackResource:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private isInitialized:Z

.field private final loadedListener:Lcom/airbnb/lottie/LottieListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/LottieListener",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation
.end field

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private lottieOnCompositionLoadedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;",
            ">;"
        }
    .end annotation
.end field

.field private playAnimationWhenShown:Z

.field private renderMode:Lcom/airbnb/lottie/RenderMode;

.field private wasAnimatingWhenDetached:Z

.field private wasAnimatingWhenNotShown:Z

.field private final wrappedFailureListener:Lcom/airbnb/lottie/LottieListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/LottieListener",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    const-class v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView;->TAG:Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/airbnb/lottie/LottieAnimationView$1;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView;->DEFAULT_FAILURE_LISTENER:Lcom/airbnb/lottie/LottieListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 124
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 78
    move-object v2, v0

    new-instance v3, Lcom/airbnb/lottie/LottieAnimationView$2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/LottieAnimationView$2;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lcom/airbnb/lottie/LottieListener;

    .line 84
    move-object v2, v0

    new-instance v3, Lcom/airbnb/lottie/LottieAnimationView$3;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/LottieAnimationView$3;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->wrappedFailureListener:Lcom/airbnb/lottie/LottieListener;

    .line 95
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->fallbackResource:I

    .line 97
    move-object v2, v0

    new-instance v3, Lcom/airbnb/lottie/LottieDrawable;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/airbnb/lottie/LottieDrawable;-><init>()V

    iput-object v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 102
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->playAnimationWhenShown:Z

    .line 103
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    .line 104
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 106
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    .line 107
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    .line 108
    move-object v2, v0

    sget-object v3, Lcom/airbnb/lottie/RenderMode;->AUTOMATIC:Lcom/airbnb/lottie/RenderMode;

    iput-object v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->renderMode:Lcom/airbnb/lottie/RenderMode;

    .line 109
    move-object v2, v0

    new-instance v3, Ljava/util/HashSet;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    .line 117
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->buildDrawingCacheDepth:I

    .line 125
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->init(Landroid/util/AttributeSet;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/LottieAnimationView$2;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/LottieAnimationView$2;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lcom/airbnb/lottie/LottieListener;

    .line 84
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/LottieAnimationView$3;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/LottieAnimationView$3;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->wrappedFailureListener:Lcom/airbnb/lottie/LottieListener;

    .line 95
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->fallbackResource:I

    .line 97
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/LottieDrawable;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lcom/airbnb/lottie/LottieDrawable;-><init>()V

    iput-object v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 102
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->playAnimationWhenShown:Z

    .line 103
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    .line 104
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 106
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    .line 107
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    .line 108
    move-object v3, v0

    sget-object v4, Lcom/airbnb/lottie/RenderMode;->AUTOMATIC:Lcom/airbnb/lottie/RenderMode;

    iput-object v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->renderMode:Lcom/airbnb/lottie/RenderMode;

    .line 109
    move-object v3, v0

    new-instance v4, Ljava/util/HashSet;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    .line 117
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->buildDrawingCacheDepth:I

    .line 130
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->init(Landroid/util/AttributeSet;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    move-object v4, v0

    new-instance v5, Lcom/airbnb/lottie/LottieAnimationView$2;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/airbnb/lottie/LottieAnimationView$2;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v5, v4, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lcom/airbnb/lottie/LottieListener;

    .line 84
    move-object v4, v0

    new-instance v5, Lcom/airbnb/lottie/LottieAnimationView$3;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/airbnb/lottie/LottieAnimationView$3;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v5, v4, Lcom/airbnb/lottie/LottieAnimationView;->wrappedFailureListener:Lcom/airbnb/lottie/LottieListener;

    .line 95
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/airbnb/lottie/LottieAnimationView;->fallbackResource:I

    .line 97
    move-object v4, v0

    new-instance v5, Lcom/airbnb/lottie/LottieDrawable;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lcom/airbnb/lottie/LottieDrawable;-><init>()V

    iput-object v5, v4, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 102
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/airbnb/lottie/LottieAnimationView;->playAnimationWhenShown:Z

    .line 103
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    .line 104
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 106
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    .line 107
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    .line 108
    move-object v4, v0

    sget-object v5, Lcom/airbnb/lottie/RenderMode;->AUTOMATIC:Lcom/airbnb/lottie/RenderMode;

    iput-object v5, v4, Lcom/airbnb/lottie/LottieAnimationView;->renderMode:Lcom/airbnb/lottie/RenderMode;

    .line 109
    move-object v4, v0

    new-instance v5, Ljava/util/HashSet;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v5, v4, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    .line 117
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/airbnb/lottie/LottieAnimationView;->buildDrawingCacheDepth:I

    .line 135
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/LottieAnimationView;->init(Landroid/util/AttributeSet;)V

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/lottie/LottieAnimationView;)I
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->fallbackResource:I

    move v0, v1

    return v0
.end method

.method static synthetic access$100(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/lottie/LottieListener;
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->failureListener:Lcom/airbnb/lottie/LottieListener;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$200()Lcom/airbnb/lottie/LottieListener;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView;->DEFAULT_FAILURE_LISTENER:Lcom/airbnb/lottie/LottieListener;

    return-object v0
.end method

.method private cancelLoaderTask()V
    .locals 3

    .prologue
    .line 485
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->compositionTask:Lcom/airbnb/lottie/LottieTask;

    if-eqz v1, :cond_0

    .line 486
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->compositionTask:Lcom/airbnb/lottie/LottieTask;

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lcom/airbnb/lottie/LottieListener;

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieTask;->removeListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v1

    .line 487
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->compositionTask:Lcom/airbnb/lottie/LottieTask;

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->wrappedFailureListener:Lcom/airbnb/lottie/LottieListener;

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieTask;->removeFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v1

    .line 489
    :cond_0
    return-void
.end method

.method private clearComposition()V
    .locals 3

    .prologue
    .line 960
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 961
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->clearComposition()V

    .line 962
    return-void
.end method

.method private enableOrDisableHardwareLayer()V
    .locals 6

    .prologue
    .line 1050
    move-object v0, p0

    const/4 v3, 0x1

    move v1, v3

    .line 1051
    sget-object v3, Lcom/airbnb/lottie/LottieAnimationView$5;->$SwitchMap$com$airbnb$lottie$RenderMode:[I

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieAnimationView;->renderMode:Lcom/airbnb/lottie/RenderMode;

    invoke-virtual {v4}, Lcom/airbnb/lottie/RenderMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1070
    :goto_0
    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieAnimationView;->getLayerType()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 1071
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1073
    :cond_0
    return-void

    .line 1053
    :pswitch_0
    const/4 v3, 0x2

    move v1, v3

    .line 1054
    goto :goto_0

    .line 1056
    :pswitch_1
    const/4 v3, 0x1

    move v1, v3

    .line 1057
    goto :goto_0

    .line 1059
    :pswitch_2
    const/4 v3, 0x1

    move v2, v3

    .line 1060
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieComposition;->hasDashPattern()Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-ge v3, v4, :cond_2

    .line 1061
    const/4 v3, 0x0

    move v2, v3

    .line 1067
    :cond_1
    :goto_1
    move v3, v2

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    :goto_2
    move v1, v3

    goto :goto_0

    .line 1062
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieComposition;->getMaskAndMatteCount()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_3

    .line 1063
    const/4 v3, 0x0

    move v2, v3

    goto :goto_1

    .line 1064
    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_1

    .line 1065
    const/4 v3, 0x0

    move v2, v3

    goto :goto_1

    .line 1067
    :cond_4
    const/4 v3, 0x1

    goto :goto_2

    .line 1051
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 14
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 139
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object v8, v1

    sget-object v9, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView:[I

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    move-object v2, v7

    .line 140
    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/LottieAnimationView;->isInEditMode()Z

    move-result v7

    if-nez v7, :cond_2

    .line 141
    move-object v7, v0

    move-object v8, v2

    sget v9, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_cacheComposition:I

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v7, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    .line 142
    move-object v7, v2

    sget v8, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_rawRes:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    move v3, v7

    .line 143
    move-object v7, v2

    sget v8, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_fileName:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    move v4, v7

    .line 144
    move-object v7, v2

    sget v8, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_url:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    move v5, v7

    .line 145
    move v7, v3

    if-eqz v7, :cond_0

    move v7, v4

    if-eqz v7, :cond_0

    .line 146
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const-string v9, "lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 148
    :cond_0
    move v7, v3

    if-eqz v7, :cond_d

    .line 149
    move-object v7, v2

    sget v8, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_rawRes:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    move v6, v7

    .line 150
    move v7, v6

    if-eqz v7, :cond_1

    .line 151
    move-object v7, v0

    move v8, v6

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 165
    :cond_1
    :goto_0
    move-object v7, v0

    move-object v8, v2

    sget v9, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_fallbackRes:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setFallbackResource(I)V

    .line 167
    :cond_2
    move-object v7, v2

    sget v8, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_autoPlay:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 168
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 169
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    .line 172
    :cond_3
    move-object v7, v2

    sget v8, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_loop:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 173
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieDrawable;->setRepeatCount(I)V

    .line 176
    :cond_4
    move-object v7, v2

    sget v8, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatMode:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 177
    move-object v7, v0

    move-object v8, v2

    sget v9, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatMode:I

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 181
    :cond_5
    move-object v7, v2

    sget v8, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatCount:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 182
    move-object v7, v0

    move-object v8, v2

    sget v9, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatCount:I

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 186
    :cond_6
    move-object v7, v2

    sget v8, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_speed:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 187
    move-object v7, v0

    move-object v8, v2

    sget v9, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_speed:I

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 190
    :cond_7
    move-object v7, v0

    move-object v8, v2

    sget v9, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_imageAssetsFolder:I

    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 191
    move-object v7, v0

    move-object v8, v2

    sget v9, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_progress:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 192
    move-object v7, v0

    move-object v8, v2

    sget v9, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_enableMergePathsForKitKatAndAbove:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieAnimationView;->enableMergePathsForKitKatAndAbove(Z)V

    .line 194
    move-object v7, v2

    sget v8, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_colorFilter:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 195
    new-instance v7, Lcom/airbnb/lottie/SimpleColorFilter;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v2

    sget v10, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_colorFilter:I

    const/4 v11, 0x0

    .line 196
    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    invoke-direct {v8, v9}, Lcom/airbnb/lottie/SimpleColorFilter;-><init>(I)V

    move-object v3, v7

    .line 197
    new-instance v7, Lcom/airbnb/lottie/model/KeyPath;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    const-string v12, "**"

    aput-object v12, v10, v11

    invoke-direct {v8, v9}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    move-object v4, v7

    .line 198
    new-instance v7, Lcom/airbnb/lottie/value/LottieValueCallback;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v3

    invoke-direct {v8, v9}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    move-object v5, v7

    .line 199
    move-object v7, v0

    move-object v8, v4

    sget-object v9, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    move-object v10, v5

    invoke-virtual {v7, v8, v9, v10}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 201
    :cond_8
    move-object v7, v2

    sget v8, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_scale:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 202
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v8, v2

    sget v9, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_scale:I

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieDrawable;->setScale(F)V

    .line 205
    :cond_9
    move-object v7, v2

    sget v8, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_renderMode:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 206
    move-object v7, v2

    sget v8, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_renderMode:I

    sget-object v9, Lcom/airbnb/lottie/RenderMode;->AUTOMATIC:Lcom/airbnb/lottie/RenderMode;

    invoke-virtual {v9}, Lcom/airbnb/lottie/RenderMode;->ordinal()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    move v3, v7

    .line 207
    move v7, v3

    invoke-static {}, Lcom/airbnb/lottie/RenderMode;->values()[Lcom/airbnb/lottie/RenderMode;

    move-result-object v8

    array-length v8, v8

    if-lt v7, v8, :cond_a

    .line 208
    sget-object v7, Lcom/airbnb/lottie/RenderMode;->AUTOMATIC:Lcom/airbnb/lottie/RenderMode;

    invoke-virtual {v7}, Lcom/airbnb/lottie/RenderMode;->ordinal()I

    move-result v7

    move v3, v7

    .line 210
    :cond_a
    move-object v7, v0

    invoke-static {}, Lcom/airbnb/lottie/RenderMode;->values()[Lcom/airbnb/lottie/RenderMode;

    move-result-object v8

    move v9, v3

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setRenderMode(Lcom/airbnb/lottie/RenderMode;)V

    .line 213
    :cond_b
    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/LottieAnimationView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 214
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/airbnb/lottie/LottieAnimationView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieDrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 216
    :cond_c
    move-object v7, v2

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 218
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/airbnb/lottie/utils/Utils;->getAnimationScale(Landroid/content/Context;)F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_10

    const/4 v8, 0x1

    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieDrawable;->setSystemAnimationsAreEnabled(Ljava/lang/Boolean;)V

    .line 220
    move-object v7, v0

    invoke-direct {v7}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    .line 221
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/airbnb/lottie/LottieAnimationView;->isInitialized:Z

    .line 222
    return-void

    .line 153
    :cond_d
    move v7, v4

    if-eqz v7, :cond_f

    .line 154
    move-object v7, v2

    sget v8, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_fileName:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 155
    move-object v7, v6

    if-eqz v7, :cond_e

    .line 156
    move-object v7, v0

    move-object v8, v6

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 158
    :cond_e
    goto/16 :goto_0

    :cond_f
    move v7, v5

    if-eqz v7, :cond_1

    .line 159
    move-object v7, v2

    sget v8, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_url:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 160
    move-object v7, v6

    if-eqz v7, :cond_1

    .line 161
    move-object v7, v0

    move-object v8, v6

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    :cond_10
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieTask",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 477
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/LottieAnimationView;->clearComposition()V

    .line 478
    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 479
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lcom/airbnb/lottie/LottieListener;

    .line 480
    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieAnimationView;->wrappedFailureListener:Lcom/airbnb/lottie/LottieListener;

    .line 481
    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v3

    iput-object v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->compositionTask:Lcom/airbnb/lottie/LottieTask;

    .line 482
    return-void
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 4

    .prologue
    .line 705
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 706
    return-void
.end method

.method public addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 4

    .prologue
    .line 693
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 694
    return-void
.end method

.method public addLottieOnCompositionLoadedListener(Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;)Z
    .locals 5
    .param p1    # Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1076
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    move-object v2, v3

    .line 1077
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1078
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;->onCompositionLoaded(Lcom/airbnb/lottie/LottieComposition;)V

    .line 1080
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 8
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
    .line 855
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 856
    return-void
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
    .line 865
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v5, v1

    move-object v6, v2

    new-instance v7, Lcom/airbnb/lottie/LottieAnimationView$4;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lcom/airbnb/lottie/LottieAnimationView$4;-><init>(Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    invoke-virtual {v4, v5, v6, v7}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 870
    return-void
.end method

.method public buildDrawingCache(Z)V
    .locals 6

    .prologue
    .line 988
    move-object v0, p0

    move v1, p1

    const-string v2, "buildDrawingCache"

    invoke-static {v2}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 989
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->buildDrawingCacheDepth:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->buildDrawingCacheDepth:I

    .line 990
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->buildDrawingCache(Z)V

    .line 991
    move-object v2, v0

    iget v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->buildDrawingCacheDepth:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->getHeight()I

    move-result v2

    if-lez v2, :cond_0

    move-object v2, v0

    .line 992
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->getLayerType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    .line 993
    move-object v2, v0

    sget-object v3, Lcom/airbnb/lottie/RenderMode;->HARDWARE:Lcom/airbnb/lottie/RenderMode;

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setRenderMode(Lcom/airbnb/lottie/RenderMode;)V

    .line 995
    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->buildDrawingCacheDepth:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->buildDrawingCacheDepth:I

    .line 996
    const-string v2, "buildDrawingCache"

    invoke-static {v2}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v2

    .line 997
    return-void
.end method

.method public cancelAnimation()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 905
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 906
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    .line 907
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/airbnb/lottie/LottieAnimationView;->playAnimationWhenShown:Z

    .line 908
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->cancelAnimation()V

    .line 909
    move-object v1, v0

    invoke-direct {v1}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    .line 910
    return-void
.end method

.method public disableExtraScaleModeInFitXY()V
    .locals 2

    .prologue
    .line 1046
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->disableExtraScaleModeInFitXY()V

    .line 1047
    return-void
.end method

.method public enableMergePathsForKitKatAndAbove(Z)V
    .locals 4

    .prologue
    .line 349
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->enableMergePathsForKitKatAndAbove(Z)V

    .line 350
    return-void
.end method

.method public getComposition()Lcom/airbnb/lottie/LottieComposition;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 525
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    move-object v0, v1

    return-object v0
.end method

.method public getDuration()J
    .locals 3

    .prologue
    .line 947
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getDuration()F

    move-result v1

    float-to-long v1, v1

    :goto_0
    move-wide v0, v1

    return-wide v0

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getFrame()I
    .locals 2

    .prologue
    .line 935
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->getFrame()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 791
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->getImageAssetsFolder()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getMaxFrame()F
    .locals 2

    .prologue
    .line 603
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->getMaxFrame()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public getMinFrame()F
    .locals 2

    .prologue
    .line 582
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->getMinFrame()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 956
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getProgress()F
    .locals 2
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .prologue
    .line 943
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->getProgress()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public getRepeatCount()I
    .locals 2

    .prologue
    .line 764
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->getRepeatCount()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getRepeatMode()I
    .locals 2

    .prologue
    .line 742
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->getRepeatMode()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getScale()F
    .locals 2

    .prologue
    .line 893
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->getScale()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public getSpeed()F
    .locals 2

    .prologue
    .line 689
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->getSpeed()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public hasMasks()Z
    .locals 2

    .prologue
    .line 532
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->hasMasks()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public hasMatte()Z
    .locals 2

    .prologue
    .line 539
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->hasMatte()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 240
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-ne v2, v3, :cond_0

    .line 243
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 2

    .prologue
    .line 768
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->isAnimating()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isMergePathsEnabledForKitKatAndAbove()Z
    .locals 2

    .prologue
    .line 356
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->isMergePathsEnabledForKitKatAndAbove()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public loop(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 721
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move v3, v1

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    :goto_0
    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setRepeatCount(I)V

    .line 722
    return-void

    .line 721
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 319
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/widget/AppCompatImageView;->onAttachedToWindow()V

    .line 320
    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    if-eqz v1, :cond_1

    .line 321
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 323
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    .line 324
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 326
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_2

    .line 329
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->getVisibility()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 331
    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 334
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 336
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 338
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/widget/AppCompatImageView;->onDetachedFromWindow()V

    .line 339
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .prologue
    .line 264
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    instance-of v3, v3, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    if-nez v3, :cond_0

    .line 265
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroidx/appcompat/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 286
    :goto_0
    return-void

    .line 269
    :cond_0
    move-object v3, v1

    check-cast v3, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    move-object v2, v3

    .line 270
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {v3, v4}, Landroidx/appcompat/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 271
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationName:Ljava/lang/String;

    iput-object v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    .line 272
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 273
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 275
    :cond_1
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationResId:I

    iput v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    .line 276
    move-object v3, v0

    iget v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    if-eqz v3, :cond_2

    .line 277
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 279
    :cond_2
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->progress:F

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 280
    move-object v3, v2

    iget-boolean v3, v3, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->isAnimating:Z

    if-eqz v3, :cond_3

    .line 281
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 283
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v4, v2

    iget-object v4, v4, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->imageAssetsFolder:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieDrawable;->setImagesAssetsFolder(Ljava/lang/String;)V

    .line 284
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatMode:I

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 285
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatCount:I

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 286
    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 251
    move-object v0, p0

    move-object v3, v0

    invoke-super {v3}, Landroidx/appcompat/widget/AppCompatImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    move-object v1, v3

    .line 252
    new-instance v3, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/LottieAnimationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v2, v3

    .line 253
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    iput-object v4, v3, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationName:Ljava/lang/String;

    .line 254
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    iput v4, v3, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationResId:I

    .line 255
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieDrawable;->getProgress()F

    move-result v4

    iput v4, v3, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->progress:F

    .line 256
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieDrawable;->isAnimating()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v0

    iget-boolean v4, v4, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v3, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->isAnimating:Z

    .line 257
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieDrawable;->getImageAssetsFolder()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->imageAssetsFolder:Ljava/lang/String;

    .line 258
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieDrawable;->getRepeatMode()I

    move-result v4

    iput v4, v3, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatMode:I

    .line 259
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieDrawable;->getRepeatCount()I

    move-result v4

    iput v4, v3, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatCount:I

    .line 260
    move-object v3, v2

    move-object v0, v3

    return-object v0

    .line 256
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 299
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->isInitialized:Z

    if-nez v3, :cond_0

    .line 316
    :goto_0
    return-void

    .line 302
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->isShown()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 303
    move-object v3, v0

    iget-boolean v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    if-eqz v3, :cond_3

    .line 304
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    .line 308
    :cond_1
    :goto_1
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    .line 309
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->playAnimationWhenShown:Z

    .line 316
    :cond_2
    :goto_2
    goto :goto_0

    .line 305
    :cond_3
    move-object v3, v0

    iget-boolean v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->playAnimationWhenShown:Z

    if-eqz v3, :cond_1

    .line 306
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_1

    .line 311
    :cond_4
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 312
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 313
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    goto :goto_2
.end method

.method public pauseAnimation()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 914
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    .line 915
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 916
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    .line 917
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/airbnb/lottie/LottieAnimationView;->playAnimationWhenShown:Z

    .line 918
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->pauseAnimation()V

    .line 919
    move-object v1, v0

    invoke-direct {v1}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    .line 920
    return-void
.end method

.method public playAnimation()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 548
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation()V

    .line 550
    move-object v1, v0

    invoke-direct {v1}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    .line 554
    :goto_0
    return-void

    .line 552
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/airbnb/lottie/LottieAnimationView;->playAnimationWhenShown:Z

    goto :goto_0
.end method

.method public removeAllAnimatorListeners()V
    .locals 2

    .prologue
    .line 713
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->removeAllAnimatorListeners()V

    .line 714
    return-void
.end method

.method public removeAllLottieOnCompositionLoadedListener()V
    .locals 2

    .prologue
    .line 1088
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1089
    return-void
.end method

.method public removeAllUpdateListeners()V
    .locals 2

    .prologue
    .line 701
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->removeAllUpdateListeners()V

    .line 702
    return-void
.end method

.method public removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 4

    .prologue
    .line 709
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 710
    return-void
.end method

.method public removeLottieOnCompositionLoadedListener(Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;)Z
    .locals 4
    .param p1    # Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1084
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 4

    .prologue
    .line 697
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->removeAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 698
    return-void
.end method

.method public resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;
    .locals 4
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
    .line 844
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public resumeAnimation()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 562
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 563
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->resumeAnimation()V

    .line 564
    move-object v1, v0

    invoke-direct {v1}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    .line 569
    :goto_0
    return-void

    .line 566
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/airbnb/lottie/LottieAnimationView;->playAnimationWhenShown:Z

    .line 567
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    goto :goto_0
.end method

.method public reverseAnimationSpeed()V
    .locals 2

    .prologue
    .line 675
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->reverseAnimationSpeed()V

    .line 676
    return-void
.end method

.method public setAnimation(I)V
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    .prologue
    .line 376
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    .line 377
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    .line 378
    move-object v3, v0

    iget-boolean v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    if-eqz v3, :cond_0

    .line 379
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawRes(Landroid/content/Context;I)Lcom/airbnb/lottie/LottieTask;

    move-result-object v3

    :goto_0
    move-object v2, v3

    .line 380
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V

    .line 381
    return-void

    .line 379
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawRes(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v3

    goto :goto_0
.end method

.method public setAnimation(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 416
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStream(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V

    .line 417
    return-void
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 384
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    .line 385
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    .line 386
    move-object v3, v0

    iget-boolean v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    if-eqz v3, :cond_0

    .line 387
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v3

    :goto_0
    move-object v2, v3

    .line 388
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V

    .line 389
    return-void

    .line 387
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, v1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v3

    goto :goto_0
.end method

.method public setAnimationFromJson(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 396
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromJson(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 405
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    new-instance v4, Ljava/io/ByteArrayInputStream;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 428
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    if-eqz v3, :cond_0

    .line 429
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v3

    :goto_0
    move-object v2, v3

    .line 430
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V

    .line 431
    return-void

    .line 429
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, v1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v3

    goto :goto_0
.end method

.method public setAnimationFromUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 442
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    invoke-static {v4, v5, v6}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v4

    move-object v3, v4

    .line 443
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V

    .line 444
    return-void
.end method

.method public setApplyingOpacityToLayersEnabled(Z)V
    .locals 4

    .prologue
    .line 1031
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setApplyingOpacityToLayersEnabled(Z)V

    .line 1032
    return-void
.end method

.method public setCacheComposition(Z)V
    .locals 4

    .prologue
    .line 368
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    .line 369
    return-void
.end method

.method public setComposition(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 9
    .param p1    # Lcom/airbnb/lottie/LottieComposition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 497
    move-object v0, p0

    move-object v1, p1

    sget-boolean v5, Lcom/airbnb/lottie/L;->DBG:Z

    if-eqz v5, :cond_0

    .line 498
    sget-object v5, Lcom/airbnb/lottie/LottieAnimationView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set Composition \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 500
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/LottieDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 502
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 503
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/LottieDrawable;->setComposition(Lcom/airbnb/lottie/LottieComposition;)Z

    move-result v5

    move v2, v5

    .line 504
    move-object v5, v0

    invoke-direct {v5}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    .line 505
    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-ne v5, v6, :cond_1

    move v5, v2

    if-nez v5, :cond_1

    .line 522
    :goto_0
    return-void

    .line 514
    :cond_1
    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/LottieAnimationView;->getVisibility()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/airbnb/lottie/LottieAnimationView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 516
    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieAnimationView;->requestLayout()V

    .line 518
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;

    move-object v4, v5

    .line 519
    move-object v5, v4

    move-object v6, v1

    invoke-interface {v5, v6}, Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;->onCompositionLoaded(Lcom/airbnb/lottie/LottieComposition;)V

    .line 520
    goto :goto_1

    .line 522
    :cond_2
    goto :goto_0
.end method

.method public setFailureListener(Lcom/airbnb/lottie/LottieListener;)V
    .locals 4
    .param p1    # Lcom/airbnb/lottie/LottieListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieListener",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 461
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->failureListener:Lcom/airbnb/lottie/LottieListener;

    .line 462
    return-void
.end method

.method public setFallbackResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 473
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->fallbackResource:I

    .line 474
    return-void
.end method

.method public setFontAssetDelegate(Lcom/airbnb/lottie/FontAssetDelegate;)V
    .locals 4

    .prologue
    .line 825
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setFontAssetDelegate(Lcom/airbnb/lottie/FontAssetDelegate;)V

    .line 826
    return-void
.end method

.method public setFrame(I)V
    .locals 4

    .prologue
    .line 928
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setFrame(I)V

    .line 929
    return-void
.end method

.method public setImageAssetDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V
    .locals 4

    .prologue
    .line 817
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setImageAssetDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V

    .line 818
    return-void
.end method

.method public setImageAssetsFolder(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 786
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setImagesAssetsFolder(Ljava/lang/String;)V

    .line 787
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 235
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 236
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 237
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 230
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 231
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 232
    return-void
.end method

.method public setImageResource(I)V
    .locals 4

    .prologue
    .line 225
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 226
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 227
    return-void
.end method

.method public setMaxFrame(I)V
    .locals 4

    .prologue
    .line 596
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setMaxFrame(I)V

    .line 597
    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 626
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setMaxFrame(Ljava/lang/String;)V

    .line 627
    return-void
.end method

.method public setMaxProgress(F)V
    .locals 4
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 610
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setMaxProgress(F)V

    .line 611
    return-void
.end method

.method public setMinAndMaxFrame(II)V
    .locals 6

    .prologue
    .line 655
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(II)V

    .line 656
    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 635
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .prologue
    .line 647
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 648
    return-void
.end method

.method public setMinAndMaxProgress(FF)V
    .locals 6
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
    .line 665
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxProgress(FF)V

    .line 666
    return-void
.end method

.method public setMinFrame(I)V
    .locals 4

    .prologue
    .line 575
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setMinFrame(I)V

    .line 576
    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 618
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setMinFrame(Ljava/lang/String;)V

    .line 619
    return-void
.end method

.method public setMinProgress(F)V
    .locals 4

    .prologue
    .line 589
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setMinProgress(F)V

    .line 590
    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 4

    .prologue
    .line 951
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setPerformanceTrackingEnabled(Z)V

    .line 952
    return-void
.end method

.method public setProgress(F)V
    .locals 4
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 939
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    .line 940
    return-void
.end method

.method public setRenderMode(Lcom/airbnb/lottie/RenderMode;)V
    .locals 4

    .prologue
    .line 1014
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->renderMode:Lcom/airbnb/lottie/RenderMode;

    .line 1015
    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    .line 1016
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 4

    .prologue
    .line 754
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setRepeatCount(I)V

    .line 755
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 4

    .prologue
    .line 732
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setRepeatMode(I)V

    .line 733
    return-void
.end method

.method public setSafeMode(Z)V
    .locals 4

    .prologue
    .line 976
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setSafeMode(Z)V

    .line 977
    return-void
.end method

.method public setScale(F)V
    .locals 4

    .prologue
    .line 885
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setScale(F)V

    .line 886
    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-ne v2, v3, :cond_0

    .line 887
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 888
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 890
    :cond_0
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 4

    .prologue
    .line 897
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 898
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-eqz v2, :cond_0

    .line 899
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 901
    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 4

    .prologue
    .line 682
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setSpeed(F)V

    .line 683
    return-void
.end method

.method public setTextDelegate(Lcom/airbnb/lottie/TextDelegate;)V
    .locals 4

    .prologue
    .line 832
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setTextDelegate(Lcom/airbnb/lottie/TextDelegate;)V

    .line 833
    return-void
.end method

.method public updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 802
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/LottieDrawable;->updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method
