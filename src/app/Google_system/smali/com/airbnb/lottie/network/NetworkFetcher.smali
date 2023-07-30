.class public Lcom/airbnb/lottie/network/NetworkFetcher;
.super Ljava/lang/Object;
.source "NetworkFetcher.java"


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final networkCache:Lcom/airbnb/lottie/network/NetworkCache;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 35
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/network/NetworkFetcher;->appContext:Landroid/content/Context;

    .line 36
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    .line 37
    move-object v4, v3

    if-nez v4, :cond_0

    .line 38
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    move-object v4, v0

    new-instance v5, Lcom/airbnb/lottie/network/NetworkCache;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/network/NetworkFetcher;->appContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/airbnb/lottie/network/NetworkCache;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    goto :goto_0
.end method

.method private fetchFromCache()Lcom/airbnb/lottie/LottieComposition;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    if-nez v5, :cond_0

    .line 62
    const/4 v5, 0x0

    move-object v0, v5

    .line 80
    :goto_0
    return-object v0

    .line 64
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/network/NetworkCache;->fetch(Ljava/lang/String;)Landroidx/core/util/Pair;

    move-result-object v5

    move-object v1, v5

    .line 65
    move-object v5, v1

    if-nez v5, :cond_1

    .line 66
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 69
    :cond_1
    move-object v5, v1

    iget-object v5, v5, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/airbnb/lottie/network/FileExtension;

    move-object v2, v5

    .line 70
    move-object v5, v1

    iget-object v5, v5, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/io/InputStream;

    move-object v3, v5

    .line 72
    move-object v5, v2

    sget-object v6, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    if-ne v5, v6, :cond_2

    .line 73
    new-instance v5, Ljava/util/zip/ZipInputStream;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v3

    invoke-direct {v6, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v5

    move-object v4, v5

    .line 77
    :goto_1
    move-object v5, v4

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 78
    move-object v5, v4

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/LottieComposition;

    move-object v0, v5

    goto :goto_0

    .line 75
    :cond_2
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v5

    move-object v4, v5

    goto :goto_1

    .line 80
    :cond_3
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method

.method private fetchFromNetwork()Lcom/airbnb/lottie/LottieResult;
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

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
    .line 86
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    invoke-direct {v2}, Lcom/airbnb/lottie/network/NetworkFetcher;->fetchFromNetworkInternal()Lcom/airbnb/lottie/LottieResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 88
    :goto_0
    return-object v0

    .line 87
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 88
    new-instance v2, Lcom/airbnb/lottie/LottieResult;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_0
.end method

.method private fetchFromNetworkInternal()Lcom/airbnb/lottie/LottieResult;
    .locals 12
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fetching "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 97
    new-instance v5, Ljava/net/URL;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    move-object v1, v5

    .line 98
    move-object v5, v1

    const-string v6, "GET"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 101
    move-object v5, v1

    :try_start_0
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 103
    move-object v5, v1

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    if-nez v5, :cond_0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_1

    .line 104
    :cond_0
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/network/NetworkFetcher;->getErrorFromConnection(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 105
    new-instance v5, Lcom/airbnb/lottie/LottieResult;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to fetch "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ". Failed with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v5

    .line 114
    move-object v5, v1

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 105
    move-object v5, v3

    move-object v0, v5

    .line 112
    :goto_0
    return-object v0

    .line 108
    :cond_1
    move-object v5, v0

    move-object v6, v1

    :try_start_1
    invoke-direct {v5, v6}, Lcom/airbnb/lottie/network/NetworkFetcher;->getResultFromConnection(Ljava/net/HttpURLConnection;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v5

    move-object v2, v5

    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Completed fetch from network. Success: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v6}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    move-object v5, v2

    move-object v3, v5

    .line 114
    move-object v5, v1

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 110
    move-object v5, v3

    move-object v0, v5

    goto :goto_0

    .line 109
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 111
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 112
    :try_start_2
    new-instance v5, Lcom/airbnb/lottie/LottieResult;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v2

    invoke-direct {v6, v7}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v5

    .line 114
    move-object v5, v1

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 112
    move-object v5, v3

    move-object v0, v5

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v1

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v5, v4

    throw v5
.end method

.method public static fetchSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 9
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
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lcom/airbnb/lottie/network/NetworkFetcher;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/airbnb/lottie/network/NetworkFetcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/airbnb/lottie/network/NetworkFetcher;->fetchSync()Lcom/airbnb/lottie/LottieResult;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method private getErrorFromConnection(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v9, v1

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    move v2, v9

    .line 120
    new-instance v9, Ljava/io/BufferedReader;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    new-instance v11, Ljava/io/InputStreamReader;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v13, v1

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v9

    .line 121
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v9

    .line 125
    :goto_0
    move-object v9, v3

    :try_start_0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v5, v10

    if-eqz v9, :cond_0

    .line 126
    move-object v9, v4

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    goto :goto_0

    .line 132
    :cond_0
    move-object v9, v3

    :try_start_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    :goto_1
    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    return-object v0

    .line 133
    :catch_0
    move-exception v9

    move-object v6, v9

    .line 136
    goto :goto_1

    .line 128
    :catch_1
    move-exception v9

    move-object v6, v9

    .line 129
    move-object v9, v6

    :try_start_2
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    :catchall_0
    move-exception v9

    move-object v7, v9

    .line 132
    move-object v9, v3

    :try_start_3
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 135
    :goto_2
    move-object v9, v7

    throw v9

    .line 133
    :catch_2
    move-exception v9

    move-object v8, v9

    goto :goto_2
.end method

.method private getResultFromConnection(Ljava/net/HttpURLConnection;)Lcom/airbnb/lottie/LottieResult;
    .locals 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 146
    move-object v6, v5

    if-nez v6, :cond_0

    .line 149
    const-string v6, "application/json"

    move-object v5, v6

    .line 151
    :cond_0
    move-object v6, v5

    const-string v7, "application/zip"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 152
    const-string v6, "Handling zip response."

    invoke-static {v6}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 153
    sget-object v6, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    move-object v3, v6

    .line 154
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    if-nez v6, :cond_2

    .line 155
    new-instance v6, Ljava/util/zip/ZipInputStream;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v6

    move-object v4, v6

    .line 171
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    if-eqz v6, :cond_1

    move-object v6, v4

    invoke-virtual {v6}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 172
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Lcom/airbnb/lottie/network/NetworkCache;->renameTempFile(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;)V

    .line 174
    :cond_1
    move-object v6, v4

    move-object v0, v6

    return-object v0

    .line 157
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    move-object v8, v1

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v6, v7, v8, v9}, Lcom/airbnb/lottie/network/NetworkCache;->writeTempCacheFile(Ljava/lang/String;Ljava/io/InputStream;Lcom/airbnb/lottie/network/FileExtension;)Ljava/io/File;

    move-result-object v6

    move-object v2, v6

    .line 158
    new-instance v6, Ljava/util/zip/ZipInputStream;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/io/FileInputStream;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v2

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v6

    move-object v4, v6

    goto :goto_0

    .line 161
    :cond_3
    const-string v6, "Received json response."

    invoke-static {v6}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 162
    sget-object v6, Lcom/airbnb/lottie/network/FileExtension;->JSON:Lcom/airbnb/lottie/network/FileExtension;

    move-object v3, v6

    .line 163
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    if-nez v6, :cond_4

    .line 164
    move-object v6, v1

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v6

    move-object v4, v6

    goto :goto_0

    .line 166
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    move-object v8, v1

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v6, v7, v8, v9}, Lcom/airbnb/lottie/network/NetworkCache;->writeTempCacheFile(Ljava/lang/String;Ljava/io/InputStream;Lcom/airbnb/lottie/network/FileExtension;)Ljava/io/File;

    move-result-object v6

    move-object v2, v6

    .line 167
    new-instance v6, Ljava/io/FileInputStream;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/io/File;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v2

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v6

    move-object v4, v6

    goto/16 :goto_0
.end method


# virtual methods
.method public fetchSync()Lcom/airbnb/lottie/LottieResult;
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

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
    .line 46
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/network/NetworkFetcher;->fetchFromCache()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v2

    move-object v1, v2

    .line 47
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 48
    new-instance v2, Lcom/airbnb/lottie/LottieResult;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Object;)V

    move-object v0, v2

    .line 52
    :goto_0
    return-object v0

    .line 51
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Animation for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found in cache. Fetching from network."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 52
    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/network/NetworkFetcher;->fetchFromNetwork()Lcom/airbnb/lottie/LottieResult;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method
