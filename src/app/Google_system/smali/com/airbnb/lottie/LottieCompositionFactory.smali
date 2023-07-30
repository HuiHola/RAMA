.class public Lcom/airbnb/lottie/LottieCompositionFactory;
.super Ljava/lang/Object;
.source "LottieCompositionFactory.java"


# static fields
.field private static final taskCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieTask",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Ljava/util/HashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/Map;

    return-object v0
.end method

.method private static cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;>;)",
            "Lcom/airbnb/lottie/LottieTask",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 479
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    move-object v2, v4

    .line 480
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 481
    new-instance v4, Lcom/airbnb/lottie/LottieTask;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Lcom/airbnb/lottie/LottieCompositionFactory$9;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v2

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/LottieCompositionFactory$9;-><init>(Lcom/airbnb/lottie/LottieComposition;)V

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/LottieTask;-><init>(Ljava/util/concurrent/Callable;)V

    move-object v0, v4

    .line 508
    :goto_1
    return-object v0

    .line 479
    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/model/LottieCompositionCache;->getInstance()Lcom/airbnb/lottie/model/LottieCompositionCache;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/model/LottieCompositionCache;->get(Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;

    move-result-object v4

    goto :goto_0

    .line 488
    :cond_1
    move-object v4, v0

    if-eqz v4, :cond_2

    sget-object v4, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/Map;

    move-object v5, v0

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 489
    sget-object v4, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/Map;

    move-object v5, v0

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/LottieTask;

    move-object v0, v4

    goto :goto_1

    .line 492
    :cond_2
    new-instance v4, Lcom/airbnb/lottie/LottieTask;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/LottieTask;-><init>(Ljava/util/concurrent/Callable;)V

    move-object v3, v4

    .line 493
    move-object v4, v0

    if-eqz v4, :cond_3

    .line 494
    move-object v4, v3

    new-instance v5, Lcom/airbnb/lottie/LottieCompositionFactory$10;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/airbnb/lottie/LottieCompositionFactory$10;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v4

    .line 500
    move-object v4, v3

    new-instance v5, Lcom/airbnb/lottie/LottieCompositionFactory$11;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/airbnb/lottie/LottieCompositionFactory$11;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v4

    .line 506
    sget-object v4, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/Map;

    move-object v5, v0

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 508
    :cond_3
    move-object v4, v3

    move-object v0, v4

    goto :goto_1
.end method

.method public static clearCache(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 66
    move-object v0, p0

    sget-object v1, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 67
    invoke-static {}, Lcom/airbnb/lottie/model/LottieCompositionCache;->getInstance()Lcom/airbnb/lottie/model/LottieCompositionCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/LottieCompositionCache;->clear()V

    .line 68
    new-instance v1, Lcom/airbnb/lottie/network/NetworkCache;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/network/NetworkCache;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/airbnb/lottie/network/NetworkCache;->clear()V

    .line 69
    return-void
.end method

.method private static findImageAssetForFileName(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;)Lcom/airbnb/lottie/LottieImageAsset;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 464
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieComposition;->getImages()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/LottieImageAsset;

    move-object v3, v4

    .line 465
    move-object v4, v3

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieImageAsset;->getFileName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 466
    move-object v4, v3

    move-object v0, v4

    .line 469
    :goto_1
    return-object v0

    .line 468
    :cond_0
    goto :goto_0

    .line 469
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method public static fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "asset_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 128
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public static fromAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 11
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object v3, v4

    .line 143
    move-object v4, v2

    new-instance v5, Lcom/airbnb/lottie/LottieCompositionFactory$2;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/airbnb/lottie/LottieCompositionFactory$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public static fromAssetSync(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "asset_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 163
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAssetSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public static fromAssetSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 9
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    :try_start_0
    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 179
    new-instance v4, Ljava/util/zip/ZipInputStream;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v4

    move-object v0, v4

    .line 183
    :goto_0
    return-object v0

    .line 181
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 182
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 183
    new-instance v4, Lcom/airbnb/lottie/LottieResult;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v4

    goto :goto_0
.end method

.method public static fromJson(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 308
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    new-instance v3, Lcom/airbnb/lottie/LottieCompositionFactory$5;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/LottieCompositionFactory$5;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static fromJsonInputStream(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    new-instance v3, Lcom/airbnb/lottie/LottieCompositionFactory$4;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/LottieCompositionFactory$4;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private static fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    :try_start_0
    invoke-static {v5}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v5

    invoke-static {v5}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->of(Lokio/BufferedSource;)Lcom/airbnb/lottie/parser/moshi/JsonReader;

    move-result-object v5

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonReaderSync(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    move-object v3, v5

    .line 296
    move v5, v2

    if-eqz v5, :cond_0

    .line 297
    move-object v5, v0

    invoke-static {v5}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 294
    :cond_0
    move-object v5, v3

    move-object v0, v5

    return-object v0

    .line 296
    :catchall_0
    move-exception v5

    move-object v4, v5

    move v5, v2

    if-eqz v5, :cond_1

    .line 297
    move-object v5, v0

    invoke-static {v5}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_1
    move-object v5, v4

    throw v5
.end method

.method public static fromJsonReader(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    new-instance v3, Lcom/airbnb/lottie/LottieCompositionFactory$7;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/LottieCompositionFactory$7;-><init>(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static fromJsonReaderSync(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonReaderSyncInternal(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private static fromJsonReaderSyncInternal(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v0

    :try_start_0
    invoke-static {v6}, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;)Lcom/airbnb/lottie/LottieComposition;

    move-result-object v6

    move-object v3, v6

    .line 372
    move-object v6, v1

    if-eqz v6, :cond_0

    .line 373
    invoke-static {}, Lcom/airbnb/lottie/model/LottieCompositionCache;->getInstance()Lcom/airbnb/lottie/model/LottieCompositionCache;

    move-result-object v6

    move-object v7, v1

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Lcom/airbnb/lottie/model/LottieCompositionCache;->put(Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V

    .line 375
    :cond_0
    new-instance v6, Lcom/airbnb/lottie/LottieResult;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v3

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v6

    .line 379
    move v6, v2

    if-eqz v6, :cond_1

    .line 380
    move-object v6, v0

    invoke-static {v6}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 375
    :cond_1
    move-object v6, v4

    move-object v0, v6

    .line 377
    :goto_0
    return-object v0

    .line 376
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 377
    :try_start_1
    new-instance v6, Lcom/airbnb/lottie/LottieResult;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v3

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v6

    .line 379
    move v6, v2

    if-eqz v6, :cond_2

    .line 380
    move-object v6, v0

    invoke-static {v6}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 377
    :cond_2
    move-object v6, v4

    move-object v0, v6

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v6

    move-object v5, v6

    move v6, v2

    if-eqz v6, :cond_3

    .line 380
    move-object v6, v0

    invoke-static {v6}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_3
    move-object v6, v5

    throw v6
.end method

.method public static fromJsonString(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    new-instance v3, Lcom/airbnb/lottie/LottieCompositionFactory$6;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/LottieCompositionFactory$6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static fromJsonStringSync(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Ljava/io/ByteArrayInputStream;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v2, v3

    .line 349
    move-object v3, v2

    invoke-static {v3}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v3

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->of(Lokio/BufferedSource;)Lcom/airbnb/lottie/parser/moshi/JsonReader;

    move-result-object v3

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonReaderSync(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public static fromJsonSync(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 325
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonStringSync(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static fromRawRes(Landroid/content/Context;I)Lcom/airbnb/lottie/LottieTask;
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/airbnb/lottie/LottieTask",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v4, v0

    move v5, v1

    invoke-static {v4, v5}, Lcom/airbnb/lottie/LottieCompositionFactory;->rawResCacheKey(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawRes(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static fromRawRes(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 12
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    new-instance v5, Ljava/lang/ref/WeakReference;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v3, v5

    .line 213
    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move-object v4, v5

    .line 214
    move-object v5, v2

    new-instance v6, Lcom/airbnb/lottie/LottieCompositionFactory$3;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v3

    move-object v9, v4

    move v10, v1

    invoke-direct {v7, v8, v9, v10}, Lcom/airbnb/lottie/LottieCompositionFactory$3;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;I)V

    invoke-static {v5, v6}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public static fromRawResSync(Landroid/content/Context;I)Lcom/airbnb/lottie/LottieResult;
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v4, v0

    move v5, v1

    invoke-static {v4, v5}, Lcom/airbnb/lottie/LottieCompositionFactory;->rawResCacheKey(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawResSync(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static fromRawResSync(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 8
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    .line 252
    :goto_0
    return-object v0

    .line 251
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 252
    new-instance v4, Lcom/airbnb/lottie/LottieResult;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v4

    goto :goto_0
.end method

.method public static fromUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "url_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static fromUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 10
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    new-instance v4, Lcom/airbnb/lottie/LottieCompositionFactory$1;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/airbnb/lottie/LottieCompositionFactory$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public static fromUrlSync(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromUrlSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static fromUrlSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/airbnb/lottie/network/NetworkFetcher;->fetchSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public static fromZipStream(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    new-instance v3, Lcom/airbnb/lottie/LottieCompositionFactory$8;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/LottieCompositionFactory$8;-><init>(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    :try_start_0
    invoke-static {v4, v5}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSyncInternal(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    move-object v2, v4

    .line 405
    move-object v4, v0

    invoke-static {v4}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 403
    move-object v4, v2

    move-object v0, v4

    return-object v0

    .line 405
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v0

    invoke-static {v4}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v4, v3

    throw v4
.end method

.method private static fromZipStreamSyncInternal(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 15
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 411
    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v8, 0x0

    move-object v2, v8

    .line 412
    new-instance v8, Ljava/util/HashMap;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object v3, v8

    .line 415
    move-object v8, v0

    :try_start_0
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8

    move-object v4, v8

    .line 416
    :goto_0
    move-object v8, v4

    if-eqz v8, :cond_4

    .line 417
    move-object v8, v4

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 418
    move-object v8, v5

    const-string v9, "__MACOSX"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 419
    move-object v8, v0

    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 431
    :goto_1
    move-object v8, v0

    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8

    move-object v4, v8

    .line 432
    goto :goto_0

    .line 420
    :cond_0
    move-object v8, v4

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".json"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 421
    move-object v8, v0

    invoke-static {v8}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v8

    invoke-static {v8}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v8

    invoke-static {v8}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->of(Lokio/BufferedSource;)Lcom/airbnb/lottie/parser/moshi/JsonReader;

    move-result-object v8

    move-object v6, v8

    .line 422
    move-object v8, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonReaderSyncInternal(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;

    move-result-object v8

    invoke-virtual {v8}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/lottie/LottieComposition;

    move-object v2, v8

    .line 423
    goto :goto_1

    :cond_1
    move-object v8, v5

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    move-object v8, v5

    const-string v9, ".webp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 424
    :cond_2
    move-object v8, v5

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 425
    move-object v8, v6

    move-object v9, v6

    array-length v9, v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    aget-object v8, v8, v9

    move-object v7, v8

    .line 426
    move-object v8, v3

    move-object v9, v7

    move-object v10, v0

    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 427
    goto :goto_1

    .line 428
    :cond_3
    move-object v8, v0

    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 433
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 434
    new-instance v8, Lcom/airbnb/lottie/LottieResult;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v4

    invoke-direct {v9, v10}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v8

    .line 459
    :goto_2
    return-object v0

    .line 438
    :cond_4
    move-object v8, v2

    if-nez v8, :cond_5

    .line 439
    new-instance v8, Lcom/airbnb/lottie/LottieResult;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const-string v12, "Unable to parse composition"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v8

    goto :goto_2

    .line 442
    :cond_5
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v8

    :goto_3
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    move-object v5, v8

    .line 443
    move-object v8, v2

    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/airbnb/lottie/LottieCompositionFactory;->findImageAssetForFileName(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;)Lcom/airbnb/lottie/LottieImageAsset;

    move-result-object v8

    move-object v6, v8

    .line 444
    move-object v8, v6

    if-eqz v8, :cond_6

    .line 445
    move-object v8, v6

    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    move-object v10, v6

    invoke-virtual {v10}, Lcom/airbnb/lottie/LottieImageAsset;->getWidth()I

    move-result v10

    move-object v11, v6

    invoke-virtual {v11}, Lcom/airbnb/lottie/LottieImageAsset;->getHeight()I

    move-result v11

    invoke-static {v9, v10, v11}, Lcom/airbnb/lottie/utils/Utils;->resizeBitmapIfNeeded(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/airbnb/lottie/LottieImageAsset;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 447
    :cond_6
    goto :goto_3

    .line 450
    :cond_7
    move-object v8, v2

    invoke-virtual {v8}, Lcom/airbnb/lottie/LottieComposition;->getImages()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v8

    :goto_4
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    move-object v5, v8

    .line 451
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/lottie/LottieImageAsset;

    invoke-virtual {v8}, Lcom/airbnb/lottie/LottieImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_8

    .line 452
    new-instance v8, Lcom/airbnb/lottie/LottieResult;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Ljava/lang/IllegalStateException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "There is no image for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v5

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/airbnb/lottie/LottieImageAsset;

    invoke-virtual {v13}, Lcom/airbnb/lottie/LottieImageAsset;->getFileName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v8

    goto/16 :goto_2

    .line 454
    :cond_8
    goto :goto_4

    .line 456
    :cond_9
    move-object v8, v1

    if-eqz v8, :cond_a

    .line 457
    invoke-static {}, Lcom/airbnb/lottie/model/LottieCompositionCache;->getInstance()Lcom/airbnb/lottie/model/LottieCompositionCache;

    move-result-object v8

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lcom/airbnb/lottie/model/LottieCompositionCache;->put(Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V

    .line 459
    :cond_a
    new-instance v8, Lcom/airbnb/lottie/LottieResult;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Object;)V

    move-object v0, v8

    goto/16 :goto_2
.end method

.method private static isNightMode(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 264
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    const/16 v3, 0x30

    and-int/lit8 v2, v2, 0x30

    move v1, v2

    .line 265
    move v2, v1

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static rawResCacheKey(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    .prologue
    .line 257
    move-object v0, p0

    move v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rawRes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-static {v3}, Lcom/airbnb/lottie/LottieCompositionFactory;->isNightMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "_night_"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0

    :cond_0
    const-string v3, "_day_"

    goto :goto_0
.end method

.method public static setMaxCacheSize(I)V
    .locals 3

    .prologue
    .line 62
    move v0, p0

    invoke-static {}, Lcom/airbnb/lottie/model/LottieCompositionCache;->getInstance()Lcom/airbnb/lottie/model/LottieCompositionCache;

    move-result-object v1

    move v2, v0

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/model/LottieCompositionCache;->resize(I)V

    .line 63
    return-void
.end method
