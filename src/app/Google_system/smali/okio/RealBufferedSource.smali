.class final Lokio/RealBufferedSource;
.super Ljava/lang/Object;
.source "RealBufferedSource.java"

# interfaces
.implements Lokio/BufferedSource;


# instance fields
.field public final buffer:Lokio/Buffer;

.field closed:Z

.field public final source:Lokio/Source;


# direct methods
.method constructor <init>(Lokio/Source;)V
    .locals 6

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 28
    move-object v2, v0

    new-instance v3, Lokio/Buffer;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    iput-object v3, v2, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    .line 33
    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "source == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 34
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 35
    return-void
.end method


# virtual methods
.method public buffer()Lokio/Buffer;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move-object v0, v1

    return-object v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 474
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokio/RealBufferedSource;->closed:Z

    if-eqz v1, :cond_0

    .line 478
    :goto_0
    return-void

    .line 475
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lokio/RealBufferedSource;->closed:Z

    .line 476
    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-interface {v1}, Lokio/Source;->close()V

    .line 477
    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->clear()V

    .line 478
    goto :goto_0
.end method

.method public exhausted()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokio/RealBufferedSource;->closed:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->exhausted()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSource;->source:Lokio/Source;

    move-object v2, v0

    iget-object v2, v2, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v3, 0x2000

    invoke-interface {v1, v2, v3, v4}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBuffer()Lokio/Buffer;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move-object v0, v1

    return-object v0
.end method

.method public indexOf(B)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const-wide/16 v4, 0x0

    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual/range {v2 .. v7}, Lokio/RealBufferedSource;->indexOf(BJJ)J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public indexOf(BJ)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, v0

    move v5, v1

    move-wide v6, v2

    const-wide v8, 0x7fffffffffffffffL

    invoke-virtual/range {v4 .. v9}, Lokio/RealBufferedSource;->indexOf(BJJ)J

    move-result-wide v4

    move-wide v0, v4

    return-wide v0
.end method

.method public indexOf(BJJ)J
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object v10, v0

    iget-boolean v10, v10, Lokio/RealBufferedSource;->closed:Z

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/IllegalStateException;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    const-string v12, "closed"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 346
    :cond_0
    move-wide v10, v2

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-ltz v10, :cond_1

    move-wide v10, v4

    move-wide v12, v2

    cmp-long v10, v10, v12

    if-gez v10, :cond_3

    .line 347
    :cond_1
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    const-string v12, "fromIndex=%s toIndex=%s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x0

    move-wide/from16 v16, v2

    .line 348
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x1

    move-wide/from16 v16, v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 361
    :cond_2
    move-wide v10, v2

    move-wide v12, v8

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    move-wide v2, v10

    .line 351
    :cond_3
    move-wide v10, v2

    move-wide v12, v4

    cmp-long v10, v10, v12

    if-gez v10, :cond_6

    .line 352
    move-object v10, v0

    iget-object v10, v10, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move v11, v1

    move-wide v12, v2

    move-wide v14, v4

    invoke-virtual/range {v10 .. v15}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v10

    move-wide v6, v10

    .line 353
    move-wide v10, v6

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_4

    move-wide v10, v6

    move-wide v0, v10

    .line 363
    :goto_0
    return-wide v0

    .line 357
    :cond_4
    move-object v10, v0

    iget-object v10, v10, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v10, v10, Lokio/Buffer;->size:J

    move-wide v8, v10

    .line 358
    move-wide v10, v8

    move-wide v12, v4

    cmp-long v10, v10, v12

    if-gez v10, :cond_5

    move-object v10, v0

    iget-object v10, v10, Lokio/RealBufferedSource;->source:Lokio/Source;

    move-object v11, v0

    iget-object v11, v11, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v12, 0x2000

    invoke-interface {v10, v11, v12, v13}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_2

    :cond_5
    const-wide/16 v10, -0x1

    move-wide v0, v10

    goto :goto_0

    .line 363
    :cond_6
    const-wide/16 v10, -0x1

    move-wide v0, v10

    goto :goto_0
.end method

