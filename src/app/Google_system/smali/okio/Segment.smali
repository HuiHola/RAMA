.class final Lokio/Segment;
.super Ljava/lang/Object;
.source "Segment.java"


# static fields
.field static final SHARE_MINIMUM:I = 0x400

.field static final SIZE:I = 0x2000


# instance fields
.field final data:[B

.field limit:I

.field next:Lokio/Segment;

.field owner:Z

.field pos:I

.field prev:Lokio/Segment;

.field shared:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 63
    move-object v1, v0

    const/16 v2, 0x2000

    new-array v2, v2, [B

    iput-object v2, v1, Lokio/Segment;->data:[B

    .line 64
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lokio/Segment;->owner:Z

    .line 65
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lokio/Segment;->shared:Z

    .line 66
    return-void
.end method

.method constructor <init>([BIIZZ)V
    .locals 8

    .prologue
    .line 68
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 69
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lokio/Segment;->data:[B

    .line 70
    move-object v6, v0

    move v7, v2

    iput v7, v6, Lokio/Segment;->pos:I

    .line 71
    move-object v6, v0

    move v7, v3

    iput v7, v6, Lokio/Segment;->limit:I

    .line 72
    move-object v6, v0

    move v7, v4

    iput-boolean v7, v6, Lokio/Segment;->shared:Z

    .line 73
    move-object v6, v0

    move v7, v5

    iput-boolean v7, v6, Lokio/Segment;->owner:Z

    .line 74
    return-void
.end method


# virtual methods
.method public final compact()V
    .locals 7

    .prologue
    .line 151
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    move-object v4, v0

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 152
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    iget-boolean v3, v3, Lokio/Segment;->owner:Z

    if-nez v3, :cond_1

    .line 159
    :goto_0
    return-void

    .line 153
    :cond_1
    move-object v3, v0

    iget v3, v3, Lokio/Segment;->limit:I

    move-object v4, v0

    iget v4, v4, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    move v1, v3

    .line 154
    const/16 v3, 0x2000

    move-object v4, v0

    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    iget v4, v4, Lokio/Segment;->limit:I

    rsub-int v3, v4, 0x2000

    move-object v4, v0

    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    iget-boolean v4, v4, Lokio/Segment;->shared:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    :goto_1
    add-int/2addr v3, v4

    move v2, v3

    .line 155
    move v3, v1

    move v4, v2

    if-le v3, v4, :cond_3

    goto :goto_0

    .line 154
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    iget v4, v4, Lokio/Segment;->pos:I

    goto :goto_1

    .line 156
    :cond_3
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    move v5, v1

    invoke-virtual {v3, v4, v5}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    .line 157
    move-object v3, v0

    invoke-virtual {v3}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v3

    .line 158
    move-object v3, v0

    invoke-static {v3}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 159
    goto :goto_0
.end method

.method public final pop()Lokio/Segment;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    move-object v3, v0

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    :goto_0
    move-object v1, v2

    .line 97
    move-object v2, v0

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    move-object v3, v0

    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    iput-object v3, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 98
    move-object v2, v0

    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    move-object v3, v0

    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v3, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 99
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 100
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 101
    move-object v2, v1

    move-object v0, v2

    return-object v0

    .line 96
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final push(Lokio/Segment;)Lokio/Segment;
    .locals 4

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 110
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    iput-object v3, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 111
    move-object v2, v0

    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    move-object v3, v1

    iput-object v3, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 112
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 113
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method final sharedCopy()Lokio/Segment;
    .locals 9

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lokio/Segment;->shared:Z

    .line 83
    new-instance v1, Lokio/Segment;

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    move-object v3, v0

    iget-object v3, v3, Lokio/Segment;->data:[B

    move-object v4, v0

    iget v4, v4, Lokio/Segment;->pos:I

    move-object v5, v0

    iget v5, v5, Lokio/Segment;->limit:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lokio/Segment;-><init>([BIIZZ)V

    move-object v0, v1

    return-object v0
.end method

.method public final split(I)Lokio/Segment;
    .locals 9

    .prologue
    .line 125
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-lez v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lokio/Segment;->limit:I

    move-object v5, v0

    iget v5, v5, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 133
    :cond_1
    move v3, v1

    const/16 v4, 0x400

    if-lt v3, v4, :cond_2

    .line 134
    move-object v3, v0

    invoke-virtual {v3}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v3

    move-object v2, v3

    .line 140
    :goto_0
    move-object v3, v2

    move-object v4, v2

    iget v4, v4, Lokio/Segment;->pos:I

    move v5, v1

    add-int/2addr v4, v5

    iput v4, v3, Lokio/Segment;->limit:I

    .line 141
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lokio/Segment;->pos:I

    move v5, v1

    add-int/2addr v4, v5

    iput v4, v3, Lokio/Segment;->pos:I

    .line 142
    move-object v3, v0

    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v3

    .line 143
    move-object v3, v2

    move-object v0, v3

    return-object v0

    .line 136
    :cond_2
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v3

    move-object v2, v3

    .line 137
    move-object v3, v0

    iget-object v3, v3, Lokio/Segment;->data:[B

    move-object v4, v0

    iget v4, v4, Lokio/Segment;->pos:I

    move-object v5, v2

    iget-object v5, v5, Lokio/Segment;->data:[B

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method final unsharedCopy()Lokio/Segment;
    .locals 9

    .prologue
    .line 88
    move-object v0, p0

    new-instance v1, Lokio/Segment;

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    move-object v3, v0

    iget-object v3, v3, Lokio/Segment;->data:[B

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v4, v0

    iget v4, v4, Lokio/Segment;->pos:I

    move-object v5, v0

    iget v5, v5, Lokio/Segment;->limit:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lokio/Segment;-><init>([BIIZZ)V

    move-object v0, v1

    return-object v0
.end method

.method public final writeTo(Lokio/Segment;I)V
    .locals 10

    .prologue
    .line 163
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    iget-boolean v3, v3, Lokio/Segment;->owner:Z

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 164
    :cond_0
    move-object v3, v1

    iget v3, v3, Lokio/Segment;->limit:I

    move v4, v2

    add-int/2addr v3, v4

    const/16 v4, 0x2000

    if-le v3, v4, :cond_3

    .line 166
    move-object v3, v1

    iget-boolean v3, v3, Lokio/Segment;->shared:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 167
    :cond_1
    move-object v3, v1

    iget v3, v3, Lokio/Segment;->limit:I

    move v4, v2

    add-int/2addr v3, v4

    move-object v4, v1

    iget v4, v4, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    const/16 v4, 0x2000

    if-le v3, v4, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 168
    :cond_2
    move-object v3, v1

    iget-object v3, v3, Lokio/Segment;->data:[B

    move-object v4, v1

    iget v4, v4, Lokio/Segment;->pos:I

    move-object v5, v1

    iget-object v5, v5, Lokio/Segment;->data:[B

    const/4 v6, 0x0

    move-object v7, v1

    iget v7, v7, Lokio/Segment;->limit:I

    move-object v8, v1

    iget v8, v8, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    move-object v3, v1

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lokio/Segment;->limit:I

    move-object v5, v1

    iget v5, v5, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    iput v4, v3, Lokio/Segment;->limit:I

    .line 170
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lokio/Segment;->pos:I

    .line 173
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lokio/Segment;->data:[B

    move-object v4, v0

    iget v4, v4, Lokio/Segment;->pos:I

    move-object v5, v1

    iget-object v5, v5, Lokio/Segment;->data:[B

    move-object v6, v1

    iget v6, v6, Lokio/Segment;->limit:I

    move v7, v2

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    move-object v3, v1

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lokio/Segment;->limit:I

    move v5, v2

    add-int/2addr v4, v5

    iput v4, v3, Lokio/Segment;->limit:I

    .line 175
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lokio/Segment;->pos:I

    move v5, v2

    add-int/2addr v4, v5

    iput v4, v3, Lokio/Segment;->pos:I

    .line 176
    return-void
.end method
