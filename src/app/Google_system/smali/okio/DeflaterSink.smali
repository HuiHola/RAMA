.class public final Lokio/DeflaterSink;
.super Ljava/lang/Object;
.source "DeflaterSink.java"

# interfaces
.implements Lokio/Sink;


# instance fields
.field private closed:Z

.field private final deflater:Ljava/util/zip/Deflater;

.field private final sink:Lokio/BufferedSink;


# direct methods
.method constructor <init>(Lokio/BufferedSink;Ljava/util/zip/Deflater;)V
    .locals 7

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 53
    move-object v3, v1

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "source == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 54
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

    .line 55
    :cond_1
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    .line 56
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    .line 57
    return-void
.end method

.method public constructor <init>(Lokio/Sink;Ljava/util/zip/Deflater;)V
    .locals 6

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v4

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lokio/DeflaterSink;-><init>(Lokio/BufferedSink;Ljava/util/zip/Deflater;)V

    .line 45
    return-void
.end method

.method private deflate(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    invoke-interface {v5}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v5

    move-object v2, v5

    .line 86
    :goto_0
    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v5

    move-object v3, v5

    .line 92
    move v5, v1

    if-eqz v5, :cond_1

    .line 93
    move-object v5, v0

    iget-object v5, v5, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    move-object v6, v3

    iget-object v6, v6, Lokio/Segment;->data:[B

    move-object v7, v3

    iget v7, v7, Lokio/Segment;->limit:I

    const/16 v8, 0x2000

    move-object v9, v3

    iget v9, v9, Lokio/Segment;->limit:I

    rsub-int v8, v9, 0x2000

    const/4 v9, 0x2

    invoke-virtual {v5, v6, v7, v8, v9}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v5

    .line 94
    :goto_1
    move v4, v5

    .line 96
    move v5, v4

    if-lez v5, :cond_2

    .line 97
    move-object v5, v3

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lokio/Segment;->limit:I

    move v7, v4

    add-int/2addr v6, v7

    iput v6, v5, Lokio/Segment;->limit:I

    .line 98
    move-object v5, v2

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget-wide v6, v6, Lokio/Buffer;->size:J

    move v8, v4

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, v5, Lokio/Buffer;->size:J

    .line 99
    move-object v5, v0

    iget-object v5, v5, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    invoke-interface {v5}, Lokio/BufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v5

    .line 108
    :cond_0
    goto :goto_0

    .line 94
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    move-object v6, v3

    iget-object v6, v6, Lokio/Segment;->data:[B

    move-object v7, v3

    iget v7, v7, Lokio/Segment;->limit:I

    const/16 v8, 0x2000

    move-object v9, v3

    iget v9, v9, Lokio/Segment;->limit:I

    rsub-int v8, v9, 0x2000

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v5

    goto :goto_1

    .line 100
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v5}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 101
    move-object v5, v3

    iget v5, v5, Lokio/Segment;->pos:I

    move-object v6, v3

    iget v6, v6, Lokio/Segment;->limit:I

    if-ne v5, v6, :cond_3

    .line 103
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v6}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v6

    iput-object v6, v5, Lokio/Buffer;->head:Lokio/Segment;

    .line 104
    move-object v5, v3

    invoke-static {v5}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 106
    :cond_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Lokio/DeflaterSink;->closed:Z

    if-eqz v3, :cond_0

    .line 147
    :goto_0
    return-void

    .line 126
    :cond_0
    const/4 v3, 0x0

    move-object v1, v3

    .line 128
    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Lokio/DeflaterSink;->finishDeflate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_1
    move-object v3, v0

    :try_start_1
    iget-object v3, v3, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    :cond_1
    :goto_2
    move-object v3, v0

    :try_start_2
    iget-object v3, v3, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 144
    :cond_2
    :goto_3
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lokio/DeflaterSink;->closed:Z

    .line 146
    move-object v3, v1

    if-eqz v3, :cond_3

    move-object v3, v1

    invoke-static {v3}, Lokio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    .line 147
    :cond_3
    goto :goto_0

    .line 129
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 130
    move-object v3, v2

    move-object v1, v3

    goto :goto_1

    .line 135
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 136
    move-object v3, v1

    if-nez v3, :cond_1

    move-object v3, v2

    move-object v1, v3

    goto :goto_2

    .line 141
    :catch_2
    move-exception v3

    move-object v2, v3

    .line 142
    move-object v3, v1

    if-nez v3, :cond_2

    move-object v3, v2

    move-object v1, v3

    goto :goto_3
.end method

.method finishDeflate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finish()V

    .line 118
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lokio/DeflaterSink;->deflate(Z)V

    .line 119
    return-void
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lokio/DeflaterSink;->deflate(Z)V

    .line 113
    move-object v1, v0

    iget-object v1, v1, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/BufferedSink;->flush()V

    .line 114
    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 154
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeflaterSink("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

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

.method public write(Lokio/Buffer;J)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, v1

    iget-wide v6, v6, Lokio/Buffer;->size:J

    const-wide/16 v8, 0x0

    move-wide v10, v2

    invoke-static/range {v6 .. v11}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 61
    :goto_0
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 63
    move-object v6, v1

    iget-object v6, v6, Lokio/Buffer;->head:Lokio/Segment;

    move-object v4, v6

    .line 64
    move-wide v6, v2

    move-object v8, v4

    iget v8, v8, Lokio/Segment;->limit:I

    move-object v9, v4

    iget v9, v9, Lokio/Segment;->pos:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    move v5, v6

    .line 65
    move-object v6, v0

    iget-object v6, v6, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    move-object v7, v4

    iget-object v7, v7, Lokio/Segment;->data:[B

    move-object v8, v4

    iget v8, v8, Lokio/Segment;->pos:I

    move v9, v5

    invoke-virtual {v6, v7, v8, v9}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 68
    move-object v6, v0

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lokio/DeflaterSink;->deflate(Z)V

    .line 71
    move-object v6, v1

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget-wide v7, v7, Lokio/Buffer;->size:J

    move v9, v5

    int-to-long v9, v9

    sub-long/2addr v7, v9

    iput-wide v7, v6, Lokio/Buffer;->size:J

    .line 72
    move-object v6, v4

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Lokio/Segment;->pos:I

    move v8, v5

    add-int/2addr v7, v8

    iput v7, v6, Lokio/Segment;->pos:I

    .line 73
    move-object v6, v4

    iget v6, v6, Lokio/Segment;->pos:I

    move-object v7, v4

    iget v7, v7, Lokio/Segment;->limit:I

    if-ne v6, v7, :cond_0

    .line 74
    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v7}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v7

    iput-object v7, v6, Lokio/Buffer;->head:Lokio/Segment;

    .line 75
    move-object v6, v4

    invoke-static {v6}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 78
    :cond_0
    move-wide v6, v2

    move v8, v5

    int-to-long v8, v8

    sub-long/2addr v6, v8

    move-wide v2, v6

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    return-void
.end method
