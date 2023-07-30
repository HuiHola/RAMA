.class public final Lokio/Pipe;
.super Ljava/lang/Object;
.source "Pipe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/Pipe$PipeSource;,
        Lokio/Pipe$PipeSink;
    }
.end annotation


# instance fields
.field final buffer:Lokio/Buffer;

.field private foldedSink:Lokio/Sink;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final maxBufferSize:J

.field private final sink:Lokio/Sink;

.field sinkClosed:Z

.field private final source:Lokio/Source;

.field sourceClosed:Z


# direct methods
.method public constructor <init>(J)V
    .locals 9

    .prologue
    .line 46
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v3, v0

    new-instance v4, Lokio/Buffer;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    iput-object v4, v3, Lokio/Pipe;->buffer:Lokio/Buffer;

    .line 42
    move-object v3, v0

    new-instance v4, Lokio/Pipe$PipeSink;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lokio/Pipe$PipeSink;-><init>(Lokio/Pipe;)V

    iput-object v4, v3, Lokio/Pipe;->sink:Lokio/Sink;

    .line 43
    move-object v3, v0

    new-instance v4, Lokio/Pipe$PipeSource;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lokio/Pipe$PipeSource;-><init>(Lokio/Pipe;)V

    iput-object v4, v3, Lokio/Pipe;->source:Lokio/Source;

    .line 47
    move-wide v3, v1

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 48
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "maxBufferSize < 1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 50
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lokio/Pipe;->maxBufferSize:J

    .line 51
    return-void
.end method

.method static synthetic access$000(Lokio/Pipe;)Lokio/Sink;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/Pipe;->foldedSink:Lokio/Sink;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public fold(Lokio/Sink;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    move-object/from16 v1, p1

    :goto_0
    const/4 v10, 0x0

    move v2, v10

    .line 73
    move-object v10, v0

    iget-object v10, v10, Lokio/Pipe;->buffer:Lokio/Buffer;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v4, v11

    monitor-enter v10

    .line 74
    move-object v10, v0

    :try_start_0
    iget-object v10, v10, Lokio/Pipe;->foldedSink:Lokio/Sink;

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/IllegalStateException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const-string v12, "sink already folded"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 86
    :catchall_0
    move-exception v10

    move-object v5, v10

    move-object v10, v4

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v5

    throw v10

    .line 76
    :cond_0
    move-object v10, v0

    :try_start_1
    iget-object v10, v10, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v10}, Lokio/Buffer;->exhausted()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 77
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Lokio/Pipe;->sourceClosed:Z

    .line 78
    move-object v10, v0

    move-object v11, v1

    iput-object v11, v10, Lokio/Pipe;->foldedSink:Lokio/Sink;

    .line 79
    move-object v10, v4

    monitor-exit v10

    return-void

    .line 82
    :cond_1
    move-object v10, v0

    iget-boolean v10, v10, Lokio/Pipe;->sinkClosed:Z

    move v2, v10

    .line 83
    new-instance v10, Lokio/Buffer;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Lokio/Buffer;-><init>()V

    move-object v3, v10

    .line 84
    move-object v10, v3

    move-object v11, v0

    iget-object v11, v11, Lokio/Pipe;->buffer:Lokio/Buffer;

    move-object v12, v0

    iget-object v12, v12, Lokio/Pipe;->buffer:Lokio/Buffer;

    iget-wide v12, v12, Lokio/Buffer;->size:J

    invoke-virtual {v10, v11, v12, v13}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 85
    move-object v10, v0

    iget-object v10, v10, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 86
    move-object v10, v4

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    const/4 v10, 0x0

    move v4, v10

    .line 90
    move-object v10, v1

    move-object v11, v3

    move-object v12, v3

    :try_start_2
    iget-wide v12, v12, Lokio/Buffer;->size:J

    invoke-interface {v10, v11, v12, v13}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 91
    move v10, v2

    if-eqz v10, :cond_3

    .line 92
    move-object v10, v1

    invoke-interface {v10}, Lokio/Sink;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 96
    :goto_1
    const/4 v10, 0x1

    move v4, v10

    .line 98
    move v10, v4

    if-nez v10, :cond_2

    .line 99
    move-object v10, v0

    iget-object v10, v10, Lokio/Pipe;->buffer:Lokio/Buffer;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v5, v11

    monitor-enter v10

    .line 100
    move-object v10, v0

    const/4 v11, 0x1

    :try_start_3
    iput-boolean v11, v10, Lokio/Pipe;->sourceClosed:Z

    .line 101
    move-object v10, v0

    iget-object v10, v10, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 102
    move-object v10, v5

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 105
    :cond_2
    goto :goto_0

    .line 94
    :cond_3
    move-object v10, v1

    :try_start_4
    invoke-interface {v10}, Lokio/Sink;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 98
    :catchall_1
    move-exception v10

    move-object v7, v10

    move v10, v4

    if-nez v10, :cond_4

    .line 99
    move-object v10, v0

    iget-object v10, v10, Lokio/Pipe;->buffer:Lokio/Buffer;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v8, v11

    monitor-enter v10

    .line 100
    move-object v10, v0

    const/4 v11, 0x1

    :try_start_5
    iput-boolean v11, v10, Lokio/Pipe;->sourceClosed:Z

    .line 101
    move-object v10, v0

    iget-object v10, v10, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 102
    move-object v10, v8

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_4
    move-object v10, v7

    throw v10

    :catchall_2
    move-exception v10

    move-object v6, v10

    move-object v10, v5

    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v10, v6

    throw v10

    :catchall_3
    move-exception v10

    move-object v9, v10

    move-object v10, v8

    :try_start_7
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object v10, v9

    throw v10
.end method

.method public final sink()Lokio/Sink;
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/Pipe;->sink:Lokio/Sink;

    move-object v0, v1

    return-object v0
.end method

.method public final source()Lokio/Source;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/Pipe;->source:Lokio/Source;

    move-object v0, v1

    return-object v0
.end method
