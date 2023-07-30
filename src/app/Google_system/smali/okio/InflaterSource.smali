.class public final Lokio/InflaterSource;
.super Ljava/lang/Object;
.source "InflaterSource.java"

# interfaces
.implements Lokio/Source;


# instance fields
.field private bufferBytesHeldByInflater:I

.field private closed:Z

.field private final inflater:Ljava/util/zip/Inflater;

.field private final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lokio/BufferedSource;Ljava/util/zip/Inflater;)V
    .locals 7

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 49
    move-object v3, v1

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "source == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 50
    :cond_0
    move-object v3, v2

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "inflater == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 51
    :cond_1
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    .line 52
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    .line 53
    return-void
.end method

.method public constructor <init>(Lokio/Source;Ljava/util/zip/Inflater;)V
    .locals 6

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v4

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lokio/InflaterSource;-><init>(Lokio/BufferedSource;Ljava/util/zip/Inflater;)V

    .line 41
    return-void
.end method

.method private releaseInflatedBytes()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    if-nez v2, :cond_0

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_0
    move-object v2, v0

    iget v2, v2, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    move-object v3, v0

    iget-object v3, v3, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v3

    sub-int/2addr v2, v3

    move v1, v2

    .line 115
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    move v4, v1

    sub-int/2addr v3, v4

    iput v3, v2, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    .line 116
    move-object v2, v0

    iget-object v2, v2, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    move v3, v1

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Lokio/BufferedSource;->skip(J)V

    .line 117
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokio/InflaterSource;->closed:Z

    if-eqz v1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 125
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->end()V

    .line 126
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lokio/InflaterSource;->closed:Z

    .line 127
    move-object v1, v0

    iget-object v1, v1, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->close()V

    .line 128
    goto :goto_0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide v8, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "byteCount < 0: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide v11, v2

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 58
    :cond_0
    move-object v8, v0

    iget-boolean v8, v8, Lokio/InflaterSource;->closed:Z

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string v10, "closed"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 59
    :cond_1
    move-wide v8, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    const-wide/16 v8, 0x0

    move-wide v0, v8

    .line 81
    :goto_0
    return-wide v0

    .line 62
    :cond_2
    move-object v8, v0

    invoke-virtual {v8}, Lokio/InflaterSource;->refill()Z

    move-result v8

    move v4, v8

    .line 66
    move-object v8, v1

    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {v8, v9}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v8

    move-object v5, v8

    .line 67
    move-wide v8, v2

    const/16 v10, 0x2000

    move-object v11, v5

    iget v11, v11, Lokio/Segment;->limit:I

    rsub-int v10, v11, 0x2000

    int-to-long v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    move v6, v8

    .line 68
    move-object v8, v0

    iget-object v8, v8, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    move-object v9, v5

    iget-object v9, v9, Lokio/Segment;->data:[B

    move-object v10, v5

    iget v10, v10, Lokio/Segment;->limit:I

    move v11, v6

    invoke-virtual {v8, v9, v10, v11}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v8

    move v7, v8

    .line 69
    move v8, v7

    if-lez v8, :cond_3

    .line 70
    move-object v8, v5

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Lokio/Segment;->limit:I

    move v10, v7

    add-int/2addr v9, v10

    iput v9, v8, Lokio/Segment;->limit:I

    .line 71
    move-object v8, v1

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget-wide v9, v9, Lokio/Buffer;->size:J

    move v11, v7

    int-to-long v11, v11

    add-long/2addr v9, v11

    iput-wide v9, v8, Lokio/Buffer;->size:J

    .line 72
    move v8, v7

    int-to-long v8, v8

    move-wide v0, v8

    goto :goto_0

    .line 74
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v8}, Ljava/util/zip/Inflater;->finished()Z

    move-result v8

    if-nez v8, :cond_4

    move-object v8, v0

    iget-object v8, v8, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v8}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 75
    :cond_4
    move-object v8, v0

    invoke-direct {v8}, Lokio/InflaterSource;->releaseInflatedBytes()V

    .line 76
    move-object v8, v5

    iget v8, v8, Lokio/Segment;->pos:I

    move-object v9, v5

    iget v9, v9, Lokio/Segment;->limit:I

    if-ne v8, v9, :cond_5

    .line 78
    move-object v8, v1

    move-object v9, v5

    invoke-virtual {v9}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v9

    iput-object v9, v8, Lokio/Buffer;->head:Lokio/Segment;

    .line 79
    move-object v8, v5

    invoke-static {v8}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 81
    :cond_5
    const-wide/16 v8, -0x1

    move-wide v0, v8

    goto :goto_0

    .line 83
    :cond_6
    move v8, v4

    if-eqz v8, :cond_2

    new-instance v8, Ljava/io/EOFException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string v10, "source exhausted prematurely"

    invoke-direct {v9, v10}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :catch_0
    move-exception v8

    move-object v5, v8

    .line 85
    new-instance v8, Ljava/io/IOException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v5

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method

.method public final refill()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move v0, v2

    .line 108
    :goto_0
    return v0

    .line 98
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lokio/InflaterSource;->releaseInflatedBytes()V

    .line 99
    move-object v2, v0

    iget-object v2, v2, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "?"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->exhausted()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 105
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v2

    iget-object v2, v2, Lokio/Buffer;->head:Lokio/Segment;

    move-object v1, v2

    .line 106
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lokio/Segment;->limit:I

    move-object v4, v1

    iget v4, v4, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    iput v3, v2, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    .line 107
    move-object v2, v0

    iget-object v2, v2, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    move-object v3, v1

    iget-object v3, v3, Lokio/Segment;->data:[B

    move-object v4, v1

    iget v4, v4, Lokio/Segment;->pos:I

    move-object v5, v0

    iget v5, v5, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 108
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public timeout()Lokio/Timeout;
    .locals 2

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
