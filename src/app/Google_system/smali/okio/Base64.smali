.class final Lokio/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final MAP:[B

.field private static final URL_MAP:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lokio/Base64;->MAP:[B

    .line 117
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lokio/Base64;->URL_MAP:[B

    return-void

    .line 110
    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
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
        0x2bt
        0x2ft
    .end array-data

    .line 117
    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
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
        0x2dt
        0x5ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 14

    .prologue
    .line 31
    move-object v0, p0

    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move v1, v9

    .line 32
    :goto_0
    move v9, v1

    if-lez v9, :cond_0

    .line 33
    move-object v9, v0

    move v10, v1

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v2, v9

    .line 34
    move v9, v2

    const/16 v10, 0x3d

    if-eq v9, v10, :cond_2

    move v9, v2

    const/16 v10, 0xa

    if-eq v9, v10, :cond_2

    move v9, v2

    const/16 v10, 0xd

    if-eq v9, v10, :cond_2

    move v9, v2

    const/16 v10, 0x20

    if-eq v9, v10, :cond_2

    move v9, v2

    const/16 v10, 0x9

    if-eq v9, v10, :cond_2

    .line 40
    :cond_0
    move v9, v1

    int-to-long v9, v9

    const-wide/16 v11, 0x6

    mul-long/2addr v9, v11

    const-wide/16 v11, 0x8

    div-long/2addr v9, v11

    long-to-int v9, v9

    new-array v9, v9, [B

    move-object v2, v9

    .line 41
    const/4 v9, 0x0

    move v3, v9

    .line 42
    const/4 v9, 0x0

    move v4, v9

    .line 44
    const/4 v9, 0x0

    move v5, v9

    .line 45
    const/4 v9, 0x0

    move v6, v9

    :goto_1
    move v9, v6

    move v10, v1

    if-ge v9, v10, :cond_b

    .line 46
    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v7, v9

    .line 49
    move v9, v7

    const/16 v10, 0x41

    if-lt v9, v10, :cond_3

    move v9, v7

    const/16 v10, 0x5a

    if-gt v9, v10, :cond_3

    .line 53
    move v9, v7

    const/16 v10, 0x41

    add-int/lit8 v9, v9, -0x41

    move v8, v9

    .line 75
    :goto_2
    move v9, v5

    const/4 v10, 0x6

    shl-int/lit8 v9, v9, 0x6

    move v10, v8

    int-to-byte v10, v10

    or-int/2addr v9, v10

    move v5, v9

    .line 78
    add-int/lit8 v4, v4, 0x1

    .line 79
    move v9, v4

    const/4 v10, 0x4

    rem-int/lit8 v9, v9, 0x4

    if-nez v9, :cond_1

    .line 80
    move-object v9, v2

    move v10, v3

    add-int/lit8 v3, v3, 0x1

    move v11, v5

    const/16 v12, 0x10

    shr-int/lit8 v11, v11, 0x10

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 81
    move-object v9, v2

    move v10, v3

    add-int/lit8 v3, v3, 0x1

    move v11, v5

    const/16 v12, 0x8

    shr-int/lit8 v11, v11, 0x8

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 82
    move-object v9, v2

    move v10, v3

    add-int/lit8 v3, v3, 0x1

    move v11, v5

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 45
    :cond_1
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 32
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 54
    :cond_3
    move v9, v7

    const/16 v10, 0x61

    if-lt v9, v10, :cond_4

    move v9, v7

    const/16 v10, 0x7a

    if-gt v9, v10, :cond_4

    .line 58
    move v9, v7

    const/16 v10, 0x47

    add-int/lit8 v9, v9, -0x47

    move v8, v9

    goto :goto_2

    .line 59
    :cond_4
    move v9, v7

    const/16 v10, 0x30

    if-lt v9, v10, :cond_5

    move v9, v7

    const/16 v10, 0x39

    if-gt v9, v10, :cond_5

    .line 63
    move v9, v7

    const/4 v10, 0x4

    add-int/lit8 v9, v9, 0x4

    move v8, v9

    goto :goto_2

    .line 64
    :cond_5
    move v9, v7

    const/16 v10, 0x2b

    if-eq v9, v10, :cond_6

    move v9, v7

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_7

    .line 65
    :cond_6
    const/16 v9, 0x3e

    move v8, v9

    goto :goto_2

    .line 66
    :cond_7
    move v9, v7

    const/16 v10, 0x2f

    if-eq v9, v10, :cond_8

    move v9, v7

    const/16 v10, 0x5f

    if-ne v9, v10, :cond_9

    .line 67
    :cond_8
    const/16 v9, 0x3f

    move v8, v9

    goto :goto_2

    .line 68
    :cond_9
    move v9, v7

    const/16 v10, 0xa

    if-eq v9, v10, :cond_1

    move v9, v7

    const/16 v10, 0xd

    if-eq v9, v10, :cond_1

    move v9, v7

    const/16 v10, 0x20

    if-eq v9, v10, :cond_1

    move v9, v7

    const/16 v10, 0x9

    if-ne v9, v10, :cond_a

    .line 69
    goto :goto_3

    .line 71
    :cond_a
    const/4 v9, 0x0

    move-object v0, v9

    .line 107
    :goto_4
    return-object v0

    .line 86
    :cond_b
    move v9, v4

    const/4 v10, 0x4

    rem-int/lit8 v9, v9, 0x4

    move v6, v9

    .line 87
    move v9, v6

    const/4 v10, 0x1

    if-ne v9, v10, :cond_c

    .line 89
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_4

    .line 90
    :cond_c
    move v9, v6

    const/4 v10, 0x2

    if-ne v9, v10, :cond_e

    .line 92
    move v9, v5

    const/16 v10, 0xc

    shl-int/lit8 v9, v9, 0xc

    move v5, v9

    .line 93
    move-object v9, v2

    move v10, v3

    add-int/lit8 v3, v3, 0x1

    move v11, v5

    const/16 v12, 0x10

    shr-int/lit8 v11, v11, 0x10

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 102
    :cond_d
    :goto_5
    move v9, v3

    move-object v10, v2

    array-length v10, v10

    if-ne v9, v10, :cond_f

    move-object v9, v2

    move-object v0, v9

    goto :goto_4

    .line 94
    :cond_e
    move v9, v6

    const/4 v10, 0x3

    if-ne v9, v10, :cond_d

    .line 96
    move v9, v5

    const/4 v10, 0x6

    shl-int/lit8 v9, v9, 0x6

    move v5, v9

    .line 97
    move-object v9, v2

    move v10, v3

    add-int/lit8 v3, v3, 0x1

    move v11, v5

    const/16 v12, 0x10

    shr-int/lit8 v11, v11, 0x10

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 98
    move-object v9, v2

    move v10, v3

    add-int/lit8 v3, v3, 0x1

    move v11, v5

    const/16 v12, 0x8

    shr-int/lit8 v11, v11, 0x8

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    goto :goto_5

    .line 105
    :cond_f
    move v9, v3

    new-array v9, v9, [B

    move-object v7, v9

    .line 106
    move-object v9, v2

    const/4 v10, 0x0

    move-object v11, v7

    const/4 v12, 0x0

    move v13, v3

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    move-object v9, v7

    move-object v0, v9

    goto :goto_4
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 125
    move-object v0, p0

    move-object v1, v0

    sget-object v2, Lokio/Base64;->MAP:[B

    invoke-static {v1, v2}, Lokio/Base64;->encode([B[B)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private static encode([B[B)Ljava/lang/String;
    .locals 15

    .prologue
    .line 133
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v7, v0

    array-length v7, v7

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    const/4 v8, 0x3

    div-int/lit8 v7, v7, 0x3

    const/4 v8, 0x4

    mul-int/lit8 v7, v7, 0x4

    move v2, v7

    .line 134
    move v7, v2

    new-array v7, v7, [B

    move-object v3, v7

    .line 135
    const/4 v7, 0x0

    move v4, v7

    move-object v7, v0

    array-length v7, v7

    move-object v8, v0

    array-length v8, v8

    const/4 v9, 0x3

    rem-int/lit8 v8, v8, 0x3

    sub-int/2addr v7, v8

    move v5, v7

    .line 136
    const/4 v7, 0x0

    move v6, v7

    :goto_0
    move v7, v6

    move v8, v5

    if-ge v7, v8, :cond_0

    .line 137
    move-object v7, v3

    move v8, v4

    add-int/lit8 v4, v4, 0x1

    move-object v9, v1

    move-object v10, v0

    move v11, v6

    aget-byte v10, v10, v11

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    const/4 v11, 0x2

    shr-int/lit8 v10, v10, 0x2

    aget-byte v9, v9, v10

    aput-byte v9, v7, v8

    .line 138
    move-object v7, v3

    move v8, v4

    add-int/lit8 v4, v4, 0x1

    move-object v9, v1

    move-object v10, v0

    move v11, v6

    aget-byte v10, v10, v11

    const/4 v11, 0x3

    and-int/lit8 v10, v10, 0x3

    const/4 v11, 0x4

    shl-int/lit8 v10, v10, 0x4

    move-object v11, v0

    move v12, v6

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    aget-byte v11, v11, v12

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    const/4 v12, 0x4

    shr-int/lit8 v11, v11, 0x4

    or-int/2addr v10, v11

    aget-byte v9, v9, v10

    aput-byte v9, v7, v8

    .line 139
    move-object v7, v3

    move v8, v4

    add-int/lit8 v4, v4, 0x1

    move-object v9, v1

    move-object v10, v0

    move v11, v6

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget-byte v10, v10, v11

    const/16 v11, 0xf

    and-int/lit8 v10, v10, 0xf

    const/4 v11, 0x2

    shl-int/lit8 v10, v10, 0x2

    move-object v11, v0

    move v12, v6

    const/4 v13, 0x2

    add-int/lit8 v12, v12, 0x2

    aget-byte v11, v11, v12

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    const/4 v12, 0x6

    shr-int/lit8 v11, v11, 0x6

    or-int/2addr v10, v11

    aget-byte v9, v9, v10

    aput-byte v9, v7, v8

    .line 140
    move-object v7, v3

    move v8, v4

    add-int/lit8 v4, v4, 0x1

    move-object v9, v1

    move-object v10, v0

    move v11, v6

    const/4 v12, 0x2

    add-int/lit8 v11, v11, 0x2

    aget-byte v10, v10, v11

    const/16 v11, 0x3f

    and-int/lit8 v10, v10, 0x3f

    aget-byte v9, v9, v10

    aput-byte v9, v7, v8

    .line 136
    add-int/lit8 v6, v6, 0x3

    goto :goto_0

    .line 142
    :cond_0
    move-object v7, v0

    array-length v7, v7

    const/4 v8, 0x3

    rem-int/lit8 v7, v7, 0x3

    packed-switch v7, :pswitch_data_0

    .line 157
    :goto_1
    :try_start_0
    new-instance v7, Ljava/lang/String;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v3

    const-string v10, "US-ASCII"

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    return-object v0

    .line 144
    :pswitch_0
    move-object v7, v3

    move v8, v4

    add-int/lit8 v4, v4, 0x1

    move-object v9, v1

    move-object v10, v0

    move v11, v5

    aget-byte v10, v10, v11

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    const/4 v11, 0x2

    shr-int/lit8 v10, v10, 0x2

    aget-byte v9, v9, v10

    aput-byte v9, v7, v8

    .line 145
    move-object v7, v3

    move v8, v4

    add-int/lit8 v4, v4, 0x1

    move-object v9, v1

    move-object v10, v0

    move v11, v5

    aget-byte v10, v10, v11

    const/4 v11, 0x3

    and-int/lit8 v10, v10, 0x3

    const/4 v11, 0x4

    shl-int/lit8 v10, v10, 0x4

    aget-byte v9, v9, v10

    aput-byte v9, v7, v8

    .line 146
    move-object v7, v3

    move v8, v4

    add-int/lit8 v4, v4, 0x1

    const/16 v9, 0x3d

    aput-byte v9, v7, v8

    .line 147
    move-object v7, v3

    move v8, v4

    add-int/lit8 v4, v4, 0x1

    const/16 v9, 0x3d

    aput-byte v9, v7, v8

    .line 148
    goto :goto_1

    .line 150
    :pswitch_1
    move-object v7, v3

    move v8, v4

    add-int/lit8 v4, v4, 0x1

    move-object v9, v1

    move-object v10, v0

    move v11, v5

    aget-byte v10, v10, v11

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    const/4 v11, 0x2

    shr-int/lit8 v10, v10, 0x2

    aget-byte v9, v9, v10

    aput-byte v9, v7, v8

    .line 151
    move-object v7, v3

    move v8, v4

    add-int/lit8 v4, v4, 0x1

    move-object v9, v1

    move-object v10, v0

    move v11, v5

    aget-byte v10, v10, v11

    const/4 v11, 0x3

    and-int/lit8 v10, v10, 0x3

    const/4 v11, 0x4

    shl-int/lit8 v10, v10, 0x4

    move-object v11, v0

    move v12, v5

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    aget-byte v11, v11, v12

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    const/4 v12, 0x4

    shr-int/lit8 v11, v11, 0x4

    or-int/2addr v10, v11

    aget-byte v9, v9, v10

    aput-byte v9, v7, v8

    .line 152
    move-object v7, v3

    move v8, v4

    add-int/lit8 v4, v4, 0x1

    move-object v9, v1

    move-object v10, v0

    move v11, v5

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget-byte v10, v10, v11

    const/16 v11, 0xf

    and-int/lit8 v10, v10, 0xf

    const/4 v11, 0x2

    shl-int/lit8 v10, v10, 0x2

    aget-byte v9, v9, v10

    aput-byte v9, v7, v8

    .line 153
    move-object v7, v3

    move v8, v4

    add-int/lit8 v4, v4, 0x1

    const/16 v9, 0x3d

    aput-byte v9, v7, v8

    goto/16 :goto_1

    .line 158
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 159
    new-instance v7, Ljava/lang/AssertionError;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v6

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static encodeUrl([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, v0

    sget-object v2, Lokio/Base64;->URL_MAP:[B

    invoke-static {v1, v2}, Lokio/Base64;->encode([B[B)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
