.class final Lokio/RealBufferedSink;
.super Ljava/lang/Object;
.source "RealBufferedSink.java"

# interfaces
.implements Lokio/BufferedSink;


# instance fields
.field public final buffer:Lokio/Buffer;

.field closed:Z

.field public final sink:Lokio/Sink;


# direct methods
.method constructor <init>(Lokio/Sink;)V
    .locals 6

    .prologue
    .line 29
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 25
    move-object v2, v0

    new-instance v3, Lokio/Buffer;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    iput-object v3, v2, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    .line 30
    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "sink == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 31
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    .line 32
    return-void
.end method


# virtual methods
.method public buffer()Lokio/Buffer;
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    move-object v0, v1

    return-object v0
.end method

.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Lokio/RealBufferedSink;->closed:Z

    if-eqz v3, :cond_0

    .line 255
    :goto_0
    return-void

    .line 238
    :cond_0
    const/4 v3, 0x0

    move-object v1, v3

    .line 240
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    iget-wide v3, v3, Lokio/Buffer;->size:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 241
    move-object v3, v0

    iget-object v3, v3, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    move-object v4, v0

    iget-object v4, v4, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    move-object v5, v0

    iget-object v5, v5, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    iget-wide v5, v5, Lokio/Buffer;->size:J

    invoke-interface {v3, v4, v5, v6}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :cond_1
    :goto_1
    move-object v3, v0

    :try_start_1
    iget-object v3, v3, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    invoke-interface {v3}, Lokio/Sink;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 252
    :cond_2
    :goto_2
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lokio/RealBufferedSink;->closed:Z

    .line 254
    move-object v3, v1

    if-eqz v3, :cond_3

    move-object v3, v1

    invoke-static {v3}, Lokio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    .line 255
    :cond_3
    goto :goto_0

    .line 243
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 244
    move-object v3, v2

    move-object v1, v3

    goto :goto_1

    .line 249
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 250
    move-object v3, v1

    if-nez v3, :cond_2

    move-object v3, v2

    move-object v1, v3

    goto :goto_2
.end method

.method public emit()Lokio/BufferedSink;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Lokio/RealBufferedSink;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 185
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    move-wide v1, v3

    .line 186
    move-wide v3, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    move-object v4, v0

    iget-object v4, v4, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    move-wide v5, v1

    invoke-interface {v3, v4, v5, v6}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 187
    :cond_1
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public emitCompleteSegments()Lokio/BufferedSink;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Lokio/RealBufferedSink;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 178
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->completeSegmentByteCount()J

    move-result-wide v3

    move-wide v1, v3

    .line 179
    move-wide v3, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    move-object v4, v0

    iget-object v4, v4, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    move-wide v5, v1

    invoke-interface {v3, v4, v5, v6}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 180
    :cond_1
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokio/RealBufferedSink;->closed:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 223
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    iget-wide v1, v1, Lokio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 224
    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    move-object v2, v0

    iget-object v2, v2, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    move-object v3, v0

    iget-object v3, v3, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    iget-wide v3, v3, Lokio/Buffer;->size:J

    invoke-interface {v1, v2, v3, v4}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 226
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    invoke-interface {v1}, Lokio/Sink;->flush()V

    .line 227
    return-void
.end method

.method public isOpen()Z
    .locals 2

    .prologue
    .line 230
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokio/RealBufferedSink;->closed:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .locals 5

    .prologue
    .line 191
    move-object v0, p0

    new-instance v1, Lokio/RealBufferedSink$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lokio/RealBufferedSink$1;-><init>(Lokio/RealBufferedSink;)V

    move-object v0, v1

    return-object v0
.end method

.method public timeout()Lokio/Timeout;
    .locals 2

    .prologue
    .line 258
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    invoke-interface {v1}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 262
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

    iget-object v2, v2, Lokio/RealBufferedSink;->sink:Lokio/Sink;

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

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Lokio/RealBufferedSink;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 97
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lokio/Buffer;->write(Ljava/nio/ByteBuffer;)I

    move-result v3

    move v2, v3

    .line 98
    move-object v3, v0

    invoke-virtual {v3}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v3

    .line 99
    move v3, v2

    move v0, v3

    return v0
.end method

.method public write(Lokio/ByteString;)Lokio/BufferedSink;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lokio/RealBufferedSink;->closed:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 47
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object v2

    .line 48
    move-object v2, v0

    invoke-virtual {v2}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public write(Lokio/Source;J)Lokio/BufferedSink;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    :goto_0
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 114
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    move-wide v8, v2

    invoke-interface {v6, v7, v8, v9}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v6

    move-wide v4, v6

    .line 115
    move-wide v6, v4

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    new-instance v6, Ljava/io/EOFException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/io/EOFException;-><init>()V

    throw v6

    .line 116
    :cond_0
    move-wide v6, v2

    move-wide v8, v4

    sub-long/2addr v6, v8

    move-wide v2, v6

    .line 117
    move-object v6, v0

    invoke-virtual {v6}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v6

    .line 118
    goto :goto_0

    .line 119
    :cond_1
    move-object v6, v0

    move-object v0, v6

    return-object v0
