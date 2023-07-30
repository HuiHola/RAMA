.class final Lokio/Okio$1;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Okio;->sink(Ljava/io/OutputStream;Lokio/Timeout;)Lokio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$out:Ljava/io/OutputStream;

.field final synthetic val$timeout:Lokio/Timeout;


# direct methods
.method constructor <init>(Lokio/Timeout;Ljava/io/OutputStream;)V
    .locals 5

    .prologue
    .line 72
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokio/Okio$1;->val$timeout:Lokio/Timeout;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokio/Okio$1;->val$out:Ljava/io/OutputStream;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 98
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 94
    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/Okio$1;->val$timeout:Lokio/Timeout;

    move-object v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sink("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lokio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, v1

    iget-wide v6, v6, Lokio/Buffer;->size:J

    const-wide/16 v8, 0x0

    move-wide v10, v2

    invoke-static/range {v6 .. v11}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 75
    :goto_0
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 76
    move-object v6, v0

    iget-object v6, v6, Lokio/Okio$1;->val$timeout:Lokio/Timeout;

    invoke-virtual {v6}, Lokio/Timeout;->throwIfReached()V

    .line 77
    move-object v6, v1

    iget-object v6, v6, Lokio/Buffer;->head:Lokio/Segment;

    move-object v4, v6

    .line 78
    move-wide v6, v2

    move-object v8, v4

    iget v8, v8, Lokio/Segment;->limit:I

    move-object v9, v4

    iget v9, v9, Lokio/Segment;->pos:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    move v5, v6

    .line 79
    move-object v6, v0

    iget-object v6, v6, Lokio/Okio$1;->val$out:Ljava/io/OutputStream;

    move-object v7, v4

    iget-object v7, v7, Lokio/Segment;->data:[B

    move-object v8, v4

    iget v8, v8, Lokio/Segment;->pos:I

    move v9, v5

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 81
    move-object v6, v4

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Lokio/Segment;->pos:I

    move v8, v5

    add-int/2addr v7, v8

    iput v7, v6, Lokio/Segment;->pos:I

    .line 82
    move-wide v6, v2

    move v8, v5

    int-to-long v8, v8

    sub-long/2addr v6, v8

    move-wide v2, v6

    .line 83
    move-object v6, v1

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget-wide v7, v7, Lokio/Buffer;->size:J

    move v9, v5

    int-to-long v9, v9

    sub-long/2addr v7, v9

    iput-wide v7, v6, Lokio/Buffer;->size:J

    .line 85
    move-object v6, v4

    iget v6, v6, Lokio/Segment;->pos:I

    move-object v7, v4

    iget v7, v7, Lokio/Segment;->limit:I

    if-ne v6, v7, :cond_0

    .line 86
    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v7}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v7

    iput-object v7, v6, Lokio/Buffer;->head:Lokio/Segment;

    .line 87
    move-object v6, v4

    invoke-static {v6}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 89
    :cond_0
    goto :goto_0

    .line 90
    :cond_1
    return-void
.end method
