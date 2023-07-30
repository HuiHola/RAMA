.class final Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;
.super Ljava/lang/Object;
.source "LottieComposition.java"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;
.implements Lcom/airbnb/lottie/Cancellable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieComposition$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListenerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/LottieListener",
        "<",
        "Lcom/airbnb/lottie/LottieComposition;",
        ">;",
        "Lcom/airbnb/lottie/Cancellable;"
    }
.end annotation


# instance fields
.field private cancelled:Z

.field private final listener:Lcom/airbnb/lottie/OnCompositionLoadedListener;


# direct methods
.method private constructor <init>(Lcom/airbnb/lottie/OnCompositionLoadedListener;)V
    .locals 4

    .prologue
    .line 344
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 342
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;->cancelled:Z

    .line 345
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;->listener:Lcom/airbnb/lottie/OnCompositionLoadedListener;

    .line 346
    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/OnCompositionLoadedListener;Lcom/airbnb/lottie/LottieComposition$1;)V
    .locals 5

    .prologue
    .line 340
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;-><init>(Lcom/airbnb/lottie/OnCompositionLoadedListener;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 356
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;->cancelled:Z

    .line 357
    return-void
.end method

.method public onResult(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 4

    .prologue
    .line 349
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;->cancelled:Z

    if-eqz v2, :cond_0

    .line 353
    :goto_0
    return-void

    .line 352
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;->listener:Lcom/airbnb/lottie/OnCompositionLoadedListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/airbnb/lottie/OnCompositionLoadedListener;->onCompositionLoaded(Lcom/airbnb/lottie/LottieComposition;)V

    .line 353
    goto :goto_0
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 340
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;->onResult(Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
