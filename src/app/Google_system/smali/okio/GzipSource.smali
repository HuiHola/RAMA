.class public final Lokio/GzipSource;
.super Ljava/lang/Object;
.source "GzipSource.java"

# interfaces
.implements Lokio/Source;


# static fields
.field private static final FCOMMENT:B = 0x4t

.field private static final FEXTRA:B = 0x2t

.field private static final FHCRC:B = 0x1t

.field private static final FNAME:B = 0x3t

.field private static final SECTION_BODY:B = 0x1t

.field private static final SECTION_DONE:B = 0x3t

.field private static final SECTION_HEADER:B = 0x0t

.field private static final SECTION_TRAILER:B = 0x2t


# instance fields
.field private final crc:Ljava/util/zip/CRC32;

.field private final inflater:Ljava/util/zip/Inflater;

.field private final inflaterSource:Lokio/InflaterSource;

.field private section:I

.field private final source:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokio/Source;)V
    .locals 8

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lokio/GzipSource;->section:I

    .line 58
    move-object v2, v0

    new-instance v3, Ljava/util/zip/CRC32;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v3, v2, Lokio/GzipSource;->crc:Ljava/util/zip/CRC32;

    .line 61
    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string v4, "source == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_0
    move-object v2, v0

    new-instance v3, Ljava/util/zip/Inflater;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v3, v2, Lokio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    .line 63
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v3

    iput-object v3, v2, Lokio/GzipSource;->source:Lokio/BufferedSource;

    .line 64
    move-object v2, v0

    new-instance v3, Lokio/InflaterSource;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lokio/GzipSource;->source:Lokio/BufferedSource;

    move-object v6, v0

    iget-object v6, v6, Lokio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    invoke-direct {v4, v5, v6}, Lokio/InflaterSource;-><init>(Lokio/BufferedSource;Ljava/util/zip/Inflater;)V

    iput-object v3, v2, Lokio/GzipSource;->inflaterSource:Lokio/InflaterSource;

    .line 65
    return-void
.end method

.method private checkEqual(Ljava/lang/String;II)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, v3

    move v5, v2

    if-eq v4, v5, :cond_0

    .line 205
    new-instance v4, Ljava/io/IOException;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const-string v6, "%s: actual 0x%08x != expected 0x%08x"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move v10, v3

    .line 206
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    move v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 205
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 208
    :cond_0
    return-void
.end method

