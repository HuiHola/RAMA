.class public final Lokio/GzipSink;
.super Ljava/lang/Object;
.source "GzipSink.java"

# interfaces
.implements Lokio/Sink;


# instance fields
.field private closed:Z

.field private final crc:Ljava/util/zip/CRC32;

.field private final deflater:Ljava/util/zip/Deflater;

.field private final deflaterSink:Lokio/DeflaterSink;

.field private final sink:Lokio/BufferedSink;


# direct methods
.method public constructor <init>(Lokio/Sink;)V
    .locals 8

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 54
    move-object v2, v0

    new-instance v3, Ljava/util/zip/CRC32;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v3, v2, Lokio/GzipSink;->crc:Ljava/util/zip/CRC32;

    .line 57
    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string v4, "sink == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_0
    move-object v2, v0

    new-instance v3, Ljava/util/zip/Deflater;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v3, v2, Lokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    .line 59
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v3

    iput-object v3, v2, Lokio/GzipSink;->sink:Lokio/BufferedSink;

    .line 60
    move-object v2, v0

    new-instance v3, Lokio/DeflaterSink;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lokio/GzipSink;->sink:Lokio/BufferedSink;

    move-object v6, v0

    iget-object v6, v6, Lokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-direct {v4, v5, v6}, Lokio/DeflaterSink;-><init>(Lokio/BufferedSink;Ljava/util/zip/Deflater;)V

    iput-object v3, v2, Lokio/GzipSink;->deflaterSink:Lokio/DeflaterSink;

    .line 62
    move-object v2, v0

    invoke-direct {v2}, Lokio/GzipSink;->writeHeader()V

    .line 63
    return-void
.end method

.method private updateCrc(Lokio/Buffer;J)V
    .locals 10

    .prologue
    .line 139
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, v1

    iget-object v6, v6, Lokio/Buffer;->head:Lokio/Segment;

    move-object v4, v6

    :goto_0
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 140
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

    .line 141
    move-object v6, v0

    iget-object v6, v6, Lokio/GzipSink;->crc:Ljava/util/zip/CRC32;

    move-object v7, v4

    iget-object v7, v7, Lokio/Segment;->data:[B

    move-object v8, v4

    iget v8, v8, Lokio/Segment;->pos:I

    move v9, v5

    invoke-virtual {v6, v7, v8, v9}, Ljava/util/zip/CRC32;->update([BII)V

    .line 142
    move-wide v6, v2

    move v8, v5

    int-to-long v8, v8

    sub-long/2addr v6, v8

    move-wide v2, v6

    .line 139
    move-object v6, v4

    iget-object v6, v6, Lokio/Segment;->next:Lokio/Segment;

    move-object v4, v6

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method

.method private writeFooter()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/GzipSink;->sink:Lokio/BufferedSink;

    move-object v2, v0

    iget-object v2, v2, Lokio/GzipSink;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeIntLe(I)Lokio/BufferedSink;

    move-result-object v1

    .line 134
    move-object v1, v0

    iget-object v1, v1, Lokio/GzipSink;->sink:Lokio/BufferedSink;

    move-object v2, v0

    iget-object v2, v2, Lokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeIntLe(I)Lokio/BufferedSink;

    move-result-object v1

    .line 135
    return-void
.end method

.method private writeHeader()V
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lokio/GzipSink;->sink:Lokio/BufferedSink;

    invoke-interface {v2}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v2

    move-object v1, v2

    .line 124
    move-object v2, v1

    const/16 v3, 0x1f8b

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object v2

    .line 125
    move-object v2, v1

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v2

    .line 126
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v2

    .line 127
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v2

    .line 128
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v2

    .line 129
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v2

    .line 130
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
    .line 82
    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Lokio/GzipSink;->closed:Z

    if-eqz v3, :cond_0

    .line 111
    :goto_0
    return-void

    .line 89
    :cond_0
    const/4 v3, 0x0

    move-object v1, v3

    .line 91
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lokio/GzipSink;->deflaterSink:Lokio/DeflaterSink;

    invoke-virtual {v3}, Lokio/DeflaterSink;->finishDeflate()V

    .line 92
    move-object v3, v0

    invoke-direct {v3}, Lokio/GzipSink;->writeFooter()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_1
    move-object v3, v0

    :try_start_1
    iget-object v3, v3, Lokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    :cond_1
    :goto_2
    move-object v3, v0

    :try_start_2
    iget-object v3, v3, Lokio/GzipSink;->sink:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 108
    :cond_2
    :goto_3
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lokio/GzipSink;->closed:Z

    .line 110
    move-object v3, v1

    if-eqz v3, :cond_3

    move-object v3, v1

    invoke-static {v3}, Lokio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    .line 111
    :cond_3
    goto :goto_0

    .line 93
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 94
    move-object v3, v2

    move-object v1, v3

    goto :goto_1

    .line 99
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 100
    move-object v3, v1

    if-nez v3, :cond_1

    move-object v3, v2

    move-object v1, v3

    goto :goto_2

    .line 105
    :catch_2
    move-exception v3

    move-object v2, v3

    .line 106
    move-object v3, v1

    if-nez v3, :cond_2

    move-object v3, v2

    move-object v1, v3

    goto :goto_3
.end method

.method public final deflater()Ljava/util/zip/Deflater;
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    move-object v0, v1

    return-object v0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/GzipSink;->deflaterSink:Lokio/DeflaterSink;

    invoke-virtual {v1}, Lokio/DeflaterSink;->flush()V

    .line 75
    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/GzipSink;->sink:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteCount < 0: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 67
    :cond_0
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_1
    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-direct {v4, v5, v6, v7}, Lokio/GzipSink;->updateCrc(Lokio/Buffer;J)V

    .line 70
    move-object v4, v0

    iget-object v4, v4, Lokio/GzipSink;->deflaterSink:Lokio/DeflaterSink;

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Lokio/DeflaterSink;->write(Lokio/Buffer;J)V

    .line 71
    goto :goto_0
.end method
