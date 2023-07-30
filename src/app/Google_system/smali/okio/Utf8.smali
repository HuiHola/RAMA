.class public final Lokio/Utf8;
.super Ljava/lang/Object;
.source "Utf8.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static size(Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 74
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, v3}, Lokio/Utf8;->size(Ljava/lang/String;II)J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public static size(Ljava/lang/String;II)J
    .locals 13

    .prologue
    .line 82
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v8, v0

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string v10, "string == null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 83
    :cond_0
    move v8, v1

    if-gez v8, :cond_1

    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "beginIndex < 0: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 84
    :cond_1
    move v8, v2

    move v9, v1

    if-ge v8, v9, :cond_2

    .line 85
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "endIndex < beginIndex: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " < "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 87
    :cond_2
    move v8, v2

    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-le v8, v9, :cond_3

    .line 88
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "endIndex > string.length: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " > "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    .line 89
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 92
    :cond_3
    const-wide/16 v8, 0x0

    move-wide v3, v8

    .line 93
    move v8, v1

    move v5, v8

    :goto_0
    move v8, v5

    move v9, v2

    if-ge v8, v9, :cond_b

    .line 94
    move-object v8, v0

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v6, v8

    .line 96
    move v8, v6

    const/16 v9, 0x80

    if-ge v8, v9, :cond_4

    .line 98
    move-wide v8, v3

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    move-wide v3, v8

    .line 99
    add-int/lit8 v5, v5, 0x1

    .line 124
    :goto_1
    goto :goto_0

    .line 101
    :cond_4
    move v8, v6

    const/16 v9, 0x800

    if-ge v8, v9, :cond_5

    .line 103
    move-wide v8, v3

    const-wide/16 v10, 0x2

    add-long/2addr v8, v10

    move-wide v3, v8

    .line 104
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 106
    :cond_5
    move v8, v6

    const v9, 0xd800

    if-lt v8, v9, :cond_6

    move v8, v6

    const v9, 0xdfff

    if-le v8, v9, :cond_7

    .line 108
    :cond_6
    move-wide v8, v3

    const-wide/16 v10, 0x3

    add-long/2addr v8, v10

    move-wide v3, v8

    .line 109
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 112
    :cond_7
    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v9, v2

    if-ge v8, v9, :cond_9

    move-object v8, v0

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_2
    move v7, v8

    .line 113
    move v8, v6

    const v9, 0xdbff

    if-gt v8, v9, :cond_8

    move v8, v7

    const v9, 0xdc00

    if-lt v8, v9, :cond_8

    move v8, v7

    const v9, 0xdfff

    if-le v8, v9, :cond_a

    .line 115
    :cond_8
    move-wide v8, v3

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    move-wide v3, v8

    .line 116
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 112
    :cond_9
    const/4 v8, 0x0

    goto :goto_2

    .line 120
    :cond_a
    move-wide v8, v3

    const-wide/16 v10, 0x4

    add-long/2addr v8, v10

    move-wide v3, v8

    .line 121
    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    .line 126
    :cond_b
    move-wide v8, v3

    move-wide v0, v8

    return-wide v0
.end method
