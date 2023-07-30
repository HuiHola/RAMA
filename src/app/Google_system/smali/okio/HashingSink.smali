.class public final Lokio/HashingSink;
.super Lokio/ForwardingSink;
.source "HashingSink.java"


# instance fields
.field private final mac:Ljavax/crypto/Mac;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final messageDigest:Ljava/security/MessageDigest;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lokio/Sink;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    .line 86
    move-object v4, v0

    move-object v5, v2

    :try_start_0
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    iput-object v5, v4, Lokio/HashingSink;->messageDigest:Ljava/security/MessageDigest;

    .line 87
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lokio/HashingSink;->mac:Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    return-void

    .line 88
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 89
    new-instance v4, Ljava/lang/AssertionError;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v4
.end method

.method private constructor <init>(Lokio/Sink;Lokio/ByteString;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    .line 96
    move-object v5, v0

    move-object v6, v3

    :try_start_0
    invoke-static {v6}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v6

    iput-object v6, v5, Lokio/HashingSink;->mac:Ljavax/crypto/Mac;

    .line 97
    move-object v5, v0

    iget-object v5, v5, Lokio/HashingSink;->mac:Ljavax/crypto/Mac;

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

    .line 98
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lokio/HashingSink;->messageDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    return-void

    .line 99
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 100
    new-instance v5, Ljava/lang/AssertionError;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 101
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 102
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v4

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static hmacSha1(Lokio/Sink;Lokio/ByteString;)Lokio/HashingSink;
    .locals 8

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lokio/HashingSink;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    const-string v6, "HmacSHA1"

    invoke-direct {v3, v4, v5, v6}, Lokio/HashingSink;-><init>(Lokio/Sink;Lokio/ByteString;Ljava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method

.method public static hmacSha256(Lokio/Sink;Lokio/ByteString;)Lokio/HashingSink;
    .locals 8

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lokio/HashingSink;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    const-string v6, "HmacSHA256"

    invoke-direct {v3, v4, v5, v6}, Lokio/HashingSink;-><init>(Lokio/Sink;Lokio/ByteString;Ljava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method

.method public static hmacSha512(Lokio/Sink;Lokio/ByteString;)Lokio/HashingSink;
    .locals 8

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lokio/HashingSink;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    const-string v6, "HmacSHA512"

    invoke-direct {v3, v4, v5, v6}, Lokio/HashingSink;-><init>(Lokio/Sink;Lokio/ByteString;Ljava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method

.method public static md5(Lokio/Sink;)Lokio/HashingSink;
    .locals 6

    .prologue
    .line 50
    move-object v0, p0

    new-instance v1, Lokio/HashingSink;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    const-string v4, "MD5"

    invoke-direct {v2, v3, v4}, Lokio/HashingSink;-><init>(Lokio/Sink;Ljava/lang/String;)V

    move-object v0, v1

    return-object v0
.end method

.method public static sha1(Lokio/Sink;)Lokio/HashingSink;
    .locals 6

    .prologue
    .line 55
    move-object v0, p0

    new-instance v1, Lokio/HashingSink;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    const-string v4, "SHA-1"

    invoke-direct {v2, v3, v4}, Lokio/HashingSink;-><init>(Lokio/Sink;Ljava/lang/String;)V

    move-object v0, v1

    return-object v0
.end method

.method public static sha256(Lokio/Sink;)Lokio/HashingSink;
    .locals 6

    .prologue
    .line 60
    move-object v0, p0

    new-instance v1, Lokio/HashingSink;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    const-string v4, "SHA-256"

    invoke-direct {v2, v3, v4}, Lokio/HashingSink;-><init>(Lokio/Sink;Ljava/lang/String;)V

    move-object v0, v1

    return-object v0
.end method

.method public static sha512(Lokio/Sink;)Lokio/HashingSink;
    .locals 6

    .prologue
    .line 65
    move-object v0, p0

    new-instance v1, Lokio/HashingSink;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    const-string v4, "SHA-512"

    invoke-direct {v2, v3, v4}, Lokio/HashingSink;-><init>(Lokio/Sink;Ljava/lang/String;)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public final hash()Lokio/ByteString;
    .locals 3

    .prologue
    .line 132
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lokio/HashingSink;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lokio/HashingSink;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    :goto_0
    move-object v1, v2

    .line 133
    move-object v2, v1

    invoke-static {v2}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v2

    move-object v0, v2

    return-object v0

    .line 132
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lokio/HashingSink;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v2}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v2

    goto :goto_0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object v8, v1

    iget-wide v8, v8, Lokio/Buffer;->size:J

    const-wide/16 v10, 0x0

    move-wide v12, v2

    invoke-static/range {v8 .. v13}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 110
    const-wide/16 v8, 0x0

    move-wide v4, v8

    .line 111
    move-object v8, v1

    iget-object v8, v8, Lokio/Buffer;->head:Lokio/Segment;

    move-object v6, v8

    :goto_0
    move-wide v8, v4

    move-wide v10, v2

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 112
    move-wide v8, v2

    move-wide v10, v4

    sub-long/2addr v8, v10

    move-object v10, v6

    iget v10, v10, Lokio/Segment;->limit:I

    move-object v11, v6

    iget v11, v11, Lokio/Segment;->pos:I

    sub-int/2addr v10, v11

    int-to-long v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    move v7, v8

    .line 113
    move-object v8, v0

    iget-object v8, v8, Lokio/HashingSink;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v8, :cond_0

    .line 114
    move-object v8, v0

    iget-object v8, v8, Lokio/HashingSink;->messageDigest:Ljava/security/MessageDigest;

    move-object v9, v6

    iget-object v9, v9, Lokio/Segment;->data:[B

    move-object v10, v6

    iget v10, v10, Lokio/Segment;->pos:I

    move v11, v7

    invoke-virtual {v8, v9, v10, v11}, Ljava/security/MessageDigest;->update([BII)V

    .line 118
    :goto_1
    move-wide v8, v4

    move v10, v7

    int-to-long v10, v10

    add-long/2addr v8, v10

    move-wide v4, v8

    .line 111
    move-object v8, v6

    iget-object v8, v8, Lokio/Segment;->next:Lokio/Segment;

    move-object v6, v8

    goto :goto_0

    .line 116
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lokio/HashingSink;->mac:Ljavax/crypto/Mac;

    move-object v9, v6

    iget-object v9, v9, Lokio/Segment;->data:[B

    move-object v10, v6

    iget v10, v10, Lokio/Segment;->pos:I

    move v11, v7

    invoke-virtual {v8, v9, v10, v11}, Ljavax/crypto/Mac;->update([BII)V

    goto :goto_1

    .line 122
    :cond_1
    move-object v8, v0

    move-object v9, v1

    move-wide v10, v2

    invoke-super {v8, v9, v10, v11}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    .line 123
    return-void
.end method