.method private consumeHeader()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Lokio/GzipSource;->source:Lokio/BufferedSource;

    const-wide/16 v7, 0xa

    invoke-interface {v6, v7, v8}, Lokio/BufferedSource;->require(J)V

    .line 115
    move-object v6, v0

    iget-object v6, v6, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v6}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v6

    const-wide/16 v7, 0x3

    invoke-virtual {v6, v7, v8}, Lokio/Buffer;->getByte(J)B

    move-result v6

    move v1, v6

    .line 116
    move v6, v1

    const/4 v7, 0x1

    shr-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    const/4 v6, 0x1

    :goto_0
    move v2, v6

    .line 117
    move v6, v2

    if-eqz v6, :cond_0

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v7}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v7

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0xa

    invoke-direct/range {v6 .. v11}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    .line 119
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v6}, Lokio/BufferedSource;->readShort()S

    move-result v6

    move v3, v6

    .line 120
    move-object v6, v0

    const-string v7, "ID1ID2"

    const/16 v8, 0x1f8b

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Lokio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 121
    move-object v6, v0

    iget-object v6, v6, Lokio/GzipSource;->source:Lokio/BufferedSource;

    const-wide/16 v7, 0x8

    invoke-interface {v6, v7, v8}, Lokio/BufferedSource;->skip(J)V

    .line 127
    move v6, v1

    const/4 v7, 0x2

    shr-int/lit8 v6, v6, 0x2

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 128
    move-object v6, v0

    iget-object v6, v6, Lokio/GzipSource;->source:Lokio/BufferedSource;

    const-wide/16 v7, 0x2

    invoke-interface {v6, v7, v8}, Lokio/BufferedSource;->require(J)V

    .line 129
    move v6, v2

    if-eqz v6, :cond_1

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v7}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v7

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x2

    invoke-direct/range {v6 .. v11}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    .line 130
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v6}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v6

    invoke-virtual {v6}, Lokio/Buffer;->readShortLe()S

    move-result v6

    move v4, v6

    .line 131
    move-object v6, v0

    iget-object v6, v6, Lokio/GzipSource;->source:Lokio/BufferedSource;

    move v7, v4

    int-to-long v7, v7

    invoke-interface {v6, v7, v8}, Lokio/BufferedSource;->require(J)V

    .line 132
    move v6, v2

    if-eqz v6, :cond_2

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v7}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v7

    const-wide/16 v8, 0x0

    move v10, v4

    int-to-long v10, v10

    invoke-direct/range {v6 .. v11}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    .line 133
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lokio/GzipSource;->source:Lokio/BufferedSource;

    move v7, v4

    int-to-long v7, v7

    invoke-interface {v6, v7, v8}, Lokio/BufferedSource;->skip(J)V

    .line 140
    :cond_3
    move v6, v1

    const/4 v7, 0x3

    shr-int/lit8 v6, v6, 0x3

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 141
    move-object v6, v0

    iget-object v6, v6, Lokio/GzipSource;->source:Lokio/BufferedSource;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lokio/BufferedSource;->indexOf(B)J

    move-result-wide v6

    move-wide v4, v6

    .line 142
    move-wide v6, v4

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    new-instance v6, Ljava/io/EOFException;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    invoke-direct {v7}, Ljava/io/EOFException;-><init>()V

    throw v6

    .line 116
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 143
    :cond_5
    move v6, v2

    if-eqz v6, :cond_6

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v7}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v7

    const-wide/16 v8, 0x0

    move-wide v10, v4

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    invoke-direct/range {v6 .. v11}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    .line 144
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Lokio/GzipSource;->source:Lokio/BufferedSource;

    move-wide v7, v4

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    invoke-interface {v6, v7, v8}, Lokio/BufferedSource;->skip(J)V

    .line 151
    :cond_7
    move v6, v1

    const/4 v7, 0x4

    shr-int/lit8 v6, v6, 0x4

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_a

    .line 152
    move-object v6, v0

    iget-object v6, v6, Lokio/GzipSource;->source:Lokio/BufferedSource;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lokio/BufferedSource;->indexOf(B)J

    move-result-wide v6

    move-wide v4, v6

    .line 153
    move-wide v6, v4

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_8

    new-instance v6, Ljava/io/EOFException;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    invoke-direct {v7}, Ljava/io/EOFException;-><init>()V

    throw v6

    .line 154
    :cond_8
    move v6, v2

    if-eqz v6, :cond_9

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v7}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v7

    const-wide/16 v8, 0x0

    move-wide v10, v4

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    invoke-direct/range {v6 .. v11}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    .line 155
    :cond_9
    move-object v6, v0

    iget-object v6, v6, Lokio/GzipSource;->source:Lokio/BufferedSource;

    move-wide v7, v4

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    invoke-interface {v6, v7, v8}, Lokio/BufferedSource;->skip(J)V

    .line 162
    :cond_a
    move v6, v2

    if-eqz v6, :cond_b

    .line 163
    move-object v6, v0

    const-string v7, "FHCRC"

    move-object v8, v0

    iget-object v8, v8, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v8}, Lokio/BufferedSource;->readShortLe()S

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Lokio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v9

    long-to-int v9, v9

    int-to-short v9, v9

    invoke-direct {v6, v7, v8, v9}, Lokio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 164
    move-object v6, v0

    iget-object v6, v6, Lokio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v6}, Ljava/util/zip/CRC32;->reset()V

    .line 166
    :cond_b
    return-void
.end method

.method private consumeTrailer()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, v0

    const-string v2, "CRC"

    move-object v3, v0

    iget-object v3, v3, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readIntLe()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lokio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-direct {v1, v2, v3, v4}, Lokio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 174
    move-object v1, v0

    const-string v2, "ISIZE"

    move-object v3, v0

    iget-object v3, v3, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readIntLe()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lokio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-direct {v1, v2, v3, v4}, Lokio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 175
    return-void
.end method

