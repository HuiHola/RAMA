.class Lcom/airbnb/lottie/LottieAnimationView$1;
.super Ljava/lang/Object;
.source "LottieAnimationView.java"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/LottieListener",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView$1;->onResult(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResult(Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Lcom/airbnb/lottie/utils/Utils;->isNetworkException(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    const-string v2, "Unable to load composition."

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    return-void

    .line 74
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Unable to parse composition"

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