.method public indexOf(Lokio/ByteString;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lokio/RealBufferedSource;->indexOf(Lokio/ByteString;J)J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public indexOf(Lokio/ByteString;J)J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object v8, v0

    iget-boolean v8, v8, Lokio/RealBufferedSource;->closed:Z

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const-string v10, "closed"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 381
    :cond_0
    move-wide v8, v2

    move-wide v10, v6

    move-object v12, v1

    invoke-virtual {v12}, Lokio/ByteString;->size()I

    move-result v12

    int-to-long v12, v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    move-wide v2, v8

    .line 374
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move-object v9, v1

    move-wide v10, v2

    invoke-virtual {v8, v9, v10, v11}, Lokio/Buffer;->indexOf(Lokio/ByteString;J)J

    move-result-wide v8

    move-wide v4, v8

    .line 375
    move-wide v8, v4

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    move-wide v8, v4

    move-wide v0, v8

    .line 378
    :goto_0
    return-wide v0

    .line 377
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v8, v8, Lokio/Buffer;->size:J

    move-wide v6, v8

    .line 378
    move-object v8, v0

    iget-object v8, v8, Lokio/RealBufferedSource;->source:Lokio/Source;

    move-object v9, v0

    iget-object v9, v9, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v10, 0x2000

    invoke-interface {v8, v9, v10, v11}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    const-wide/16 v8, -0x1

    move-wide v0, v8

    goto :goto_0
.end method

.method public indexOfElement(Lokio/ByteString;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lokio/RealBufferedSource;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public indexOfElement(Lokio/ByteString;J)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v8, v0

    iget-boolean v8, v8, Lokio/RealBufferedSource;->closed:Z

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string v10, "closed"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 400
    :cond_0
    move-wide v8, v2

    move-wide v10, v6

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    move-wide v2, v8

    .line 393
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move-object v9, v1

    move-wide v10, v2

    invoke-virtual {v8, v9, v10, v11}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide v8

    move-wide v4, v8

    .line 394
    move-wide v8, v4

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    move-wide v8, v4

    move-wide v0, v8

    .line 397
    :goto_0
    return-wide v0

    .line 396
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v8, v8, Lokio/Buffer;->size:J

    move-wide v6, v8

    .line 397
    move-object v8, v0

    iget-object v8, v8, Lokio/RealBufferedSource;->source:Lokio/Source;

    move-object v9, v0

    iget-object v9, v9, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v10, 0x2000

    invoke-interface {v8, v9, v10, v11}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    const-wide/16 v8, -0x1

    move-wide v0, v8

    goto :goto_0
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 432
    move-object v0, p0

    new-instance v1, Lokio/RealBufferedSource$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lokio/RealBufferedSource$1;-><init>(Lokio/RealBufferedSource;)V

    move-object v0, v1

    return-object v0
.end method

.method public isOpen()Z
    .locals 2

    .prologue
    .line 470
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokio/RealBufferedSource;->closed:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public peek()Lokio/BufferedSource;
    .locals 5

    .prologue
    .line 428
    move-object v0, p0

    new-instance v1, Lokio/PeekSource;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lokio/PeekSource;-><init>(Lokio/BufferedSource;)V

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public rangeEquals(JLokio/ByteString;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, v0

    move-wide v5, v1

    move-object v7, v3

    const/4 v8, 0x0

    move-object v9, v3

    invoke-virtual {v9}, Lokio/ByteString;->size()I

    move-result v9

    invoke-virtual/range {v4 .. v9}, Lokio/RealBufferedSource;->rangeEquals(JLokio/ByteString;II)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public rangeEquals(JLokio/ByteString;II)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    move-object v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v9, v0

    iget-boolean v9, v9, Lokio/RealBufferedSource;->closed:Z

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string v11, "closed"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 413
    :cond_0
    move-wide v9, v1

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-ltz v9, :cond_1

    move v9, v4

    if-ltz v9, :cond_1

    move v9, v5

    if-ltz v9, :cond_1

    move-object v9, v3

    .line 416
    invoke-virtual {v9}, Lokio/ByteString;->size()I

    move-result v9

    move v10, v4

    sub-int/2addr v9, v10

    move v10, v5

    if-ge v9, v10, :cond_2

    .line 417
    :cond_1
    const/4 v9, 0x0

    move v0, v9

    .line 424
    :goto_0
    return v0

    .line 419
    :cond_2
    const/4 v9, 0x0

    move v6, v9

    :goto_1
    move v9, v6

    move v10, v5

    if-ge v9, v10, :cond_5

    .line 420
    move-wide v9, v1

    move v11, v6

    int-to-long v11, v11

    add-long/2addr v9, v11

    move-wide v7, v9

    .line 421
    move-object v9, v0

    move-wide v10, v7

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Lokio/RealBufferedSource;->request(J)Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 422
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move-wide v10, v7

    invoke-virtual {v9, v10, v11}, Lokio/Buffer;->getByte(J)B

    move-result v9

    move-object v10, v3

    move v11, v4

    move v12, v6

    add-int/2addr v11, v12

    invoke-virtual {v10, v11}, Lokio/ByteString;->getByte(I)B

    move-result v10

    if-eq v9, v10, :cond_4

    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 419
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 424
    :cond_5
    const/4 v9, 0x1

    move v0, v9

    goto :goto_0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v4, v4, Lokio/Buffer;->size:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 154
    move-object v4, v0

    iget-object v4, v4, Lokio/RealBufferedSource;->source:Lokio/Source;

    move-object v5, v0

    iget-object v5, v5, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v4

    move-wide v2, v4

    .line 155
    move-wide v4, v2

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    const/4 v4, -0x1

    move v0, v4

    .line 158
    :goto_0
    return v0

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lokio/Buffer;->read(Ljava/nio/ByteBuffer;)I

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public read([B)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lokio/RealBufferedSource;->read([BII)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public read([BII)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, v1

    array-length v6, v6

    int-to-long v6, v6

    move v8, v2

    int-to-long v8, v8

    move v10, v3

    int-to-long v10, v10

    invoke-static/range {v6 .. v11}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 143
    move-object v6, v0

    iget-object v6, v6, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v6, v6, Lokio/Buffer;->size:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 144
    move-object v6, v0

    iget-object v6, v6, Lokio/RealBufferedSource;->source:Lokio/Source;

    move-object v7, v0

    iget-object v7, v7, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v8, 0x2000

    invoke-interface {v6, v7, v8, v9}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v6

    move-wide v4, v6

    .line 145
    move-wide v6, v4

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    const/4 v6, -0x1

    move v0, v6

    .line 149
    :goto_0
    return v0

    .line 148
    :cond_0
    move v6, v3

    int-to-long v6, v6

    move-object v8, v0

    iget-object v8, v8, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v8, v8, Lokio/Buffer;->size:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    move v4, v6

    .line 149
    move-object v6, v0

    iget-object v6, v6, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move-object v7, v1

    move v8, v2

    move v9, v4

    invoke-virtual {v6, v7, v8, v9}, Lokio/Buffer;->read([BII)I

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, v1

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "sink == null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 47
    :cond_0
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "byteCount < 0: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 48
    :cond_1
    move-object v6, v0

    iget-boolean v6, v6, Lokio/RealBufferedSource;->closed:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "closed"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 50
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v6, v6, Lokio/Buffer;->size:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 51
    move-object v6, v0

    iget-object v6, v6, Lokio/RealBufferedSource;->source:Lokio/Source;

    move-object v7, v0

    iget-object v7, v7, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v8, 0x2000

    invoke-interface {v6, v7, v8, v9}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v6

    move-wide v4, v6

    .line 52
    move-wide v6, v4

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    const-wide/16 v6, -0x1

    move-wide v0, v6

    .line 56
    :goto_0
    return-wide v0

    .line 55
    :cond_3
    move-wide v6, v2

    move-object v8, v0

    iget-object v8, v8, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v8, v8, Lokio/Buffer;->size:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    move-wide v4, v6

    .line 56
    move-object v6, v0

    iget-object v6, v6, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move-object v7, v1

    move-wide v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide v6

    move-wide v0, v6

    goto :goto_0
.end method

.method public readAll(Lokio/Sink;)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "sink == null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 175
    :cond_0
    const-wide/16 v6, 0x0

    move-wide v2, v6

    .line 176
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Lokio/RealBufferedSource;->source:Lokio/Source;

    move-object v7, v0

    iget-object v7, v7, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v8, 0x2000

    invoke-interface {v6, v7, v8, v9}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 177
    move-object v6, v0

    iget-object v6, v6, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v6}, Lokio/Buffer;->completeSegmentByteCount()J

    move-result-wide v6

    move-wide v4, v6

    .line 178
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 179
    move-wide v6, v2

    move-wide v8, v4

    add-long/2addr v6, v8

    move-wide v2, v6

    .line 180
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move-wide v8, v4

    invoke-interface {v6, v7, v8, v9}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 182
    :cond_1
    goto :goto_0

    .line 183
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 184
    move-wide v6, v2

    move-object v8, v0

    iget-object v8, v8, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v8}, Lokio/Buffer;->size()J

    move-result-wide v8

    add-long/2addr v6, v8

    move-wide v2, v6

    .line 185
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move-object v8, v0

    iget-object v8, v8, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v8}, Lokio/Buffer;->size()J

    move-result-wide v8

    invoke-interface {v6, v7, v8, v9}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 187
    :cond_3
    move-wide v6, v2

    move-wide v0, v6

    return-wide v0
.end method

.method public readByte()B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, v0

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lokio/RealBufferedSource;->require(J)V

    .line 79
    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    move-result v1

    move v0, v1

    return v0
.end method

.method public readByteArray()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move-object v2, v0

    iget-object v2, v2, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v1, v2}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    move-result-wide v1

    .line 112
    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByteArray()[B

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public readByteArray(J)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lokio/RealBufferedSource;->require(J)V

    .line 117
    move-object v3, v0

    iget-object v3, v3, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public readByteString()Lokio/ByteString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move-object v2, v0

    iget-object v2, v2, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v1, v2}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    move-result-wide v1

    .line 84
    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public readByteString(J)Lokio/ByteString;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lokio/RealBufferedSource;->require(J)V

    .line 89
    move-object v3, v0

    iget-object v3, v3, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public readDecimalLong()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    move-object v0, p0

    move-object v3, v0

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Lokio/RealBufferedSource;->require(J)V

    .line 291
    const/4 v3, 0x0

    move v1, v3

    :goto_0
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lokio/RealBufferedSource;->request(J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 292
    move-object v3, v0

    iget-object v3, v3, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move v4, v1

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v3

    move v2, v3

    .line 293
    move v3, v2

    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    move v3, v2

    const/16 v4, 0x39

    if-le v3, v4, :cond_2

    :cond_0
    move v3, v1

    if-nez v3, :cond_1

    move v3, v2

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_2

    .line 295
    :cond_1
    move v3, v1

    if-nez v3, :cond_3

    .line 296
    new-instance v3, Ljava/lang/NumberFormatException;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const-string v5, "Expected leading [0-9] or \'-\' character but was %#x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v2

    .line 297
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v7, v8

    .line 296
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 291
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readDecimalLong()J

    move-result-wide v3

    move-wide v0, v3

    return-wide v0
.end method

.method public readFully(Lokio/Buffer;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, v0

    move-wide v6, v2

    :try_start_0
    invoke-virtual {v5, v6, v7}, Lokio/RealBufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    move-object v5, v0

    iget-object v5, v5, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move-object v6, v1

    move-wide v7, v2

    invoke-virtual {v5, v6, v7, v8}, Lokio/Buffer;->readFully(Lokio/Buffer;J)V

    .line 170
    return-void

    .line 164
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 166
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v5, v6}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    move-result-wide v5

    .line 167
    move-object v5, v4

    throw v5
.end method

.method public readFully([B)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    move-object v6, v1

    :try_start_0
    array-length v6, v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lokio/RealBufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    move-object v5, v0

    iget-object v5, v5, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lokio/Buffer;->readFully([B)V

    .line 138
    return-void

    .line 127
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 129
    const/4 v5, 0x0

    move v3, v5

    .line 130
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v5, v5, Lokio/Buffer;->size:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 131
    move-object v5, v0

    iget-object v5, v5, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move-object v6, v1

    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v8, v8, Lokio/Buffer;->size:J

    long-to-int v8, v8

    invoke-virtual {v5, v6, v7, v8}, Lokio/Buffer;->read([BII)I

    move-result v5

    move v4, v5

    .line 132
    move v5, v4

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 133
    :cond_0
    move v5, v3

    move v6, v4

    add-int/2addr v5, v6

    move v3, v5

    .line 134
    goto :goto_0

    .line 135
    :cond_1
    move-object v5, v2

    throw v5
.end method

.method public readHexadecimalUnsignedLong()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    move-object v0, p0

    move-object v3, v0

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Lokio/RealBufferedSource;->require(J)V

    .line 309
    const/4 v3, 0x0

    move v1, v3

    :goto_0
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lokio/RealBufferedSource;->request(J)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 310
    move-object v3, v0

    iget-object v3, v3, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move v4, v1

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v3

    move v2, v3

    .line 311
    move v3, v2

    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    move v3, v2

    const/16 v4, 0x39

    if-le v3, v4, :cond_3

    :cond_0
    move v3, v2

    const/16 v4, 0x61

    if-lt v3, v4, :cond_1

    move v3, v2

    const/16 v4, 0x66

    if-le v3, v4, :cond_3

    :cond_1
    move v3, v2

    const/16 v4, 0x41

    if-lt v3, v4, :cond_2

    move v3, v2

    const/16 v4, 0x46

    if-le v3, v4, :cond_3

    .line 313
    :cond_2
    move v3, v1

    if-nez v3, :cond_4

    .line 314
    new-instance v3, Ljava/lang/NumberFormatException;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const-string v5, "Expected leading [0-9a-fA-F] character but was %#x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v2

    .line 315
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v7, v8

    .line 314
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 309
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readHexadecimalUnsignedLong()J

    move-result-wide v3

    move-wide v0, v3

    return-wide v0
.end method

.method public readInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    move-object v0, p0

    move-object v1, v0

    const-wide/16 v2, 0x4

    invoke-virtual {v1, v2, v3}, Lokio/RealBufferedSource;->require(J)V

    .line 270
    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readInt()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public readIntLe()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    move-object v0, p0

    move-object v1, v0

    const-wide/16 v2, 0x4

    invoke-virtual {v1, v2, v3}, Lokio/RealBufferedSource;->require(J)V

    .line 275
    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readIntLe()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public readLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    move-object v0, p0

    move-object v1, v0

    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Lokio/RealBufferedSource;->require(J)V

    .line 280
    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readLong()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public readLongLe()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    move-object v0, p0

    move-object v1, v0

    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Lokio/RealBufferedSource;->require(J)V

    .line 285
    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readLongLe()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public readShort()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    move-object v0, p0

    move-object v1, v0

    const-wide/16 v2, 0x2

    invoke-virtual {v1, v2, v3}, Lokio/RealBufferedSource;->require(J)V

    .line 260
    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readShort()S

    move-result v1

    move v0, v1

    return v0
.end method

.method public readShortLe()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    move-object v0, p0

    move-object v1, v0

    const-wide/16 v2, 0x2

    invoke-virtual {v1, v2, v3}, Lokio/RealBufferedSource;->require(J)V

    .line 265
    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readShortLe()S

    move-result v1

    move v0, v1

    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, v0

    move-wide v5, v1

    invoke-virtual {v4, v5, v6}, Lokio/RealBufferedSource;->require(J)V

    .line 209
    move-object v4, v3

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "charset == null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 210
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move-wide v5, v1

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "charset == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move-object v3, v0

    iget-object v3, v3, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    move-result-wide v2

    .line 204
    move-object v2, v0

    iget-object v2, v2, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public readUtf8()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move-object v2, v0

    iget-object v2, v2, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v1, v2}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    move-result-wide v1

    .line 192
    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public readUtf8(J)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lokio/RealBufferedSource;->require(J)V

    .line 197
    move-object v3, v0

    iget-object v3, v3, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public readUtf8CodePoint()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    move-object v0, p0

    move-object v2, v0

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Lokio/RealBufferedSource;->require(J)V

    .line 246
    move-object v2, v0

    iget-object v2, v2, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lokio/Buffer;->getByte(J)B

    move-result v2

    move v1, v2

    .line 247
    move v2, v1

    const/16 v3, 0xe0

    and-int/lit16 v2, v2, 0xe0

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_1

    .line 248
    move-object v2, v0

    const-wide/16 v3, 0x2

    invoke-virtual {v2, v3, v4}, Lokio/RealBufferedSource;->require(J)V

    .line 255
    :cond_0
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->readUtf8CodePoint()I

    move-result v2

    move v0, v2

    return v0

    .line 249
    :cond_1
    move v2, v1

    const/16 v3, 0xf0

    and-int/lit16 v2, v2, 0xf0

    const/16 v3, 0xe0

    if-ne v2, v3, :cond_2

    .line 250
    move-object v2, v0

    const-wide/16 v3, 0x3

    invoke-virtual {v2, v3, v4}, Lokio/RealBufferedSource;->require(J)V

    goto :goto_0

    .line 251
    :cond_2
    move v2, v1

    const/16 v3, 0xf8

    and-int/lit16 v2, v2, 0xf8

    const/16 v3, 0xf0

    if-ne v2, v3, :cond_0

    .line 252
    move-object v2, v0

    const-wide/16 v3, 0x4

    invoke-virtual {v2, v3, v4}, Lokio/RealBufferedSource;->require(J)V

    goto :goto_0
.end method

.method public readUtf8Line()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 214
    move-object v0, p0

    move-object v3, v0

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lokio/RealBufferedSource;->indexOf(B)J

    move-result-wide v3

    move-wide v1, v3

    .line 216
    move-wide v3, v1

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 217
    move-object v3, v0

    iget-object v3, v3, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v3, v3, Lokio/Buffer;->size:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v4, v4, Lokio/Buffer;->size:J

    invoke-virtual {v3, v4, v5}, Lokio/RealBufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .line 220
    :goto_1
    return-object v0

    .line 217
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 220
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_1
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    move-object v0, p0

    move-object v1, v0

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v1, v2, v3}, Lokio/RealBufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public readUtf8LineStrict(J)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide v8, v1

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "limit < 0: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide v11, v1

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 229
    :cond_0
    move-wide v8, v1

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    const-wide v8, 0x7fffffffffffffffL

    :goto_0
    move-wide v3, v8

    .line 230
    move-object v8, v0

    const/16 v9, 0xa

    const-wide/16 v10, 0x0

    move-wide v12, v3

    invoke-virtual/range {v8 .. v13}, Lokio/RealBufferedSource;->indexOf(BJJ)J

    move-result-wide v8

    move-wide v5, v8

    .line 231
    move-wide v8, v5

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    move-object v8, v0

    iget-object v8, v8, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move-wide v9, v5

    invoke-virtual {v8, v9, v10}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    .line 235
    :goto_1
    return-object v0

    .line 229
    :cond_1
    move-wide v8, v1

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_0

    .line 232
    :cond_2
    move-wide v8, v3

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    move-object v8, v0

    move-wide v9, v3

    .line 233
    invoke-virtual {v8, v9, v10}, Lokio/RealBufferedSource;->request(J)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v0

    iget-object v8, v8, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move-wide v9, v3

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Lokio/Buffer;->getByte(J)B

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_3

    move-object v8, v0

    move-wide v9, v3

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    .line 234
    invoke-virtual {v8, v9, v10}, Lokio/RealBufferedSource;->request(J)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v0

    iget-object v8, v8, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move-wide v9, v3

    invoke-virtual {v8, v9, v10}, Lokio/Buffer;->getByte(J)B

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_3

    .line 235
    move-object v8, v0

    iget-object v8, v8, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move-wide v9, v3

    invoke-virtual {v8, v9, v10}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    goto :goto_1

    .line 237
    :cond_3
    new-instance v8, Lokio/Buffer;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    invoke-direct {v9}, Lokio/Buffer;-><init>()V

    move-object v7, v8

    .line 238
    move-object v8, v0

    iget-object v8, v8, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move-object v9, v7

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x20

    move-object v14, v0

    iget-object v14, v14, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v14}, Lokio/Buffer;->size()J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    invoke-virtual/range {v8 .. v13}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    move-result-object v8

    .line 239
    new-instance v8, Ljava/io/EOFException;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\\n not found: limit="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v11}, Lokio/Buffer;->size()J

    move-result-wide v11

    move-wide v13, v1

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " content="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v7

    .line 240
    invoke-virtual {v11}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v11

    invoke-virtual {v11}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x2026

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public request(J)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteCount < 0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 70
    :cond_0
    move-object v3, v0

    iget-boolean v3, v3, Lokio/RealBufferedSource;->closed:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 71
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v3, v3, Lokio/Buffer;->size:J

    move-wide v5, v1

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    .line 72
    move-object v3, v0

    iget-object v3, v3, Lokio/RealBufferedSource;->source:Lokio/Source;

    move-object v4, v0

    iget-object v4, v4, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v5, 0x2000

    invoke-interface {v3, v4, v5, v6}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    const/4 v3, 0x0

    move v0, v3

    .line 74
    :goto_0
    return v0

    :cond_2
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public require(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lokio/RealBufferedSource;->request(J)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/io/EOFException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 66
    :cond_0
    return-void
.end method

.method public select(Lokio/Options;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-boolean v4, v4, Lokio/RealBufferedSource;->closed:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "closed"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 96
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move-object v5, v1

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lokio/Buffer;->selectPrefix(Lokio/Options;Z)I

    move-result v4

    move v2, v4

    .line 97
    move v4, v2

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    const/4 v4, -0x1

    move v0, v4

    .line 105
    :goto_0
    return v0

    .line 98
    :cond_1
    move v4, v2

    const/4 v5, -0x2

    if-ne v4, v5, :cond_2

    .line 100
    move-object v4, v0

    iget-object v4, v4, Lokio/RealBufferedSource;->source:Lokio/Source;

    move-object v5, v0

    iget-object v5, v5, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    const/4 v4, -0x1

    move v0, v4

    goto :goto_0

    .line 103
    :cond_2
    move-object v4, v1

    iget-object v4, v4, Lokio/Options;->byteStrings:[Lokio/ByteString;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v4

    move v3, v4

    .line 104
    move-object v4, v0

    iget-object v4, v4, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move v5, v3

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lokio/Buffer;->skip(J)V

    .line 105
    move v4, v2

    move v0, v4

    goto :goto_0
.end method

.method public skip(J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    move-object v0, p0

    move-wide v1, p1

    move-object v5, v0

    iget-boolean v5, v5, Lokio/RealBufferedSource;->closed:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "closed"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 330
    :cond_0
    move-wide v5, v1

    move-object v7, v0

    iget-object v7, v7, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v7}, Lokio/Buffer;->size()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    move-wide v3, v5

    .line 331
    move-object v5, v0

    iget-object v5, v5, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move-wide v6, v3

    invoke-virtual {v5, v6, v7}, Lokio/Buffer;->skip(J)V

    .line 332
    move-wide v5, v1

    move-wide v7, v3

    sub-long/2addr v5, v7

    move-wide v1, v5

    .line 326
    :cond_1
    move-wide v5, v1

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 327
    move-object v5, v0

    iget-object v5, v5, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v5, v5, Lokio/Buffer;->size:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lokio/RealBufferedSource;->source:Lokio/Source;

    move-object v6, v0

    iget-object v6, v6, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v7, 0x2000

    invoke-interface {v5, v6, v7, v8}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 328
    new-instance v5, Ljava/io/EOFException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/io/EOFException;-><init>()V

    throw v5

    .line 334
    :cond_2
    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 2

    .prologue
    .line 481
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-interface {v1}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 485
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buffer("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lokio/RealBufferedSource;->source:Lokio/Source;

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
