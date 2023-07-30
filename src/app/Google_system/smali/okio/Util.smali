.class final Lokio/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static arrayRangeEquals([BI[BII)Z
    .locals 10

    .prologue
    .line 75
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_1

    .line 76
    move-object v6, v0

    move v7, v5

    move v8, v1

    add-int/2addr v7, v8

    aget-byte v6, v6, v7

    move-object v7, v2

    move v8, v5

    move v9, v3

    add-int/2addr v8, v9

    aget-byte v7, v7, v8

    if-eq v6, v7, :cond_0

    const/4 v6, 0x0

    move v0, v6

    .line 78
    :goto_1
    return v0

    .line 75
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 78
    :cond_1
    const/4 v6, 0x1

    move v0, v6

    goto :goto_1
.end method

.method public static checkOffsetAndCount(JJJ)V
    .locals 15

    .prologue
    .line 28
    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide v6, v2

    move-wide v8, v4

    or-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    move-wide v6, v2

    move-wide v8, v0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_0

    move-wide v6, v0

    move-wide v8, v2

    sub-long/2addr v6, v8

    move-wide v8, v4

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 29
    :cond_0
    new-instance v6, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    const-string v8, "size=%s offset=%s byteCount=%s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move-wide v12, v0

    .line 30
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x1

    move-wide v12, v2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x2

    move-wide v12, v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 32
    :cond_1
    return-void
.end method

.method public static reverseBytesInt(I)I
    .locals 4

    .prologue
    .line 42
    move v0, p0

    move v1, v0

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    const/16 v2, 0x18

    ushr-int/lit8 v1, v1, 0x18

    move v2, v0

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    const/16 v3, 0x8

    ushr-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    move v2, v0

    const v3, 0xff00

    and-int/2addr v2, v3

    const/16 v3, 0x8

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    move v2, v0

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x18

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public static reverseBytesLong(J)J
    .locals 8

    .prologue
    .line 49
    move-wide v0, p0

    move-wide v2, v0

    const-wide/high16 v4, -0x100000000000000L

    and-long/2addr v2, v4

    const/16 v4, 0x38

    ushr-long/2addr v2, v4

    move-wide v4, v0

    const-wide/high16 v6, 0xff000000000000L

    and-long/2addr v4, v6

    const/16 v6, 0x28

    ushr-long/2addr v4, v6

    or-long/2addr v2, v4

    move-wide v4, v0

    const-wide v6, 0xff0000000000L

    and-long/2addr v4, v6

    const/16 v6, 0x18

    ushr-long/2addr v4, v6

    or-long/2addr v2, v4

    move-wide v4, v0

    const-wide v6, 0xff00000000L

    and-long/2addr v4, v6

    const/16 v6, 0x8

    ushr-long/2addr v4, v6

    or-long/2addr v2, v4

    move-wide v4, v0

    const-wide v6, 0xff000000L

    and-long/2addr v4, v6

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    move-wide v4, v0

    const-wide/32 v6, 0xff0000

    and-long/2addr v4, v6

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    move-wide v4, v0

    const-wide/32 v6, 0xff00

    and-long/2addr v4, v6

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    move-wide v4, v0

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    move-wide v0, v2

    return-wide v0
.end method

.method public static reverseBytesShort(S)S
    .locals 6

    .prologue
    .line 35
    move v0, p0

    move v3, v0

    const v4, 0xffff

    and-int/2addr v3, v4

    move v1, v3

    .line 36
    move v3, v1

    const v4, 0xff00

    and-int/2addr v3, v4

    const/16 v4, 0x8

    ushr-int/lit8 v3, v3, 0x8

    move v4, v1

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    move v2, v3

    .line 38
    move v3, v2

    int-to-short v3, v3

    move v0, v3

    return v0
.end method

.method public static sneakyRethrow(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lokio/Util;->sneakyThrow2(Ljava/lang/Throwable;)V

    .line 66
    return-void
.end method

.method private static sneakyThrow2(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, v0

    throw v1
.end method