.method private updateCrc(Lokio/Buffer;JJ)V
    .locals 13

    .prologue
    .line 188
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-object v9, v1

    iget-object v9, v9, Lokio/Buffer;->head:Lokio/Segment;

    move-object v6, v9

    .line 189
    :goto_0
    move-wide v9, v2

    move-object v11, v6

    iget v11, v11, Lokio/Segment;->limit:I

    move-object v12, v6

    iget v12, v12, Lokio/Segment;->pos:I

    sub-int/2addr v11, v12

    int-to-long v11, v11

    cmp-long v9, v9, v11

    if-ltz v9, :cond_0

    .line 190
    move-wide v9, v2

    move-object v11, v6

    iget v11, v11, Lokio/Segment;->limit:I

    move-object v12, v6

    iget v12, v12, Lokio/Segment;->pos:I

    sub-int/2addr v11, v12

    int-to-long v11, v11

    sub-long/2addr v9, v11

    move-wide v2, v9

    .line 189
    move-object v9, v6

    iget-object v9, v9, Lokio/Segment;->next:Lokio/Segment;

    move-object v6, v9

    goto :goto_0

    .line 194
    :cond_0
    :goto_1
    move-wide v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_1

    .line 195
    move-object v9, v6

    iget v9, v9, Lokio/Segment;->pos:I

    int-to-long v9, v9

    move-wide v11, v2

    add-long/2addr v9, v11

    long-to-int v9, v9

    move v7, v9

    .line 196
    move-object v9, v6

    iget v9, v9, Lokio/Segment;->limit:I

    move v10, v7

    sub-int/2addr v9, v10

    int-to-long v9, v9

    move-wide v11, v4

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v9, v9

    move v8, v9

    .line 197
    move-object v9, v0

    iget-object v9, v9, Lokio/GzipSource;->crc:Ljava/util/zip/CRC32;

    move-object v10, v6

    iget-object v10, v10, Lokio/Segment;->data:[B

    move v11, v7

    move v12, v8

    invoke-virtual {v9, v10, v11, v12}, Ljava/util/zip/CRC32;->update([BII)V

    .line 198
    move-wide v9, v4

    move v11, v8

    int-to-long v11, v11

    sub-long/2addr v9, v11

    move-wide v4, v9

    .line 199
    const-wide/16 v9, 0x0

    move-wide v2, v9

    .line 194
    move-object v9, v6

    iget-object v9, v9, Lokio/Segment;->next:Lokio/Segment;

    move-object v6, v9

    goto :goto_1

    .line 201
    :cond_1
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
    .line 182
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/GzipSource;->inflaterSource:Lokio/InflaterSource;

    invoke-virtual {v1}, Lokio/InflaterSource;->close()V

    .line 183
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide v8, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

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

    .line 69
    :cond_0
    move-wide v8, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    const-wide/16 v8, 0x0

    move-wide v0, v8

    .line 104
    :goto_0
    return-wide v0

    .line 72
    :cond_1
    move-object v8, v0

    iget v8, v8, Lokio/GzipSource;->section:I

    if-nez v8, :cond_2

    .line 73
    move-object v8, v0

    invoke-direct {v8}, Lokio/GzipSource;->consumeHeader()V

    .line 74
    move-object v8, v0

    const/4 v9, 0x1

    iput v9, v8, Lokio/GzipSource;->section:I

    .line 78
    :cond_2
    move-object v8, v0

    iget v8, v8, Lokio/GzipSource;->section:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 79
    move-object v8, v1

    iget-wide v8, v8, Lokio/Buffer;->size:J

    move-wide v4, v8

    .line 80
    move-object v8, v0

    iget-object v8, v8, Lokio/GzipSource;->inflaterSource:Lokio/InflaterSource;

    move-object v9, v1

    move-wide v10, v2

    invoke-virtual {v8, v9, v10, v11}, Lokio/InflaterSource;->read(Lokio/Buffer;J)J

    move-result-wide v8

    move-wide v6, v8

    .line 81
    move-wide v8, v6

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_3

    .line 82
    move-object v8, v0

    move-object v9, v1

    move-wide v10, v4

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    .line 83
    move-wide v8, v6

    move-wide v0, v8

    goto :goto_0

    .line 85
    :cond_3
    move-object v8, v0

    const/4 v9, 0x2

    iput v9, v8, Lokio/GzipSource;->section:I

    .line 91
    :cond_4
    move-object v8, v0

    iget v8, v8, Lokio/GzipSource;->section:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    .line 92
    move-object v8, v0

    invoke-direct {v8}, Lokio/GzipSource;->consumeTrailer()V

    .line 93
    move-object v8, v0

    const/4 v9, 0x3

    iput v9, v8, Lokio/GzipSource;->section:I

    .line 99
    move-object v8, v0

    iget-object v8, v8, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v8}, Lokio/BufferedSource;->exhausted()Z

    move-result v8

    if-nez v8, :cond_5

    .line 100
    new-instance v8, Ljava/io/IOException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const-string v10, "gzip finished without exhausting source"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 104
    :cond_5
    const-wide/16 v8, -0x1

    move-wide v0, v8

    goto :goto_0
.end method

.method public timeout()Lokio/Timeout;
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
