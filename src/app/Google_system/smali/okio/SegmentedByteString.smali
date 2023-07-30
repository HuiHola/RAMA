.class final Lokio/SegmentedByteString;
.super Lokio/ByteString;
.source "SegmentedByteString.java"


# instance fields
.field final transient directory:[I

.field final transient segments:[[B


# direct methods
.method constructor <init>(Lokio/Buffer;I)V
    .locals 13

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v0

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lokio/ByteString;-><init>([B)V

    .line 58
    move-object v6, v1

    iget-wide v6, v6, Lokio/Buffer;->size:J

    const-wide/16 v8, 0x0

    move v10, v2

    int-to-long v10, v10

    invoke-static/range {v6 .. v11}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 61
    const/4 v6, 0x0

    move v3, v6

    .line 62
    const/4 v6, 0x0

    move v4, v6

    .line 63
    move-object v6, v1

    iget-object v6, v6, Lokio/Buffer;->head:Lokio/Segment;

    move-object v5, v6

    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_1

    .line 64
    move-object v6, v5

    iget v6, v6, Lokio/Segment;->limit:I

    move-object v7, v5

    iget v7, v7, Lokio/Segment;->pos:I

    if-ne v6, v7, :cond_0

    .line 65
    new-instance v6, Ljava/lang/AssertionError;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "s.limit == s.pos"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 67
    :cond_0
    move v6, v3

    move-object v7, v5

    iget v7, v7, Lokio/Segment;->limit:I

    move-object v8, v5

    iget v8, v8, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    move v3, v6

    .line 68
    add-int/lit8 v4, v4, 0x1

    .line 63
    move-object v6, v5

    iget-object v6, v6, Lokio/Segment;->next:Lokio/Segment;

    move-object v5, v6

    goto :goto_0

    .line 72
    :cond_1
    move-object v6, v0

    move v7, v4

    new-array v7, v7, [[B

    iput-object v7, v6, Lokio/SegmentedByteString;->segments:[[B

    .line 73
    move-object v6, v0

    move v7, v4

    const/4 v8, 0x2

    mul-int/lit8 v7, v7, 0x2

    new-array v7, v7, [I

    iput-object v7, v6, Lokio/SegmentedByteString;->directory:[I

    .line 74
    const/4 v6, 0x0

    move v3, v6

    .line 75
    const/4 v6, 0x0

    move v4, v6

    .line 76
    move-object v6, v1

    iget-object v6, v6, Lokio/Buffer;->head:Lokio/Segment;

    move-object v5, v6

    :goto_1
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_3

    .line 77
    move-object v6, v0

    iget-object v6, v6, Lokio/SegmentedByteString;->segments:[[B

    move v7, v4

    move-object v8, v5

    iget-object v8, v8, Lokio/Segment;->data:[B

    aput-object v8, v6, v7

    .line 78
    move v6, v3

    move-object v7, v5

    iget v7, v7, Lokio/Segment;->limit:I

    move-object v8, v5

    iget v8, v8, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    move v3, v6

    .line 79
    move v6, v3

    move v7, v2

    if-le v6, v7, :cond_2

    .line 80
    move v6, v2

    move v3, v6

    .line 82
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lokio/SegmentedByteString;->directory:[I

    move v7, v4

    move v8, v3

    aput v8, v6, v7

    .line 83
    move-object v6, v0

    iget-object v6, v6, Lokio/SegmentedByteString;->directory:[I

    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Lokio/SegmentedByteString;->segments:[[B

    array-length v8, v8

    add-int/2addr v7, v8

    move-object v8, v5

    iget v8, v8, Lokio/Segment;->pos:I

    aput v8, v6, v7

    .line 84
    move-object v6, v5

    const/4 v7, 0x1

    iput-boolean v7, v6, Lokio/Segment;->shared:Z

    .line 85
    add-int/lit8 v4, v4, 0x1

    .line 76
    move-object v6, v5

    iget-object v6, v6, Lokio/Segment;->next:Lokio/Segment;

    move-object v5, v6

    goto :goto_1

    .line 87
    :cond_3
    return-void
.end method

.method private segment(I)I
    .locals 8

    .prologue
    .line 156
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lokio/SegmentedByteString;->directory:[I

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lokio/SegmentedByteString;->segments:[[B

    array-length v5, v5

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-static {v3, v4, v5, v6}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v3

    move v2, v3

    .line 157
    move v3, v2

    if-ltz v3, :cond_0

    move v3, v2

    :goto_0
    move v0, v3

    return v0

    :cond_0
    move v3, v2

    const/4 v4, -0x1

    xor-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method private toByteString()Lokio/ByteString;
    .locals 5

    .prologue
    .line 257
    move-object v0, p0

    new-instance v1, Lokio/ByteString;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-virtual {v3}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lokio/ByteString;-><init>([B)V

    move-object v0, v1

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 296
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public asByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public base64()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->base64Url()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 265
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 266
    :goto_0
    return v0

    :cond_0
    move-object v2, v1

    instance-of v2, v2, Lokio/ByteString;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lokio/ByteString;

    .line 267
    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Lokio/SegmentedByteString;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    check-cast v4, Lokio/ByteString;

    const/4 v5, 0x0

    move-object v6, v0

    .line 268
    invoke-virtual {v6}, Lokio/SegmentedByteString;->size()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lokio/SegmentedByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 266
    :goto_1
    move v0, v2

    goto :goto_0

    .line 268
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getByte(I)B
    .locals 11

    .prologue
    .line 146
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Lokio/SegmentedByteString;->directory:[I

    move-object v6, v0

    iget-object v6, v6, Lokio/SegmentedByteString;->segments:[[B

    array-length v6, v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    int-to-long v5, v5

    move v7, v1

    int-to-long v7, v7

    const-wide/16 v9, 0x1

    invoke-static/range {v5 .. v10}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 147
    move-object v5, v0

    move v6, v1

    invoke-direct {v5, v6}, Lokio/SegmentedByteString;->segment(I)I

    move-result v5

    move v2, v5

    .line 148
    move v5, v2

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    move v3, v5

    .line 149
    move-object v5, v0

    iget-object v5, v5, Lokio/SegmentedByteString;->directory:[I

    move v6, v2

    move-object v7, v0

    iget-object v7, v7, Lokio/SegmentedByteString;->segments:[[B

    array-length v7, v7

    add-int/2addr v6, v7

    aget v5, v5, v6

    move v4, v5

    .line 150
    move-object v5, v0

    iget-object v5, v5, Lokio/SegmentedByteString;->segments:[[B

    move v6, v2

    aget-object v5, v5, v6

    move v6, v1

    move v7, v3

    sub-int/2addr v6, v7

    move v7, v4

    add-int/2addr v6, v7

    aget-byte v5, v5, v6

    move v0, v5

    return v0

    .line 148
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lokio/SegmentedByteString;->directory:[I

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    goto :goto_0
.end method

.method public hashCode()I
    .locals 16

    .prologue
    .line 272
    move-object/from16 v0, p0

    move-object v11, v0

    iget v11, v11, Lokio/SegmentedByteString;->hashCode:I

    move v1, v11

    .line 273
    move v11, v1

    if-eqz v11, :cond_0

    move v11, v1

    move v0, v11

    .line 288
    :goto_0
    return v0

    .line 276
    :cond_0
    const/4 v11, 0x1

    move v1, v11

    .line 277
    const/4 v11, 0x0

    move v2, v11

    .line 278
    const/4 v11, 0x0

    move v3, v11

    move-object v11, v0

    iget-object v11, v11, Lokio/SegmentedByteString;->segments:[[B

    array-length v11, v11

    move v4, v11

    :goto_1
    move v11, v3

    move v12, v4

    if-ge v11, v12, :cond_2

    .line 279
    move-object v11, v0

    iget-object v11, v11, Lokio/SegmentedByteString;->segments:[[B

    move v12, v3

    aget-object v11, v11, v12

    move-object v5, v11

    .line 280
    move-object v11, v0

    iget-object v11, v11, Lokio/SegmentedByteString;->directory:[I

    move v12, v4

    move v13, v3

    add-int/2addr v12, v13

    aget v11, v11, v12

    move v6, v11

    .line 281
    move-object v11, v0

    iget-object v11, v11, Lokio/SegmentedByteString;->directory:[I

    move v12, v3

    aget v11, v11, v12

    move v7, v11

    .line 282
    move v11, v7

    move v12, v2

    sub-int/2addr v11, v12

    move v8, v11

    .line 283
    move v11, v6

    move v9, v11

    move v11, v6

    move v12, v8

    add-int/2addr v11, v12

    move v10, v11

    :goto_2
    move v11, v9

    move v12, v10

    if-ge v11, v12, :cond_1

    .line 284
    const/16 v11, 0x1f

    move v12, v1

    mul-int/2addr v11, v12

    move-object v12, v5

    move v13, v9

    aget-byte v12, v12, v13

    add-int/2addr v11, v12

    move v1, v11

    .line 283
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 286
    :cond_1
    move v11, v7

    move v2, v11

    .line 278
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 288
    :cond_2
    move-object v11, v0

    move v12, v1

    move-object v14, v11

    move v15, v12

    move v11, v15

    move-object v12, v14

    move v13, v15

    iput v13, v12, Lokio/SegmentedByteString;->hashCode:I

    move v0, v11

    goto :goto_0
.end method

.method public hex()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public hmacSha1(Lokio/ByteString;)Lokio/ByteString;
    .locals 4

    .prologue
    .line 126
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lokio/ByteString;->hmacSha1(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public hmacSha256(Lokio/ByteString;)Lokio/ByteString;
    .locals 4

    .prologue
    .line 130
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lokio/ByteString;->hmacSha256(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public indexOf([BI)I
    .locals 6

    .prologue
    .line 248
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v3

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lokio/ByteString;->indexOf([BI)I

    move-result v3

    move v0, v3

    return v0
.end method

.method internalArray()[B
    .locals 2

    .prologue
    .line 261
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public lastIndexOf([BI)I
    .locals 6

    .prologue
    .line 252
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v3

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public md5()Lokio/ByteString;
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->md5()Lokio/ByteString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public rangeEquals(ILokio/ByteString;II)Z
    .locals 16

    .prologue
    .line 211
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v11, v1

    if-ltz v11, :cond_0

    move v11, v1

    move-object v12, v0

    invoke-virtual {v12}, Lokio/SegmentedByteString;->size()I

    move-result v12

    move v13, v4

    sub-int/2addr v12, v13

    if-le v11, v12, :cond_1

    :cond_0
    const/4 v11, 0x0

    move v0, v11

    .line 224
    :goto_0
    return v0

    .line 213
    :cond_1
    move-object v11, v0

    move v12, v1

    invoke-direct {v11, v12}, Lokio/SegmentedByteString;->segment(I)I

    move-result v11

    move v5, v11

    :goto_1
    move v11, v4

    if-lez v11, :cond_4

    .line 214
    move v11, v5

    if-nez v11, :cond_2

    const/4 v11, 0x0

    :goto_2
    move v6, v11

    .line 215
    move-object v11, v0

    iget-object v11, v11, Lokio/SegmentedByteString;->directory:[I

    move v12, v5

    aget v11, v11, v12

    move v12, v6

    sub-int/2addr v11, v12

    move v7, v11

    .line 216
    move v11, v4

    move v12, v6

    move v13, v7

    add-int/2addr v12, v13

    move v13, v1

    sub-int/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    move v8, v11

    .line 217
    move-object v11, v0

    iget-object v11, v11, Lokio/SegmentedByteString;->directory:[I

    move-object v12, v0

    iget-object v12, v12, Lokio/SegmentedByteString;->segments:[[B

    array-length v12, v12

    move v13, v5

    add-int/2addr v12, v13

    aget v11, v11, v12

    move v9, v11

    .line 218
    move v11, v1

    move v12, v6

    sub-int/2addr v11, v12

    move v12, v9

    add-int/2addr v11, v12

    move v10, v11

    .line 219
    move-object v11, v2

    move v12, v3

    move-object v13, v0

    iget-object v13, v13, Lokio/SegmentedByteString;->segments:[[B

    move v14, v5

    aget-object v13, v13, v14

    move v14, v10

    move v15, v8

    invoke-virtual {v11, v12, v13, v14, v15}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v11

    if-nez v11, :cond_3

    const/4 v11, 0x0

    move v0, v11

    goto :goto_0

    .line 214
    :cond_2
    move-object v11, v0

    iget-object v11, v11, Lokio/SegmentedByteString;->directory:[I

    move v12, v5

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    aget v11, v11, v12

    goto :goto_2

    .line 220
    :cond_3
    move v11, v1

    move v12, v8

    add-int/2addr v11, v12

    move v1, v11

    .line 221
    move v11, v3

    move v12, v8

    add-int/2addr v11, v12

    move v3, v11

    .line 222
    move v11, v4

    move v12, v8

    sub-int/2addr v11, v12

    move v4, v11

    .line 213
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 224
    :cond_4
    const/4 v11, 0x1

    move v0, v11

    goto :goto_0
.end method

.method public rangeEquals(I[BII)Z
    .locals 16

    .prologue
    .line 228
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v11, v1

    if-ltz v11, :cond_0

    move v11, v1

    move-object v12, v0

    invoke-virtual {v12}, Lokio/SegmentedByteString;->size()I

    move-result v12

    move v13, v4

    sub-int/2addr v12, v13

    if-gt v11, v12, :cond_0

    move v11, v3

    if-ltz v11, :cond_0

    move v11, v3

    move-object v12, v2

    array-length v12, v12

    move v13, v4

    sub-int/2addr v12, v13

    if-le v11, v12, :cond_1

    .line 230
    :cond_0
    const/4 v11, 0x0

    move v0, v11

    .line 244
    :goto_0
    return v0

    .line 233
    :cond_1
    move-object v11, v0

    move v12, v1

    invoke-direct {v11, v12}, Lokio/SegmentedByteString;->segment(I)I

    move-result v11

    move v5, v11

    :goto_1
    move v11, v4

    if-lez v11, :cond_4

    .line 234
    move v11, v5

    if-nez v11, :cond_2

    const/4 v11, 0x0

    :goto_2
    move v6, v11

    .line 235
    move-object v11, v0

    iget-object v11, v11, Lokio/SegmentedByteString;->directory:[I

    move v12, v5

    aget v11, v11, v12

    move v12, v6

    sub-int/2addr v11, v12

    move v7, v11

    .line 236
    move v11, v4

    move v12, v6

    move v13, v7

    add-int/2addr v12, v13

    move v13, v1

    sub-int/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    move v8, v11

    .line 237
    move-object v11, v0

    iget-object v11, v11, Lokio/SegmentedByteString;->directory:[I

    move-object v12, v0

    iget-object v12, v12, Lokio/SegmentedByteString;->segments:[[B

    array-length v12, v12

    move v13, v5

    add-int/2addr v12, v13

    aget v11, v11, v12

    move v9, v11

    .line 238
    move v11, v1

    move v12, v6

    sub-int/2addr v11, v12

    move v12, v9

    add-int/2addr v11, v12

    move v10, v11

    .line 239
    move-object v11, v0

    iget-object v11, v11, Lokio/SegmentedByteString;->segments:[[B

    move v12, v5

    aget-object v11, v11, v12

    move v12, v10

    move-object v13, v2

    move v14, v3

    move v15, v8

    invoke-static {v11, v12, v13, v14, v15}, Lokio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v11

    if-nez v11, :cond_3

    const/4 v11, 0x0

    move v0, v11

    goto :goto_0

    .line 234
    :cond_2
    move-object v11, v0

    iget-object v11, v11, Lokio/SegmentedByteString;->directory:[I

    move v12, v5

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    aget v11, v11, v12

    goto :goto_2

    .line 240
    :cond_3
    move v11, v1

    move v12, v8

    add-int/2addr v11, v12

    move v1, v11

    .line 241
    move v11, v3

    move v12, v8

    add-int/2addr v11, v12

    move v3, v11

    .line 242
    move v11, v4

    move v12, v8

    sub-int/2addr v11, v12

    move v4, v11

    .line 233
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 244
    :cond_4
    const/4 v11, 0x1

    move v0, v11

    goto :goto_0
.end method

.method public sha1()Lokio/ByteString;
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->sha1()Lokio/ByteString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public sha256()Lokio/ByteString;
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->sha256()Lokio/ByteString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public size()I
    .locals 4

    .prologue
    .line 161
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/SegmentedByteString;->directory:[I

    move-object v2, v0

    iget-object v2, v2, Lokio/SegmentedByteString;->segments:[[B

    array-length v2, v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    move v0, v1

    return v0
.end method

.method public string(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lokio/ByteString;->string(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public substring(I)Lokio/ByteString;
    .locals 4

    .prologue
    .line 138
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Lokio/ByteString;->substring(I)Lokio/ByteString;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public substring(II)Lokio/ByteString;
    .locals 6

    .prologue
    .line 142
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v3

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public toAsciiLowercase()Lokio/ByteString;
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public toAsciiUppercase()Lokio/ByteString;
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->toAsciiUppercase()Lokio/ByteString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public toByteArray()[B
    .locals 13

    .prologue
    .line 165
    move-object v0, p0

    move-object v7, v0

    iget-object v7, v7, Lokio/SegmentedByteString;->directory:[I

    move-object v8, v0

    iget-object v8, v8, Lokio/SegmentedByteString;->segments:[[B

    array-length v8, v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    aget v7, v7, v8

    new-array v7, v7, [B

    move-object v1, v7

    .line 166
    const/4 v7, 0x0

    move v2, v7

    .line 167
    const/4 v7, 0x0

    move v3, v7

    move-object v7, v0

    iget-object v7, v7, Lokio/SegmentedByteString;->segments:[[B

    array-length v7, v7

    move v4, v7

    :goto_0
    move v7, v3

    move v8, v4

    if-ge v7, v8, :cond_0

    .line 168
    move-object v7, v0

    iget-object v7, v7, Lokio/SegmentedByteString;->directory:[I

    move v8, v4

    move v9, v3

    add-int/2addr v8, v9

    aget v7, v7, v8

    move v5, v7

    .line 169
    move-object v7, v0

    iget-object v7, v7, Lokio/SegmentedByteString;->directory:[I

    move v8, v3

    aget v7, v7, v8

    move v6, v7

    .line 170
    move-object v7, v0

    iget-object v7, v7, Lokio/SegmentedByteString;->segments:[[B

    move v8, v3

    aget-object v7, v7, v8

    move v8, v5

    move-object v9, v1

    move v10, v2

    move v11, v6

    move v12, v2

    sub-int/2addr v11, v12

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    move v7, v6

    move v2, v7

    .line 167
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 174
    :cond_0
    move-object v7, v1

    move-object v0, v7

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 292
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public utf8()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string v9, "out == null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 183
    :cond_0
    const/4 v7, 0x0

    move v2, v7

    .line 184
    const/4 v7, 0x0

    move v3, v7

    move-object v7, v0

    iget-object v7, v7, Lokio/SegmentedByteString;->segments:[[B

    array-length v7, v7

    move v4, v7

    :goto_0
    move v7, v3

    move v8, v4

    if-ge v7, v8, :cond_1

    .line 185
    move-object v7, v0

    iget-object v7, v7, Lokio/SegmentedByteString;->directory:[I

    move v8, v4

    move v9, v3

    add-int/2addr v8, v9

    aget v7, v7, v8

    move v5, v7

    .line 186
    move-object v7, v0

    iget-object v7, v7, Lokio/SegmentedByteString;->directory:[I

    move v8, v3

    aget v7, v7, v8

    move v6, v7

    .line 187
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lokio/SegmentedByteString;->segments:[[B

    move v9, v3

    aget-object v8, v8, v9

    move v9, v5

    move v10, v6

    move v11, v2

    sub-int/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 188
    move v7, v6

    move v2, v7

    .line 184
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 190
    :cond_1
    return-void
.end method

.method write(Lokio/Buffer;)V
    .locals 17

    .prologue
    .line 193
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v8, 0x0

    move v2, v8

    .line 194
    const/4 v8, 0x0

    move v3, v8

    move-object v8, v0

    iget-object v8, v8, Lokio/SegmentedByteString;->segments:[[B

    array-length v8, v8

    move v4, v8

    :goto_0
    move v8, v3

    move v9, v4

    if-ge v8, v9, :cond_1

    .line 195
    move-object v8, v0

    iget-object v8, v8, Lokio/SegmentedByteString;->directory:[I

    move v9, v4

    move v10, v3

    add-int/2addr v9, v10

    aget v8, v8, v9

    move v5, v8

    .line 196
    move-object v8, v0

    iget-object v8, v8, Lokio/SegmentedByteString;->directory:[I

    move v9, v3

    aget v8, v8, v9

    move v6, v8

    .line 197
    new-instance v8, Lokio/Segment;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v0

    iget-object v10, v10, Lokio/SegmentedByteString;->segments:[[B

    move v11, v3

    aget-object v10, v10, v11

    move v11, v5

    move v12, v5

    move v13, v6

    add-int/2addr v12, v13

    move v13, v2

    sub-int/2addr v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lokio/Segment;-><init>([BIIZZ)V

    move-object v7, v8

    .line 199
    move-object v8, v1

    iget-object v8, v8, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v8, :cond_0

    .line 200
    move-object v8, v1

    move-object v9, v7

    move-object v10, v7

    move-object v11, v7

    move-object v15, v10

    move-object/from16 v16, v11

    move-object/from16 v10, v16

    move-object v11, v15

    move-object/from16 v12, v16

    iput-object v12, v11, Lokio/Segment;->prev:Lokio/Segment;

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    move-object/from16 v11, v16

    iput-object v11, v10, Lokio/Segment;->next:Lokio/Segment;

    iput-object v9, v8, Lokio/Buffer;->head:Lokio/Segment;

    .line 204
    :goto_1
    move v8, v6

    move v2, v8

    .line 194
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 202
    :cond_0
    move-object v8, v1

    iget-object v8, v8, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v8, v8, Lokio/Segment;->prev:Lokio/Segment;

    move-object v9, v7

    invoke-virtual {v8, v9}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v8

    goto :goto_1

    .line 206
    :cond_1
    move-object v8, v1

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    iget-wide v9, v9, Lokio/Buffer;->size:J

    move v11, v2

    int-to-long v11, v11

    add-long/2addr v9, v11

    iput-wide v9, v8, Lokio/Buffer;->size:J

    .line 207
    return-void
.end method
