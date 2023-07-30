.class public Landroidx/collection/LongSparseArray;
.super Ljava/lang/Object;
.source "LongSparseArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[J

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Landroidx/collection/LongSparseArray;-><init>(I)V

    .line 59
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/collection/LongSparseArray;->mGarbage:Z

    .line 69
    move v2, v1

    if-nez v2, :cond_0

    .line 70
    move-object v2, v0

    sget-object v3, Landroidx/collection/ContainerHelpers;->EMPTY_LONGS:[J

    iput-object v3, v2, Landroidx/collection/LongSparseArray;->mKeys:[J

    .line 71
    move-object v2, v0

    sget-object v3, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v3, v2, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 77
    :goto_0
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/collection/LongSparseArray;->mSize:I

    .line 78
    return-void

    .line 73
    :cond_0
    move v2, v1

    invoke-static {v2}, Landroidx/collection/ContainerHelpers;->idealLongArraySize(I)I

    move-result v2

    move v1, v2

    .line 74
    move-object v2, v0

    move v3, v1

    new-array v3, v3, [J

    iput-object v3, v2, Landroidx/collection/LongSparseArray;->mKeys:[J

    .line 75
    move-object v2, v0

    move v3, v1

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v2, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private gc()V
    .locals 11

    .prologue
    .line 158
    move-object v0, p0

    move-object v7, v0

    iget v7, v7, Landroidx/collection/LongSparseArray;->mSize:I

    move v1, v7

    .line 159
    const/4 v7, 0x0

    move v2, v7

    .line 160
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/LongSparseArray;->mKeys:[J

    move-object v3, v7

    .line 161
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    move-object v4, v7

    .line 163
    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v1

    if-ge v7, v8, :cond_2

    .line 164
    move-object v7, v4

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 166
    move-object v7, v6

    sget-object v8, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v7, v8, :cond_1

    .line 167
    move v7, v5

    move v8, v2

    if-eq v7, v8, :cond_0

    .line 168
    move-object v7, v3

    move v8, v2

    move-object v9, v3

    move v10, v5

    aget-wide v9, v9, v10

    aput-wide v9, v7, v8

    .line 169
    move-object v7, v4

    move v8, v2

    move-object v9, v6

    aput-object v9, v7, v8

    .line 170
    move-object v7, v4

    move v8, v5

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 173
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 163
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 177
    :cond_2
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroidx/collection/LongSparseArray;->mGarbage:Z

    .line 178
    move-object v7, v0

    move v8, v2

    iput v8, v7, Landroidx/collection/LongSparseArray;->mSize:I

    .line 181
    return-void
.end method


# virtual methods
.method public append(JLjava/lang/Object;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    .line 369
    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v3, p3

    move-object v8, v0

    iget v8, v8, Landroidx/collection/LongSparseArray;->mSize:I

    if-eqz v8, :cond_0

    move-wide v8, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/collection/LongSparseArray;->mKeys:[J

    move-object v11, v0

    iget v11, v11, Landroidx/collection/LongSparseArray;->mSize:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    aget-wide v10, v10, v11

    cmp-long v8, v8, v10

    if-gtz v8, :cond_0

    .line 370
    move-object v8, v0

    move-wide v9, v1

    move-object v11, v3

    invoke-virtual {v8, v9, v10, v11}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 396
    :goto_0
    return-void

    .line 374
    :cond_0
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v8, :cond_1

    move-object v8, v0

    iget v8, v8, Landroidx/collection/LongSparseArray;->mSize:I

    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/LongSparseArray;->mKeys:[J

    array-length v9, v9

    if-lt v8, v9, :cond_1

    .line 375
    move-object v8, v0

    invoke-direct {v8}, Landroidx/collection/LongSparseArray;->gc()V

    .line 378
    :cond_1
    move-object v8, v0

    iget v8, v8, Landroidx/collection/LongSparseArray;->mSize:I

    move v4, v8

    .line 379
    move v8, v4

    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/LongSparseArray;->mKeys:[J

    array-length v9, v9

    if-lt v8, v9, :cond_2

    .line 380
    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Landroidx/collection/ContainerHelpers;->idealLongArraySize(I)I

    move-result v8

    move v5, v8

    .line 382
    move v8, v5

    new-array v8, v8, [J

    move-object v6, v8

    .line 383
    move v8, v5

    new-array v8, v8, [Ljava/lang/Object;

    move-object v7, v8

    .line 386
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/LongSparseArray;->mKeys:[J

    const/4 v9, 0x0

    move-object v10, v6

    const/4 v11, 0x0

    move-object v12, v0

    iget-object v12, v12, Landroidx/collection/LongSparseArray;->mKeys:[J

    array-length v12, v12

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    const/4 v9, 0x0

    move-object v10, v7

    const/4 v11, 0x0

    move-object v12, v0

    iget-object v12, v12, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v12, v12

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    move-object v8, v0

    move-object v9, v6

    iput-object v9, v8, Landroidx/collection/LongSparseArray;->mKeys:[J

    .line 390
    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 393
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/LongSparseArray;->mKeys:[J

    move v9, v4

    move-wide v10, v1

    aput-wide v10, v8, v9

    .line 394
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v9, v4

    move-object v10, v3

    aput-object v10, v8, v9

    .line 395
    move-object v8, v0

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroidx/collection/LongSparseArray;->mSize:I

    .line 396
    goto :goto_0
.end method

.method public clear()V
    .locals 7

    .prologue
    .line 353
    move-object v0, p0

    move-object v4, v0

    iget v4, v4, Landroidx/collection/LongSparseArray;->mSize:I

    move v1, v4

    .line 354
    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    move-object v2, v4

    .line 356
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_0

    .line 357
    move-object v4, v2

    move v5, v3

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 356
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 360
    :cond_0
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/collection/LongSparseArray;->mSize:I

    .line 361
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/collection/LongSparseArray;->mGarbage:Z

    .line 362
    return-void
.end method

.method public clone()Landroidx/collection/LongSparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/LongSparseArray",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    move-object v3, v0

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/collection/LongSparseArray;

    move-object v1, v3

    .line 86
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/LongSparseArray;->mKeys:[J

    invoke-virtual {v4}, [J->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    iput-object v4, v3, Landroidx/collection/LongSparseArray;->mKeys:[J

    .line 87
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    invoke-virtual {v4}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    iput-object v4, v3, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    move-object v3, v1

    move-object v0, v3

    return-object v0

    .line 88
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 89
    new-instance v3, Ljava/lang/AssertionError;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->clone()Landroidx/collection/LongSparseArray;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public containsKey(J)Z
    .locals 6

    .prologue
    .line 341
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v3

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 346
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/LongSparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public delete(J)V
    .locals 8

    .prologue
    .line 128
    move-object v0, p0

    move-wide v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/LongSparseArray;->mKeys:[J

    move-object v5, v0

    iget v5, v5, Landroidx/collection/LongSparseArray;->mSize:I

    move-wide v6, v1

    invoke-static {v4, v5, v6, v7}, Landroidx/collection/ContainerHelpers;->binarySearch([JIJ)I

    move-result v4

    move v3, v4

    .line 130
    move v4, v3

    if-ltz v4, :cond_0

    .line 131
    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v5, v3

    aget-object v4, v4, v5

    sget-object v5, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v4, v5, :cond_0

    .line 132
    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v5, v3

    sget-object v6, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v6, v4, v5

    .line 133
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/collection/LongSparseArray;->mGarbage:Z

    .line 136
    :cond_0
    return-void
.end method

.method public get(J)Ljava/lang/Object;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .prologue
    .line 115
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/LongSparseArray;->mKeys:[J

    move-object v6, v0

    iget v6, v6, Landroidx/collection/LongSparseArray;->mSize:I

    move-wide v7, v1

    invoke-static {v5, v6, v7, v8}, Landroidx/collection/ContainerHelpers;->binarySearch([JIJ)I

    move-result v5

    move v4, v5

    .line 117
    move v5, v4

    if-ltz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v6, v4

    aget-object v5, v5, v6

    sget-object v6, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v5, v6, :cond_1

    .line 118
    :cond_0
    move-object v5, v3

    move-object v0, v5

    .line 120
    :goto_0
    return-object v0

    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v6, v4

    aget-object v5, v5, v6

    move-object v0, v5

    goto :goto_0
.end method

.method public indexOfKey(J)I
    .locals 7

    .prologue
    .line 312
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v3, :cond_0

    .line 313
    move-object v3, v0

    invoke-direct {v3}, Landroidx/collection/LongSparseArray;->gc()V

    .line 316
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/LongSparseArray;->mKeys:[J

    move-object v4, v0

    iget v4, v4, Landroidx/collection/LongSparseArray;->mSize:I

    move-wide v5, v1

    invoke-static {v3, v4, v5, v6}, Landroidx/collection/ContainerHelpers;->binarySearch([JIJ)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 328
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v3, :cond_0

    .line 329
    move-object v3, v0

    invoke-direct {v3}, Landroidx/collection/LongSparseArray;->gc()V

    .line 332
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/collection/LongSparseArray;->mSize:I

    if-ge v3, v4, :cond_2

    .line 333
    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    if-ne v3, v4, :cond_1

    .line 334
    move v3, v2

    move v0, v3

    .line 336
    :goto_1
    return v0

    .line 332
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 336
    :cond_2
    const/4 v3, -0x1

    move v0, v3

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 263
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyAt(I)J
    .locals 4

    .prologue
    .line 272
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v2, :cond_0

    .line 273
    move-object v2, v0

    invoke-direct {v2}, Landroidx/collection/LongSparseArray;->gc()V

    .line 276
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/LongSparseArray;->mKeys:[J

    move v3, v1

    aget-wide v2, v2, v3

    move-wide v0, v2

    return-wide v0
.end method

.method public put(JLjava/lang/Object;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    .line 189
    move-object v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/LongSparseArray;->mKeys:[J

    move-object v9, v0

    iget v9, v9, Landroidx/collection/LongSparseArray;->mSize:I

    move-wide v10, v1

    invoke-static {v8, v9, v10, v11}, Landroidx/collection/ContainerHelpers;->binarySearch([JIJ)I

    move-result v8

    move v4, v8

    .line 191
    move v8, v4

    if-ltz v8, :cond_0

    .line 192
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v9, v4

    move-object v10, v3

    aput-object v10, v8, v9

    .line 233
    :goto_0
    return-void

    .line 194
    :cond_0
    move v8, v4

    const/4 v9, -0x1

    xor-int/lit8 v8, v8, -0x1

    move v4, v8

    .line 196
    move v8, v4

    move-object v9, v0

    iget v9, v9, Landroidx/collection/LongSparseArray;->mSize:I

    if-ge v8, v9, :cond_1

    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v9, v4

    aget-object v8, v8, v9

    sget-object v9, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v8, v9, :cond_1

    .line 197
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/LongSparseArray;->mKeys:[J

    move v9, v4

    move-wide v10, v1

    aput-wide v10, v8, v9

    .line 198
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v9, v4

    move-object v10, v3

    aput-object v10, v8, v9

    .line 199
    goto :goto_0

    .line 202
    :cond_1
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v8, :cond_2

    move-object v8, v0

    iget v8, v8, Landroidx/collection/LongSparseArray;->mSize:I

    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/LongSparseArray;->mKeys:[J

    array-length v9, v9

    if-lt v8, v9, :cond_2

    .line 203
    move-object v8, v0

    invoke-direct {v8}, Landroidx/collection/LongSparseArray;->gc()V

    .line 206
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/LongSparseArray;->mKeys:[J

    move-object v9, v0

    iget v9, v9, Landroidx/collection/LongSparseArray;->mSize:I

    move-wide v10, v1

    invoke-static {v8, v9, v10, v11}, Landroidx/collection/ContainerHelpers;->binarySearch([JIJ)I

    move-result v8

    const/4 v9, -0x1

    xor-int/lit8 v8, v8, -0x1

    move v4, v8

    .line 209
    :cond_2
    move-object v8, v0

    iget v8, v8, Landroidx/collection/LongSparseArray;->mSize:I

    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/LongSparseArray;->mKeys:[J

    array-length v9, v9

    if-lt v8, v9, :cond_3

    .line 210
    move-object v8, v0

    iget v8, v8, Landroidx/collection/LongSparseArray;->mSize:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Landroidx/collection/ContainerHelpers;->idealLongArraySize(I)I

    move-result v8

    move v5, v8

    .line 212
    move v8, v5

    new-array v8, v8, [J

    move-object v6, v8

    .line 213
    move v8, v5

    new-array v8, v8, [Ljava/lang/Object;

    move-object v7, v8

    .line 216
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/LongSparseArray;->mKeys:[J

    const/4 v9, 0x0

    move-object v10, v6

    const/4 v11, 0x0

    move-object v12, v0

    iget-object v12, v12, Landroidx/collection/LongSparseArray;->mKeys:[J

    array-length v12, v12

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    const/4 v9, 0x0

    move-object v10, v7

    const/4 v11, 0x0

    move-object v12, v0

    iget-object v12, v12, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v12, v12

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    move-object v8, v0

    move-object v9, v6

    iput-object v9, v8, Landroidx/collection/LongSparseArray;->mKeys:[J

    .line 220
    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 223
    :cond_3
    move-object v8, v0

    iget v8, v8, Landroidx/collection/LongSparseArray;->mSize:I

    move v9, v4

    sub-int/2addr v8, v9

    if-eqz v8, :cond_4

    .line 225
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/LongSparseArray;->mKeys:[J

    move v9, v4

    move-object v10, v0

    iget-object v10, v10, Landroidx/collection/LongSparseArray;->mKeys:[J

    move v11, v4

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move-object v12, v0

    iget v12, v12, Landroidx/collection/LongSparseArray;->mSize:I

    move v13, v4

    sub-int/2addr v12, v13

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v9, v4

    move-object v10, v0

    iget-object v10, v10, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v11, v4

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move-object v12, v0

    iget v12, v12, Landroidx/collection/LongSparseArray;->mSize:I

    move v13, v4

    sub-int/2addr v12, v13

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/LongSparseArray;->mKeys:[J

    move v9, v4

    move-wide v10, v1

    aput-wide v10, v8, v9

    .line 230
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v9, v4

    move-object v10, v3

    aput-object v10, v8, v9

    .line 231
    move-object v8, v0

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    iget v9, v9, Landroidx/collection/LongSparseArray;->mSize:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroidx/collection/LongSparseArray;->mSize:I

    goto/16 :goto_0
.end method

.method public putAll(Landroidx/collection/LongSparseArray;)V
    .locals 9
    .param p1    # Landroidx/collection/LongSparseArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 241
    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move v2, v4

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/collection/LongSparseArray;->size()I

    move-result v4

    move v3, v4

    :goto_0
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_0

    .line 242
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    move-object v7, v1

    move v8, v2

    invoke-virtual {v7, v8}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    :cond_0
    return-void
.end method

.method public remove(J)V
    .locals 6

    .prologue
    .line 142
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Landroidx/collection/LongSparseArray;->delete(J)V

    .line 143
    return-void
.end method

.method public removeAt(I)V
    .locals 5

    .prologue
    .line 149
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v3, v1

    aget-object v2, v2, v3

    sget-object v3, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    .line 150
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v3, v1

    sget-object v4, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v4, v2, v3

    .line 151
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/collection/LongSparseArray;->mGarbage:Z

    .line 153
    :cond_0
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 299
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v3, :cond_0

    .line 300
    move-object v3, v0

    invoke-direct {v3}, Landroidx/collection/LongSparseArray;->gc()V

    .line 303
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v4, v1

    move-object v5, v2

    aput-object v5, v3, v4

    .line 304
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 251
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v1, :cond_0

    .line 252
    move-object v1, v0

    invoke-direct {v1}, Landroidx/collection/LongSparseArray;->gc()V

    .line 255
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/collection/LongSparseArray;->mSize:I

    move v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 407
    move-object v0, p0

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->size()I

    move-result v6

    if-gtz v6, :cond_0

    .line 408
    const-string v6, "{}"

    move-object v0, v6

    .line 428
    :goto_0
    return-object v0

    .line 411
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    iget v8, v8, Landroidx/collection/LongSparseArray;->mSize:I

    const/16 v9, 0x1c

    mul-int/lit8 v8, v8, 0x1c

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v6

    .line 412
    move-object v6, v1

    const/16 v7, 0x7b

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 413
    const/4 v6, 0x0

    move v2, v6

    :goto_1
    move v6, v2

    move-object v7, v0

    iget v7, v7, Landroidx/collection/LongSparseArray;->mSize:I

    if-ge v6, v7, :cond_3

    .line 414
    move v6, v2

    if-lez v6, :cond_1

    .line 415
    move-object v6, v1

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 417
    :cond_1
    move-object v6, v0

    move v7, v2

    invoke-virtual {v6, v7}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    move-wide v3, v6

    .line 418
    move-object v6, v1

    move-wide v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 419
    move-object v6, v1

    const/16 v7, 0x3d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 420
    move-object v6, v0

    move v7, v2

    invoke-virtual {v6, v7}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 421
    move-object v6, v5

    move-object v7, v0

    if-eq v6, v7, :cond_2

    .line 422
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 413
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 424
    :cond_2
    move-object v6, v1

    const-string v7, "(this Map)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_2

    .line 427
    :cond_3
    move-object v6, v1

    const/16 v7, 0x7d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 428
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 286
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v2, :cond_0

    .line 287
    move-object v2, v0

    invoke-direct {v2}, Landroidx/collection/LongSparseArray;->gc()V

    .line 290
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    return-object v0
.end method
