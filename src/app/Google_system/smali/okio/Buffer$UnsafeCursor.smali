.class public final Lokio/Buffer$UnsafeCursor;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsafeCursor"
.end annotation


# instance fields
.field public buffer:Lokio/Buffer;

.field public data:[B

.field public end:I

.field public offset:J

.field public readWrite:Z

.field private segment:Lokio/Segment;

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 2070
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 2075
    move-object v1, v0

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2077
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2078
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lokio/Buffer$UnsafeCursor;->end:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .prologue
    .line 2298
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-nez v1, :cond_0

    .line 2299
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "not attached to a buffer"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2302
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 2303
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2304
    move-object v1, v0

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2305
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2306
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2307
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2308
    return-void
.end method

.method public final expandBuffer(I)J
    .locals 12

    .prologue
    .line 2267
    move-object v0, p0

    move v1, p1

    move v6, v1

    if-gtz v6, :cond_0

    .line 2268
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "minByteCount <= 0: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2270
    :cond_0
    move v6, v1

    const/16 v7, 0x2000

    if-le v6, v7, :cond_1

    .line 2271
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "minByteCount > Segment.SIZE: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2273
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-nez v6, :cond_2

    .line 2274
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "not attached to a buffer"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2276
    :cond_2
    move-object v6, v0

    iget-boolean v6, v6, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-nez v6, :cond_3

    .line 2277
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "expandBuffer() only permitted for read/write buffers"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2280
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v6, v6, Lokio/Buffer;->size:J

    move-wide v2, v6

    .line 2281
    move-object v6, v0

    iget-object v6, v6, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    move v7, v1

    invoke-virtual {v6, v7}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v6

    move-object v4, v6

    .line 2282
    const/16 v6, 0x2000

    move-object v7, v4

    iget v7, v7, Lokio/Segment;->limit:I

    rsub-int v6, v7, 0x2000

    move v5, v6

    .line 2283
    move-object v6, v4

    const/16 v7, 0x2000

    iput v7, v6, Lokio/Segment;->limit:I

    .line 2284
    move-object v6, v0

    iget-object v6, v6, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    move-wide v7, v2

    move v9, v5

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, v6, Lokio/Buffer;->size:J

    .line 2287
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2288
    move-object v6, v0

    move-wide v7, v2

    iput-wide v7, v6, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2289
    move-object v6, v0

    move-object v7, v4

    iget-object v7, v7, Lokio/Segment;->data:[B

    iput-object v7, v6, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2290
    move-object v6, v0

    const/16 v7, 0x2000

    move v8, v5

    rsub-int v7, v8, 0x2000

    iput v7, v6, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2291
    move-object v6, v0

    const/16 v7, 0x2000

    iput v7, v6, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2293
    move v6, v5

    int-to-long v6, v6

    move-wide v0, v6

    return-wide v0
.end method

.method public final next()I
    .locals 7

    .prologue
    .line 2086
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lokio/Buffer$UnsafeCursor;->offset:J

    move-object v3, v0

    iget-object v3, v3, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v3, v3, Lokio/Buffer;->size:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 2087
    :cond_0
    move-object v1, v0

    iget-wide v1, v1, Lokio/Buffer$UnsafeCursor;->offset:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    move-object v1, v0

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    move-result v1

    move v0, v1

    .line 2088
    :goto_0
    return v0

    :cond_1
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lokio/Buffer$UnsafeCursor;->offset:J

    move-object v4, v0

    iget v4, v4, Lokio/Buffer$UnsafeCursor;->end:I

    move-object v5, v0

    iget v5, v5, Lokio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public final resizeBuffer(J)J
    .locals 16

    .prologue
    .line 2186
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object v10, v0

    iget-object v10, v10, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-nez v10, :cond_0

    .line 2187
    new-instance v10, Ljava/lang/IllegalStateException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const-string v12, "not attached to a buffer"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2189
    :cond_0
    move-object v10, v0

    iget-boolean v10, v10, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-nez v10, :cond_1

    .line 2190
    new-instance v10, Ljava/lang/IllegalStateException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const-string v12, "resizeBuffer() only permitted for read/write buffers"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2193
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v10, v10, Lokio/Buffer;->size:J

    move-wide v3, v10

    .line 2194
    move-wide v10, v1

    move-wide v12, v3

    cmp-long v10, v10, v12

    if-gtz v10, :cond_6

    .line 2195
    move-wide v10, v1

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gez v10, :cond_2

    .line 2196
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "newSize < 0: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide v13, v1

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2199
    :cond_2
    move-wide v10, v3

    move-wide v12, v1

    sub-long/2addr v10, v12

    move-wide v5, v10

    :goto_0
    move-wide v10, v5

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_4

    .line 2200
    move-object v10, v0

    iget-object v10, v10, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-object v10, v10, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v10, v10, Lokio/Segment;->prev:Lokio/Segment;

    move-object v7, v10

    .line 2201
    move-object v10, v7

    iget v10, v10, Lokio/Segment;->limit:I

    move-object v11, v7

    iget v11, v11, Lokio/Segment;->pos:I

    sub-int/2addr v10, v11

    move v8, v10

    .line 2202
    move v10, v8

    int-to-long v10, v10

    move-wide v12, v5

    cmp-long v10, v10, v12

    if-gtz v10, :cond_3

    .line 2203
    move-object v10, v0

    iget-object v10, v10, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    move-object v11, v7

    invoke-virtual {v11}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v11

    iput-object v11, v10, Lokio/Buffer;->head:Lokio/Segment;

    .line 2204
    move-object v10, v7

    invoke-static {v10}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 2205
    move-wide v10, v5

    move v12, v8

    int-to-long v12, v12

    sub-long/2addr v10, v12

    move-wide v5, v10

    .line 2210
    goto :goto_0

    .line 2207
    :cond_3
    move-object v10, v7

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Lokio/Segment;->limit:I

    int-to-long v11, v11

    move-wide v13, v5

    sub-long/2addr v11, v13

    long-to-int v11, v11

    iput v11, v10, Lokio/Segment;->limit:I

    .line 2212
    :cond_4
    move-object v10, v0

    const/4 v11, 0x0

    iput-object v11, v10, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2213
    move-object v10, v0

    move-wide v11, v1

    iput-wide v11, v10, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2214
    move-object v10, v0

    const/4 v11, 0x0

    iput-object v11, v10, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2215
    move-object v10, v0

    const/4 v11, -0x1

    iput v11, v10, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2216
    move-object v10, v0

    const/4 v11, -0x1

    iput v11, v10, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2238
    :cond_5
    move-object v10, v0

    iget-object v10, v10, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    move-wide v11, v1

    iput-wide v11, v10, Lokio/Buffer;->size:J

    .line 2240
    move-wide v10, v3

    move-wide v0, v10

    return-wide v0

    .line 2217
    :cond_6
    move-wide v10, v1

    move-wide v12, v3

    cmp-long v10, v10, v12

    if-lez v10, :cond_5

    .line 2219
    const/4 v10, 0x1

    move v5, v10

    .line 2220
    move-wide v10, v1

    move-wide v12, v3

    sub-long/2addr v10, v12

    move-wide v6, v10

    :goto_1
    move-wide v10, v6

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_5

    .line 2221
    move-object v10, v0

    iget-object v10, v10, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v10

    move-object v8, v10

    .line 2222
    move-wide v10, v6

    const/16 v12, 0x2000

    move-object v13, v8

    iget v13, v13, Lokio/Segment;->limit:I

    rsub-int v12, v13, 0x2000

    int-to-long v12, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v10, v10

    move v9, v10

    .line 2223
    move-object v10, v8

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Lokio/Segment;->limit:I

    move v12, v9

    add-int/2addr v11, v12

    iput v11, v10, Lokio/Segment;->limit:I

    .line 2224
    move-wide v10, v6

    move v12, v9

    int-to-long v12, v12

    sub-long/2addr v10, v12

    move-wide v6, v10

    .line 2227
    move v10, v5

    if-eqz v10, :cond_7

    .line 2228
    move-object v10, v0

    move-object v11, v8

    iput-object v11, v10, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2229
    move-object v10, v0

    move-wide v11, v3

    iput-wide v11, v10, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2230
    move-object v10, v0

    move-object v11, v8

    iget-object v11, v11, Lokio/Segment;->data:[B

    iput-object v11, v10, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2231
    move-object v10, v0

    move-object v11, v8

    iget v11, v11, Lokio/Segment;->limit:I

    move v12, v9

    sub-int/2addr v11, v12

    iput v11, v10, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2232
    move-object v10, v0

    move-object v11, v8

    iget v11, v11, Lokio/Segment;->limit:I

    iput v11, v10, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2233
    const/4 v10, 0x0

    move v5, v10

    .line 2235
    :cond_7
    goto :goto_1
.end method

.method public final seek(J)I
    .locals 24

    .prologue
    .line 2097
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide v15, v3

    const-wide/16 v17, -0x1

    cmp-long v15, v15, v17

    if-ltz v15, :cond_0

    move-wide v15, v3

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v17, v0

    cmp-long v15, v15, v17

    if-lez v15, :cond_1

    .line 2098
    :cond_0
    new-instance v15, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    const-string v17, "offset=%s > size=%s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x0

    move-wide/from16 v21, v3

    .line 2099
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x1

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 2102
    :cond_1
    move-wide v15, v3

    const-wide/16 v17, -0x1

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    move-wide v15, v3

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v17, v0

    cmp-long v15, v15, v17

    if-nez v15, :cond_3

    .line 2103
    :cond_2
    move-object v15, v2

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2104
    move-object v15, v2

    move-wide/from16 v16, v3

    move-wide/from16 v0, v16

    iput-wide v0, v15, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2105
    move-object v15, v2

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2106
    move-object v15, v2

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2107
    move-object v15, v2

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2108
    const/4 v15, -0x1

    move v2, v15

    .line 2165
    :goto_0
    return v2

    .line 2112
    :cond_3
    const-wide/16 v15, 0x0

    move-wide v5, v15

    .line 2113
    move-object v15, v2

    iget-object v15, v15, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v15, v15, Lokio/Buffer;->size:J

    move-wide v7, v15

    .line 2114
    move-object v15, v2

    iget-object v15, v15, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-object v15, v15, Lokio/Buffer;->head:Lokio/Segment;

    move-object v9, v15

    .line 2115
    move-object v15, v2

    iget-object v15, v15, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-object v15, v15, Lokio/Buffer;->head:Lokio/Segment;

    move-object v10, v15

    .line 2116
    move-object v15, v2

    iget-object v15, v15, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    if-eqz v15, :cond_4

    .line 2117
    move-object v15, v2

    iget-wide v15, v15, Lokio/Buffer$UnsafeCursor;->offset:J

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Buffer$UnsafeCursor;->start:I

    move/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    sub-long v15, v15, v17

    move-wide v11, v15

    .line 2118
    move-wide v15, v11

    move-wide/from16 v17, v3

    cmp-long v15, v15, v17

    if-lez v15, :cond_5

    .line 2120
    move-wide v15, v11

    move-wide v7, v15

    .line 2121
    move-object v15, v2

    iget-object v15, v15, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    move-object v10, v15

    .line 2131
    :cond_4
    :goto_1
    move-wide v15, v7

    move-wide/from16 v17, v3

    sub-long v15, v15, v17

    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    sub-long v17, v17, v19

    cmp-long v15, v15, v17

    if-lez v15, :cond_6

    .line 2133
    move-object v15, v9

    move-object v11, v15

    .line 2134
    move-wide v15, v5

    move-wide v12, v15

    .line 2135
    :goto_2
    move-wide v15, v3

    move-wide/from16 v17, v12

    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v19, v0

    move-object/from16 v20, v11

    move-object/from16 v0, v20

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    cmp-long v15, v15, v17

    if-ltz v15, :cond_7

    .line 2136
    move-wide v15, v12

    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v17, v0

    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    add-long v15, v15, v17

    move-wide v12, v15

    .line 2137
    move-object v15, v11

    iget-object v15, v15, Lokio/Segment;->next:Lokio/Segment;

    move-object v11, v15

    goto :goto_2

    .line 2124
    :cond_5
    move-wide v15, v11

    move-wide v5, v15

    .line 2125
    move-object v15, v2

    iget-object v15, v15, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    move-object v9, v15

    goto :goto_1

    .line 2141
    :cond_6
    move-object v15, v10

    move-object v11, v15

    .line 2142
    move-wide v15, v7

    move-wide v12, v15

    .line 2143
    :goto_3
    move-wide v15, v12

    move-wide/from16 v17, v3

    cmp-long v15, v15, v17

    if-lez v15, :cond_7

    .line 2144
    move-object v15, v11

    iget-object v15, v15, Lokio/Segment;->prev:Lokio/Segment;

    move-object v11, v15

    .line 2145
    move-wide v15, v12

    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v17, v0

    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    sub-long v15, v15, v17

    move-wide v12, v15

    goto :goto_3

    .line 2150
    :cond_7
    move-object v15, v2

    iget-boolean v15, v15, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v15, :cond_9

    move-object v15, v11

    iget-boolean v15, v15, Lokio/Segment;->shared:Z

    if-eqz v15, :cond_9

    .line 2151
    move-object v15, v11

    invoke-virtual {v15}, Lokio/Segment;->unsharedCopy()Lokio/Segment;

    move-result-object v15

    move-object v14, v15

    .line 2152
    move-object v15, v2

    iget-object v15, v15, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-object v15, v15, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v16, v11

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_8

    .line 2153
    move-object v15, v2

    iget-object v15, v15, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    move-object/from16 v16, v14

    move-object/from16 v0, v16

    iput-object v0, v15, Lokio/Buffer;->head:Lokio/Segment;

    .line 2155
    :cond_8
    move-object v15, v11

    move-object/from16 v16, v14

    invoke-virtual/range {v15 .. v16}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v15

    move-object v11, v15

    .line 2156
    move-object v15, v11

    iget-object v15, v15, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v15}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v15

    .line 2160
    :cond_9
    move-object v15, v2

    move-object/from16 v16, v11

    move-object/from16 v0, v16

    iput-object v0, v15, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2161
    move-object v15, v2

    move-wide/from16 v16, v3

    move-wide/from16 v0, v16

    iput-wide v0, v15, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2162
    move-object v15, v2

    move-object/from16 v16, v11

    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2163
    move-object v15, v2

    move-object/from16 v16, v11

    move-object/from16 v0, v16

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v16, v0

    move-wide/from16 v17, v3

    move-wide/from16 v19, v12

    sub-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2164
    move-object v15, v2

    move-object/from16 v16, v11

    move-object/from16 v0, v16

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2165
    move-object v15, v2

    iget v15, v15, Lokio/Buffer$UnsafeCursor;->end:I

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lokio/Buffer$UnsafeCursor;->start:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move v2, v15

    goto/16 :goto_0
.end method
