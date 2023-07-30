.class public Lcom/airbnb/lottie/network/NetworkCache;
.super Ljava/lang/Object;
.source "NetworkCache.java"


# instance fields
.field private final appContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 25
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v2, Lcom/airbnb/lottie/network/NetworkCache;->appContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method private static filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;
    .locals 8

    .prologue
    .line 153
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lottie_cache_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    const-string v5, "\\W+"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v2

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Lcom/airbnb/lottie/network/FileExtension;->tempExtension()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0

    :cond_0
    move-object v4, v1

    iget-object v4, v4, Lcom/airbnb/lottie/network/FileExtension;->extension:Ljava/lang/String;

    goto :goto_0
.end method

.method private getCachedFile(Ljava/lang/String;)Ljava/io/File;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    move-object v1, p1

    new-instance v4, Ljava/io/File;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    invoke-direct {v6}, Lcom/airbnb/lottie/network/NetworkCache;->parentDir()Ljava/io/File;

    move-result-object v6

    move-object v7, v1

    sget-object v8, Lcom/airbnb/lottie/network/FileExtension;->JSON:Lcom/airbnb/lottie/network/FileExtension;

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/airbnb/lottie/network/NetworkCache;->filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v4

    .line 131
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    move-object v4, v2

    move-object v0, v4

    .line 138
    :goto_0
    return-object v0

    .line 134
    :cond_0
    new-instance v4, Ljava/io/File;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    invoke-direct {v6}, Lcom/airbnb/lottie/network/NetworkCache;->parentDir()Ljava/io/File;

    move-result-object v6

    move-object v7, v1

    sget-object v8, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/airbnb/lottie/network/NetworkCache;->filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v4

    .line 135
    move-object v4, v3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    move-object v4, v3

    move-object v0, v4

    goto :goto_0

    .line 138
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method private parentDir()Ljava/io/File;
    .locals 7

    .prologue
    .line 142
    move-object v0, p0

    new-instance v2, Ljava/io/File;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/network/NetworkCache;->appContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "lottie_network_cache"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 143
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    .line 146
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 147
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    .line 149
    :cond_1
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 9

    .prologue
    .line 29
    move-object v0, p0

    move-object v7, v0

    invoke-direct {v7}, Lcom/airbnb/lottie/network/NetworkCache;->parentDir()Ljava/io/File;

    move-result-object v7

    move-object v1, v7

    .line 30
    move-object v7, v1

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 31
    move-object v7, v1

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    move-object v2, v7

    .line 32
    move-object v7, v2

    if-eqz v7, :cond_0

    move-object v7, v2

    array-length v7, v7

    if-lez v7, :cond_0

    .line 33
    move-object v7, v1

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    move-object v3, v7

    move-object v7, v3

    array-length v7, v7

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_0

    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 34
    move-object v7, v6

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    .line 33
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 37
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    .line 39
    :cond_1
    return-void
.end method

.method fetch(Ljava/lang/String;)Landroidx/core/util/Pair;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/core/util/Pair",
            "<",
            "Lcom/airbnb/lottie/network/FileExtension;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    move-object v6, v1

    :try_start_0
    invoke-direct {v5, v6}, Lcom/airbnb/lottie/network/NetworkCache;->getCachedFile(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v2, v5

    .line 57
    move-object v5, v2

    if-nez v5, :cond_0

    .line 58
    const/4 v5, 0x0

    move-object v0, v5

    .line 76
    :goto_0
    return-object v0

    .line 54
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 55
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 63
    :cond_0
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v5

    .line 69
    move-object v5, v2

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".zip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 70
    sget-object v5, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    move-object v4, v5

    .line 75
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cache hit for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 76
    new-instance v5, Landroidx/core/util/Pair;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v4

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v5

    goto :goto_0

    .line 64
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 65
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 72
    :cond_1
    sget-object v5, Lcom/airbnb/lottie/network/FileExtension;->JSON:Lcom/airbnb/lottie/network/FileExtension;

    move-object v4, v5

    goto :goto_1
.end method

.method renameTempFile(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;)V
    .locals 13

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, v1

    move-object v9, v2

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/airbnb/lottie/network/NetworkCache;->filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 114
    new-instance v8, Ljava/io/File;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    invoke-direct {v10}, Lcom/airbnb/lottie/network/NetworkCache;->parentDir()Ljava/io/File;

    move-result-object v10

    move-object v11, v3

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v8

    .line 115
    move-object v8, v4

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".temp"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 116
    new-instance v8, Ljava/io/File;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v5

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v8

    .line 117
    move-object v8, v4

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    move v7, v8

    .line 118
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Copying temp file to real file ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 119
    move v8, v7

    if-nez v8, :cond_0

    .line 120
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to rename cache file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v6

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 122
    :cond_0
    return-void
.end method

.method writeTempCacheFile(Ljava/lang/String;Ljava/io/InputStream;Lcom/airbnb/lottie/network/FileExtension;)Ljava/io/File;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v11, v1

    move-object v12, v3

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/airbnb/lottie/network/NetworkCache;->filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    .line 86
    new-instance v11, Ljava/io/File;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v0

    invoke-direct {v13}, Lcom/airbnb/lottie/network/NetworkCache;->parentDir()Ljava/io/File;

    move-result-object v13

    move-object v14, v4

    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v11

    .line 88
    :try_start_0
    new-instance v11, Ljava/io/FileOutputStream;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v5

    invoke-direct {v12, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v6, v11

    .line 91
    const/16 v11, 0x400

    :try_start_1
    new-array v11, v11, [B

    move-object v7, v11

    .line 94
    :goto_0
    move-object v11, v2

    move-object v12, v7

    invoke-virtual {v11, v12}, Ljava/io/InputStream;->read([B)I

    move-result v11

    move v15, v11

    move v11, v15

    move v12, v15

    move v8, v12

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    .line 95
    move-object v11, v6

    move-object v12, v7

    const/4 v13, 0x0

    move v14, v8

    invoke-virtual {v11, v12, v13, v14}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 98
    :cond_0
    move-object v11, v6

    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    move-object v11, v6

    :try_start_2
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    move-object v11, v2

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 105
    move-object v11, v5

    move-object v0, v11

    return-object v0

    .line 100
    :catchall_0
    move-exception v11

    move-object v9, v11

    move-object v11, v6

    :try_start_3
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    move-object v11, v9

    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 103
    :catchall_1
    move-exception v11

    move-object v10, v11

    move-object v11, v2

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    move-object v11, v10

    throw v11
.end method
