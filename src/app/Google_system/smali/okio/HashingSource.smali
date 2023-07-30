.class public final Lokio/HashingSource;
.super Lokio/ForwardingSource;
.source "HashingSource.java"


# instance fields
.field private final mac:Ljavax/crypto/Mac;

.field private final messageDigest:Ljava/security/MessageDigest;


# direct methods
.method private constructor <init>(Lokio/Source;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 73
    move-object v4, v0

    move-object v5, v2

    :try_start_0
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    iput-object v5, v4, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    .line 74
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lokio/HashingSource;->mac:Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    return-void

    .line 75
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 76
    new-instance v4, Ljava/lang/AssertionError;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v4
.end method

.method private constructor <init>(Lokio/Source;Lokio/ByteString;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 81
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 83
    move-object v5, v0

    move-object v6, v3

    :try_start_0
    invoke-static {v6}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v6

    iput-object v6, v5, Lokio/HashingSource;->mac:Ljavax/crypto/Mac;

    .line 84
    move-object v5, v0

    iget-object v5, v5, Lokio/HashingSource;->mac:Ljavax/crypto/Mac;

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    invoke-virtual {v8}, Lokio/ByteString;->toByteArray()[B

    move-result-object v8

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 85
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    return-void

    .line 86
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 87
    new-instance v5, Ljava/lang/AssertionError;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 88
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 89
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v4

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static hmacSha1(Lokio/Source;Lokio/ByteString;)Lokio/HashingSource;
    .locals 8

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lokio/HashingSource;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    const-string v6, "HmacSHA1"

    invoke-direct {v3, v4, v5, v6}, Lokio/HashingSource;-><init>(Lokio/Source;Lokio/ByteString;Ljava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method

.method public static hmacSha256(Lokio/Source;Lokio/ByteString;)Lokio/HashingSource;
    .locals 8

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lokio/HashingSource;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    const-string v6, "HmacSHA256"

    invoke-direct {v3, v4, v5, v6}, Lokio/HashingSource;-><init>(Lokio/Source;Lokio/ByteString;Ljava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method

.method public static md5(Lokio/Source;)Lokio/HashingSource;
    .locals 6

    .prologue
    .line 47
    move-object v0, p0

    new-instance v1, Lokio/HashingSource;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    const-string v4, "MD5"

    invoke-direct {v2, v3, v4}, Lokio/HashingSource;-><init>(Lokio/Source;Ljava/lang/String;)V

    move-object v0, v1

    return-object v0
.end method

.method public static sha1(Lokio/Source;)Lokio/HashingSource;
    .locals 6

    .prologue
    .line 52
    move-object v0, p0

    new-instance v1, Lokio/HashingSource;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    const-string v4, "SHA-1"

    invoke-direct {v2, v3, v4}, Lokio/HashingSource;-><init>(Lokio/Source;Ljava/lang/String;)V

    move-object v0, v1

    return-object v0
.end method

.method public static sha256(Lokio/Source;)Lokio/HashingSource;
    .locals 6

    .prologue
    .line 57
    move-object v0, p0

    new-instance v1, Lokio/HashingSource;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    const-string v4, "SHA-256"

    invoke-direct {v2, v3, v4}, Lokio/HashingSource;-><init>(Lokio/Source;Ljava/lang/String;)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public final hash()Lokio/ByteString;
    .locals 3

    .prologue
    .line 131
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    :goto_0
    move-object v1, v2

    .line 132
    move-object v2, v1

    invoke-static {v2}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v2

    move-object v0, v2

    return-object v0

    .line 131
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lokio/HashingSource;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v2}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v2

    goto :goto_0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object v12, v0

    move-object v13, v1

    move-wide v14, v2

    invoke-super {v12, v13, v14, v15}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide v12

    move-wide v4, v12

    .line 96
    move-wide v12, v4

    const-wide/16 v14, -0x1

    cmp-long v12, v12, v14

    if-eqz v12, :cond_2

    .line 97
    move-object v12, v1

    iget-wide v12, v12, Lokio/Buffer;->size:J

    move-wide v14, v4

    sub-long/2addr v12, v14

    move-wide v6, v12

    .line 100
    move-object v12, v1

    iget-wide v12, v12, Lokio/Buffer;->size:J

    move-wide v8, v12

    .line 101
    move-object v12, v1

    iget-object v12, v12, Lokio/Buffer;->head:Lokio/Segment;

    move-object v10, v12

    .line 102
    :goto_0
    move-wide v12, v8

    move-wide v14, v6

    cmp-long v12, v12, v14

    if-lez v12, :cond_0

    .line 103
    move-object v12, v10

    iget-object v12, v12, Lokio/Segment;->prev:Lokio/Segment;

    move-object v10, v12

    .line 104
    move-wide v12, v8

    move-object v14, v10

    iget v14, v14, Lokio/Segment;->limit:I

    move-object v15, v10

    iget v15, v15, Lokio/Segment;->pos:I

    sub-int/2addr v14, v15

    int-to-long v14, v14

    sub-long/2addr v12, v14

    move-wide v8, v12

    goto :goto_0

    .line 108
    :cond_0
    :goto_1
    move-wide v12, v8

    move-object v14, v1

    iget-wide v14, v14, Lokio/Buffer;->size:J

    cmp-long v12, v12, v14

    if-gez v12, :cond_2

    .line 109
    move-object v12, v10

    iget v12, v12, Lokio/Segment;->pos:I

    int-to-long v12, v12

    move-wide v14, v6

    add-long/2addr v12, v14

    move-wide v14, v8

    sub-long/2addr v12, v14

    long-to-int v12, v12

    move v11, v12

    .line 110
    move-object v12, v0

    iget-object v12, v12, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v12, :cond_1

    .line 111
    move-object v12, v0

    iget-object v12, v12, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    move-object v13, v10

    iget-object v13, v13, Lokio/Segment;->data:[B

    move v14, v11

    move-object v15, v10

    iget v15, v15, Lokio/Segment;->limit:I

    move/from16 v16, v11

    sub-int v15, v15, v16

    invoke-virtual {v12, v13, v14, v15}, Ljava/security/MessageDigest;->update([BII)V

    .line 115
    :goto_2
    move-wide v12, v8

    move-object v14, v10

    iget v14, v14, Lokio/Segment;->limit:I

    move-object v15, v10

    iget v15, v15, Lokio/Segment;->pos:I

    sub-int/2addr v14, v15

    int-to-long v14, v14

    add-long/2addr v12, v14

    move-wide v8, v12

    .line 116
    move-wide v12, v8

    move-wide v6, v12

    .line 117
    move-object v12, v10

    iget-object v12, v12, Lokio/Segment;->next:Lokio/Segment;

    move-object v10, v12

    .line 118
    goto :goto_1

    .line 113
    :cond_1
    move-object v12, v0

    iget-object v12, v12, Lokio/HashingSource;->mac:Ljavax/crypto/Mac;

    move-object v13, v10

    iget-object v13, v13, Lokio/Segment;->data:[B

    move v14, v11

    move-object v15, v10

    iget v15, v15, Lokio/Segment;->limit:I

    move/from16 v16, v11

    sub-int v15, v15, v16

    invoke-virtual {v12, v13, v14, v15}, Ljavax/crypto/Mac;->update([BII)V

    goto :goto_2

    .line 121
    :cond_2
    move-wide v12, v4

    move-wide v0, v12

    return-wide v0
.end method
