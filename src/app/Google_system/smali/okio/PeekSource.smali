.class final Lokio/PeekSource;
.super Ljava/lang/Object;
.source "PeekSource.java"

# interfaces
.implements Lokio/Source;


# instance fields
.field private final buffer:Lokio/Buffer;

.field private closed:Z

.field private expectedPos:I

.field private expectedSegment:Lokio/Segment;

.field private pos:J

.field private final upstream:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lokio/BufferedSource;)V
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 40
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    .line 41
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v3

    iput-object v3, v2, Lokio/PeekSource;->buffer:Lokio/Buffer;

    .line 42
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v3, v3, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v3, v2, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    .line 43
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    iget v3, v3, Lokio/Segment;->pos:I

    :goto_0
    iput v3, v2, Lokio/PeekSource;->expectedPos:I

    .line 44
    return-void

    .line 43
    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lokio/PeekSource;->closed:Z

    .line 79
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "byteCount < 0: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 48
    :cond_0
    move-object v6, v0

    iget-boolean v6, v6, Lokio/PeekSource;->closed:Z

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "closed"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 52
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    if-eqz v6, :cond_3

    move-object v6, v0

    iget-object v6, v6, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    move-object v7, v0

    iget-object v7, v7, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v7, v7, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v6, v7, :cond_2

    move-object v6, v0

    iget v6, v6, Lokio/PeekSource;->expectedPos:I

    move-object v7, v0

    iget-object v7, v7, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v7, v7, Lokio/Buffer;->head:Lokio/Segment;

    iget v7, v7, Lokio/Segment;->pos:I

    if-eq v6, v7, :cond_3

    .line 54
    :cond_2
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "Peek source is invalid because upstream source was used"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 56
    :cond_3
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    const-wide/16 v6, 0x0

    move-wide v0, v6

    .line 70
    :goto_0
    return-wide v0

    .line 57
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    move-object v7, v0

    iget-wide v7, v7, Lokio/PeekSource;->pos:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    invoke-interface {v6, v7, v8}, Lokio/BufferedSource;->request(J)Z

    move-result v6

    if-nez v6, :cond_5

    const-wide/16 v6, -0x1

    move-wide v0, v6

    goto :goto_0

    .line 59
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    if-nez v6, :cond_6

    move-object v6, v0

    iget-object v6, v6, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v6, v6, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v6, :cond_6

    .line 63
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v7, v7, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v7, v6, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    .line 64
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v7, v7, Lokio/Buffer;->head:Lokio/Segment;

    iget v7, v7, Lokio/Segment;->pos:I

    iput v7, v6, Lokio/PeekSource;->expectedPos:I

    .line 67
    :cond_6
    move-wide v6, v2

    move-object v8, v0

    iget-object v8, v8, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-wide v8, v8, Lokio/Buffer;->size:J

    move-object v10, v0

    iget-wide v10, v10, Lokio/PeekSource;->pos:J

    sub-long/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    move-wide v4, v6

    .line 68
    move-object v6, v0

    iget-object v6, v6, Lokio/PeekSource;->buffer:Lokio/Buffer;

    move-object v7, v1

    move-object v8, v0

    iget-wide v8, v8, Lokio/PeekSource;->pos:J

    move-wide v10, v4

    invoke-virtual/range {v6 .. v11}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    move-result-object v6

    .line 69
    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget-wide v7, v7, Lokio/PeekSource;->pos:J

    move-wide v9, v4

    add-long/2addr v7, v9

    iput-wide v7, v6, Lokio/PeekSource;->pos:J

    .line 70
    move-wide v6, v4

    move-wide v0, v6

    goto :goto_0
.end method

.method public timeout()Lokio/Timeout;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