.end method

.method public write([B)Lokio/BufferedSink;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lokio/RealBufferedSink;->closed:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object v2

    .line 86
    move-object v2, v0

    invoke-virtual {v2}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public write([BII)Lokio/BufferedSink;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-boolean v4, v4, Lokio/RealBufferedSink;->closed:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "closed"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 91
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v4

    .line 92
    move-object v4, v0

    invoke-virtual {v4}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    iget-boolean v4, v4, Lokio/RealBufferedSink;->closed:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "closed"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 41
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 42
    move-object v4, v0

    invoke-virtual {v4}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v4

    .line 43
    return-void
.end method

.method public writeAll(Lokio/Source;)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "source == null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 104
    :cond_0
    const-wide/16 v6, 0x0

    move-wide v2, v6

    .line 105
    :goto_0
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    const-wide/16 v8, 0x2000

    invoke-interface {v6, v7, v8, v9}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v6

    move-wide v10, v6

    move-wide v6, v10

    move-wide v8, v10

    move-wide v4, v8

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 106
    move-wide v6, v2

    move-wide v8, v4

    add-long/2addr v6, v8

    move-wide v2, v6

    .line 107
    move-object v6, v0

    invoke-virtual {v6}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v6

    goto :goto_0

    .line 109
    :cond_1
    move-wide v6, v2

    move-wide v0, v6

    return-wide v0
.end method

.method public writeByte(I)Lokio/BufferedSink;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lokio/RealBufferedSink;->closed:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    move v3, v1

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v2

    .line 125
    move-object v2, v0

    invoke-virtual {v2}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public writeDecimalLong(J)Lokio/BufferedSink;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Lokio/RealBufferedSink;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 166
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v3

    .line 167
    move-object v3, v0

    invoke-virtual {v3}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public writeHexadecimalUnsignedLong(J)Lokio/BufferedSink;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Lokio/RealBufferedSink;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 172
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object v3

    .line 173
    move-object v3, v0

    invoke-virtual {v3}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public writeInt(I)Lokio/BufferedSink;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lokio/RealBufferedSink;->closed:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 142
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    move v3, v1

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v2

    .line 143
    move-object v2, v0

    invoke-virtual {v2}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public writeIntLe(I)Lokio/BufferedSink;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lokio/RealBufferedSink;->closed:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    move v3, v1

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeIntLe(I)Lokio/Buffer;

    move-result-object v2

    .line 149
    move-object v2, v0

    invoke-virtual {v2}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public writeLong(J)Lokio/BufferedSink;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Lokio/RealBufferedSink;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 154
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object v3

    .line 155
    move-object v3, v0

    invoke-virtual {v3}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public writeLongLe(J)Lokio/BufferedSink;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Lokio/RealBufferedSink;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 160
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->writeLongLe(J)Lokio/Buffer;

    move-result-object v3

    .line 161
    move-object v3, v0

    invoke-virtual {v3}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public writeShort(I)Lokio/BufferedSink;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lokio/RealBufferedSink;->closed:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    move v3, v1

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object v2

    .line 131
    move-object v2, v0

    invoke-virtual {v2}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public writeShortLe(I)Lokio/BufferedSink;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lokio/RealBufferedSink;->closed:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    move v3, v1

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeShortLe(I)Lokio/Buffer;

    move-result-object v2

    .line 137
    move-object v2, v0

    invoke-virtual {v2}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/BufferedSink;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    iget-boolean v5, v5, Lokio/RealBufferedSink;->closed:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "closed"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 79
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    move-object v6, v1

    move v7, v2

    move v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v5

    .line 80
    move-object v5, v0

    invoke-virtual {v5}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/BufferedSink;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Lokio/RealBufferedSink;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 72
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v3

    .line 73
    move-object v3, v0

    invoke-virtual {v3}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lokio/RealBufferedSink;->closed:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v2

    .line 54
    move-object v2, v0

    invoke-virtual {v2}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-boolean v4, v4, Lokio/RealBufferedSink;->closed:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "closed"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 60
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v4

    .line 61
    move-object v4, v0

    invoke-virtual {v4}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public writeUtf8CodePoint(I)Lokio/BufferedSink;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lokio/RealBufferedSink;->closed:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    move v3, v1

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    move-result-object v2

    .line 67
    move-object v2, v0

    invoke-virtual {v2}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
