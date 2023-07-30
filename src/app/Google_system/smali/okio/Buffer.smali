.class public final Lokio/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Lokio/BufferedSource;
.implements Lokio/BufferedSink;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/Buffer$UnsafeCursor;
    }
.end annotation


# static fields
.field private static final DIGITS:[B

.field static final REPLACEMENT_CHARACTER:I = 0xfffd


# instance fields
.field head:Lokio/Segment;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field size:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lokio/Buffer;->DIGITS:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method private digest(Ljava/lang/String;)Lokio/ByteString;
    .locals 10

    .prologue
    .line 1712
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    :try_start_0
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    move-object v2, v4

    .line 1713
    move-object v4, v0

    iget-object v4, v4, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v4, :cond_0

    .line 1714
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v5, v5, Lokio/Segment;->data:[B

    move-object v6, v0

    iget-object v6, v6, Lokio/Buffer;->head:Lokio/Segment;

    iget v6, v6, Lokio/Segment;->pos:I

    move-object v7, v0

    iget-object v7, v7, Lokio/Buffer;->head:Lokio/Segment;

    iget v7, v7, Lokio/Segment;->limit:I

    move-object v8, v0

    iget-object v8, v8, Lokio/Buffer;->head:Lokio/Segment;

    iget v8, v8, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 1715
    move-object v4, v0

    iget-object v4, v4, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    move-object v3, v4

    :goto_0
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v4, v5, :cond_0

    .line 1716
    move-object v4, v2

    move-object v5, v3

    iget-object v5, v5, Lokio/Segment;->data:[B

    move-object v6, v3

    iget v6, v6, Lokio/Segment;->pos:I

    move-object v7, v3

    iget v7, v7, Lokio/Segment;->limit:I

    move-object v8, v3

    iget v8, v8, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 1715
    move-object v4, v3

    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    move-object v3, v4

    goto :goto_0

    .line 1719
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-static {v4}, Lokio/ByteString;->of([B)Lokio/ByteString;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    return-object v0

    .line 1720
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 1721
    new-instance v4, Ljava/lang/AssertionError;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v4
.end method

.method private hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    .locals 11

    .prologue
    .line 1742
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    :try_start_0
    invoke-static {v5}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v5

    move-object v3, v5

    .line 1743
    move-object v5, v3

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    invoke-virtual {v8}, Lokio/ByteString;->toByteArray()[B

    move-result-object v8

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 1744
    move-object v5, v0

    iget-object v5, v5, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v5, :cond_0

    .line 1745
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v6, v6, Lokio/Segment;->data:[B

    move-object v7, v0

    iget-object v7, v7, Lokio/Buffer;->head:Lokio/Segment;

    iget v7, v7, Lokio/Segment;->pos:I

    move-object v8, v0

    iget-object v8, v8, Lokio/Buffer;->head:Lokio/Segment;

    iget v8, v8, Lokio/Segment;->limit:I

    move-object v9, v0

    iget-object v9, v9, Lokio/Buffer;->head:Lokio/Segment;

    iget v9, v9, Lokio/Segment;->pos:I

    sub-int/2addr v8, v9

    invoke-virtual {v5, v6, v7, v8}, Ljavax/crypto/Mac;->update([BII)V

    .line 1746
    move-object v5, v0

    iget-object v5, v5, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v5, v5, Lokio/Segment;->next:Lokio/Segment;

    move-object v4, v5

    :goto_0
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v5, v6, :cond_0

    .line 1747
    move-object v5, v3

    move-object v6, v4

    iget-object v6, v6, Lokio/Segment;->data:[B

    move-object v7, v4

    iget v7, v7, Lokio/Segment;->pos:I

    move-object v8, v4

    iget v8, v8, Lokio/Segment;->limit:I

    move-object v9, v4

    iget v9, v9, Lokio/Segment;->pos:I

    sub-int/2addr v8, v9

    invoke-virtual {v5, v6, v7, v8}, Ljavax/crypto/Mac;->update([BII)V

    .line 1746
    move-object v5, v4

    iget-object v5, v5, Lokio/Segment;->next:Lokio/Segment;

    move-object v4, v5

    goto :goto_0

    .line 1750
    :cond_0
    move-object v5, v3

    invoke-virtual {v5}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v5

    invoke-static {v5}, Lokio/ByteString;->of([B)Lokio/ByteString;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    move-object v0, v5

    return-object v0

    .line 1751
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 1752
    new-instance v5, Ljava/lang/AssertionError;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1753
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 1754
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private rangeEquals(Lokio/Segment;ILokio/ByteString;II)Z
    .locals 12

    .prologue
    .line 1643
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v9, v1

    iget v9, v9, Lokio/Segment;->limit:I

    move v6, v9

    .line 1644
    move-object v9, v1

    iget-object v9, v9, Lokio/Segment;->data:[B

    move-object v7, v9

    .line 1646
    move v9, v4

    move v8, v9

    :goto_0
    move v9, v8

    move v10, v5

    if-ge v9, v10, :cond_2

    .line 1647
    move v9, v2

    move v10, v6

    if-ne v9, v10, :cond_0

    .line 1648
    move-object v9, v1

    iget-object v9, v9, Lokio/Segment;->next:Lokio/Segment;

    move-object v1, v9

    .line 1649
    move-object v9, v1

    iget-object v9, v9, Lokio/Segment;->data:[B

    move-object v7, v9

    .line 1650
    move-object v9, v1

    iget v9, v9, Lokio/Segment;->pos:I

    move v2, v9

    .line 1651
    move-object v9, v1

    iget v9, v9, Lokio/Segment;->limit:I

    move v6, v9

    .line 1654
    :cond_0
    move-object v9, v7

    move v10, v2

    aget-byte v9, v9, v10

    move-object v10, v3

    move v11, v8

    invoke-virtual {v10, v11}, Lokio/ByteString;->getByte(I)B

    move-result v10

    if-eq v9, v10, :cond_1

    .line 1655
    const/4 v9, 0x0

    move v0, v9

    .line 1662
    :goto_1
    return v0

    .line 1658
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 1659
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1662
    :cond_2
    const/4 v9, 0x1

    move v0, v9

    goto :goto_1
.end method

.method private readFrom(Ljava/io/InputStream;JZ)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move-object v8, v1

    if-nez v8, :cond_1

    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string v10, "in == null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 263
    :cond_0
    move-object v8, v5

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Lokio/Segment;->limit:I

    move v10, v7

    add-int/2addr v9, v10

    iput v9, v8, Lokio/Segment;->limit:I

    .line 264
    move-object v8, v0

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget-wide v9, v9, Lokio/Buffer;->size:J

    move v11, v7

    int-to-long v11, v11

    add-long/2addr v9, v11

    iput-wide v9, v8, Lokio/Buffer;->size:J

    .line 265
    move-wide v8, v2

    move v10, v7

    int-to-long v10, v10

    sub-long/2addr v8, v10

    move-wide v2, v8

    .line 255
    :cond_1
    move-wide v8, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_2

    move v8, v4

    if-eqz v8, :cond_4

    .line 256
    :cond_2
    move-object v8, v0

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v8

    move-object v5, v8

    .line 257
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

    .line 258
    move-object v8, v1

    move-object v9, v5

    iget-object v9, v9, Lokio/Segment;->data:[B

    move-object v10, v5

    iget v10, v10, Lokio/Segment;->limit:I

    move v11, v6

    invoke-virtual {v8, v9, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    move v7, v8

    .line 259
    move v8, v7

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 260
    move v8, v4

    if-eqz v8, :cond_3

    .line 267
    :goto_0
    return-void

    .line 261
    :cond_3
    new-instance v8, Ljava/io/EOFException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/io/EOFException;-><init>()V

    throw v8

    .line 267
    :cond_4
    goto :goto_0
.end method


# virtual methods
.method public buffer()Lokio/Buffer;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public final clear()V
    .locals 6

    .prologue
    .line 930
    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    :try_start_0
    iget-wide v3, v3, Lokio/Buffer;->size:J

    invoke-virtual {v2, v3, v4}, Lokio/Buffer;->skip(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    return-void

    .line 931
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 932
    new-instance v2, Ljava/lang/AssertionError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public clone()Lokio/Buffer;
    .locals 9

    .prologue
    .line 1814
    move-object v0, p0

    new-instance v3, Lokio/Buffer;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    move-object v1, v3

    .line 1815
    move-object v3, v0

    iget-wide v3, v3, Lokio/Buffer;->size:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v1

    move-object v0, v3

    .line 1823
    :goto_0
    return-object v0

    .line 1817
    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lokio/Buffer;->head:Lokio/Segment;

    invoke-virtual {v4}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v4

    iput-object v4, v3, Lokio/Buffer;->head:Lokio/Segment;

    .line 1818
    move-object v3, v1

    iget-object v3, v3, Lokio/Buffer;->head:Lokio/Segment;

    move-object v4, v1

    iget-object v4, v4, Lokio/Buffer;->head:Lokio/Segment;

    move-object v5, v1

    iget-object v5, v5, Lokio/Buffer;->head:Lokio/Segment;

    move-object v7, v4

    move-object v8, v5

    move-object v4, v8

    move-object v5, v7

    move-object v6, v8

    iput-object v6, v5, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v4, v3, Lokio/Segment;->next:Lokio/Segment;

    .line 1819
    move-object v3, v0

    iget-object v3, v3, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    move-object v2, v3

    :goto_1
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v3, v4, :cond_1

    .line 1820
    move-object v3, v1

    iget-object v3, v3, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    move-object v4, v2

    invoke-virtual {v4}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v3

    .line 1819
    move-object v3, v2

    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    move-object v2, v3

    goto :goto_1

    .line 1822
    :cond_1
    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Lokio/Buffer;->size:J

    iput-wide v4, v3, Lokio/Buffer;->size:J

    .line 1823
    move-object v3, v1

    move-object v0, v3

    goto :goto_0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 1673
    return-void
.end method

.method public final completeSegmentByteCount()J
    .locals 8

    .prologue
    .line 275
    move-object v0, p0

    move-object v4, v0

    iget-wide v4, v4, Lokio/Buffer;->size:J

    move-wide v1, v4

    .line 276
    move-wide v4, v1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    move-wide v0, v4

    .line 284
    :goto_0
    return-wide v0

    .line 279
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    move-object v3, v4

    .line 280
    move-object v4, v3

    iget v4, v4, Lokio/Segment;->limit:I

    const/16 v5, 0x2000

    if-ge v4, v5, :cond_1

    move-object v4, v3

    iget-boolean v4, v4, Lokio/Segment;->owner:Z

    if-eqz v4, :cond_1

    .line 281
    move-wide v4, v1

    move-object v6, v3

    iget v6, v6, Lokio/Segment;->limit:I

    move-object v7, v3

    iget v7, v7, Lokio/Segment;->pos:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    sub-long/2addr v4, v6

    move-wide v1, v4

    .line 284
    :cond_1
    move-wide v4, v1

    move-wide v0, v4

    goto :goto_0
.end method

.method public final copyTo(Ljava/io/OutputStream;)Lokio/Buffer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const-wide/16 v4, 0x0

    move-object v6, v0

    iget-wide v6, v6, Lokio/Buffer;->size:J

    invoke-virtual/range {v2 .. v7}, Lokio/Buffer;->copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public final copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object v9, v1

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const-string v11, "out == null"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 159
    :cond_0
    move-object v9, v0

    iget-wide v9, v9, Lokio/Buffer;->size:J

    move-wide v11, v2

    move-wide v13, v4

    invoke-static/range {v9 .. v14}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 160
    move-wide v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_1

    move-object v9, v0

    move-object v0, v9

    .line 177
    :goto_0
    return-object v0

    .line 163
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lokio/Buffer;->head:Lokio/Segment;

    move-object v6, v9

    .line 164
    :goto_1
    move-wide v9, v2

    move-object v11, v6

    iget v11, v11, Lokio/Segment;->limit:I

    move-object v12, v6

    iget v12, v12, Lokio/Segment;->pos:I

    sub-int/2addr v11, v12

    int-to-long v11, v11

    cmp-long v9, v9, v11

    if-ltz v9, :cond_2

    .line 165
    move-wide v9, v2

    move-object v11, v6

    iget v11, v11, Lokio/Segment;->limit:I

    move-object v12, v6

    iget v12, v12, Lokio/Segment;->pos:I

    sub-int/2addr v11, v12

    int-to-long v11, v11

    sub-long/2addr v9, v11

    move-wide v2, v9

    .line 164
    move-object v9, v6

    iget-object v9, v9, Lokio/Segment;->next:Lokio/Segment;

    move-object v6, v9

    goto :goto_1

    .line 169
    :cond_2
    :goto_2
    move-wide v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_3

    .line 170
    move-object v9, v6

    iget v9, v9, Lokio/Segment;->pos:I

    int-to-long v9, v9

    move-wide v11, v2

    add-long/2addr v9, v11

    long-to-int v9, v9

    move v7, v9

    .line 171
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

    .line 172
    move-object v9, v1

    move-object v10, v6

    iget-object v10, v10, Lokio/Segment;->data:[B

    move v11, v7

    move v12, v8

    invoke-virtual {v9, v10, v11, v12}, Ljava/io/OutputStream;->write([BII)V

    .line 173
    move-wide v9, v4

    move v11, v8

    int-to-long v11, v11

    sub-long/2addr v9, v11

    move-wide v4, v9

    .line 174
    const-wide/16 v9, 0x0

    move-wide v2, v9

    .line 169
    move-object v9, v6

    iget-object v9, v9, Lokio/Segment;->next:Lokio/Segment;

    move-object v6, v9

    goto :goto_2

    .line 177
    :cond_3
    move-object v9, v0

    move-object v0, v9

    goto :goto_0
.end method

.method public final copyTo(Lokio/Buffer;JJ)Lokio/Buffer;
    .locals 16

    .prologue
    .line 182
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object v8, v1

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const-string v10, "out == null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 183
    :cond_0
    move-object v8, v0

    iget-wide v8, v8, Lokio/Buffer;->size:J

    move-wide v10, v2

    move-wide v12, v4

    invoke-static/range {v8 .. v13}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 184
    move-wide v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    move-object v8, v0

    move-object v0, v8

    .line 208
    :goto_0
    return-object v0

    .line 186
    :cond_1
    move-object v8, v1

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    iget-wide v9, v9, Lokio/Buffer;->size:J

    move-wide v11, v4

    add-long/2addr v9, v11

    iput-wide v9, v8, Lokio/Buffer;->size:J

    .line 189
    move-object v8, v0

    iget-object v8, v8, Lokio/Buffer;->head:Lokio/Segment;

    move-object v6, v8

    .line 190
    :goto_1
    move-wide v8, v2

    move-object v10, v6

    iget v10, v10, Lokio/Segment;->limit:I

    move-object v11, v6

    iget v11, v11, Lokio/Segment;->pos:I

    sub-int/2addr v10, v11

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-ltz v8, :cond_2

    .line 191
    move-wide v8, v2

    move-object v10, v6

    iget v10, v10, Lokio/Segment;->limit:I

    move-object v11, v6

    iget v11, v11, Lokio/Segment;->pos:I

    sub-int/2addr v10, v11

    int-to-long v10, v10

    sub-long/2addr v8, v10

    move-wide v2, v8

    .line 190
    move-object v8, v6

    iget-object v8, v8, Lokio/Segment;->next:Lokio/Segment;

    move-object v6, v8

    goto :goto_1

    .line 195
    :cond_2
    :goto_2
    move-wide v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    .line 196
    move-object v8, v6

    invoke-virtual {v8}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v8

    move-object v7, v8

    .line 197
    move-object v8, v7

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    iget v9, v9, Lokio/Segment;->pos:I

    int-to-long v9, v9

    move-wide v11, v2

    add-long/2addr v9, v11

    long-to-int v9, v9

    iput v9, v8, Lokio/Segment;->pos:I

    .line 198
    move-object v8, v7

    move-object v9, v7

    iget v9, v9, Lokio/Segment;->pos:I

    move-wide v10, v4

    long-to-int v10, v10

    add-int/2addr v9, v10

    move-object v10, v7

    iget v10, v10, Lokio/Segment;->limit:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, v8, Lokio/Segment;->limit:I

    .line 199
    move-object v8, v1

    iget-object v8, v8, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v8, :cond_3

    .line 200
    move-object v8, v1

    move-object v9, v7

    move-object v10, v7

    move-object v11, v7

    move-object v14, v10

    move-object v15, v11

    move-object v10, v15

    move-object v11, v14

    move-object v12, v15

    iput-object v12, v11, Lokio/Segment;->prev:Lokio/Segment;

    move-object v14, v9

    move-object v15, v10

    move-object v9, v15

    move-object v10, v14

    move-object v11, v15

    iput-object v11, v10, Lokio/Segment;->next:Lokio/Segment;

    iput-object v9, v8, Lokio/Buffer;->head:Lokio/Segment;

    .line 204
    :goto_3
    move-wide v8, v4

    move-object v10, v7

    iget v10, v10, Lokio/Segment;->limit:I

    move-object v11, v7

    iget v11, v11, Lokio/Segment;->pos:I

    sub-int/2addr v10, v11

    int-to-long v10, v10

    sub-long/2addr v8, v10

    move-wide v4, v8

    .line 205
    const-wide/16 v8, 0x0

    move-wide v2, v8

    .line 195
    move-object v8, v6

    iget-object v8, v8, Lokio/Segment;->next:Lokio/Segment;

    move-object v6, v8

    goto :goto_2

    .line 202
    :cond_3
    move-object v8, v1

    iget-object v8, v8, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v8, v8, Lokio/Segment;->prev:Lokio/Segment;

    move-object v9, v7

    invoke-virtual {v8, v9}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v8

    goto :goto_3

    .line 208
    :cond_4
    move-object v8, v0

    move-object v0, v8

    goto/16 :goto_0
.end method

.method public emit()Lokio/BufferedSink;
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public emitCompleteSegments()Lokio/Buffer;
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public bridge synthetic emitCompleteSegments()Lokio/BufferedSink;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokio/Buffer;->emitCompleteSegments()Lokio/Buffer;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 16

    .prologue
    .line 1759
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v12, v0

    move-object v13, v1

    if-ne v12, v13, :cond_0

    const/4 v12, 0x1

    move v0, v12

    .line 1788
    :goto_0
    return v0

    .line 1760
    :cond_0
    move-object v12, v1

    instance-of v12, v12, Lokio/Buffer;

    if-nez v12, :cond_1

    const/4 v12, 0x0

    move v0, v12

    goto :goto_0

    .line 1761
    :cond_1
    move-object v12, v1

    check-cast v12, Lokio/Buffer;

    move-object v2, v12

    .line 1762
    move-object v12, v0

    iget-wide v12, v12, Lokio/Buffer;->size:J

    move-object v14, v2

    iget-wide v14, v14, Lokio/Buffer;->size:J

    cmp-long v12, v12, v14

    if-eqz v12, :cond_2

    const/4 v12, 0x0

    move v0, v12

    goto :goto_0

    .line 1763
    :cond_2
    move-object v12, v0

    iget-wide v12, v12, Lokio/Buffer;->size:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_3

    const/4 v12, 0x1

    move v0, v12

    goto :goto_0

    .line 1765
    :cond_3
    move-object v12, v0

    iget-object v12, v12, Lokio/Buffer;->head:Lokio/Segment;

    move-object v3, v12

    .line 1766
    move-object v12, v2

    iget-object v12, v12, Lokio/Buffer;->head:Lokio/Segment;

    move-object v4, v12

    .line 1767
    move-object v12, v3

    iget v12, v12, Lokio/Segment;->pos:I

    move v5, v12

    .line 1768
    move-object v12, v4

    iget v12, v12, Lokio/Segment;->pos:I

    move v6, v12

    .line 1770
    const-wide/16 v12, 0x0

    move-wide v7, v12

    :goto_1
    move-wide v12, v7

    move-object v14, v0

    iget-wide v14, v14, Lokio/Buffer;->size:J

    cmp-long v12, v12, v14

    if-gez v12, :cond_8

    .line 1771
    move-object v12, v3

    iget v12, v12, Lokio/Segment;->limit:I

    move v13, v5

    sub-int/2addr v12, v13

    move-object v13, v4

    iget v13, v13, Lokio/Segment;->limit:I

    move v14, v6

    sub-int/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    int-to-long v12, v12

    move-wide v9, v12

    .line 1773
    const/4 v12, 0x0

    move v11, v12

    :goto_2
    move v12, v11

    int-to-long v12, v12

    move-wide v14, v9

    cmp-long v12, v12, v14

    if-gez v12, :cond_5

    .line 1774
    move-object v12, v3

    iget-object v12, v12, Lokio/Segment;->data:[B

    move v13, v5

    add-int/lit8 v5, v5, 0x1

    aget-byte v12, v12, v13

    move-object v13, v4

    iget-object v13, v13, Lokio/Segment;->data:[B

    move v14, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v13, v13, v14

    if-eq v12, v13, :cond_4

    const/4 v12, 0x0

    move v0, v12

    goto :goto_0

    .line 1773
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1777
    :cond_5
    move v12, v5

    move-object v13, v3

    iget v13, v13, Lokio/Segment;->limit:I

    if-ne v12, v13, :cond_6

    .line 1778
    move-object v12, v3

    iget-object v12, v12, Lokio/Segment;->next:Lokio/Segment;

    move-object v3, v12

    .line 1779
    move-object v12, v3

    iget v12, v12, Lokio/Segment;->pos:I

    move v5, v12

    .line 1782
    :cond_6
    move v12, v6

    move-object v13, v4

    iget v13, v13, Lokio/Segment;->limit:I

    if-ne v12, v13, :cond_7

    .line 1783
    move-object v12, v4

    iget-object v12, v12, Lokio/Segment;->next:Lokio/Segment;

    move-object v4, v12

    .line 1784
    move-object v12, v4

    iget v12, v12, Lokio/Segment;->pos:I

    move v6, v12

    .line 1770
    :cond_7
    move-wide v12, v7

    move-wide v14, v9

    add-long/2addr v12, v14

    move-wide v7, v12

    goto :goto_1

    .line 1788
    :cond_8
    const/4 v12, 0x1

    move v0, v12

    goto/16 :goto_0
.end method

.method public exhausted()Z
    .locals 5

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lokio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 1666
    return-void
.end method

.method public getBuffer()Lokio/Buffer;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public final getByte(J)B
    .locals 11

    .prologue
    .line 310
    move-object v0, p0

    move-wide v1, p1

    move-object v5, v0

    iget-wide v5, v5, Lokio/Buffer;->size:J

    move-wide v7, v1

    const-wide/16 v9, 0x1

    invoke-static/range {v5 .. v10}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 311
    move-object v5, v0

    iget-wide v5, v5, Lokio/Buffer;->size:J

    move-wide v7, v1

    sub-long/2addr v5, v7

    move-wide v7, v1

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 312
    move-object v5, v0

    iget-object v5, v5, Lokio/Buffer;->head:Lokio/Segment;

    move-object v3, v5

    .line 313
    :goto_0
    move-object v5, v3

    iget v5, v5, Lokio/Segment;->limit:I

    move-object v6, v3

    iget v6, v6, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    move v4, v5

    .line 314
    move-wide v5, v1

    move v7, v4

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    move-object v5, v3

    iget-object v5, v5, Lokio/Segment;->data:[B

    move-object v6, v3

    iget v6, v6, Lokio/Segment;->pos:I

    move-wide v7, v1

    long-to-int v7, v7

    add-int/2addr v6, v7

    aget-byte v5, v5, v6

    move v0, v5

    .line 321
    :goto_1
    return v0

    .line 315
    :cond_0
    move-wide v5, v1

    move v7, v4

    int-to-long v7, v7

    sub-long/2addr v5, v7

    move-wide v1, v5

    .line 312
    move-object v5, v3

    iget-object v5, v5, Lokio/Segment;->next:Lokio/Segment;

    move-object v3, v5

    goto :goto_0

    .line 318
    :cond_1
    move-wide v5, v1

    move-object v7, v0

    iget-wide v7, v7, Lokio/Buffer;->size:J

    sub-long/2addr v5, v7

    move-wide v1, v5

    .line 319
    move-object v5, v0

    iget-object v5, v5, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v5, v5, Lokio/Segment;->prev:Lokio/Segment;

    move-object v3, v5

    .line 320
    :goto_2
    move-wide v5, v1

    move-object v7, v3

    iget v7, v7, Lokio/Segment;->limit:I

    move-object v8, v3

    iget v8, v8, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    add-long/2addr v5, v7

    move-wide v1, v5

    .line 321
    move-wide v5, v1

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_2

    move-object v5, v3

    iget-object v5, v5, Lokio/Segment;->data:[B

    move-object v6, v3

    iget v6, v6, Lokio/Segment;->pos:I

    move-wide v7, v1

    long-to-int v7, v7

    add-int/2addr v6, v7

    aget-byte v5, v5, v6

    move v0, v5

    goto :goto_1

    .line 319
    :cond_2
    move-object v5, v3

    iget-object v5, v5, Lokio/Segment;->prev:Lokio/Segment;

    move-object v3, v5

    goto :goto_2
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 1792
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Lokio/Buffer;->head:Lokio/Segment;

    move-object v1, v5

    .line 1793
    move-object v5, v1

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move v0, v5

    .line 1801
    :goto_0
    return v0

    .line 1794
    :cond_0
    const/4 v5, 0x1

    move v2, v5

    .line 1796
    :cond_1
    move-object v5, v1

    iget v5, v5, Lokio/Segment;->pos:I

    move v3, v5

    move-object v5, v1

    iget v5, v5, Lokio/Segment;->limit:I

    move v4, v5

    :goto_1
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_2

    .line 1797
    const/16 v5, 0x1f

    move v6, v2

    mul-int/2addr v5, v6

    move-object v6, v1

    iget-object v6, v6, Lokio/Segment;->data:[B

    move v7, v3

    aget-byte v6, v6, v7

    add-int/2addr v5, v6

    move v2, v5

    .line 1796
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1799
    :cond_2
    move-object v5, v1

    iget-object v5, v5, Lokio/Segment;->next:Lokio/Segment;

    move-object v1, v5

    .line 1800
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v5, v6, :cond_1

    .line 1801
    move v5, v2

    move v0, v5

    goto :goto_0
.end method

.method public final hmacSha1(Lokio/ByteString;)Lokio/ByteString;
    .locals 5

    .prologue
    .line 1727
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string v3, "HmacSHA1"

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public final hmacSha256(Lokio/ByteString;)Lokio/ByteString;
    .locals 5

    .prologue
    .line 1732
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string v3, "HmacSHA256"

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public final hmacSha512(Lokio/ByteString;)Lokio/ByteString;
    .locals 5

    .prologue
    .line 1737
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string v3, "HmacSHA512"

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public indexOf(B)J
    .locals 8

    .prologue
    .line 1413
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const-wide/16 v4, 0x0

    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual/range {v2 .. v7}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public indexOf(BJ)J
    .locals 10

    .prologue
    .line 1421
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, v0

    move v5, v1

    move-wide v6, v2

    const-wide v8, 0x7fffffffffffffffL

    invoke-virtual/range {v4 .. v9}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v4

    move-wide v0, v4

    return-wide v0
.end method

.method public indexOf(BJJ)J
    .locals 24

    .prologue
    .line 1425
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide v14, v4

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-ltz v14, :cond_0

    move-wide v14, v6

    move-wide/from16 v16, v4

    cmp-long v14, v14, v16

    if-gez v14, :cond_1

    .line 1426
    :cond_0
    new-instance v14, Ljava/lang/IllegalArgumentException;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    const-string v16, "size=%s fromIndex=%s toIndex=%s"

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    const/16 v19, 0x0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v20, v0

    .line 1427
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    const/16 v19, 0x1

    move-wide/from16 v20, v4

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    const/16 v19, 0x2

    move-wide/from16 v20, v6

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1430
    :cond_1
    move-wide v14, v6

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-lez v14, :cond_2

    move-object v14, v2

    iget-wide v14, v14, Lokio/Buffer;->size:J

    move-wide v6, v14

    .line 1431
    :cond_2
    move-wide v14, v4

    move-wide/from16 v16, v6

    cmp-long v14, v14, v16

    if-nez v14, :cond_3

    const-wide/16 v14, -0x1

    move-wide v2, v14

    .line 1477
    :goto_0
    return-wide v2

    .line 1439
    :cond_3
    move-object v14, v2

    iget-object v14, v14, Lokio/Buffer;->head:Lokio/Segment;

    move-object v8, v14

    .line 1440
    move-object v14, v8

    if-nez v14, :cond_4

    .line 1442
    const-wide/16 v14, -0x1

    move-wide v2, v14

    goto :goto_0

    .line 1443
    :cond_4
    move-object v14, v2

    iget-wide v14, v14, Lokio/Buffer;->size:J

    move-wide/from16 v16, v4

    sub-long v14, v14, v16

    move-wide/from16 v16, v4

    cmp-long v14, v14, v16

    if-gez v14, :cond_5

    .line 1445
    move-object v14, v2

    iget-wide v14, v14, Lokio/Buffer;->size:J

    move-wide v9, v14

    .line 1446
    :goto_1
    move-wide v14, v9

    move-wide/from16 v16, v4

    cmp-long v14, v14, v16

    if-lez v14, :cond_7

    .line 1447
    move-object v14, v8

    iget-object v14, v14, Lokio/Segment;->prev:Lokio/Segment;

    move-object v8, v14

    .line 1448
    move-wide v14, v9

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v16, v0

    move-object/from16 v17, v8

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    move-wide v9, v14

    goto :goto_1

    .line 1452
    :cond_5
    const-wide/16 v14, 0x0

    move-wide v9, v14

    .line 1453
    :goto_2
    move-wide v14, v9

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v16, v0

    move-object/from16 v17, v8

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    move-wide/from16 v22, v14

    move-wide/from16 v14, v22

    move-wide/from16 v16, v22

    move-wide/from16 v11, v16

    move-wide/from16 v16, v4

    cmp-long v14, v14, v16

    if-gez v14, :cond_7

    .line 1454
    move-object v14, v8

    iget-object v14, v14, Lokio/Segment;->next:Lokio/Segment;

    move-object v8, v14

    .line 1455
    move-wide v14, v11

    move-wide v9, v14

    goto :goto_2

    .line 1472
    :cond_6
    move-wide v14, v9

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v16, v0

    move-object/from16 v17, v8

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    move-wide v9, v14

    .line 1473
    move-wide v14, v9

    move-wide v4, v14

    .line 1474
    move-object v14, v8

    iget-object v14, v14, Lokio/Segment;->next:Lokio/Segment;

    move-object v8, v14

    .line 1461
    :cond_7
    move-wide v14, v9

    move-wide/from16 v16, v6

    cmp-long v14, v14, v16

    if-gez v14, :cond_9

    .line 1462
    move-object v14, v8

    iget-object v14, v14, Lokio/Segment;->data:[B

    move-object v11, v14

    .line 1463
    move-object v14, v8

    iget v14, v14, Lokio/Segment;->limit:I

    int-to-long v14, v14

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v18, v6

    add-long v16, v16, v18

    move-wide/from16 v18, v9

    sub-long v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    long-to-int v14, v14

    move v12, v14

    .line 1464
    move-object v14, v8

    iget v14, v14, Lokio/Segment;->pos:I

    int-to-long v14, v14

    move-wide/from16 v16, v4

    add-long v14, v14, v16

    move-wide/from16 v16, v9

    sub-long v14, v14, v16

    long-to-int v14, v14

    move v13, v14

    .line 1465
    :goto_3
    move v14, v13

    move v15, v12

    if-ge v14, v15, :cond_6

    .line 1466
    move-object v14, v11

    move v15, v13

    aget-byte v14, v14, v15

    move v15, v3

    if-ne v14, v15, :cond_8

    .line 1467
    move v14, v13

    move-object v15, v8

    iget v15, v15, Lokio/Segment;->pos:I

    sub-int/2addr v14, v15

    int-to-long v14, v14

    move-wide/from16 v16, v9

    add-long v14, v14, v16

    move-wide v2, v14

    goto/16 :goto_0

    .line 1465
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1477
    :cond_9
    const-wide/16 v14, -0x1

    move-wide v2, v14

    goto/16 :goto_0
.end method

.method public indexOf(Lokio/ByteString;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1481
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lokio/Buffer;->indexOf(Lokio/ByteString;J)J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public indexOf(Lokio/ByteString;J)J
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1485
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Lokio/ByteString;->size()I

    move-result v16

    if-nez v16, :cond_0

    new-instance v16, Ljava/lang/IllegalArgumentException;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    const-string v18, "bytes is empty"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 1486
    :cond_0
    move-wide/from16 v16, v4

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-gez v16, :cond_1

    new-instance v16, Ljava/lang/IllegalArgumentException;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    const-string v18, "fromIndex < 0"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 1494
    :cond_1
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v16, v0

    move-object/from16 v6, v16

    .line 1495
    move-object/from16 v16, v6

    if-nez v16, :cond_2

    .line 1497
    const-wide/16 v16, -0x1

    move-wide/from16 v2, v16

    .line 1536
    :goto_0
    return-wide v2

    .line 1498
    :cond_2
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v16, v0

    move-wide/from16 v18, v4

    sub-long v16, v16, v18

    move-wide/from16 v18, v4

    cmp-long v16, v16, v18

    if-gez v16, :cond_3

    .line 1500
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v16, v0

    move-wide/from16 v7, v16

    .line 1501
    :goto_1
    move-wide/from16 v16, v7

    move-wide/from16 v18, v4

    cmp-long v16, v16, v18

    if-lez v16, :cond_4

    .line 1502
    move-object/from16 v16, v6

    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    move-object/from16 v16, v0

    move-object/from16 v6, v16

    .line 1503
    move-wide/from16 v16, v7

    move-object/from16 v18, v6

    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v18, v0

    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-wide/from16 v7, v16

    goto :goto_1

    .line 1507
    :cond_3
    const-wide/16 v16, 0x0

    move-wide/from16 v7, v16

    .line 1508
    :goto_2
    move-wide/from16 v16, v7

    move-object/from16 v18, v6

    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v18, v0

    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v22, v16

    move-wide/from16 v16, v22

    move-wide/from16 v18, v22

    move-wide/from16 v9, v18

    move-wide/from16 v18, v4

    cmp-long v16, v16, v18

    if-gez v16, :cond_4

    .line 1509
    move-object/from16 v16, v6

    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v16, v0

    move-object/from16 v6, v16

    .line 1510
    move-wide/from16 v16, v9

    move-wide/from16 v7, v16

    goto :goto_2

    .line 1517
    :cond_4
    move-object/from16 v16, v3

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lokio/ByteString;->getByte(I)B

    move-result v16

    move/from16 v9, v16

    .line 1518
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Lokio/ByteString;->size()I

    move-result v16

    move/from16 v10, v16

    .line 1519
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v16, v0

    move/from16 v18, v10

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    const-wide/16 v18, 0x1

    add-long v16, v16, v18

    move-wide/from16 v11, v16

    .line 1520
    :goto_3
    move-wide/from16 v16, v7

    move-wide/from16 v18, v11

    cmp-long v16, v16, v18

    if-gez v16, :cond_7

    .line 1522
    move-object/from16 v16, v6

    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v16, v0

    move-object/from16 v13, v16

    .line 1523
    move-object/from16 v16, v6

    move-object/from16 v0, v16

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v18, v6

    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v11

    add-long v18, v18, v20

    move-wide/from16 v20, v7

    sub-long v18, v18, v20

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v14, v16

    .line 1524
    move-object/from16 v16, v6

    move-object/from16 v0, v16

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v18, v4

    add-long v16, v16, v18

    move-wide/from16 v18, v7

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v15, v16

    :goto_4
    move/from16 v16, v15

    move/from16 v17, v14

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 1525
    move-object/from16 v16, v13

    move/from16 v17, v15

    aget-byte v16, v16, v17

    move/from16 v17, v9

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    move-object/from16 v16, v2

    move-object/from16 v17, v6

    move/from16 v18, v15

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v19, v3

    const/16 v20, 0x1

    move/from16 v21, v10

    invoke-direct/range {v16 .. v21}, Lokio/Buffer;->rangeEquals(Lokio/Segment;ILokio/ByteString;II)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 1526
    move/from16 v16, v15

    move-object/from16 v17, v6

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v18, v7

    add-long v16, v16, v18

    move-wide/from16 v2, v16

    goto/16 :goto_0

    .line 1524
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1531
    :cond_6
    move-wide/from16 v16, v7

    move-object/from16 v18, v6

    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v18, v0

    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v7, v16

    .line 1532
    move-wide/from16 v16, v7

    move-wide/from16 v4, v16

    .line 1533
    move-object/from16 v16, v6

    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v16, v0

    move-object/from16 v6, v16

    .line 1534
    goto/16 :goto_3

    .line 1536
    :cond_7
    const-wide/16 v16, -0x1

    move-wide/from16 v2, v16

    goto/16 :goto_0
.end method

.method public indexOfElement(Lokio/ByteString;)J
    .locals 6

    .prologue
    .line 1540
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public indexOfElement(Lokio/ByteString;J)J
    .locals 24

    .prologue
    .line 1544
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v18, v4

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-gez v18, :cond_0

    new-instance v18, Ljava/lang/IllegalArgumentException;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    const-string v20, "fromIndex < 0"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1552
    :cond_0
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v18, v0

    move-object/from16 v6, v18

    .line 1553
    move-object/from16 v18, v6

    if-nez v18, :cond_1

    .line 1555
    const-wide/16 v18, -0x1

    move-wide/from16 v2, v18

    .line 1613
    :goto_0
    return-wide v2

    .line 1556
    :cond_1
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v18, v0

    move-wide/from16 v20, v4

    sub-long v18, v18, v20

    move-wide/from16 v20, v4

    cmp-long v18, v18, v20

    if-gez v18, :cond_2

    .line 1558
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v18, v0

    move-wide/from16 v7, v18

    .line 1559
    :goto_1
    move-wide/from16 v18, v7

    move-wide/from16 v20, v4

    cmp-long v18, v18, v20

    if-lez v18, :cond_3

    .line 1560
    move-object/from16 v18, v6

    move-object/from16 v0, v18

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    move-object/from16 v18, v0

    move-object/from16 v6, v18

    .line 1561
    move-wide/from16 v18, v7

    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v20, v0

    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    move-wide/from16 v7, v18

    goto :goto_1

    .line 1565
    :cond_2
    const-wide/16 v18, 0x0

    move-wide/from16 v7, v18

    .line 1566
    :goto_2
    move-wide/from16 v18, v7

    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v20, v0

    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v22, v18

    move-wide/from16 v18, v22

    move-wide/from16 v20, v22

    move-wide/from16 v9, v20

    move-wide/from16 v20, v4

    cmp-long v18, v18, v20

    if-gez v18, :cond_3

    .line 1567
    move-object/from16 v18, v6

    move-object/from16 v0, v18

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v18, v0

    move-object/from16 v6, v18

    .line 1568
    move-wide/from16 v18, v9

    move-wide/from16 v7, v18

    goto :goto_2

    .line 1576
    :cond_3
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lokio/ByteString;->size()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 1578
    move-object/from16 v18, v3

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lokio/ByteString;->getByte(I)B

    move-result v18

    move/from16 v9, v18

    .line 1579
    move-object/from16 v18, v3

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lokio/ByteString;->getByte(I)B

    move-result v18

    move/from16 v10, v18

    .line 1580
    :goto_3
    move-wide/from16 v18, v7

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gez v18, :cond_7

    .line 1581
    move-object/from16 v18, v6

    move-object/from16 v0, v18

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v18, v0

    move-object/from16 v11, v18

    .line 1582
    move-object/from16 v18, v6

    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v4

    add-long v18, v18, v20

    move-wide/from16 v20, v7

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v12, v18

    move-object/from16 v18, v6

    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v18, v0

    move/from16 v13, v18

    :goto_4
    move/from16 v18, v12

    move/from16 v19, v13

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    .line 1583
    move-object/from16 v18, v11

    move/from16 v19, v12

    aget-byte v18, v18, v19

    move/from16 v14, v18

    .line 1584
    move/from16 v18, v14

    move/from16 v19, v9

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    move/from16 v18, v14

    move/from16 v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 1585
    :cond_4
    move/from16 v18, v12

    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v7

    add-long v18, v18, v20

    move-wide/from16 v2, v18

    goto/16 :goto_0

    .line 1582
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 1590
    :cond_6
    move-wide/from16 v18, v7

    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v20, v0

    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v7, v18

    .line 1591
    move-wide/from16 v18, v7

    move-wide/from16 v4, v18

    .line 1592
    move-object/from16 v18, v6

    move-object/from16 v0, v18

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v18, v0

    move-object/from16 v6, v18

    .line 1593
    goto/16 :goto_3

    .line 1613
    :cond_7
    const-wide/16 v18, -0x1

    move-wide/from16 v2, v18

    goto/16 :goto_0

    .line 1596
    :cond_8
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lokio/ByteString;->internalArray()[B

    move-result-object v18

    move-object/from16 v9, v18

    .line 1597
    :goto_5
    move-wide/from16 v18, v7

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gez v18, :cond_7

    .line 1598
    move-object/from16 v18, v6

    move-object/from16 v0, v18

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v18, v0

    move-object/from16 v10, v18

    .line 1599
    move-object/from16 v18, v6

    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v4

    add-long v18, v18, v20

    move-wide/from16 v20, v7

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v11, v18

    move-object/from16 v18, v6

    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v18, v0

    move/from16 v12, v18

    :goto_6
    move/from16 v18, v11

    move/from16 v19, v12

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_b

    .line 1600
    move-object/from16 v18, v10

    move/from16 v19, v11

    aget-byte v18, v18, v19

    move/from16 v13, v18

    .line 1601
    move-object/from16 v18, v9

    move-object/from16 v14, v18

    move-object/from16 v18, v14

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v15, v18

    const/16 v18, 0x0

    move/from16 v16, v18

    :goto_7
    move/from16 v18, v16

    move/from16 v19, v15

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    move-object/from16 v18, v14

    move/from16 v19, v16

    aget-byte v18, v18, v19

    move/from16 v17, v18

    .line 1602
    move/from16 v18, v13

    move/from16 v19, v17

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    move/from16 v18, v11

    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v7

    add-long v18, v18, v20

    move-wide/from16 v2, v18

    goto/16 :goto_0

    .line 1601
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 1599
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 1607
    :cond_b
    move-wide/from16 v18, v7

    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v20, v0

    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v7, v18

    .line 1608
    move-wide/from16 v18, v7

    move-wide/from16 v4, v18

    .line 1609
    move-object/from16 v18, v6

    move-object/from16 v0, v18

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v18, v0

    move-object/from16 v6, v18

    .line 1610
    goto/16 :goto_5
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 125
    move-object v0, p0

    new-instance v1, Lokio/Buffer$2;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lokio/Buffer$2;-><init>(Lokio/Buffer;)V

    move-object v0, v1

    return-object v0
.end method

.method public isOpen()Z
    .locals 2

    .prologue
    .line 1669
    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method public final md5()Lokio/ByteString;
    .locals 3

    .prologue
    .line 1692
    move-object v0, p0

    move-object v1, v0

    const-string v2, "MD5"

    invoke-direct {v1, v2}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .locals 5

    .prologue
    .line 79
    move-object v0, p0

    new-instance v1, Lokio/Buffer$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lokio/Buffer$1;-><init>(Lokio/Buffer;)V

    move-object v0, v1

    return-object v0
.end method

.method public peek()Lokio/BufferedSource;
    .locals 5

    .prologue
    .line 121
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

    .prologue
    .line 1617
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

    invoke-virtual/range {v4 .. v9}, Lokio/Buffer;->rangeEquals(JLokio/ByteString;II)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public rangeEquals(JLokio/ByteString;II)Z
    .locals 12

    .prologue
    .line 1622
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide v7, v1

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-ltz v7, :cond_0

    move v7, v4

    if-ltz v7, :cond_0

    move v7, v5

    if-ltz v7, :cond_0

    move-object v7, v0

    iget-wide v7, v7, Lokio/Buffer;->size:J

    move-wide v9, v1

    sub-long/2addr v7, v9

    move v9, v5

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-ltz v7, :cond_0

    move-object v7, v3

    .line 1626
    invoke-virtual {v7}, Lokio/ByteString;->size()I

    move-result v7

    move v8, v4

    sub-int/2addr v7, v8

    move v8, v5

    if-ge v7, v8, :cond_1

    .line 1627
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    .line 1634
    :goto_0
    return v0

    .line 1629
    :cond_1
    const/4 v7, 0x0

    move v6, v7

    :goto_1
    move v7, v6

    move v8, v5

    if-ge v7, v8, :cond_3

    .line 1630
    move-object v7, v0

    move-wide v8, v1

    move v10, v6

    int-to-long v10, v10

    add-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v7

    move-object v8, v3

    move v9, v4

    move v10, v6

    add-int/2addr v9, v10

    invoke-virtual {v8, v9}, Lokio/ByteString;->getByte(I)B

    move-result v8

    if-eq v7, v8, :cond_2

    .line 1631
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 1629
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1634
    :cond_3
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 907
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lokio/Buffer;->head:Lokio/Segment;

    move-object v2, v4

    .line 908
    move-object v4, v2

    if-nez v4, :cond_0

    const/4 v4, -0x1

    move v0, v4

    .line 921
    :goto_0
    return v0

    .line 910
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    move-object v5, v2

    iget v5, v5, Lokio/Segment;->limit:I

    move-object v6, v2

    iget v6, v6, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v3, v4

    .line 911
    move-object v4, v1

    move-object v5, v2

    iget-object v5, v5, Lokio/Segment;->data:[B

    move-object v6, v2

    iget v6, v6, Lokio/Segment;->pos:I

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 913
    move-object v4, v2

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lokio/Segment;->pos:I

    move v6, v3

    add-int/2addr v5, v6

    iput v5, v4, Lokio/Segment;->pos:I

    .line 914
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget-wide v5, v5, Lokio/Buffer;->size:J

    move v7, v3

    int-to-long v7, v7

    sub-long/2addr v5, v7

    iput-wide v5, v4, Lokio/Buffer;->size:J

    .line 916
    move-object v4, v2

    iget v4, v4, Lokio/Segment;->pos:I

    move-object v5, v2

    iget v5, v5, Lokio/Segment;->limit:I

    if-ne v4, v5, :cond_1

    .line 917
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v5

    iput-object v5, v4, Lokio/Buffer;->head:Lokio/Segment;

    .line 918
    move-object v4, v2

    invoke-static {v4}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 921
    :cond_1
    move v4, v3

    move v0, v4

    goto :goto_0
.end method

.method public read([B)I
    .locals 6

    .prologue
    .line 875
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lokio/Buffer;->read([BII)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public read([BII)I
    .locals 13

    .prologue
    .line 888
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object v6, v1

    array-length v6, v6

    int-to-long v6, v6

    move v8, v2

    int-to-long v8, v8

    move v10, v3

    int-to-long v10, v10

    invoke-static/range {v6 .. v11}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 890
    move-object v6, v0

    iget-object v6, v6, Lokio/Buffer;->head:Lokio/Segment;

    move-object v4, v6

    .line 891
    move-object v6, v4

    if-nez v6, :cond_0

    const/4 v6, -0x1

    move v0, v6

    .line 903
    :goto_0
    return v0

    .line 892
    :cond_0
    move v6, v3

    move-object v7, v4

    iget v7, v7, Lokio/Segment;->limit:I

    move-object v8, v4

    iget v8, v8, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v5, v6

    .line 893
    move-object v6, v4

    iget-object v6, v6, Lokio/Segment;->data:[B

    move-object v7, v4

    iget v7, v7, Lokio/Segment;->pos:I

    move-object v8, v1

    move v9, v2

    move v10, v5

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 895
    move-object v6, v4

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Lokio/Segment;->pos:I

    move v8, v5

    add-int/2addr v7, v8

    iput v7, v6, Lokio/Segment;->pos:I

    .line 896
    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget-wide v7, v7, Lokio/Buffer;->size:J

    move v9, v5

    int-to-long v9, v9

    sub-long/2addr v7, v9

    iput-wide v7, v6, Lokio/Buffer;->size:J

    .line 898
    move-object v6, v4

    iget v6, v6, Lokio/Segment;->pos:I

    move-object v7, v4

    iget v7, v7, Lokio/Segment;->limit:I

    if-ne v6, v7, :cond_1

    .line 899
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v7}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v7

    iput-object v7, v6, Lokio/Buffer;->head:Lokio/Segment;

    .line 900
    move-object v6, v4

    invoke-static {v6}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 903
    :cond_1
    move v6, v5

    move v0, v6

    goto :goto_0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 10

    .prologue
    .line 1404
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, v1

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "sink == null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1405
    :cond_0
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

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

    .line 1406
    :cond_1
    move-object v4, v0

    iget-wide v4, v4, Lokio/Buffer;->size:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    const-wide/16 v4, -0x1

    move-wide v0, v4

    .line 1409
    :goto_0
    return-wide v0

    .line 1407
    :cond_2
    move-wide v4, v2

    move-object v6, v0

    iget-wide v6, v6, Lokio/Buffer;->size:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    move-object v4, v0

    iget-wide v4, v4, Lokio/Buffer;->size:J

    move-wide v2, v4

    .line 1408
    :cond_3
    move-object v4, v1

    move-object v5, v0

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 1409
    move-wide v4, v2

    move-wide v0, v4

    goto :goto_0
.end method

.method public readAll(Lokio/Sink;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 683
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-wide v4, v4, Lokio/Buffer;->size:J

    move-wide v2, v4

    .line 684
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 685
    move-object v4, v1

    move-object v5, v0

    move-wide v6, v2

    invoke-interface {v4, v5, v6, v7}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 687
    :cond_0
    move-wide v4, v2

    move-wide v0, v4

    return-wide v0
.end method

.method public final readAndWriteUnsafe()Lokio/Buffer$UnsafeCursor;
    .locals 5

    .prologue
    .line 1857
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Lokio/Buffer$UnsafeCursor;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lokio/Buffer$UnsafeCursor;-><init>()V

    invoke-virtual {v1, v2}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .locals 6

    .prologue
    .line 1861
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget-object v2, v2, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v2, :cond_0

    .line 1862
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "already attached to a buffer"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1865
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 1866
    move-object v2, v1

    const/4 v3, 0x1

    iput-boolean v3, v2, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    .line 1867
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public readByte()B
    .locals 12

    .prologue
    .line 288
    move-object v0, p0

    move-object v6, v0

    iget-wide v6, v6, Lokio/Buffer;->size:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "size == 0"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 290
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lokio/Buffer;->head:Lokio/Segment;

    move-object v1, v6

    .line 291
    move-object v6, v1

    iget v6, v6, Lokio/Segment;->pos:I

    move v2, v6

    .line 292
    move-object v6, v1

    iget v6, v6, Lokio/Segment;->limit:I

    move v3, v6

    .line 294
    move-object v6, v1

    iget-object v6, v6, Lokio/Segment;->data:[B

    move-object v4, v6

    .line 295
    move-object v6, v4

    move v7, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v6, v6, v7

    move v5, v6

    .line 296
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget-wide v7, v7, Lokio/Buffer;->size:J

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    iput-wide v7, v6, Lokio/Buffer;->size:J

    .line 298
    move v6, v2

    move v7, v3

    if-ne v6, v7, :cond_1

    .line 299
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v7

    iput-object v7, v6, Lokio/Buffer;->head:Lokio/Segment;

    .line 300
    move-object v6, v1

    invoke-static {v6}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 305
    :goto_0
    move v6, v5

    move v0, v6

    return v0

    .line 302
    :cond_1
    move-object v6, v1

    move v7, v2

    iput v7, v6, Lokio/Segment;->pos:I

    goto :goto_0
.end method

.method public readByteArray()[B
    .locals 6

    .prologue
    .line 857
    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    :try_start_0
    iget-wide v3, v3, Lokio/Buffer;->size:J

    invoke-virtual {v2, v3, v4}, Lokio/Buffer;->readByteArray(J)[B
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    return-object v0

    .line 858
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 859
    new-instance v2, Ljava/lang/AssertionError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public readByteArray(J)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 864
    move-object v0, p0

    move-wide v1, p1

    move-object v4, v0

    iget-wide v4, v4, Lokio/Buffer;->size:J

    const-wide/16 v6, 0x0

    move-wide v8, v1

    invoke-static/range {v4 .. v9}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 865
    move-wide v4, v1

    const-wide/32 v6, 0x7fffffff

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 866
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide v7, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 869
    :cond_0
    move-wide v4, v1

    long-to-int v4, v4

    new-array v4, v4, [B

    move-object v3, v4

    .line 870
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lokio/Buffer;->readFully([B)V

    .line 871
    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method

.method public readByteString()Lokio/ByteString;
    .locals 5

    .prologue
    .line 548
    move-object v0, p0

    new-instance v1, Lokio/ByteString;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-virtual {v3}, Lokio/Buffer;->readByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lokio/ByteString;-><init>([B)V

    move-object v0, v1

    return-object v0
.end method

.method public readByteString(J)Lokio/ByteString;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 552
    move-object v0, p0

    move-wide v1, p1

    new-instance v3, Lokio/ByteString;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lokio/ByteString;-><init>([B)V

    move-object v0, v3

    return-object v0
.end method

.method public readDecimalLong()J
    .locals 26

    .prologue
    .line 434
    move-object/from16 v3, p0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_0

    new-instance v20, Ljava/lang/IllegalStateException;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    const-string v22, "size == 0"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 437
    :cond_0
    const-wide/16 v20, 0x0

    move-wide/from16 v4, v20

    .line 438
    const/16 v20, 0x0

    move/from16 v6, v20

    .line 439
    const/16 v20, 0x0

    move/from16 v7, v20

    .line 440
    const/16 v20, 0x0

    move/from16 v8, v20

    .line 442
    const-wide v20, -0xcccccccccccccccL

    move-wide/from16 v9, v20

    .line 443
    const-wide/16 v20, -0x7

    move-wide/from16 v11, v20

    .line 446
    :cond_1
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v20, v0

    move-object/from16 v13, v20

    .line 448
    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v20, v0

    move-object/from16 v14, v20

    .line 449
    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v20, v0

    move/from16 v15, v20

    .line 450
    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v20, v0

    move/from16 v16, v20

    .line 452
    :goto_0
    move/from16 v20, v15

    move/from16 v21, v16

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 453
    move-object/from16 v20, v14

    move/from16 v21, v15

    aget-byte v20, v20, v21

    move/from16 v17, v20

    .line 454
    move/from16 v20, v17

    const/16 v21, 0x30

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_5

    move/from16 v20, v17

    const/16 v21, 0x39

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_5

    .line 455
    const/16 v20, 0x30

    move/from16 v21, v17

    rsub-int/lit8 v20, v21, 0x30

    move/from16 v18, v20

    .line 458
    move-wide/from16 v20, v4

    move-wide/from16 v22, v9

    cmp-long v20, v20, v22

    if-ltz v20, :cond_2

    move-wide/from16 v20, v4

    move-wide/from16 v22, v9

    cmp-long v20, v20, v22

    if-nez v20, :cond_4

    move/from16 v20, v18

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v22, v11

    cmp-long v20, v20, v22

    if-gez v20, :cond_4

    .line 459
    :cond_2
    new-instance v20, Lokio/Buffer;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    invoke-direct/range {v21 .. v21}, Lokio/Buffer;-><init>()V

    move-wide/from16 v21, v4

    invoke-virtual/range {v20 .. v22}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v20

    move/from16 v21, v17

    invoke-virtual/range {v20 .. v21}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v20

    move-object/from16 v19, v20

    .line 460
    move/from16 v20, v7

    if-nez v20, :cond_3

    move-object/from16 v20, v19

    invoke-virtual/range {v20 .. v20}, Lokio/Buffer;->readByte()B

    move-result v20

    .line 461
    :cond_3
    new-instance v20, Ljava/lang/NumberFormatException;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v25, v22

    move-object/from16 v22, v25

    move-object/from16 v23, v25

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Number too large: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v19

    invoke-virtual/range {v23 .. v23}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 463
    :cond_4
    move-wide/from16 v20, v4

    const-wide/16 v22, 0xa

    mul-long v20, v20, v22

    move-wide/from16 v4, v20

    .line 464
    move-wide/from16 v20, v4

    move/from16 v22, v18

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v4, v20

    .line 452
    :goto_1
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 465
    :cond_5
    move/from16 v20, v17

    const/16 v21, 0x2d

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    move/from16 v20, v6

    if-nez v20, :cond_6

    .line 466
    const/16 v20, 0x1

    move/from16 v7, v20

    .line 467
    move-wide/from16 v20, v11

    const-wide/16 v22, 0x1

    sub-long v20, v20, v22

    move-wide/from16 v11, v20

    goto :goto_1

    .line 469
    :cond_6
    move/from16 v20, v6

    if-nez v20, :cond_7

    .line 470
    new-instance v20, Ljava/lang/NumberFormatException;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v25, v22

    move-object/from16 v22, v25

    move-object/from16 v23, v25

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move/from16 v23, v17

    .line 471
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 474
    :cond_7
    const/16 v20, 0x1

    move/from16 v8, v20

    .line 479
    :cond_8
    move/from16 v20, v15

    move/from16 v21, v16

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 480
    move-object/from16 v20, v3

    move-object/from16 v21, v13

    invoke-virtual/range {v21 .. v21}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 481
    move-object/from16 v20, v13

    invoke-static/range {v20 .. v20}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 485
    :goto_2
    move/from16 v20, v8

    if-nez v20, :cond_9

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 487
    :cond_9
    move-object/from16 v20, v3

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move-object/from16 v0, v21

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v21, v0

    move/from16 v23, v6

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    sub-long v21, v21, v23

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lokio/Buffer;->size:J

    .line 488
    move/from16 v20, v7

    if-eqz v20, :cond_b

    move-wide/from16 v20, v4

    :goto_3
    move-wide/from16 v3, v20

    return-wide v3

    .line 483
    :cond_a
    move-object/from16 v20, v13

    move/from16 v21, v15

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lokio/Segment;->pos:I

    goto :goto_2

    .line 488
    :cond_b
    move-wide/from16 v20, v4

    move-wide/from16 v0, v20

    neg-long v0, v0

    move-wide/from16 v20, v0

    goto :goto_3
.end method

.method public final readFrom(Ljava/io/InputStream;)Lokio/Buffer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    .line 243
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public final readFrom(Ljava/io/InputStream;J)Lokio/Buffer;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
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

    .line 249
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    .line 250
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public readFully(Lokio/Buffer;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 675
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    iget-wide v4, v4, Lokio/Buffer;->size:J

    move-wide v6, v2

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 676
    move-object v4, v1

    move-object v5, v0

    move-object v6, v0

    iget-wide v6, v6, Lokio/Buffer;->size:J

    invoke-virtual {v4, v5, v6, v7}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 677
    new-instance v4, Ljava/io/EOFException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 679
    :cond_0
    move-object v4, v1

    move-object v5, v0

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 680
    return-void
.end method

.method public readFully([B)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 879
    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move v2, v4

    .line 880
    :goto_0
    move v4, v2

    move-object v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 881
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v1

    array-length v7, v7

    move v8, v2

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lokio/Buffer;->read([BII)I

    move-result v4

    move v3, v4

    .line 882
    move v4, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    new-instance v4, Ljava/io/EOFException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 883
    :cond_0
    move v4, v2

    move v5, v3

    add-int/2addr v4, v5

    move v2, v4

    .line 884
    goto :goto_0

    .line 885
    :cond_1
    return-void
.end method

.method public readHexadecimalUnsignedLong()J
    .locals 18

    .prologue
    .line 492
    move-object/from16 v0, p0

    move-object v12, v0

    iget-wide v12, v12, Lokio/Buffer;->size:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_0

    new-instance v12, Ljava/lang/IllegalStateException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const-string v14, "size == 0"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 494
    :cond_0
    const-wide/16 v12, 0x0

    move-wide v1, v12

    .line 495
    const/4 v12, 0x0

    move v3, v12

    .line 496
    const/4 v12, 0x0

    move v4, v12

    .line 499
    :cond_1
    move-object v12, v0

    iget-object v12, v12, Lokio/Buffer;->head:Lokio/Segment;

    move-object v5, v12

    .line 501
    move-object v12, v5

    iget-object v12, v12, Lokio/Segment;->data:[B

    move-object v6, v12

    .line 502
    move-object v12, v5

    iget v12, v12, Lokio/Segment;->pos:I

    move v7, v12

    .line 503
    move-object v12, v5

    iget v12, v12, Lokio/Segment;->limit:I

    move v8, v12

    .line 505
    :goto_0
    move v12, v7

    move v13, v8

    if-ge v12, v13, :cond_6

    .line 508
    move-object v12, v6

    move v13, v7

    aget-byte v12, v12, v13

    move v10, v12

    .line 509
    move v12, v10

    const/16 v13, 0x30

    if-lt v12, v13, :cond_2

    move v12, v10

    const/16 v13, 0x39

    if-gt v12, v13, :cond_2

    .line 510
    move v12, v10

    const/16 v13, 0x30

    add-int/lit8 v12, v12, -0x30

    move v9, v12

    .line 526
    :goto_1
    move-wide v12, v1

    const-wide/high16 v14, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v12, v14

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_8

    .line 527
    new-instance v12, Lokio/Buffer;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Lokio/Buffer;-><init>()V

    move-wide v13, v1

    invoke-virtual {v12, v13, v14}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object v12

    move v13, v10

    invoke-virtual {v12, v13}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v12

    move-object v11, v12

    .line 528
    new-instance v12, Ljava/lang/NumberFormatException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Number too large: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v11

    invoke-virtual {v15}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 511
    :cond_2
    move v12, v10

    const/16 v13, 0x61

    if-lt v12, v13, :cond_3

    move v12, v10

    const/16 v13, 0x66

    if-gt v12, v13, :cond_3

    .line 512
    move v12, v10

    const/16 v13, 0x61

    add-int/lit8 v12, v12, -0x61

    const/16 v13, 0xa

    add-int/lit8 v12, v12, 0xa

    move v9, v12

    goto :goto_1

    .line 513
    :cond_3
    move v12, v10

    const/16 v13, 0x41

    if-lt v12, v13, :cond_4

    move v12, v10

    const/16 v13, 0x46

    if-gt v12, v13, :cond_4

    .line 514
    move v12, v10

    const/16 v13, 0x41

    add-int/lit8 v12, v12, -0x41

    const/16 v13, 0xa

    add-int/lit8 v12, v12, 0xa

    move v9, v12

    goto :goto_1

    .line 516
    :cond_4
    move v12, v3

    if-nez v12, :cond_5

    .line 517
    new-instance v12, Ljava/lang/NumberFormatException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v10

    .line 518
    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 521
    :cond_5
    const/4 v12, 0x1

    move v4, v12

    .line 535
    :cond_6
    move v12, v7

    move v13, v8

    if-ne v12, v13, :cond_9

    .line 536
    move-object v12, v0

    move-object v13, v5

    invoke-virtual {v13}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v13

    iput-object v13, v12, Lokio/Buffer;->head:Lokio/Segment;

    .line 537
    move-object v12, v5

    invoke-static {v12}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 541
    :goto_2
    move v12, v4

    if-nez v12, :cond_7

    move-object v12, v0

    iget-object v12, v12, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v12, :cond_1

    .line 543
    :cond_7
    move-object v12, v0

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    iget-wide v13, v13, Lokio/Buffer;->size:J

    move v15, v3

    int-to-long v15, v15

    sub-long/2addr v13, v15

    iput-wide v13, v12, Lokio/Buffer;->size:J

    .line 544
    move-wide v12, v1

    move-wide v0, v12

    return-wide v0

    .line 531
    :cond_8
    move-wide v12, v1

    const/4 v14, 0x4

    shl-long/2addr v12, v14

    move-wide v1, v12

    .line 532
    move-wide v12, v1

    move v14, v9

    int-to-long v14, v14

    or-long/2addr v12, v14

    move-wide v1, v12

    .line 505
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 539
    :cond_9
    move-object v12, v5

    move v13, v7

    iput v13, v12, Lokio/Segment;->pos:I

    goto :goto_2
.end method

.method public readInt()I
    .locals 12

    .prologue
    .line 356
    move-object v0, p0

    move-object v6, v0

    iget-wide v6, v6, Lokio/Buffer;->size:J

    const-wide/16 v8, 0x4

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "size < 4: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    iget-wide v9, v9, Lokio/Buffer;->size:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 358
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lokio/Buffer;->head:Lokio/Segment;

    move-object v1, v6

    .line 359
    move-object v6, v1

    iget v6, v6, Lokio/Segment;->pos:I

    move v2, v6

    .line 360
    move-object v6, v1

    iget v6, v6, Lokio/Segment;->limit:I

    move v3, v6

    .line 363
    move v6, v3

    move v7, v2

    sub-int/2addr v6, v7

    const/4 v7, 0x4

    if-ge v6, v7, :cond_1

    .line 364
    move-object v6, v0

    invoke-virtual {v6}, Lokio/Buffer;->readByte()B

    move-result v6

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x18

    shl-int/lit8 v6, v6, 0x18

    move-object v7, v0

    .line 365
    invoke-virtual {v7}, Lokio/Buffer;->readByte()B

    move-result v7

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x10

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    move-object v7, v0

    .line 366
    invoke-virtual {v7}, Lokio/Buffer;->readByte()B

    move-result v7

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x8

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    move-object v7, v0

    .line 367
    invoke-virtual {v7}, Lokio/Buffer;->readByte()B

    move-result v7

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    .line 364
    move v0, v6

    .line 384
    :goto_0
    return v0

    .line 370
    :cond_1
    move-object v6, v1

    iget-object v6, v6, Lokio/Segment;->data:[B

    move-object v4, v6

    .line 371
    move-object v6, v4

    move v7, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x18

    shl-int/lit8 v6, v6, 0x18

    move-object v7, v4

    move v8, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v7, v7, v8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x10

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    move-object v7, v4

    move v8, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v7, v7, v8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x8

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    move-object v7, v4

    move v8, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v7, v7, v8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    move v5, v6

    .line 375
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget-wide v7, v7, Lokio/Buffer;->size:J

    const-wide/16 v9, 0x4

    sub-long/2addr v7, v9

    iput-wide v7, v6, Lokio/Buffer;->size:J

    .line 377
    move v6, v2

    move v7, v3

    if-ne v6, v7, :cond_2

    .line 378
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v7

    iput-object v7, v6, Lokio/Buffer;->head:Lokio/Segment;

    .line 379
    move-object v6, v1

    invoke-static {v6}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 384
    :goto_1
    move v6, v5

    move v0, v6

    goto :goto_0

    .line 381
    :cond_2
    move-object v6, v1

    move v7, v2

    iput v7, v6, Lokio/Segment;->pos:I

    goto :goto_1
.end method

.method public readIntLe()I
    .locals 2

    .prologue
    .line 426
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokio/Buffer;->readInt()I

    move-result v1

    invoke-static {v1}, Lokio/Util;->reverseBytesInt(I)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public readLong()J
    .locals 14

    .prologue
    .line 388
    move-object v0, p0

    move-object v7, v0

    iget-wide v7, v7, Lokio/Buffer;->size:J

    const-wide/16 v9, 0x8

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "size < 8: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-wide v10, v10, Lokio/Buffer;->size:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 390
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lokio/Buffer;->head:Lokio/Segment;

    move-object v1, v7

    .line 391
    move-object v7, v1

    iget v7, v7, Lokio/Segment;->pos:I

    move v2, v7

    .line 392
    move-object v7, v1

    iget v7, v7, Lokio/Segment;->limit:I

    move v3, v7

    .line 395
    move v7, v3

    move v8, v2

    sub-int/2addr v7, v8

    const/16 v8, 0x8

    if-ge v7, v8, :cond_1

    .line 396
    move-object v7, v0

    invoke-virtual {v7}, Lokio/Buffer;->readInt()I

    move-result v7

    int-to-long v7, v7

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    move-object v9, v0

    .line 397
    invoke-virtual {v9}, Lokio/Buffer;->readInt()I

    move-result v9

    int-to-long v9, v9

    const-wide v11, 0xffffffffL

    and-long/2addr v9, v11

    or-long/2addr v7, v9

    .line 396
    move-wide v0, v7

    .line 418
    :goto_0
    return-wide v0

    .line 400
    :cond_1
    move-object v7, v1

    iget-object v7, v7, Lokio/Segment;->data:[B

    move-object v4, v7

    .line 401
    move-object v7, v4

    move v8, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v7, v7, v8

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    const/16 v9, 0x38

    shl-long/2addr v7, v9

    move-object v9, v4

    move v10, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v9, v9, v10

    int-to-long v9, v9

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    const/16 v11, 0x30

    shl-long/2addr v9, v11

    or-long/2addr v7, v9

    move-object v9, v4

    move v10, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v9, v9, v10

    int-to-long v9, v9

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    const/16 v11, 0x28

    shl-long/2addr v9, v11

    or-long/2addr v7, v9

    move-object v9, v4

    move v10, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v9, v9, v10

    int-to-long v9, v9

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    const/16 v11, 0x20

    shl-long/2addr v9, v11

    or-long/2addr v7, v9

    move-object v9, v4

    move v10, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v9, v9, v10

    int-to-long v9, v9

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    const/16 v11, 0x18

    shl-long/2addr v9, v11

    or-long/2addr v7, v9

    move-object v9, v4

    move v10, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v9, v9, v10

    int-to-long v9, v9

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    const/16 v11, 0x10

    shl-long/2addr v9, v11

    or-long/2addr v7, v9

    move-object v9, v4

    move v10, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v9, v9, v10

    int-to-long v9, v9

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    const/16 v11, 0x8

    shl-long/2addr v9, v11

    or-long/2addr v7, v9

    move-object v9, v4

    move v10, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v9, v9, v10

    int-to-long v9, v9

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    or-long/2addr v7, v9

    move-wide v5, v7

    .line 409
    move-object v7, v0

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget-wide v8, v8, Lokio/Buffer;->size:J

    const-wide/16 v10, 0x8

    sub-long/2addr v8, v10

    iput-wide v8, v7, Lokio/Buffer;->size:J

    .line 411
    move v7, v2

    move v8, v3

    if-ne v7, v8, :cond_2

    .line 412
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v8

    iput-object v8, v7, Lokio/Buffer;->head:Lokio/Segment;

    .line 413
    move-object v7, v1

    invoke-static {v7}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 418
    :goto_1
    move-wide v7, v5

    move-wide v0, v7

    goto/16 :goto_0

    .line 415
    :cond_2
    move-object v7, v1

    move v8, v2

    iput v8, v7, Lokio/Segment;->pos:I

    goto :goto_1
.end method

.method public readLongLe()J
    .locals 3

    .prologue
    .line 430
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokio/Buffer;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Lokio/Util;->reverseBytesLong(J)J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public readShort()S
    .locals 12

    .prologue
    .line 327
    move-object v0, p0

    move-object v6, v0

    iget-wide v6, v6, Lokio/Buffer;->size:J

    const-wide/16 v8, 0x2

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "size < 2: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    iget-wide v9, v9, Lokio/Buffer;->size:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 329
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lokio/Buffer;->head:Lokio/Segment;

    move-object v1, v6

    .line 330
    move-object v6, v1

    iget v6, v6, Lokio/Segment;->pos:I

    move v2, v6

    .line 331
    move-object v6, v1

    iget v6, v6, Lokio/Segment;->limit:I

    move v3, v6

    .line 334
    move v6, v3

    move v7, v2

    sub-int/2addr v6, v7

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    .line 335
    move-object v6, v0

    invoke-virtual {v6}, Lokio/Buffer;->readByte()B

    move-result v6

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x8

    shl-int/lit8 v6, v6, 0x8

    move-object v7, v0

    .line 336
    invoke-virtual {v7}, Lokio/Buffer;->readByte()B

    move-result v7

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    move v4, v6

    .line 337
    move v6, v4

    int-to-short v6, v6

    move v0, v6

    .line 352
    :goto_0
    return v0

    .line 340
    :cond_1
    move-object v6, v1

    iget-object v6, v6, Lokio/Segment;->data:[B

    move-object v4, v6

    .line 341
    move-object v6, v4

    move v7, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x8

    shl-int/lit8 v6, v6, 0x8

    move-object v7, v4

    move v8, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v7, v7, v8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    move v5, v6

    .line 343
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget-wide v7, v7, Lokio/Buffer;->size:J

    const-wide/16 v9, 0x2

    sub-long/2addr v7, v9

    iput-wide v7, v6, Lokio/Buffer;->size:J

    .line 345
    move v6, v2

    move v7, v3

    if-ne v6, v7, :cond_2

    .line 346
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v7

    iput-object v7, v6, Lokio/Buffer;->head:Lokio/Segment;

    .line 347
    move-object v6, v1

    invoke-static {v6}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 352
    :goto_1
    move v6, v5

    int-to-short v6, v6

    move v0, v6

    goto :goto_0

    .line 349
    :cond_2
    move-object v6, v1

    move v7, v2

    iput v7, v6, Lokio/Segment;->pos:I

    goto :goto_1
.end method

.method public readShortLe()S
    .locals 2

    .prologue
    .line 422
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokio/Buffer;->readShort()S

    move-result v1

    invoke-static {v1}, Lokio/Util;->reverseBytesShort(S)S

    move-result v1

    move v0, v1

    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 711
    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v3, p3

    move-object v6, v0

    iget-wide v6, v6, Lokio/Buffer;->size:J

    const-wide/16 v8, 0x0

    move-wide v10, v1

    invoke-static/range {v6 .. v11}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 712
    move-object v6, v3

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "charset == null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 713
    :cond_0
    move-wide v6, v1

    const-wide/32 v8, 0x7fffffff

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 714
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v1

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 716
    :cond_1
    move-wide v6, v1

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    const-string v6, ""

    move-object v0, v6

    .line 733
    :goto_0
    return-object v0

    .line 718
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lokio/Buffer;->head:Lokio/Segment;

    move-object v4, v6

    .line 719
    move-object v6, v4

    iget v6, v6, Lokio/Segment;->pos:I

    int-to-long v6, v6

    move-wide v8, v1

    add-long/2addr v6, v8

    move-object v8, v4

    iget v8, v8, Lokio/Segment;->limit:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 721
    new-instance v6, Ljava/lang/String;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    move-wide v9, v1

    invoke-virtual {v8, v9, v10}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v8

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v6

    goto :goto_0

    .line 724
    :cond_3
    new-instance v6, Ljava/lang/String;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v4

    iget-object v8, v8, Lokio/Segment;->data:[B

    move-object v9, v4

    iget v9, v9, Lokio/Segment;->pos:I

    move-wide v10, v1

    long-to-int v10, v10

    move-object v11, v3

    invoke-direct {v7, v8, v9, v10, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v5, v6

    .line 725
    move-object v6, v4

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Lokio/Segment;->pos:I

    int-to-long v7, v7

    move-wide v9, v1

    add-long/2addr v7, v9

    long-to-int v7, v7

    iput v7, v6, Lokio/Segment;->pos:I

    .line 726
    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget-wide v7, v7, Lokio/Buffer;->size:J

    move-wide v9, v1

    sub-long/2addr v7, v9

    iput-wide v7, v6, Lokio/Buffer;->size:J

    .line 728
    move-object v6, v4

    iget v6, v6, Lokio/Segment;->pos:I

    move-object v7, v4

    iget v7, v7, Lokio/Segment;->limit:I

    if-ne v6, v7, :cond_4

    .line 729
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v7}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v7

    iput-object v7, v6, Lokio/Buffer;->head:Lokio/Segment;

    .line 730
    move-object v6, v4

    invoke-static {v6}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 733
    :cond_4
    move-object v6, v5

    move-object v0, v6

    goto :goto_0
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 704
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v0

    :try_start_0
    iget-wide v4, v4, Lokio/Buffer;->size:J

    move-object v6, v1

    invoke-virtual {v3, v4, v5, v6}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    return-object v0

    .line 705
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 706
    new-instance v3, Ljava/lang/AssertionError;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public final readUnsafe()Lokio/Buffer$UnsafeCursor;
    .locals 5

    .prologue
    .line 1843
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Lokio/Buffer$UnsafeCursor;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lokio/Buffer$UnsafeCursor;-><init>()V

    invoke-virtual {v1, v2}, Lokio/Buffer;->readUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final readUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .locals 6

    .prologue
    .line 1847
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget-object v2, v2, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v2, :cond_0

    .line 1848
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "already attached to a buffer"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1851
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 1852
    move-object v2, v1

    const/4 v3, 0x0

    iput-boolean v3, v2, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    .line 1853
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public readUtf8()Ljava/lang/String;
    .locals 7

    .prologue
    .line 692
    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    :try_start_0
    iget-wide v3, v3, Lokio/Buffer;->size:J

    sget-object v5, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3, v4, v5}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    return-object v0

    .line 693
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 694
    new-instance v2, Ljava/lang/AssertionError;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public readUtf8(J)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 699
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    sget-object v6, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4, v5, v6}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public readUtf8CodePoint()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 781
    move-object v0, p0

    move-object v7, v0

    iget-wide v7, v7, Lokio/Buffer;->size:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    new-instance v7, Ljava/io/EOFException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/io/EOFException;-><init>()V

    throw v7

    .line 783
    :cond_0
    move-object v7, v0

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v7

    move v1, v7

    .line 788
    move v7, v1

    const/16 v8, 0x80

    and-int/lit16 v7, v7, 0x80

    if-nez v7, :cond_1

    .line 790
    move v7, v1

    const/16 v8, 0x7f

    and-int/lit8 v7, v7, 0x7f

    move v2, v7

    .line 791
    const/4 v7, 0x1

    move v3, v7

    .line 792
    const/4 v7, 0x0

    move v4, v7

    .line 818
    :goto_0
    move-object v7, v0

    iget-wide v7, v7, Lokio/Buffer;->size:J

    move v9, v3

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_5

    .line 819
    new-instance v7, Ljava/io/EOFException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "size < "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-wide v10, v10, Lokio/Buffer;->size:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (to read code point prefixed 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v1

    .line 820
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 794
    :cond_1
    move v7, v1

    const/16 v8, 0xe0

    and-int/lit16 v7, v7, 0xe0

    const/16 v8, 0xc0

    if-ne v7, v8, :cond_2

    .line 796
    move v7, v1

    const/16 v8, 0x1f

    and-int/lit8 v7, v7, 0x1f

    move v2, v7

    .line 797
    const/4 v7, 0x2

    move v3, v7

    .line 798
    const/16 v7, 0x80

    move v4, v7

    goto :goto_0

    .line 800
    :cond_2
    move v7, v1

    const/16 v8, 0xf0

    and-int/lit16 v7, v7, 0xf0

    const/16 v8, 0xe0

    if-ne v7, v8, :cond_3

    .line 802
    move v7, v1

    const/16 v8, 0xf

    and-int/lit8 v7, v7, 0xf

    move v2, v7

    .line 803
    const/4 v7, 0x3

    move v3, v7

    .line 804
    const/16 v7, 0x800

    move v4, v7

    goto :goto_0

    .line 806
    :cond_3
    move v7, v1

    const/16 v8, 0xf8

    and-int/lit16 v7, v7, 0xf8

    const/16 v8, 0xf0

    if-ne v7, v8, :cond_4

    .line 808
    move v7, v1

    const/4 v8, 0x7

    and-int/lit8 v7, v7, 0x7

    move v2, v7

    .line 809
    const/4 v7, 0x4

    move v3, v7

    .line 810
    const/high16 v7, 0x10000

    move v4, v7

    goto/16 :goto_0

    .line 814
    :cond_4
    move-object v7, v0

    const-wide/16 v8, 0x1

    invoke-virtual {v7, v8, v9}, Lokio/Buffer;->skip(J)V

    .line 815
    const v7, 0xfffd

    move v0, v7

    .line 852
    :goto_1
    return v0

    .line 826
    :cond_5
    const/4 v7, 0x1

    move v5, v7

    :goto_2
    move v7, v5

    move v8, v3

    if-ge v7, v8, :cond_7

    .line 827
    move-object v7, v0

    move v8, v5

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v7

    move v6, v7

    .line 828
    move v7, v6

    const/16 v8, 0xc0

    and-int/lit16 v7, v7, 0xc0

    const/16 v8, 0x80

    if-ne v7, v8, :cond_6

    .line 830
    move v7, v2

    const/4 v8, 0x6

    shl-int/lit8 v7, v7, 0x6

    move v2, v7

    .line 831
    move v7, v2

    move v8, v6

    const/16 v9, 0x3f

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v7, v8

    move v2, v7

    .line 826
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 833
    :cond_6
    move-object v7, v0

    move v8, v5

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lokio/Buffer;->skip(J)V

    .line 834
    const v7, 0xfffd

    move v0, v7

    goto :goto_1

    .line 838
    :cond_7
    move-object v7, v0

    move v8, v3

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lokio/Buffer;->skip(J)V

    .line 840
    move v7, v2

    const v8, 0x10ffff

    if-le v7, v8, :cond_8

    .line 841
    const v7, 0xfffd

    move v0, v7

    goto :goto_1

    .line 844
    :cond_8
    move v7, v2

    const v8, 0xd800

    if-lt v7, v8, :cond_9

    move v7, v2

    const v8, 0xdfff

    if-gt v7, v8, :cond_9

    .line 845
    const v7, 0xfffd

    move v0, v7

    goto :goto_1

    .line 848
    :cond_9
    move v7, v2

    move v8, v4

    if-ge v7, v8, :cond_a

    .line 849
    const v7, 0xfffd

    move v0, v7

    goto :goto_1

    .line 852
    :cond_a
    move v7, v2

    move v0, v7

    goto :goto_1
.end method

.method public readUtf8Line()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 737
    move-object v0, p0

    move-object v3, v0

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lokio/Buffer;->indexOf(B)J

    move-result-wide v3

    move-wide v1, v3

    .line 739
    move-wide v3, v1

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 740
    move-object v3, v0

    iget-wide v3, v3, Lokio/Buffer;->size:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v0

    iget-wide v4, v4, Lokio/Buffer;->size:J

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .line 743
    :goto_1
    return-object v0

    .line 740
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 743
    :cond_1
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_1
.end method

.method readUtf8Line(J)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 766
    move-object v0, p0

    move-wide v1, p1

    move-wide v4, v1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    move-object v4, v0

    move-wide v5, v1

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lokio/Buffer;->getByte(J)B

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_0

    .line 768
    move-object v4, v0

    move-wide v5, v1

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 769
    move-object v4, v0

    const-wide/16 v5, 0x2

    invoke-virtual {v4, v5, v6}, Lokio/Buffer;->skip(J)V

    .line 770
    move-object v4, v3

    move-object v0, v4

    .line 776
    :goto_0
    return-object v0

    .line 774
    :cond_0
    move-object v4, v0

    move-wide v5, v1

    invoke-virtual {v4, v5, v6}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 775
    move-object v4, v0

    const-wide/16 v5, 0x1

    invoke-virtual {v4, v5, v6}, Lokio/Buffer;->skip(J)V

    .line 776
    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 747
    move-object v0, p0

    move-object v1, v0

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public readUtf8LineStrict(J)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 751
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

    .line 752
    :cond_0
    move-wide v8, v1

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    const-wide v8, 0x7fffffffffffffffL

    :goto_0
    move-wide v3, v8

    .line 753
    move-object v8, v0

    const/16 v9, 0xa

    const-wide/16 v10, 0x0

    move-wide v12, v3

    invoke-virtual/range {v8 .. v13}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v8

    move-wide v5, v8

    .line 754
    move-wide v8, v5

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    move-object v8, v0

    move-wide v9, v5

    invoke-virtual {v8, v9, v10}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    .line 757
    :goto_1
    return-object v0

    .line 752
    :cond_1
    move-wide v8, v1

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_0

    .line 755
    :cond_2
    move-wide v8, v3

    move-object v10, v0

    invoke-virtual {v10}, Lokio/Buffer;->size()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    move-object v8, v0

    move-wide v9, v3

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    .line 756
    invoke-virtual {v8, v9, v10}, Lokio/Buffer;->getByte(J)B

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_3

    move-object v8, v0

    move-wide v9, v3

    invoke-virtual {v8, v9, v10}, Lokio/Buffer;->getByte(J)B

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_3

    .line 757
    move-object v8, v0

    move-wide v9, v3

    invoke-virtual {v8, v9, v10}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    goto :goto_1

    .line 759
    :cond_3
    new-instance v8, Lokio/Buffer;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    invoke-direct {v9}, Lokio/Buffer;-><init>()V

    move-object v7, v8

    .line 760
    move-object v8, v0

    move-object v9, v7

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x20

    move-object v14, v0

    invoke-virtual {v14}, Lokio/Buffer;->size()J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    invoke-virtual/range {v8 .. v13}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    move-result-object v8

    .line 761
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

    .line 762
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
    .locals 7

    .prologue
    .line 117
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-wide v3, v3, Lokio/Buffer;->size:J

    move-wide v5, v1

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public require(J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-wide v3, v3, Lokio/Buffer;->size:J

    move-wide v5, v1

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    new-instance v3, Ljava/io/EOFException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 114
    :cond_0
    return-void
.end method

.method segmentSizes()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1681
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    .line 1687
    :goto_0
    return-object v0

    .line 1682
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 1683
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lokio/Buffer;->head:Lokio/Segment;

    iget v4, v4, Lokio/Segment;->limit:I

    move-object v5, v0

    iget-object v5, v5, Lokio/Buffer;->head:Lokio/Segment;

    iget v5, v5, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 1684
    move-object v3, v0

    iget-object v3, v3, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    move-object v2, v3

    :goto_1
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v3, v4, :cond_1

    .line 1685
    move-object v3, v1

    move-object v4, v2

    iget v4, v4, Lokio/Segment;->limit:I

    move-object v5, v2

    iget v5, v5, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 1684
    move-object v3, v2

    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    move-object v2, v3

    goto :goto_1

    .line 1687
    :cond_1
    move-object v3, v1

    move-object v0, v3

    goto :goto_0
.end method

.method public select(Lokio/Options;)I
    .locals 9

    .prologue
    .line 556
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lokio/Buffer;->selectPrefix(Lokio/Options;Z)I

    move-result v5

    move v2, v5

    .line 557
    move v5, v2

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    const/4 v5, -0x1

    move v0, v5

    .line 566
    :goto_0
    return v0

    .line 560
    :cond_0
    move-object v5, v1

    iget-object v5, v5, Lokio/Options;->byteStrings:[Lokio/ByteString;

    move v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v5

    move v3, v5

    .line 562
    move-object v5, v0

    move v6, v3

    int-to-long v6, v6

    :try_start_0
    invoke-virtual {v5, v6, v7}, Lokio/Buffer;->skip(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    move v5, v2

    move v0, v5

    goto :goto_0

    .line 563
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 564
    new-instance v5, Ljava/lang/AssertionError;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v5
.end method

.method selectPrefix(Lokio/Options;Z)I
    .locals 23

    .prologue
    .line 582
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v20, v0

    move-object/from16 v5, v20

    .line 583
    move-object/from16 v20, v5

    if-nez v20, :cond_1

    .line 584
    move/from16 v20, v4

    if-eqz v20, :cond_0

    const/16 v20, -0x2

    move/from16 v2, v20

    .line 671
    :goto_0
    return v2

    .line 585
    :cond_0
    move-object/from16 v20, v3

    sget-object v21, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-virtual/range {v20 .. v21}, Lokio/Options;->indexOf(Ljava/lang/Object;)I

    move-result v20

    move/from16 v2, v20

    goto :goto_0

    .line 588
    :cond_1
    move-object/from16 v20, v5

    move-object/from16 v6, v20

    .line 589
    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v20, v0

    move-object/from16 v7, v20

    .line 590
    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v20, v0

    move/from16 v8, v20

    .line 591
    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v20, v0

    move/from16 v9, v20

    .line 593
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lokio/Options;->trie:[I

    move-object/from16 v20, v0

    move-object/from16 v10, v20

    .line 594
    const/16 v20, 0x0

    move/from16 v11, v20

    .line 596
    const/16 v20, -0x1

    move/from16 v12, v20

    .line 600
    :goto_1
    move-object/from16 v20, v10

    move/from16 v21, v11

    add-int/lit8 v11, v11, 0x1

    aget v20, v20, v21

    move/from16 v13, v20

    .line 602
    move-object/from16 v20, v10

    move/from16 v21, v11

    add-int/lit8 v11, v11, 0x1

    aget v20, v20, v21

    move/from16 v14, v20

    .line 603
    move/from16 v20, v14

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 604
    move/from16 v20, v14

    move/from16 v12, v20

    .line 609
    :cond_2
    move-object/from16 v20, v6

    if-nez v20, :cond_3

    .line 670
    :goto_2
    move/from16 v20, v4

    if-eqz v20, :cond_e

    const/16 v20, -0x2

    move/from16 v2, v20

    goto :goto_0

    .line 611
    :cond_3
    move/from16 v20, v13

    if-gez v20, :cond_a

    .line 613
    const/16 v20, -0x1

    move/from16 v21, v13

    mul-int v20, v20, v21

    move/from16 v16, v20

    .line 614
    move/from16 v20, v11

    move/from16 v21, v16

    add-int v20, v20, v21

    move/from16 v17, v20

    .line 616
    :goto_3
    move-object/from16 v20, v7

    move/from16 v21, v8

    add-int/lit8 v8, v8, 0x1

    aget-byte v20, v20, v21

    const/16 v21, 0xff

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v18, v20

    .line 617
    move/from16 v20, v18

    move-object/from16 v21, v10

    move/from16 v22, v11

    add-int/lit8 v11, v11, 0x1

    aget v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    move/from16 v20, v12

    move/from16 v2, v20

    goto/16 :goto_0

    .line 618
    :cond_4
    move/from16 v20, v11

    move/from16 v21, v17

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    const/16 v20, 0x1

    :goto_4
    move/from16 v19, v20

    .line 621
    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 622
    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v20, v0

    move-object/from16 v6, v20

    .line 623
    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v20, v0

    move/from16 v8, v20

    .line 624
    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v20, v0

    move-object/from16 v7, v20

    .line 625
    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v20, v0

    move/from16 v9, v20

    .line 626
    move-object/from16 v20, v6

    move-object/from16 v21, v5

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 627
    move/from16 v20, v19

    if-nez v20, :cond_6

    goto/16 :goto_2

    .line 618
    :cond_5
    const/16 v20, 0x0

    goto :goto_4

    .line 628
    :cond_6
    const/16 v20, 0x0

    move-object/from16 v6, v20

    .line 632
    :cond_7
    move/from16 v20, v19

    if-eqz v20, :cond_9

    .line 633
    move-object/from16 v20, v10

    move/from16 v21, v11

    aget v20, v20, v21

    move/from16 v15, v20

    .line 665
    :cond_8
    :goto_5
    move/from16 v20, v15

    if-ltz v20, :cond_d

    move/from16 v20, v15

    move/from16 v2, v20

    goto/16 :goto_0

    .line 636
    :cond_9
    goto/16 :goto_3

    .line 639
    :cond_a
    move/from16 v20, v13

    move/from16 v16, v20

    .line 640
    move-object/from16 v20, v7

    move/from16 v21, v8

    add-int/lit8 v8, v8, 0x1

    aget-byte v20, v20, v21

    const/16 v21, 0xff

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v17, v20

    .line 641
    move/from16 v20, v11

    move/from16 v21, v16

    add-int v20, v20, v21

    move/from16 v18, v20

    .line 643
    :goto_6
    move/from16 v20, v11

    move/from16 v21, v18

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    move/from16 v20, v12

    move/from16 v2, v20

    goto/16 :goto_0

    .line 645
    :cond_b
    move/from16 v20, v17

    move-object/from16 v21, v10

    move/from16 v22, v11

    aget v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 646
    move-object/from16 v20, v10

    move/from16 v21, v11

    move/from16 v22, v16

    add-int v21, v21, v22

    aget v20, v20, v21

    move/from16 v15, v20

    .line 654
    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 655
    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v20, v0

    move-object/from16 v6, v20

    .line 656
    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v20, v0

    move/from16 v8, v20

    .line 657
    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v20, v0

    move-object/from16 v7, v20

    .line 658
    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v20, v0

    move/from16 v9, v20

    .line 659
    move-object/from16 v20, v6

    move-object/from16 v21, v5

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 660
    const/16 v20, 0x0

    move-object/from16 v6, v20

    goto/16 :goto_5

    .line 650
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 666
    :cond_d
    move/from16 v20, v15

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v11, v20

    .line 667
    goto/16 :goto_1

    .line 671
    :cond_e
    move/from16 v20, v12

    move/from16 v2, v20

    goto/16 :goto_0
.end method

.method public final sha1()Lokio/ByteString;
    .locals 3

    .prologue
    .line 1697
    move-object v0, p0

    move-object v1, v0

    const-string v2, "SHA-1"

    invoke-direct {v1, v2}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final sha256()Lokio/ByteString;
    .locals 3

    .prologue
    .line 1702
    move-object v0, p0

    move-object v1, v0

    const-string v2, "SHA-256"

    invoke-direct {v1, v2}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final sha512()Lokio/ByteString;
    .locals 3

    .prologue
    .line 1707
    move-object v0, p0

    move-object v1, v0

    const-string v2, "SHA-512"

    invoke-direct {v1, v2}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final size()J
    .locals 3

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lokio/Buffer;->size:J

    move-wide v0, v1

    return-wide v0
.end method

.method public skip(J)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 938
    move-object v0, p0

    move-wide v1, p1

    :goto_0
    move-wide v5, v1

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 939
    move-object v5, v0

    iget-object v5, v5, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v5, :cond_0

    new-instance v5, Ljava/io/EOFException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/io/EOFException;-><init>()V

    throw v5

    .line 941
    :cond_0
    move-wide v5, v1

    move-object v7, v0

    iget-object v7, v7, Lokio/Buffer;->head:Lokio/Segment;

    iget v7, v7, Lokio/Segment;->limit:I

    move-object v8, v0

    iget-object v8, v8, Lokio/Buffer;->head:Lokio/Segment;

    iget v8, v8, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    move v3, v5

    .line 942
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget-wide v6, v6, Lokio/Buffer;->size:J

    move v8, v3

    int-to-long v8, v8

    sub-long/2addr v6, v8

    iput-wide v6, v5, Lokio/Buffer;->size:J

    .line 943
    move-wide v5, v1

    move v7, v3

    int-to-long v7, v7

    sub-long/2addr v5, v7

    move-wide v1, v5

    .line 944
    move-object v5, v0

    iget-object v5, v5, Lokio/Buffer;->head:Lokio/Segment;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lokio/Segment;->pos:I

    move v7, v3

    add-int/2addr v6, v7

    iput v6, v5, Lokio/Segment;->pos:I

    .line 946
    move-object v5, v0

    iget-object v5, v5, Lokio/Buffer;->head:Lokio/Segment;

    iget v5, v5, Lokio/Segment;->pos:I

    move-object v6, v0

    iget-object v6, v6, Lokio/Buffer;->head:Lokio/Segment;

    iget v6, v6, Lokio/Segment;->limit:I

    if-ne v5, v6, :cond_1

    .line 947
    move-object v5, v0

    iget-object v5, v5, Lokio/Buffer;->head:Lokio/Segment;

    move-object v4, v5

    .line 948
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v6}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v6

    iput-object v6, v5, Lokio/Buffer;->head:Lokio/Segment;

    .line 949
    move-object v5, v4

    invoke-static {v5}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 951
    :cond_1
    goto :goto_0

    .line 952
    :cond_2
    return-void
.end method

.method public final snapshot()Lokio/ByteString;
    .locals 7

    .prologue
    .line 1828
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lokio/Buffer;->size:J

    const-wide/32 v3, 0x7fffffff

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 1829
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "size > Integer.MAX_VALUE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-wide v4, v4, Lokio/Buffer;->size:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1831
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lokio/Buffer;->size:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final snapshot(I)Lokio/ByteString;
    .locals 7

    .prologue
    .line 1838
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-nez v2, :cond_0

    sget-object v2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object v0, v2

    .line 1839
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lokio/SegmentedByteString;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Lokio/SegmentedByteString;-><init>(Lokio/Buffer;I)V

    move-object v0, v2

    goto :goto_0
.end method

.method public timeout()Lokio/Timeout;
    .locals 2

    .prologue
    .line 1676
    move-object v0, p0

    sget-object v1, Lokio/Timeout;->NONE:Lokio/Timeout;

    move-object v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1809
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokio/Buffer;->snapshot()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method writableSegment(I)Lokio/Segment;
    .locals 9

    .prologue
    .line 1298
    move-object v0, p0

    move v1, p1

    move v3, v1

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    move v3, v1

    const/16 v4, 0x2000

    if-le v3, v4, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 1300
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v3, :cond_2

    .line 1301
    move-object v3, v0

    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v4

    iput-object v4, v3, Lokio/Buffer;->head:Lokio/Segment;

    .line 1302
    move-object v3, v0

    iget-object v3, v3, Lokio/Buffer;->head:Lokio/Segment;

    move-object v4, v0

    iget-object v4, v4, Lokio/Buffer;->head:Lokio/Segment;

    move-object v5, v0

    iget-object v5, v5, Lokio/Buffer;->head:Lokio/Segment;

    move-object v7, v4

    move-object v8, v5

    move-object v4, v8

    move-object v5, v7

    move-object v6, v8

    iput-object v6, v5, Lokio/Segment;->prev:Lokio/Segment;

    move-object v7, v3

    move-object v8, v4

    move-object v3, v8

    move-object v4, v7

    move-object v5, v8

    iput-object v5, v4, Lokio/Segment;->next:Lokio/Segment;

    move-object v0, v3

    .line 1309
    :goto_0
    return-object v0

    .line 1305
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    move-object v2, v3

    .line 1306
    move-object v3, v2

    iget v3, v3, Lokio/Segment;->limit:I

    move v4, v1

    add-int/2addr v3, v4

    const/16 v4, 0x2000

    if-gt v3, v4, :cond_3

    move-object v3, v2

    iget-boolean v3, v3, Lokio/Segment;->owner:Z

    if-nez v3, :cond_4

    .line 1307
    :cond_3
    move-object v3, v2

    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v3

    move-object v2, v3

    .line 1309
    :cond_4
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1122
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "source == null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1124
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    move v2, v6

    .line 1125
    move v6, v2

    move v3, v6

    .line 1126
    :goto_0
    move v6, v3

    if-lez v6, :cond_1

    .line 1127
    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v6

    move-object v4, v6

    .line 1129
    move v6, v3

    const/16 v7, 0x2000

    move-object v8, v4

    iget v8, v8, Lokio/Segment;->limit:I

    rsub-int v7, v8, 0x2000

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v5, v6

    .line 1130
    move-object v6, v1

    move-object v7, v4

    iget-object v7, v7, Lokio/Segment;->data:[B

    move-object v8, v4

    iget v8, v8, Lokio/Segment;->limit:I

    move v9, v5

    invoke-virtual {v6, v7, v8, v9}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1132
    move v6, v3

    move v7, v5

    sub-int/2addr v6, v7

    move v3, v6

    .line 1133
    move-object v6, v4

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lokio/Segment;->limit:I

    move v8, v5

    add-int/2addr v7, v8

    iput v7, v6, Lokio/Segment;->limit:I

    .line 1134
    goto :goto_0

    .line 1136
    :cond_1
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget-wide v7, v7, Lokio/Buffer;->size:J

    move v9, v2

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, v6, Lokio/Buffer;->size:J

    .line 1137
    move v6, v2

    move v0, v6

    return v0
.end method

.method public write(Lokio/ByteString;)Lokio/Buffer;
    .locals 6

    .prologue
    .line 955
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "byteString == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 956
    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lokio/ByteString;->write(Lokio/Buffer;)V

    .line 957
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public write([B)Lokio/Buffer;
    .locals 7

    .prologue
    .line 1098
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "source == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1099
    :cond_0
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public write([BII)Lokio/Buffer;
    .locals 14

    .prologue
    .line 1103
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v7, v1

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const-string v9, "source == null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1104
    :cond_0
    move-object v7, v1

    array-length v7, v7

    int-to-long v7, v7

    move v9, v2

    int-to-long v9, v9

    move v11, v3

    int-to-long v11, v11

    invoke-static/range {v7 .. v12}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 1106
    move v7, v2

    move v8, v3

    add-int/2addr v7, v8

    move v4, v7

    .line 1107
    :goto_0
    move v7, v2

    move v8, v4

    if-ge v7, v8, :cond_1

    .line 1108
    move-object v7, v0

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v7

    move-object v5, v7

    .line 1110
    move v7, v4

    move v8, v2

    sub-int/2addr v7, v8

    const/16 v8, 0x2000

    move-object v9, v5

    iget v9, v9, Lokio/Segment;->limit:I

    rsub-int v8, v9, 0x2000

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v6, v7

    .line 1111
    move-object v7, v1

    move v8, v2

    move-object v9, v5

    iget-object v9, v9, Lokio/Segment;->data:[B

    move-object v10, v5

    iget v10, v10, Lokio/Segment;->limit:I

    move v11, v6

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1113
    move v7, v2

    move v8, v6

    add-int/2addr v7, v8

    move v2, v7

    .line 1114
    move-object v7, v5

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget v8, v8, Lokio/Segment;->limit:I

    move v9, v6

    add-int/2addr v8, v9

    iput v8, v7, Lokio/Segment;->limit:I

    .line 1115
    goto :goto_0

    .line 1117
    :cond_1
    move-object v7, v0

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget-wide v8, v8, Lokio/Buffer;->size:J

    move v10, v3

    int-to-long v10, v10

    add-long/2addr v8, v10

    iput-wide v8, v7, Lokio/Buffer;->size:J

    .line 1118
    move-object v7, v0

    move-object v0, v7

    return-object v0
.end method

.method public bridge synthetic write(Lokio/ByteString;)Lokio/BufferedSink;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

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
    .line 1150
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    :goto_0
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 1151
    move-object v6, v1

    move-object v7, v0

    move-wide v8, v2

    invoke-interface {v6, v7, v8, v9}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v6

    move-wide v4, v6

    .line 1152
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

    .line 1153
    :cond_0
    move-wide v6, v2

    move-wide v8, v4

    sub-long/2addr v6, v8

    move-wide v2, v6

    .line 1154
    goto :goto_0

    .line 1155
    :cond_1
    move-object v6, v0

    move-object v0, v6

    return-object v0
.end method

.method public bridge synthetic write([B)Lokio/BufferedSink;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic write([BII)Lokio/BufferedSink;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 16

    .prologue
    .line 1363
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object v8, v1

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const-string v10, "source == null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1364
    :cond_0
    move-object v8, v1

    move-object v9, v0

    if-ne v8, v9, :cond_1

    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const-string v10, "source == this"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1365
    :cond_1
    move-object v8, v1

    iget-wide v8, v8, Lokio/Buffer;->size:J

    const-wide/16 v10, 0x0

    move-wide v12, v2

    invoke-static/range {v8 .. v13}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 1367
    :goto_0
    move-wide v8, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_7

    .line 1369
    move-wide v8, v2

    move-object v10, v1

    iget-object v10, v10, Lokio/Buffer;->head:Lokio/Segment;

    iget v10, v10, Lokio/Segment;->limit:I

    move-object v11, v1

    iget-object v11, v11, Lokio/Buffer;->head:Lokio/Segment;

    iget v11, v11, Lokio/Segment;->pos:I

    sub-int/2addr v10, v11

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_5

    .line 1370
    move-object v8, v0

    iget-object v8, v8, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v8, :cond_2

    move-object v8, v0

    iget-object v8, v8, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v8, v8, Lokio/Segment;->prev:Lokio/Segment;

    :goto_1
    move-object v4, v8

    .line 1371
    move-object v8, v4

    if-eqz v8, :cond_4

    move-object v8, v4

    iget-boolean v8, v8, Lokio/Segment;->owner:Z

    if-eqz v8, :cond_4

    move-wide v8, v2

    move-object v10, v4

    iget v10, v10, Lokio/Segment;->limit:I

    int-to-long v10, v10

    add-long/2addr v8, v10

    move-object v10, v4

    iget-boolean v10, v10, Lokio/Segment;->shared:Z

    if-eqz v10, :cond_3

    .line 1372
    const/4 v10, 0x0

    :goto_2
    int-to-long v10, v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x2000

    cmp-long v8, v8, v10

    if-gtz v8, :cond_4

    .line 1374
    move-object v8, v1

    iget-object v8, v8, Lokio/Buffer;->head:Lokio/Segment;

    move-object v9, v4

    move-wide v10, v2

    long-to-int v10, v10

    invoke-virtual {v8, v9, v10}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    .line 1375
    move-object v8, v1

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    iget-wide v9, v9, Lokio/Buffer;->size:J

    move-wide v11, v2

    sub-long/2addr v9, v11

    iput-wide v9, v8, Lokio/Buffer;->size:J

    .line 1376
    move-object v8, v0

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    iget-wide v9, v9, Lokio/Buffer;->size:J

    move-wide v11, v2

    add-long/2addr v9, v11

    iput-wide v9, v8, Lokio/Buffer;->size:J

    .line 1401
    :goto_3
    return-void

    .line 1370
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 1372
    :cond_3
    move-object v10, v4

    iget v10, v10, Lokio/Segment;->pos:I

    goto :goto_2

    .line 1381
    :cond_4
    move-object v8, v1

    move-object v9, v1

    iget-object v9, v9, Lokio/Buffer;->head:Lokio/Segment;

    move-wide v10, v2

    long-to-int v10, v10

    invoke-virtual {v9, v10}, Lokio/Segment;->split(I)Lokio/Segment;

    move-result-object v9

    iput-object v9, v8, Lokio/Buffer;->head:Lokio/Segment;

    .line 1386
    :cond_5
    move-object v8, v1

    iget-object v8, v8, Lokio/Buffer;->head:Lokio/Segment;

    move-object v4, v8

    .line 1387
    move-object v8, v4

    iget v8, v8, Lokio/Segment;->limit:I

    move-object v9, v4

    iget v9, v9, Lokio/Segment;->pos:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    move-wide v5, v8

    .line 1388
    move-object v8, v1

    move-object v9, v4

    invoke-virtual {v9}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v9

    iput-object v9, v8, Lokio/Buffer;->head:Lokio/Segment;

    .line 1389
    move-object v8, v0

    iget-object v8, v8, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v8, :cond_6

    .line 1390
    move-object v8, v0

    move-object v9, v4

    iput-object v9, v8, Lokio/Buffer;->head:Lokio/Segment;

    .line 1391
    move-object v8, v0

    iget-object v8, v8, Lokio/Buffer;->head:Lokio/Segment;

    move-object v9, v0

    iget-object v9, v9, Lokio/Buffer;->head:Lokio/Segment;

    move-object v10, v0

    iget-object v10, v10, Lokio/Buffer;->head:Lokio/Segment;

    move-object v14, v9

    move-object v15, v10

    move-object v9, v15

    move-object v10, v14

    move-object v11, v15

    iput-object v11, v10, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v9, v8, Lokio/Segment;->next:Lokio/Segment;

    .line 1397
    :goto_4
    move-object v8, v1

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    iget-wide v9, v9, Lokio/Buffer;->size:J

    move-wide v11, v5

    sub-long/2addr v9, v11

    iput-wide v9, v8, Lokio/Buffer;->size:J

    .line 1398
    move-object v8, v0

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    iget-wide v9, v9, Lokio/Buffer;->size:J

    move-wide v11, v5

    add-long/2addr v9, v11

    iput-wide v9, v8, Lokio/Buffer;->size:J

    .line 1399
    move-wide v8, v2

    move-wide v10, v5

    sub-long/2addr v8, v10

    move-wide v2, v8

    .line 1400
    goto/16 :goto_0

    .line 1393
    :cond_6
    move-object v8, v0

    iget-object v8, v8, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v8, v8, Lokio/Segment;->prev:Lokio/Segment;

    move-object v7, v8

    .line 1394
    move-object v8, v7

    move-object v9, v4

    invoke-virtual {v8, v9}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v8

    move-object v7, v8

    .line 1395
    move-object v8, v7

    invoke-virtual {v8}, Lokio/Segment;->compact()V

    goto :goto_4

    .line 1401
    :cond_7
    goto :goto_3
.end method

.method public writeAll(Lokio/Source;)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1141
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

    .line 1142
    :cond_0
    const-wide/16 v6, 0x0

    move-wide v2, v6

    .line 1143
    :goto_0
    move-object v6, v1

    move-object v7, v0

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

    .line 1144
    move-wide v6, v2

    move-wide v8, v4

    add-long/2addr v6, v8

    move-wide v2, v6

    goto :goto_0

    .line 1146
    :cond_1
    move-wide v6, v2

    move-wide v0, v6

    return-wide v0
.end method

.method public writeByte(I)Lokio/Buffer;
    .locals 10

    .prologue
    .line 1159
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v3

    move-object v2, v3

    .line 1160
    move-object v3, v2

    iget-object v3, v3, Lokio/Segment;->data:[B

    move-object v4, v2

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lokio/Segment;->limit:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lokio/Segment;->limit:I

    move v5, v1

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 1161
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lokio/Buffer;->size:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v3, Lokio/Buffer;->size:J

    .line 1162
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public bridge synthetic writeByte(I)Lokio/BufferedSink;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public writeDecimalLong(J)Lokio/Buffer;
    .locals 15

    .prologue
    .line 1219
    move-object v0, p0

    move-wide/from16 v1, p1

    move-wide v9, v1

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_0

    .line 1221
    move-object v9, v0

    const/16 v10, 0x30

    invoke-virtual {v9, v10}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v9

    move-object v0, v9

    .line 1271
    :goto_0
    return-object v0

    .line 1224
    :cond_0
    const/4 v9, 0x0

    move v3, v9

    .line 1225
    move-wide v9, v1

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-gez v9, :cond_2

    .line 1226
    move-wide v9, v1

    neg-long v9, v9

    move-wide v1, v9

    .line 1227
    move-wide v9, v1

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-gez v9, :cond_1

    .line 1228
    move-object v9, v0

    const-string v10, "-9223372036854775808"

    invoke-virtual {v9, v10}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v9

    move-object v0, v9

    goto :goto_0

    .line 1230
    :cond_1
    const/4 v9, 0x1

    move v3, v9

    .line 1234
    :cond_2
    move-wide v9, v1

    const-wide/32 v11, 0x5f5e100

    cmp-long v9, v9, v11

    if-gez v9, :cond_b

    .line 1237
    move-wide v9, v1

    const-wide/16 v11, 0x2710

    cmp-long v9, v9, v11

    if-gez v9, :cond_7

    .line 1238
    move-wide v9, v1

    const-wide/16 v11, 0x64

    cmp-long v9, v9, v11

    if-gez v9, :cond_5

    move-wide v9, v1

    const-wide/16 v11, 0xa

    cmp-long v9, v9, v11

    if-gez v9, :cond_4

    const/4 v9, 0x1

    .line 1252
    :goto_1
    move v4, v9

    .line 1253
    move v9, v3

    if-eqz v9, :cond_3

    .line 1254
    add-int/lit8 v4, v4, 0x1

    .line 1257
    :cond_3
    move-object v9, v0

    move v10, v4

    invoke-virtual {v9, v10}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v9

    move-object v5, v9

    .line 1258
    move-object v9, v5

    iget-object v9, v9, Lokio/Segment;->data:[B

    move-object v6, v9

    .line 1259
    move-object v9, v5

    iget v9, v9, Lokio/Segment;->limit:I

    move v10, v4

    add-int/2addr v9, v10

    move v7, v9

    .line 1260
    :goto_2
    move-wide v9, v1

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_16

    .line 1261
    move-wide v9, v1

    const-wide/16 v11, 0xa

    rem-long/2addr v9, v11

    long-to-int v9, v9

    move v8, v9

    .line 1262
    move-object v9, v6

    add-int/lit8 v7, v7, -0x1

    move v10, v7

    sget-object v11, Lokio/Buffer;->DIGITS:[B

    move v12, v8

    aget-byte v11, v11, v12

    aput-byte v11, v9, v10

    .line 1263
    move-wide v9, v1

    const-wide/16 v11, 0xa

    div-long/2addr v9, v11

    move-wide v1, v9

    .line 1264
    goto :goto_2

    .line 1238
    :cond_4
    const/4 v9, 0x2

    goto :goto_1

    .line 1239
    :cond_5
    move-wide v9, v1

    const-wide/16 v11, 0x3e8

    cmp-long v9, v9, v11

    if-gez v9, :cond_6

    const/4 v9, 0x3

    goto :goto_1

    :cond_6
    const/4 v9, 0x4

    goto :goto_1

    .line 1241
    :cond_7
    move-wide v9, v1

    const-wide/32 v11, 0xf4240

    cmp-long v9, v9, v11

    if-gez v9, :cond_9

    move-wide v9, v1

    const-wide/32 v11, 0x186a0

    cmp-long v9, v9, v11

    if-gez v9, :cond_8

    const/4 v9, 0x5

    goto :goto_1

    :cond_8
    const/4 v9, 0x6

    goto :goto_1

    .line 1242
    :cond_9
    move-wide v9, v1

    const-wide/32 v11, 0x989680

    cmp-long v9, v9, v11

    if-gez v9, :cond_a

    const/4 v9, 0x7

    goto :goto_1

    :cond_a
    const/16 v9, 0x8

    goto :goto_1

    .line 1244
    :cond_b
    move-wide v9, v1

    const-wide v11, 0xe8d4a51000L

    cmp-long v9, v9, v11

    if-gez v9, :cond_f

    .line 1245
    move-wide v9, v1

    const-wide v11, 0x2540be400L

    cmp-long v9, v9, v11

    if-gez v9, :cond_d

    move-wide v9, v1

    const-wide/32 v11, 0x3b9aca00

    cmp-long v9, v9, v11

    if-gez v9, :cond_c

    const/16 v9, 0x9

    goto/16 :goto_1

    :cond_c
    const/16 v9, 0xa

    goto/16 :goto_1

    .line 1246
    :cond_d
    move-wide v9, v1

    const-wide v11, 0x174876e800L

    cmp-long v9, v9, v11

    if-gez v9, :cond_e

    const/16 v9, 0xb

    goto/16 :goto_1

    :cond_e
    const/16 v9, 0xc

    goto/16 :goto_1

    .line 1248
    :cond_f
    move-wide v9, v1

    const-wide v11, 0x38d7ea4c68000L

    cmp-long v9, v9, v11

    if-gez v9, :cond_12

    move-wide v9, v1

    const-wide v11, 0x9184e72a000L

    cmp-long v9, v9, v11

    if-gez v9, :cond_10

    const/16 v9, 0xd

    goto/16 :goto_1

    .line 1249
    :cond_10
    move-wide v9, v1

    const-wide v11, 0x5af3107a4000L

    cmp-long v9, v9, v11

    if-gez v9, :cond_11

    const/16 v9, 0xe

    goto/16 :goto_1

    :cond_11
    const/16 v9, 0xf

    goto/16 :goto_1

    .line 1251
    :cond_12
    move-wide v9, v1

    const-wide v11, 0x16345785d8a0000L

    cmp-long v9, v9, v11

    if-gez v9, :cond_14

    move-wide v9, v1

    const-wide v11, 0x2386f26fc10000L

    cmp-long v9, v9, v11

    if-gez v9, :cond_13

    const/16 v9, 0x10

    goto/16 :goto_1

    :cond_13
    const/16 v9, 0x11

    goto/16 :goto_1

    .line 1252
    :cond_14
    move-wide v9, v1

    const-wide v11, 0xde0b6b3a7640000L

    cmp-long v9, v9, v11

    if-gez v9, :cond_15

    const/16 v9, 0x12

    goto/16 :goto_1

    :cond_15
    const/16 v9, 0x13

    goto/16 :goto_1

    .line 1265
    :cond_16
    move v9, v3

    if-eqz v9, :cond_17

    .line 1266
    move-object v9, v6

    add-int/lit8 v7, v7, -0x1

    move v10, v7

    const/16 v11, 0x2d

    aput-byte v11, v9, v10

    .line 1269
    :cond_17
    move-object v9, v5

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    iget v10, v10, Lokio/Segment;->limit:I

    move v11, v4

    add-int/2addr v10, v11

    iput v10, v9, Lokio/Segment;->limit:I

    .line 1270
    move-object v9, v0

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    iget-wide v10, v10, Lokio/Buffer;->size:J

    move v12, v4

    int-to-long v12, v12

    add-long/2addr v10, v12

    iput-wide v10, v9, Lokio/Buffer;->size:J

    .line 1271
    move-object v9, v0

    move-object v0, v9

    goto/16 :goto_0
.end method

.method public bridge synthetic writeDecimalLong(J)Lokio/BufferedSink;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public writeHexadecimalUnsignedLong(J)Lokio/Buffer;
    .locals 16

    .prologue
    .line 1275
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide v8, v1

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 1277
    move-object v8, v0

    const/16 v9, 0x30

    invoke-virtual {v8, v9}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v8

    move-object v0, v8

    .line 1290
    :goto_0
    return-object v0

    .line 1280
    :cond_0
    move-wide v8, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v8

    const/4 v9, 0x4

    div-int/lit8 v8, v8, 0x4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v3, v8

    .line 1282
    move-object v8, v0

    move v9, v3

    invoke-virtual {v8, v9}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v8

    move-object v4, v8

    .line 1283
    move-object v8, v4

    iget-object v8, v8, Lokio/Segment;->data:[B

    move-object v5, v8

    .line 1284
    move-object v8, v4

    iget v8, v8, Lokio/Segment;->limit:I

    move v9, v3

    add-int/2addr v8, v9

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v6, v8

    move-object v8, v4

    iget v8, v8, Lokio/Segment;->limit:I

    move v7, v8

    :goto_1
    move v8, v6

    move v9, v7

    if-lt v8, v9, :cond_1

    .line 1285
    move-object v8, v5

    move v9, v6

    sget-object v10, Lokio/Buffer;->DIGITS:[B

    move-wide v11, v1

    const-wide/16 v13, 0xf

    and-long/2addr v11, v13

    long-to-int v11, v11

    aget-byte v10, v10, v11

    aput-byte v10, v8, v9

    .line 1286
    move-wide v8, v1

    const/4 v10, 0x4

    ushr-long/2addr v8, v10

    move-wide v1, v8

    .line 1284
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 1288
    :cond_1
    move-object v8, v4

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    iget v9, v9, Lokio/Segment;->limit:I

    move v10, v3

    add-int/2addr v9, v10

    iput v9, v8, Lokio/Segment;->limit:I

    .line 1289
    move-object v8, v0

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    iget-wide v9, v9, Lokio/Buffer;->size:J

    move v11, v3

    int-to-long v11, v11

    add-long/2addr v9, v11

    iput-wide v9, v8, Lokio/Buffer;->size:J

    .line 1290
    move-object v8, v0

    move-object v0, v8

    goto :goto_0
.end method

.method public bridge synthetic writeHexadecimalUnsignedLong(J)Lokio/BufferedSink;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public writeInt(I)Lokio/Buffer;
    .locals 11

    .prologue
    .line 1181
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v5

    move-object v2, v5

    .line 1182
    move-object v5, v2

    iget-object v5, v5, Lokio/Segment;->data:[B

    move-object v3, v5

    .line 1183
    move-object v5, v2

    iget v5, v5, Lokio/Segment;->limit:I

    move v4, v5

    .line 1184
    move-object v5, v3

    move v6, v4

    add-int/lit8 v4, v4, 0x1

    move v7, v1

    const/16 v8, 0x18

    ushr-int/lit8 v7, v7, 0x18

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1185
    move-object v5, v3

    move v6, v4

    add-int/lit8 v4, v4, 0x1

    move v7, v1

    const/16 v8, 0x10

    ushr-int/lit8 v7, v7, 0x10

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1186
    move-object v5, v3

    move v6, v4

    add-int/lit8 v4, v4, 0x1

    move v7, v1

    const/16 v8, 0x8

    ushr-int/lit8 v7, v7, 0x8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1187
    move-object v5, v3

    move v6, v4

    add-int/lit8 v4, v4, 0x1

    move v7, v1

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1188
    move-object v5, v2

    move v6, v4

    iput v6, v5, Lokio/Segment;->limit:I

    .line 1189
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget-wide v6, v6, Lokio/Buffer;->size:J

    const-wide/16 v8, 0x4

    add-long/2addr v6, v8

    iput-wide v6, v5, Lokio/Buffer;->size:J

    .line 1190
    move-object v5, v0

    move-object v0, v5

    return-object v0
.end method

.method public bridge synthetic writeInt(I)Lokio/BufferedSink;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public writeIntLe(I)Lokio/Buffer;
    .locals 4

    .prologue
    .line 1194
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Lokio/Util;->reverseBytesInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic writeIntLe(I)Lokio/BufferedSink;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeIntLe(I)Lokio/Buffer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public writeLong(J)Lokio/Buffer;
    .locals 13

    .prologue
    .line 1198
    move-object v0, p0

    move-wide v1, p1

    move-object v6, v0

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v6

    move-object v3, v6

    .line 1199
    move-object v6, v3

    iget-object v6, v6, Lokio/Segment;->data:[B

    move-object v4, v6

    .line 1200
    move-object v6, v3

    iget v6, v6, Lokio/Segment;->limit:I

    move v5, v6

    .line 1201
    move-object v6, v4

    move v7, v5

    add-int/lit8 v5, v5, 0x1

    move-wide v8, v1

    const/16 v10, 0x38

    ushr-long/2addr v8, v10

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 1202
    move-object v6, v4

    move v7, v5

    add-int/lit8 v5, v5, 0x1

    move-wide v8, v1

    const/16 v10, 0x30

    ushr-long/2addr v8, v10

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 1203
    move-object v6, v4

    move v7, v5

    add-int/lit8 v5, v5, 0x1

    move-wide v8, v1

    const/16 v10, 0x28

    ushr-long/2addr v8, v10

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 1204
    move-object v6, v4

    move v7, v5

    add-int/lit8 v5, v5, 0x1

    move-wide v8, v1

    const/16 v10, 0x20

    ushr-long/2addr v8, v10

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 1205
    move-object v6, v4

    move v7, v5

    add-int/lit8 v5, v5, 0x1

    move-wide v8, v1

    const/16 v10, 0x18

    ushr-long/2addr v8, v10

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 1206
    move-object v6, v4

    move v7, v5

    add-int/lit8 v5, v5, 0x1

    move-wide v8, v1

    const/16 v10, 0x10

    ushr-long/2addr v8, v10

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 1207
    move-object v6, v4

    move v7, v5

    add-int/lit8 v5, v5, 0x1

    move-wide v8, v1

    const/16 v10, 0x8

    ushr-long/2addr v8, v10

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 1208
    move-object v6, v4

    move v7, v5

    add-int/lit8 v5, v5, 0x1

    move-wide v8, v1

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 1209
    move-object v6, v3

    move v7, v5

    iput v7, v6, Lokio/Segment;->limit:I

    .line 1210
    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget-wide v7, v7, Lokio/Buffer;->size:J

    const-wide/16 v9, 0x8

    add-long/2addr v7, v9

    iput-wide v7, v6, Lokio/Buffer;->size:J

    .line 1211
    move-object v6, v0

    move-object v0, v6

    return-object v0
.end method

.method public bridge synthetic writeLong(J)Lokio/BufferedSink;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public writeLongLe(J)Lokio/Buffer;
    .locals 6

    .prologue
    .line 1215
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-static {v4, v5}, Lokio/Util;->reverseBytesLong(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public bridge synthetic writeLongLe(J)Lokio/BufferedSink;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->writeLongLe(J)Lokio/Buffer;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public writeShort(I)Lokio/Buffer;
    .locals 11

    .prologue
    .line 1166
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v5

    move-object v2, v5

    .line 1167
    move-object v5, v2

    iget-object v5, v5, Lokio/Segment;->data:[B

    move-object v3, v5

    .line 1168
    move-object v5, v2

    iget v5, v5, Lokio/Segment;->limit:I

    move v4, v5

    .line 1169
    move-object v5, v3

    move v6, v4

    add-int/lit8 v4, v4, 0x1

    move v7, v1

    const/16 v8, 0x8

    ushr-int/lit8 v7, v7, 0x8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1170
    move-object v5, v3

    move v6, v4

    add-int/lit8 v4, v4, 0x1

    move v7, v1

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1171
    move-object v5, v2

    move v6, v4

    iput v6, v5, Lokio/Segment;->limit:I

    .line 1172
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget-wide v6, v6, Lokio/Buffer;->size:J

    const-wide/16 v8, 0x2

    add-long/2addr v6, v8

    iput-wide v6, v5, Lokio/Buffer;->size:J

    .line 1173
    move-object v5, v0

    move-object v0, v5

    return-object v0
.end method

.method public bridge synthetic writeShort(I)Lokio/BufferedSink;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public writeShortLe(I)Lokio/Buffer;
    .locals 4

    .prologue
    .line 1177
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    int-to-short v3, v3

    invoke-static {v3}, Lokio/Util;->reverseBytesShort(S)S

    move-result v3

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic writeShortLe(I)Lokio/BufferedSink;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeShortLe(I)Lokio/Buffer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;
    .locals 11

    .prologue
    .line 1082
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, v1

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "string == null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1083
    :cond_0
    move v6, v2

    if-gez v6, :cond_1

    new-instance v6, Ljava/lang/IllegalAccessError;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "beginIndex < 0: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1084
    :cond_1
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_2

    .line 1085
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "endIndex < beginIndex: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " < "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1087
    :cond_2
    move v6, v3

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v6, v7, :cond_3

    .line 1088
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "endIndex > string.length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    .line 1089
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1091
    :cond_3
    move-object v6, v4

    if-nez v6, :cond_4

    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "charset == null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1092
    :cond_4
    move-object v6, v4

    sget-object v7, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-virtual {v6, v7, v8, v9}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v6

    move-object v0, v6

    .line 1094
    :goto_0
    return-object v0

    .line 1093
    :cond_5
    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    move-object v5, v6

    .line 1094
    move-object v6, v0

    move-object v7, v5

    const/4 v8, 0x0

    move-object v9, v5

    array-length v9, v9

    invoke-virtual {v6, v7, v8, v9}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;
    .locals 8

    .prologue
    .line 1077
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move-object v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public bridge synthetic writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/BufferedSink;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public bridge synthetic writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/BufferedSink;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)Lokio/Buffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Lokio/Buffer;->size:J

    invoke-virtual {v2, v3, v4, v5}, Lokio/Buffer;->writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public final writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object v7, v1

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const-string v9, "out == null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 219
    :cond_0
    move-object v7, v0

    iget-wide v7, v7, Lokio/Buffer;->size:J

    const-wide/16 v9, 0x0

    move-wide v11, v2

    invoke-static/range {v7 .. v12}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 221
    move-object v7, v0

    iget-object v7, v7, Lokio/Buffer;->head:Lokio/Segment;

    move-object v4, v7

    .line 222
    :goto_0
    move-wide v7, v2

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    .line 223
    move-wide v7, v2

    move-object v9, v4

    iget v9, v9, Lokio/Segment;->limit:I

    move-object v10, v4

    iget v10, v10, Lokio/Segment;->pos:I

    sub-int/2addr v9, v10

    int-to-long v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    move v5, v7

    .line 224
    move-object v7, v1

    move-object v8, v4

    iget-object v8, v8, Lokio/Segment;->data:[B

    move-object v9, v4

    iget v9, v9, Lokio/Segment;->pos:I

    move v10, v5

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 226
    move-object v7, v4

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget v8, v8, Lokio/Segment;->pos:I

    move v9, v5

    add-int/2addr v8, v9

    iput v8, v7, Lokio/Segment;->pos:I

    .line 227
    move-object v7, v0

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget-wide v8, v8, Lokio/Buffer;->size:J

    move v10, v5

    int-to-long v10, v10

    sub-long/2addr v8, v10

    iput-wide v8, v7, Lokio/Buffer;->size:J

    .line 228
    move-wide v7, v2

    move v9, v5

    int-to-long v9, v9

    sub-long/2addr v7, v9

    move-wide v2, v7

    .line 230
    move-object v7, v4

    iget v7, v7, Lokio/Segment;->pos:I

    move-object v8, v4

    iget v8, v8, Lokio/Segment;->limit:I

    if-ne v7, v8, :cond_1

    .line 231
    move-object v7, v4

    move-object v6, v7

    .line 232
    move-object v7, v0

    move-object v8, v6

    invoke-virtual {v8}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v8

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v4, v9

    iput-object v8, v7, Lokio/Buffer;->head:Lokio/Segment;

    .line 233
    move-object v7, v6

    invoke-static {v7}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 235
    :cond_1
    goto :goto_0

    .line 237
    :cond_2
    move-object v7, v0

    move-object v0, v7

    return-object v0
.end method

.method public writeUtf8(Ljava/lang/String;)Lokio/Buffer;
    .locals 6

    .prologue
    .line 961
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public writeUtf8(Ljava/lang/String;II)Lokio/Buffer;
    .locals 17

    .prologue
    .line 965
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v11, v1

    if-nez v11, :cond_0

    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const-string v13, "string == null"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 966
    :cond_0
    move v11, v2

    if-gez v11, :cond_1

    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "beginIndex < 0: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 967
    :cond_1
    move v11, v3

    move v12, v2

    if-ge v11, v12, :cond_2

    .line 968
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "endIndex < beginIndex: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v3

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " < "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 970
    :cond_2
    move v11, v3

    move-object v12, v1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-le v11, v12, :cond_3

    .line 971
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "endIndex > string.length: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v3

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " > "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v1

    .line 972
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 976
    :cond_3
    move v11, v2

    move v4, v11

    :goto_0
    move v11, v4

    move v12, v3

    if-ge v11, v12, :cond_d

    .line 977
    move-object v11, v1

    move v12, v4

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move v5, v11

    .line 979
    move v11, v5

    const/16 v12, 0x80

    if-ge v11, v12, :cond_6

    .line 980
    move-object v11, v0

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v11

    move-object v6, v11

    .line 981
    move-object v11, v6

    iget-object v11, v11, Lokio/Segment;->data:[B

    move-object v7, v11

    .line 982
    move-object v11, v6

    iget v11, v11, Lokio/Segment;->limit:I

    move v12, v4

    sub-int/2addr v11, v12

    move v8, v11

    .line 983
    move v11, v3

    const/16 v12, 0x2000

    move v13, v8

    rsub-int v12, v13, 0x2000

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    move v9, v11

    .line 986
    move-object v11, v7

    move v12, v8

    move v13, v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v12, v13

    move v13, v5

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 990
    :goto_1
    move v11, v4

    move v12, v9

    if-ge v11, v12, :cond_4

    .line 991
    move-object v11, v1

    move v12, v4

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move v5, v11

    .line 992
    move v11, v5

    const/16 v12, 0x80

    if-lt v11, v12, :cond_5

    .line 996
    :cond_4
    move v11, v4

    move v12, v8

    add-int/2addr v11, v12

    move-object v12, v6

    iget v12, v12, Lokio/Segment;->limit:I

    sub-int/2addr v11, v12

    move v10, v11

    .line 997
    move-object v11, v6

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    iget v12, v12, Lokio/Segment;->limit:I

    move v13, v10

    add-int/2addr v12, v13

    iput v12, v11, Lokio/Segment;->limit:I

    .line 998
    move-object v11, v0

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    iget-wide v12, v12, Lokio/Buffer;->size:J

    move v14, v10

    int-to-long v14, v14

    add-long/2addr v12, v14

    iput-wide v12, v11, Lokio/Buffer;->size:J

    .line 1035
    :goto_2
    goto :goto_0

    .line 993
    :cond_5
    move-object v11, v7

    move v12, v8

    move v13, v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v12, v13

    move v13, v5

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    goto :goto_1

    .line 1000
    :cond_6
    move v11, v5

    const/16 v12, 0x800

    if-ge v11, v12, :cond_7

    .line 1002
    move-object v11, v0

    move v12, v5

    const/4 v13, 0x6

    shr-int/lit8 v12, v12, 0x6

    const/16 v13, 0xc0

    or-int/lit16 v12, v12, 0xc0

    invoke-virtual {v11, v12}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v11

    .line 1003
    move-object v11, v0

    move v12, v5

    const/16 v13, 0x3f

    and-int/lit8 v12, v12, 0x3f

    const/16 v13, 0x80

    or-int/lit16 v12, v12, 0x80

    invoke-virtual {v11, v12}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v11

    .line 1004
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1006
    :cond_7
    move v11, v5

    const v12, 0xd800

    if-lt v11, v12, :cond_8

    move v11, v5

    const v12, 0xdfff

    if-le v11, v12, :cond_9

    .line 1008
    :cond_8
    move-object v11, v0

    move v12, v5

    const/16 v13, 0xc

    shr-int/lit8 v12, v12, 0xc

    const/16 v13, 0xe0

    or-int/lit16 v12, v12, 0xe0

    invoke-virtual {v11, v12}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v11

    .line 1009
    move-object v11, v0

    move v12, v5

    const/4 v13, 0x6

    shr-int/lit8 v12, v12, 0x6

    const/16 v13, 0x3f

    and-int/lit8 v12, v12, 0x3f

    const/16 v13, 0x80

    or-int/lit16 v12, v12, 0x80

    invoke-virtual {v11, v12}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v11

    .line 1010
    move-object v11, v0

    move v12, v5

    const/16 v13, 0x3f

    and-int/lit8 v12, v12, 0x3f

    const/16 v13, 0x80

    or-int/lit16 v12, v12, 0x80

    invoke-virtual {v11, v12}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v11

    .line 1011
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1016
    :cond_9
    move v11, v4

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move v12, v3

    if-ge v11, v12, :cond_b

    move-object v11, v1

    move v12, v4

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_3
    move v6, v11

    .line 1017
    move v11, v5

    const v12, 0xdbff

    if-gt v11, v12, :cond_a

    move v11, v6

    const v12, 0xdc00

    if-lt v11, v12, :cond_a

    move v11, v6

    const v12, 0xdfff

    if-le v11, v12, :cond_c

    .line 1018
    :cond_a
    move-object v11, v0

    const/16 v12, 0x3f

    invoke-virtual {v11, v12}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v11

    .line 1019
    add-int/lit8 v4, v4, 0x1

    .line 1020
    goto/16 :goto_0

    .line 1016
    :cond_b
    const/4 v11, 0x0

    goto :goto_3

    .line 1026
    :cond_c
    const/high16 v11, 0x10000

    move v12, v5

    const v13, -0xd801

    and-int/2addr v12, v13

    const/16 v13, 0xa

    shl-int/lit8 v12, v12, 0xa

    move v13, v6

    const v14, -0xdc01

    and-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/2addr v11, v12

    move v7, v11

    .line 1029
    move-object v11, v0

    move v12, v7

    const/16 v13, 0x12

    shr-int/lit8 v12, v12, 0x12

    const/16 v13, 0xf0

    or-int/lit16 v12, v12, 0xf0

    invoke-virtual {v11, v12}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v11

    .line 1030
    move-object v11, v0

    move v12, v7

    const/16 v13, 0xc

    shr-int/lit8 v12, v12, 0xc

    const/16 v13, 0x3f

    and-int/lit8 v12, v12, 0x3f

    const/16 v13, 0x80

    or-int/lit16 v12, v12, 0x80

    invoke-virtual {v11, v12}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v11

    .line 1031
    move-object v11, v0

    move v12, v7

    const/4 v13, 0x6

    shr-int/lit8 v12, v12, 0x6

    const/16 v13, 0x3f

    and-int/lit8 v12, v12, 0x3f

    const/16 v13, 0x80

    or-int/lit16 v12, v12, 0x80

    invoke-virtual {v11, v12}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v11

    .line 1032
    move-object v11, v0

    move v12, v7

    const/16 v13, 0x3f

    and-int/lit8 v12, v12, 0x3f

    const/16 v13, 0x80

    or-int/lit16 v12, v12, 0x80

    invoke-virtual {v11, v12}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v11

    .line 1033
    add-int/lit8 v4, v4, 0x2

    goto/16 :goto_2

    .line 1037
    :cond_d
    move-object v11, v0

    move-object v0, v11

    return-object v0
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public writeUtf8CodePoint(I)Lokio/Buffer;
    .locals 7

    .prologue
    .line 1041
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    .line 1043
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v2

    .line 1073
    :goto_0
    move-object v2, v0

    move-object v0, v2

    return-object v0

    .line 1045
    :cond_0
    move v2, v1

    const/16 v3, 0x800

    if-ge v2, v3, :cond_1

    .line 1047
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x6

    shr-int/lit8 v3, v3, 0x6

    const/16 v4, 0xc0

    or-int/lit16 v3, v3, 0xc0

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v2

    .line 1048
    move-object v2, v0

    move v3, v1

    const/16 v4, 0x3f

    and-int/lit8 v3, v3, 0x3f

    const/16 v4, 0x80

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v2

    goto :goto_0

    .line 1050
    :cond_1
    move v2, v1

    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_3

    .line 1051
    move v2, v1

    const v3, 0xd800

    if-lt v2, v3, :cond_2

    move v2, v1

    const v3, 0xdfff

    if-gt v2, v3, :cond_2

    .line 1053
    move-object v2, v0

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v2

    goto :goto_0

    .line 1056
    :cond_2
    move-object v2, v0

    move v3, v1

    const/16 v4, 0xc

    shr-int/lit8 v3, v3, 0xc

    const/16 v4, 0xe0

    or-int/lit16 v3, v3, 0xe0

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v2

    .line 1057
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x6

    shr-int/lit8 v3, v3, 0x6

    const/16 v4, 0x3f

    and-int/lit8 v3, v3, 0x3f

    const/16 v4, 0x80

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v2

    .line 1058
    move-object v2, v0

    move v3, v1

    const/16 v4, 0x3f

    and-int/lit8 v3, v3, 0x3f

    const/16 v4, 0x80

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v2

    goto :goto_0

    .line 1061
    :cond_3
    move v2, v1

    const v3, 0x10ffff

    if-gt v2, v3, :cond_4

    .line 1063
    move-object v2, v0

    move v3, v1

    const/16 v4, 0x12

    shr-int/lit8 v3, v3, 0x12

    const/16 v4, 0xf0

    or-int/lit16 v3, v3, 0xf0

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v2

    .line 1064
    move-object v2, v0

    move v3, v1

    const/16 v4, 0xc

    shr-int/lit8 v3, v3, 0xc

    const/16 v4, 0x3f

    and-int/lit8 v3, v3, 0x3f

    const/16 v4, 0x80

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v2

    .line 1065
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x6

    shr-int/lit8 v3, v3, 0x6

    const/16 v4, 0x3f

    and-int/lit8 v3, v3, 0x3f

    const/16 v4, 0x80

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v2

    .line 1066
    move-object v2, v0

    move v3, v1

    const/16 v4, 0x3f

    and-int/lit8 v3, v3, 0x3f

    const/16 v4, 0x80

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v2

    goto/16 :goto_0

    .line 1069
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected code point: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    .line 1070
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic writeUtf8CodePoint(I)Lokio/BufferedSink;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
