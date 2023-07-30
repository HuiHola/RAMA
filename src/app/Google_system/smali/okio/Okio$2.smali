.class final Lokio/Okio$2;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Okio;->source(Ljava/io/InputStream;Lokio/Timeout;)Lokio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$in:Ljava/io/InputStream;

.field final synthetic val$timeout:Lokio/Timeout;


# direct methods
.method constructor <init>(Lokio/Timeout;Ljava/io/InputStream;)V
    .locals 5

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokio/Okio$2;->val$timeout:Lokio/Timeout;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokio/Okio$2;->val$in:Ljava/io/InputStream;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/Okio$2;->val$in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 153
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v7, v2

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "byteCount < 0: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide v10, v2

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 135
    :cond_0
    move-wide v7, v2

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    const-wide/16 v7, 0x0

    move-wide v0, v7

    .line 144
    :goto_0
    return-wide v0

    .line 137
    :cond_1
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lokio/Okio$2;->val$timeout:Lokio/Timeout;

    invoke-virtual {v7}, Lokio/Timeout;->throwIfReached()V

    .line 138
    move-object v7, v1

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v7

    move-object v4, v7

    .line 139
    move-wide v7, v2

    const/16 v9, 0x2000

    move-object v10, v4

    iget v10, v10, Lokio/Segment;->limit:I

    rsub-int v9, v10, 0x2000

    int-to-long v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    move v5, v7

    .line 140
    move-object v7, v0

    iget-object v7, v7, Lokio/Okio$2;->val$in:Ljava/io/InputStream;

    move-object v8, v4

    iget-object v8, v8, Lokio/Segment;->data:[B

    move-object v9, v4

    iget v9, v9, Lokio/Segment;->limit:I

    move v10, v5

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    move v6, v7

    .line 141
    move v7, v6

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    const-wide/16 v7, -0x1

    move-wide v0, v7

    goto :goto_0

    .line 142
    :cond_2
    move-object v7, v4

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Lokio/Segment;->limit:I

    move v9, v6

    add-int/2addr v8, v9

    iput v8, v7, Lokio/Segment;->limit:I

    .line 143
    move-object v7, v1

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-wide v8, v8, Lokio/Buffer;->size:J

    move v10, v6

    int-to-long v10, v10

    add-long/2addr v8, v10

    iput-wide v8, v7, Lokio/Buffer;->size:J
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    move v7, v6

    int-to-long v7, v7

    move-wide v0, v7

    goto :goto_0

    .line 145
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 146
    move-object v7, v4

    invoke-static {v7}, Lokio/Okio;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/io/IOException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v4

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 147
    :cond_3
    move-object v7, v4

    throw v7
.end method

.method public timeout()Lokio/Timeout;
    .locals 2

    .prologue
    .line 156
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/Okio$2;->val$timeout:Lokio/Timeout;

    move-object v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 160
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "source("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lokio/Okio$2;->val$in:Ljava/io/InputStream;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
