.class public final Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;
.super Ljava/lang/Object;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/parser/moshi/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Options"
.end annotation


# instance fields
.field final doubleQuoteSuffix:Lokio/Options;

.field final strings:[Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;Lokio/Options;)V
    .locals 5

    .prologue
    .line 374
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 375
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    .line 376
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->doubleQuoteSuffix:Lokio/Options;

    .line 377
    return-void
.end method

.method public static varargs of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;
    .locals 9

    .prologue
    .line 381
    move-object v0, p0

    move-object v4, v0

    :try_start_0
    array-length v4, v4

    new-array v4, v4, [Lokio/ByteString;

    move-object v1, v4

    .line 382
    new-instance v4, Lokio/Buffer;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    move-object v2, v4

    .line 383
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v0

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 384
    move-object v4, v2

    move-object v5, v0

    move v6, v3

    aget-object v5, v5, v6

    invoke-static {v4, v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->access$000(Lokio/BufferedSink;Ljava/lang/String;)V

    .line 385
    move-object v4, v2

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    move-result v4

    .line 386
    move-object v4, v1

    move v5, v3

    move-object v6, v2

    invoke-virtual {v6}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v6

    aput-object v6, v4, v5

    .line 383
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 388
    :cond_0
    new-instance v4, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-virtual {v6}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    move-object v7, v1

    invoke-static {v7}, Lokio/Options;->of([Lokio/ByteString;)Lokio/Options;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;-><init>([Ljava/lang/String;Lokio/Options;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    return-object v0

    .line 389
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 390
    new-instance v4, Ljava/lang/AssertionError;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method
