.class Lcom/airbnb/lottie/LottieCompositionFactory$3;
.super Ljava/lang/Object;
.source "LottieCompositionFactory.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawRes(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/LottieTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/airbnb/lottie/LottieResult",
        "<",
        "Lcom/airbnb/lottie/LottieComposition;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$contextRef:Ljava/lang/ref/WeakReference;

.field final synthetic val$rawRes:I


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;I)V
    .locals 6

    .prologue
    .line 214
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/airbnb/lottie/LottieCompositionFactory$3;->val$contextRef:Ljava/lang/ref/WeakReference;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/airbnb/lottie/LottieCompositionFactory$3;->val$appContext:Landroid/content/Context;

    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/airbnb/lottie/LottieCompositionFactory$3;->val$rawRes:I

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/airbnb/lottie/LottieResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieCompositionFactory$3;->val$contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object v1, v3

    .line 218
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    :goto_0
    move-object v2, v3

    .line 219
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/airbnb/lottie/LottieCompositionFactory$3;->val$rawRes:I

    invoke-static {v3, v4}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawResSync(Landroid/content/Context;I)Lcom/airbnb/lottie/LottieResult;

    move-result-object v3

    move-object v0, v3

    return-object v0

    .line 218
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieCompositionFactory$3;->val$appContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 214
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieCompositionFactory$3;->call()Lcom/airbnb/lottie/LottieResult;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
