.class final Lokio/SegmentPool;
.super Ljava/lang/Object;
.source "SegmentPool.java"


# static fields
.field static final MAX_SIZE:J = 0x10000L

.field static byteCount:J

.field static next:Lokio/Segment;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method static recycle(Lokio/Segment;)V
    .locals 9

    .prologue
    .line 52
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    if-eqz v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 53
    :cond_1
    move-object v3, v0

    iget-boolean v3, v3, Lokio/Segment;->shared:Z

    if-eqz v3, :cond_2

    .line 61
    :goto_0
    return-void

    .line 54
    :cond_2
    const-class v3, Lokio/SegmentPool;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v1, v4

    monitor-enter v3

    .line 55
    :try_start_0
    sget-wide v3, Lokio/SegmentPool;->byteCount:J

    const-wide/16 v5, 0x2000

    add-long/2addr v3, v5

    const-wide/32 v5, 0x10000

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    move-object v3, v1

    monitor-exit v3

    goto :goto_0

    .line 56
    :cond_3
    sget-wide v3, Lokio/SegmentPool;->byteCount:J

    const-wide/16 v5, 0x2000

    add-long/2addr v3, v5

    sput-wide v3, Lokio/SegmentPool;->byteCount:J

    .line 57
    move-object v3, v0

    sget-object v4, Lokio/SegmentPool;->next:Lokio/Segment;

    iput-object v4, v3, Lokio/Segment;->next:Lokio/Segment;

    .line 58
    move-object v3, v0

    move-object v4, v0

    const/4 v5, 0x0

    move-object v7, v4

    move v8, v5

    move v4, v8

    move-object v5, v7

    move v6, v8

    iput v6, v5, Lokio/Segment;->limit:I

    iput v4, v3, Lokio/Segment;->pos:I

    .line 59
    move-object v3, v0

    sput-object v3, Lokio/SegmentPool;->next:Lokio/Segment;

    .line 60
    move-object v3, v1

    monitor-exit v3

    .line 61
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method static take()Lokio/Segment;
    .locals 8

    .prologue
    .line 39
    const-class v3, Lokio/SegmentPool;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v0, v4

    monitor-enter v3

    .line 40
    :try_start_0
    sget-object v3, Lokio/SegmentPool;->next:Lokio/Segment;

    if-eqz v3, :cond_0

    .line 41
    sget-object v3, Lokio/SegmentPool;->next:Lokio/Segment;

    move-object v1, v3

    .line 42
    move-object v3, v1

    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    sput-object v3, Lokio/SegmentPool;->next:Lokio/Segment;

    .line 43
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Lokio/Segment;->next:Lokio/Segment;

    .line 44
    sget-wide v3, Lokio/SegmentPool;->byteCount:J

    const-wide/16 v5, 0x2000

    sub-long/2addr v3, v5

    sput-wide v3, Lokio/SegmentPool;->byteCount:J

    .line 45
    move-object v3, v1

    move-object v4, v0

    monitor-exit v4

    move-object v0, v3

    .line 48
    :goto_0
    return-object v0

    .line 47
    :cond_0
    move-object v3, v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    new-instance v3, Lokio/Segment;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lokio/Segment;-><init>()V

    move-object v0, v3

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v2

    throw v3
.end method
