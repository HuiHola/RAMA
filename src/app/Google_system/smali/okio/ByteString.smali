.class public Lokio/ByteString;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lokio/ByteString;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lokio/ByteString;

.field static final HEX_DIGITS:[C

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final data:[B

.field transient hashCode:I

.field transient utf8:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lokio/ByteString;->HEX_DIGITS:[C

    .line 58
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    return-void

    .line 53
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method constructor <init>([B)V
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 65
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokio/ByteString;->data:[B

    .line 66
    return-void
.end method

.method static codePointIndexToCharIndex(Ljava/lang/String;I)I
    .locals 8

    .prologue
    .line 513
    move-object v0, p0

    move v1, p1

    const/4 v6, 0x0

    move v2, v6

    const/4 v6, 0x0

    move v3, v6

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v4, v6

    :goto_0
    move v6, v2

    move v7, v4

    if-ge v6, v7, :cond_4

    .line 514
    move v6, v3

    move v7, v1

    if-ne v6, v7, :cond_0

    .line 515
    move v6, v2

    move v0, v6

    .line 524
    :goto_1
    return v0

    .line 517
    :cond_0
    move-object v6, v0

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    move v5, v6

    .line 518
    move v6, v5

    invoke-static {v6}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v5

    const/16 v7, 0xa

    if-eq v6, v7, :cond_1

    move v6, v5

    const/16 v7, 0xd

    if-ne v6, v7, :cond_2

    :cond_1
    move v6, v5

    const v7, 0xfffd

    if-ne v6, v7, :cond_3

    .line 520
    :cond_2
    const/4 v6, -0x1

    move v0, v6

    goto :goto_1

    .line 522
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 513
    move v6, v2

    move v7, v5

    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v6, v7

    move v2, v6

    goto :goto_0

    .line 524
    :cond_4
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v0, v6

    goto :goto_1
.end method

.method public static decodeBase64(Ljava/lang/String;)Lokio/ByteString;
    .locals 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    move-object v2, v0

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "base64 == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    :cond_0
    move-object v2, v0

    invoke-static {v2}, Lokio/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    move-object v1, v2

    .line 204
    move-object v2, v1

    if-eqz v2, :cond_1

    new-instance v2, Lokio/ByteString;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lokio/ByteString;-><init>([B)V

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static decodeHex(Ljava/lang/String;)Lokio/ByteString;
    .locals 10

    .prologue
    .line 220
    move-object v0, p0

    move-object v5, v0

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "hex == null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 221
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected hex string: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 223
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    new-array v5, v5, [B

    move-object v1, v5

    .line 224
    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move v5, v2

    move-object v6, v1

    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 225
    move-object v5, v0

    move v6, v2

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lokio/ByteString;->decodeHexDigit(C)I

    move-result v5

    const/4 v6, 0x4

    shl-int/lit8 v5, v5, 0x4

    move v3, v5

    .line 226
    move-object v5, v0

    move v6, v2

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lokio/ByteString;->decodeHexDigit(C)I

    move-result v5

    move v4, v5

    .line 227
    move-object v5, v1

    move v6, v2

    move v7, v3

    move v8, v4

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    :cond_2
    move-object v5, v1

    invoke-static {v5}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method private static decodeHexDigit(C)I
    .locals 6

    .prologue
    .line 233
    move v0, p0

    move v1, v0

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x30

    add-int/lit8 v1, v1, -0x30

    move v0, v1

    .line 235
    :goto_0
    return v0

    .line 234
    :cond_0
    move v1, v0

    const/16 v2, 0x61

    if-lt v1, v2, :cond_1

    move v1, v0

    const/16 v2, 0x66

    if-gt v1, v2, :cond_1

    move v1, v0

    const/16 v2, 0x61

    add-int/lit8 v1, v1, -0x61

    const/16 v2, 0xa

    add-int/lit8 v1, v1, 0xa

    move v0, v1

    goto :goto_0

    .line 235
    :cond_1
    move v1, v0

    const/16 v2, 0x41

    if-lt v1, v2, :cond_2

    move v1, v0

    const/16 v2, 0x46

    if-gt v1, v2, :cond_2

    move v1, v0

    const/16 v2, 0x41

    add-int/lit8 v1, v1, -0x41

    const/16 v2, 0xa

    add-int/lit8 v1, v1, 0xa

    move v0, v1

    goto :goto_0

    .line 236
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected hex digit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private digest(Ljava/lang/String;)Lokio/ByteString;
    .locals 7

    .prologue
    .line 156
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    :try_start_0
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lokio/ByteString;->data:[B

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Lokio/ByteString;->of([B)Lokio/ByteString;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    return-object v0

    .line 157
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 158
    new-instance v3, Ljava/lang/AssertionError;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public static encodeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/ByteString;
    .locals 7

    .prologue
    .line 107
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "s == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :cond_0
    move-object v2, v1

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "charset == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    :cond_1
    new-instance v2, Lokio/ByteString;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Lokio/ByteString;-><init>([B)V

    move-object v0, v2

    return-object v0
.end method

.method public static encodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    .locals 7

    .prologue
    .line 99
    move-object v0, p0

    move-object v2, v0

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "s == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    :cond_0
    new-instance v2, Lokio/ByteString;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Lokio/ByteString;-><init>([B)V

    move-object v1, v2

    .line 101
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lokio/ByteString;->utf8:Ljava/lang/String;

    .line 102
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method private hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    .locals 10

    .prologue
    .line 179
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    :try_start_0
    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v4

    move-object v3, v4

    .line 180
    move-object v4, v3

    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    invoke-virtual {v7}, Lokio/ByteString;->toByteArray()[B

    move-result-object v7

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 181
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lokio/ByteString;->data:[B

    invoke-virtual {v4, v5}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v4

    invoke-static {v4}, Lokio/ByteString;->of([B)Lokio/ByteString;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    move-object v0, v4

    return-object v0

    .line 182
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 183
    new-instance v4, Ljava/lang/AssertionError;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v3

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 184
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 185
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v3

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static of(Ljava/nio/ByteBuffer;)Lokio/ByteString;
    .locals 6

    .prologue
    .line 90
    move-object v0, p0

    move-object v2, v0

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "data == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    move-object v1, v2

    .line 93
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 94
    new-instance v2, Lokio/ByteString;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lokio/ByteString;-><init>([B)V

    move-object v0, v2

    return-object v0
.end method

.method public static varargs of([B)Lokio/ByteString;
    .locals 5

    .prologue
    .line 72
    move-object v0, p0

    move-object v1, v0

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "data == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_0
    new-instance v1, Lokio/ByteString;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-direct {v2, v3}, Lokio/ByteString;-><init>([B)V

    move-object v0, v1

    return-object v0
.end method

.method public static of([BII)Lokio/ByteString;
    .locals 11

    .prologue
    .line 81
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string v6, "data == null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 82
    :cond_0
    move-object v4, v0

    array-length v4, v4

    int-to-long v4, v4

    move v6, v1

    int-to-long v6, v6

    move v8, v2

    int-to-long v8, v8

    invoke-static/range {v4 .. v9}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 84
    move v4, v2

    new-array v4, v4, [B

    move-object v3, v4

    .line 85
    move-object v4, v0

    move v5, v1

    move-object v6, v3

    const/4 v7, 0x0

    move v8, v2

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    new-instance v4, Lokio/ByteString;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v3

    invoke-direct {v5, v6}, Lokio/ByteString;-><init>([B)V

    move-object v0, v4

    return-object v0
.end method

.method public static read(Ljava/io/InputStream;I)Lokio/ByteString;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "in == null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 247
    :cond_0
    move v5, v1

    if-gez v5, :cond_1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "byteCount < 0: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 249
    :cond_1
    move v5, v1

    new-array v5, v5, [B

    move-object v2, v5

    .line 250
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v1

    if-ge v5, v6, :cond_3

    .line 251
    move-object v5, v0

    move-object v6, v2

    move v7, v3

    move v8, v1

    move v9, v3

    sub-int/2addr v8, v9

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    move v4, v5

    .line 252
    move v5, v4

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    new-instance v5, Ljava/io/EOFException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/io/EOFException;-><init>()V

    throw v5

    .line 250
    :cond_2
    move v5, v3

    move v6, v4

    add-int/2addr v5, v6

    move v3, v5

    goto :goto_0

    .line 254
    :cond_3
    new-instance v5, Lokio/ByteString;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    invoke-direct {v6, v7}, Lokio/ByteString;-><init>([B)V

    move-object v0, v5

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 528
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    move v2, v5

    .line 529
    move-object v5, v1

    move v6, v2

    invoke-static {v5, v6}, Lokio/ByteString;->read(Ljava/io/InputStream;I)Lokio/ByteString;

    move-result-object v5

    move-object v3, v5

    .line 531
    :try_start_0
    const-class v5, Lokio/ByteString;

    const-string v6, "data"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    move-object v4, v5

    .line 532
    move-object v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 533
    move-object v5, v4

    move-object v6, v0

    move-object v7, v3

    iget-object v7, v7, Lokio/ByteString;->data:[B

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 539
    return-void

    .line 534
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 535
    new-instance v5, Ljava/lang/AssertionError;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 536
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 537
    new-instance v5, Ljava/lang/AssertionError;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v5
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 542
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lokio/ByteString;->data:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 543
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lokio/ByteString;->data:[B

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->write([B)V

    .line 544
    return-void
.end method


# virtual methods
.method public asByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 366
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/ByteString;->data:[B

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
    .line 131
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/ByteString;->data:[B

    invoke-static {v1}, Lokio/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/ByteString;->data:[B

    invoke-static {v1}, Lokio/Base64;->encodeUrl([B)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v2, v3}, Lokio/ByteString;->compareTo(Lokio/ByteString;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public compareTo(Lokio/ByteString;)I
    .locals 10

    .prologue
    .line 473
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    invoke-virtual {v8}, Lokio/ByteString;->size()I

    move-result v8

    move v2, v8

    .line 474
    move-object v8, v1

    invoke-virtual {v8}, Lokio/ByteString;->size()I

    move-result v8

    move v3, v8

    .line 475
    const/4 v8, 0x0

    move v4, v8

    move v8, v2

    move v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v5, v8

    :goto_0
    move v8, v4

    move v9, v5

    if-ge v8, v9, :cond_2

    .line 476
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Lokio/ByteString;->getByte(I)B

    move-result v8

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    move v6, v8

    .line 477
    move-object v8, v1

    move v9, v4

    invoke-virtual {v8, v9}, Lokio/ByteString;->getByte(I)B

    move-result v8

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    move v7, v8

    .line 478
    move v8, v6

    move v9, v7

    if-ne v8, v9, :cond_0

    .line 475
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 479
    :cond_0
    move v8, v6

    move v9, v7

    if-ge v8, v9, :cond_1

    const/4 v8, -0x1

    :goto_1
    move v0, v8

    .line 482
    :goto_2
    return v0

    .line 479
    :cond_1
    const/4 v8, 0x1

    goto :goto_1

    .line 481
    :cond_2
    move v8, v2

    move v9, v3

    if-ne v8, v9, :cond_3

    const/4 v8, 0x0

    move v0, v8

    goto :goto_2

    .line 482
    :cond_3
    move v8, v2

    move v9, v3

    if-ge v8, v9, :cond_4

    const/4 v8, -0x1

    :goto_3
    move v0, v8

    goto :goto_2

    :cond_4
    const/4 v8, 0x1

    goto :goto_3
.end method

.method public final endsWith(Lokio/ByteString;)Z
    .locals 7

    .prologue
    .line 409
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v4

    sub-int/2addr v3, v4

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v1

    invoke-virtual {v6}, Lokio/ByteString;->size()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public final endsWith([B)Z
    .locals 7

    .prologue
    .line 413
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    move-object v4, v1

    array-length v4, v4

    sub-int/2addr v3, v4

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v1

    array-length v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 461
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 462
    :goto_0
    return v0

    :cond_0
    move-object v2, v1

    instance-of v2, v2, Lokio/ByteString;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lokio/ByteString;

    .line 463
    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Lokio/ByteString;->data:[B

    array-length v3, v3

    if-ne v2, v3, :cond_1

    move-object v2, v1

    check-cast v2, Lokio/ByteString;

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Lokio/ByteString;->data:[B

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lokio/ByteString;->data:[B

    array-length v6, v6

    .line 464
    invoke-virtual {v2, v3, v4, v5, v6}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 462
    :goto_1
    move v0, v2

    goto :goto_0

    .line 464
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getByte(I)B
    .locals 4

    .prologue
    .line 340
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokio/ByteString;->data:[B

    move v3, v1

    aget-byte v2, v2, v3

    move v0, v2

    return v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 468
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lokio/ByteString;->hashCode:I

    move v1, v2

    .line 469
    move v2, v1

    if-eqz v2, :cond_0

    move v2, v1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lokio/ByteString;->data:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lokio/ByteString;->hashCode:I

    goto :goto_0
.end method

.method public hex()Ljava/lang/String;
    .locals 13

    .prologue
    .line 209
    move-object v0, p0

    move-object v7, v0

    iget-object v7, v7, Lokio/ByteString;->data:[B

    array-length v7, v7

    const/4 v8, 0x2

    mul-int/lit8 v7, v7, 0x2

    new-array v7, v7, [C

    move-object v1, v7

    .line 210
    const/4 v7, 0x0

    move v2, v7

    .line 211
    move-object v7, v0

    iget-object v7, v7, Lokio/ByteString;->data:[B

    move-object v3, v7

    move-object v7, v3

    array-length v7, v7

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_0

    move-object v7, v3

    move v8, v5

    aget-byte v7, v7, v8

    move v6, v7

    .line 212
    move-object v7, v1

    move v8, v2

    add-int/lit8 v2, v2, 0x1

    sget-object v9, Lokio/ByteString;->HEX_DIGITS:[C

    move v10, v6

    const/4 v11, 0x4

    shr-int/lit8 v10, v10, 0x4

    const/16 v11, 0xf

    and-int/lit8 v10, v10, 0xf

    aget-char v9, v9, v10

    aput-char v9, v7, v8

    .line 213
    move-object v7, v1

    move v8, v2

    add-int/lit8 v2, v2, 0x1

    sget-object v9, Lokio/ByteString;->HEX_DIGITS:[C

    move v10, v6

    const/16 v11, 0xf

    and-int/lit8 v10, v10, 0xf

    aget-char v9, v9, v10

    aput-char v9, v7, v8

    .line 211
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 215
    :cond_0
    new-instance v7, Ljava/lang/String;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    move-object v0, v7

    return-object v0
.end method

.method public hmacSha1(Lokio/ByteString;)Lokio/ByteString;
    .locals 5

    .prologue
    .line 164
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string v3, "HmacSHA1"

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lokio/ByteString;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public hmacSha256(Lokio/ByteString;)Lokio/ByteString;
    .locals 5

    .prologue
    .line 169
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string v3, "HmacSHA256"

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lokio/ByteString;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public hmacSha512(Lokio/ByteString;)Lokio/ByteString;
    .locals 5

    .prologue
    .line 174
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string v3, "HmacSHA512"

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lokio/ByteString;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public final indexOf(Lokio/ByteString;)I
    .locals 5

    .prologue
    .line 417
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lokio/ByteString;->internalArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lokio/ByteString;->indexOf([BI)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public final indexOf(Lokio/ByteString;I)I
    .locals 6

    .prologue
    .line 421
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lokio/ByteString;->internalArray()[B

    move-result-object v4

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lokio/ByteString;->indexOf([BI)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public final indexOf([B)I
    .locals 5

    .prologue
    .line 425
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lokio/ByteString;->indexOf([BI)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public indexOf([BI)I
    .locals 10

    .prologue
    .line 429
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, v2

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v2, v5

    .line 430
    move v5, v2

    move v3, v5

    move-object v5, v0

    iget-object v5, v5, Lokio/ByteString;->data:[B

    array-length v5, v5

    move-object v6, v1

    array-length v6, v6

    sub-int/2addr v5, v6

    move v4, v5

    :goto_0
    move v5, v3

    move v6, v4

    if-gt v5, v6, :cond_1

    .line 431
    move-object v5, v0

    iget-object v5, v5, Lokio/ByteString;->data:[B

    move v6, v3

    move-object v7, v1

    const/4 v8, 0x0

    move-object v9, v1

    array-length v9, v9

    invoke-static {v5, v6, v7, v8, v9}, Lokio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 432
    move v5, v3

    move v0, v5

    .line 435
    :goto_1
    return v0

    .line 430
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 435
    :cond_1
    const/4 v5, -0x1

    move v0, v5

    goto :goto_1
.end method

.method internalArray()[B
    .locals 2

    .prologue
    .line 359
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/ByteString;->data:[B

    move-object v0, v1

    return-object v0
.end method

.method public final lastIndexOf(Lokio/ByteString;)I
    .locals 5

    .prologue
    .line 439
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lokio/ByteString;->internalArray()[B

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public final lastIndexOf(Lokio/ByteString;I)I
    .locals 6

    .prologue
    .line 443
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lokio/ByteString;->internalArray()[B

    move-result-object v4

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public final lastIndexOf([B)I
    .locals 5

    .prologue
    .line 447
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public lastIndexOf([BI)I
    .locals 9

    .prologue
    .line 451
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lokio/ByteString;->data:[B

    array-length v5, v5

    move-object v6, v1

    array-length v6, v6

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v2, v4

    .line 452
    move v4, v2

    move v3, v4

    :goto_0
    move v4, v3

    if-ltz v4, :cond_1

    .line 453
    move-object v4, v0

    iget-object v4, v4, Lokio/ByteString;->data:[B

    move v5, v3

    move-object v6, v1

    const/4 v7, 0x0

    move-object v8, v1

    array-length v8, v8

    invoke-static {v4, v5, v6, v7, v8}, Lokio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 454
    move v4, v3

    move v0, v4

    .line 457
    :goto_1
    return v0

    .line 452
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 457
    :cond_1
    const/4 v4, -0x1

    move v0, v4

    goto :goto_1
.end method

.method public md5()Lokio/ByteString;
    .locals 3

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, v0

    const-string v2, "MD5"

    invoke-direct {v1, v2}, Lokio/ByteString;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public rangeEquals(ILokio/ByteString;II)Z
    .locals 10

    .prologue
    .line 386
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v2

    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Lokio/ByteString;->data:[B

    move v8, v1

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v5

    move v0, v5

    return v0
.end method

.method public rangeEquals(I[BII)Z
    .locals 10

    .prologue
    .line 395
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, v1

    if-ltz v5, :cond_0

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lokio/ByteString;->data:[B

    array-length v6, v6

    move v7, v4

    sub-int/2addr v6, v7

    if-gt v5, v6, :cond_0

    move v5, v3

    if-ltz v5, :cond_0

    move v5, v3

    move-object v6, v2

    array-length v6, v6

    move v7, v4

    sub-int/2addr v6, v7

    if-gt v5, v6, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lokio/ByteString;->data:[B

    move v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    .line 397
    invoke-static {v5, v6, v7, v8, v9}, Lokio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    .line 395
    :goto_0
    move v0, v5

    return v0

    .line 397
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public sha1()Lokio/ByteString;
    .locals 3

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, v0

    const-string v2, "SHA-1"

    invoke-direct {v1, v2}, Lokio/ByteString;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public sha256()Lokio/ByteString;
    .locals 3

    .prologue
    .line 146
    move-object v0, p0

    move-object v1, v0

    const-string v2, "SHA-256"

    invoke-direct {v1, v2}, Lokio/ByteString;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public sha512()Lokio/ByteString;
    .locals 3

    .prologue
    .line 151
    move-object v0, p0

    move-object v1, v0

    const-string v2, "SHA-512"

    invoke-direct {v1, v2}, Lokio/ByteString;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 347
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/ByteString;->data:[B

    array-length v1, v1

    move v0, v1

    return v0
.end method

.method public final startsWith(Lokio/ByteString;)Z
    .locals 7

    .prologue
    .line 401
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v1

    invoke-virtual {v6}, Lokio/ByteString;->size()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public final startsWith([B)Z
    .locals 7

    .prologue
    .line 405
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v1

    array-length v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public string(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 121
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "charset == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    :cond_0
    new-instance v2, Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Lokio/ByteString;->data:[B

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v2

    return-object v0
.end method

.method public substring(I)Lokio/ByteString;
    .locals 5

    .prologue
    .line 312
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lokio/ByteString;->data:[B

    array-length v4, v4

    invoke-virtual {v2, v3, v4}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public substring(II)Lokio/ByteString;
    .locals 11

    .prologue
    .line 321
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v1

    if-gez v5, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "beginIndex < 0"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 322
    :cond_0
    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lokio/ByteString;->data:[B

    array-length v6, v6

    if-le v5, v6, :cond_1

    .line 323
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "endIndex > length("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lokio/ByteString;->data:[B

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 326
    :cond_1
    move v5, v2

    move v6, v1

    sub-int/2addr v5, v6

    move v3, v5

    .line 327
    move v5, v3

    if-gez v5, :cond_2

    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "endIndex < beginIndex"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 329
    :cond_2
    move v5, v1

    if-nez v5, :cond_3

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lokio/ByteString;->data:[B

    array-length v6, v6

    if-ne v5, v6, :cond_3

    .line 330
    move-object v5, v0

    move-object v0, v5

    .line 335
    :goto_0
    return-object v0

    .line 333
    :cond_3
    move v5, v3

    new-array v5, v5, [B

    move-object v4, v5

    .line 334
    move-object v5, v0

    iget-object v5, v5, Lokio/ByteString;->data:[B

    move v6, v1

    move-object v7, v4

    const/4 v8, 0x0

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    new-instance v5, Lokio/ByteString;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v4

    invoke-direct {v6, v7}, Lokio/ByteString;-><init>([B)V

    move-object v0, v5

    goto :goto_0
.end method

.method public toAsciiLowercase()Lokio/ByteString;
    .locals 9

    .prologue
    .line 264
    move-object v0, p0

    const/4 v4, 0x0

    move v1, v4

    :goto_0
    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lokio/ByteString;->data:[B

    array-length v5, v5

    if-ge v4, v5, :cond_5

    .line 265
    move-object v4, v0

    iget-object v4, v4, Lokio/ByteString;->data:[B

    move v5, v1

    aget-byte v4, v4, v5

    move v2, v4

    .line 266
    move v4, v2

    const/16 v5, 0x41

    if-lt v4, v5, :cond_0

    move v4, v2

    const/16 v5, 0x5a

    if-le v4, v5, :cond_1

    .line 264
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lokio/ByteString;->data:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v3, v4

    .line 271
    move-object v4, v3

    move v5, v1

    add-int/lit8 v1, v1, 0x1

    move v6, v2

    const/16 v7, -0x20

    add-int/lit8 v6, v6, 0x20

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 272
    :goto_1
    move v4, v1

    move-object v5, v3

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 273
    move-object v4, v3

    move v5, v1

    aget-byte v4, v4, v5

    move v2, v4

    .line 274
    move v4, v2

    const/16 v5, 0x41

    if-lt v4, v5, :cond_2

    move v4, v2

    const/16 v5, 0x5a

    if-le v4, v5, :cond_3

    .line 272
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 275
    :cond_3
    move-object v4, v3

    move v5, v1

    move v6, v2

    const/16 v7, -0x20

    add-int/lit8 v6, v6, 0x20

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_2

    .line 277
    :cond_4
    new-instance v4, Lokio/ByteString;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    invoke-direct {v5, v6}, Lokio/ByteString;-><init>([B)V

    move-object v0, v4

    .line 279
    :goto_3
    return-object v0

    :cond_5
    move-object v4, v0

    move-object v0, v4

    goto :goto_3
.end method

.method public toAsciiUppercase()Lokio/ByteString;
    .locals 9

    .prologue
    .line 289
    move-object v0, p0

    const/4 v4, 0x0

    move v1, v4

    :goto_0
    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lokio/ByteString;->data:[B

    array-length v5, v5

    if-ge v4, v5, :cond_5

    .line 290
    move-object v4, v0

    iget-object v4, v4, Lokio/ByteString;->data:[B

    move v5, v1

    aget-byte v4, v4, v5

    move v2, v4

    .line 291
    move v4, v2

    const/16 v5, 0x61

    if-lt v4, v5, :cond_0

    move v4, v2

    const/16 v5, 0x7a

    if-le v4, v5, :cond_1

    .line 289
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lokio/ByteString;->data:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v3, v4

    .line 296
    move-object v4, v3

    move v5, v1

    add-int/lit8 v1, v1, 0x1

    move v6, v2

    const/16 v7, 0x20

    add-int/lit8 v6, v6, -0x20

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 297
    :goto_1
    move v4, v1

    move-object v5, v3

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 298
    move-object v4, v3

    move v5, v1

    aget-byte v4, v4, v5

    move v2, v4

    .line 299
    move v4, v2

    const/16 v5, 0x61

    if-lt v4, v5, :cond_2

    move v4, v2

    const/16 v5, 0x7a

    if-le v4, v5, :cond_3

    .line 297
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 300
    :cond_3
    move-object v4, v3

    move v5, v1

    move v6, v2

    const/16 v7, 0x20

    add-int/lit8 v6, v6, -0x20

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_2

    .line 302
    :cond_4
    new-instance v4, Lokio/ByteString;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    invoke-direct {v5, v6}, Lokio/ByteString;-><init>([B)V

    move-object v0, v4

    .line 304
    :goto_3
    return-object v0

    :cond_5
    move-object v4, v0

    move-object v0, v4

    goto :goto_3
.end method

.method public toByteArray()[B
    .locals 2

    .prologue
    .line 354
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/ByteString;->data:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 490
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lokio/ByteString;->data:[B

    array-length v4, v4

    if-nez v4, :cond_0

    .line 491
    const-string v4, "[size=0]"

    move-object v0, v4

    .line 507
    :goto_0
    return-object v0

    .line 494
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 495
    move-object v4, v1

    const/16 v5, 0x40

    invoke-static {v4, v5}, Lokio/ByteString;->codePointIndexToCharIndex(Ljava/lang/String;I)I

    move-result v4

    move v2, v4

    .line 497
    move v4, v2

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 498
    move-object v4, v0

    iget-object v4, v4, Lokio/ByteString;->data:[B

    array-length v4, v4

    const/16 v5, 0x40

    if-gt v4, v5, :cond_1

    .line 499
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[hex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 498
    :goto_1
    move-object v0, v4

    goto :goto_0

    .line 500
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lokio/ByteString;->data:[B

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u2026]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 503
    :cond_2
    move-object v4, v1

    const/4 v5, 0x0

    move v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\"

    const-string v6, "\\\\"

    .line 504
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n"

    const-string v6, "\\n"

    .line 505
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\r"

    const-string v6, "\\r"

    .line 506
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 507
    move v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 508
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lokio/ByteString;->data:[B

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " text="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u2026]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 507
    :goto_2
    move-object v0, v4

    goto/16 :goto_0

    .line 509
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[text="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method public utf8()Ljava/lang/String;
    .locals 9

    .prologue
    .line 114
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lokio/ByteString;->utf8:Ljava/lang/String;

    move-object v1, v2

    .line 116
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    move-object v2, v0

    new-instance v3, Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lokio/ByteString;->data:[B

    sget-object v6, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v7, v2

    move-object v8, v3

    move-object v2, v8

    move-object v3, v7

    move-object v4, v8

    iput-object v4, v3, Lokio/ByteString;->utf8:Ljava/lang/String;

    goto :goto_0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "out == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 372
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lokio/ByteString;->data:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 373
    return-void
.end method

.method write(Lokio/Buffer;)V
    .locals 6

    .prologue
    .line 377
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lokio/ByteString;->data:[B

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lokio/ByteString;->data:[B

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v2

    .line 378
    return-void
.end method
