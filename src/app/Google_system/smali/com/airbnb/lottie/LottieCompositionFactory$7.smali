.class Lcom/airbnb/lottie/LottieCompositionFactory$7;
.super Ljava/lang/Object;
.source "LottieCompositionFactory.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonReader(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
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
.field final synthetic val$cacheKey:Ljava/lang/String;

.field final synthetic val$reader:Lcom/airbnb/lottie/parser/moshi/JsonReader;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 353
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/airbnb/lottie/LottieCompositionFactory$7;->val$reader:Lcom/airbnb/lottie/parser/moshi/JsonReader;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/airbnb/lottie/LottieCompositionFactory$7;->val$cacheKey:Ljava/lang/String;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/airbnb/lottie/LottieResult;
    .locals 3
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
    .line 356
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieCompositionFactory$7;->val$reader:Lcom/airbnb/lottie/parser/moshi/JsonReader;

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieCompositionFactory$7;->val$cacheKey:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonReaderSync(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 353
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieCompositionFactory$7;->call()Lcom/airbnb/lottie/LottieResult;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
