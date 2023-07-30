.class final Lokio/Pipe$PipeSource;
.super Ljava/lang/Object;
.source "Pipe.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Pipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PipeSource"
.end annotation


# instance fields
.field final synthetic this$0:Lokio/Pipe;

.field final timeout:Lokio/Timeout;


# direct methods
.method constructor <init>(Lokio/Pipe;)V
    .locals 6

    .prologue
    .line 198
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 199
    move-object v2, v0

    new-instance v3, Lokio/Timeout;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lokio/Timeout;-><init>()V

    iput-object v3, v2, Lokio/Pipe$PipeSource;->timeout:Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-object v3, v3, Lokio/Pipe;->buffer:Lokio/Buffer;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 218
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lokio/Pipe;->sourceClosed:Z

    .line 219
    move-object v3, v0

    iget-object v3, v3, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-object v3, v3, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 220
    move-object v3, v1

    monitor-exit v3

    .line 221
    return-void

    .line 220
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

.method public read(Lokio/Buffer;J)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v8, v0

    iget-object v8, v8, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-object v8, v8, Lokio/Pipe;->buffer:Lokio/Buffer;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v4, v9

    monitor-enter v8

    .line 203
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-boolean v8, v8, Lokio/Pipe;->sourceClosed:Z

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string v10, "closed"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 213
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v4

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v7

    throw v8

    .line 207
    :cond_0
    move-object v8, v0

    :try_start_1
    iget-object v8, v8, Lokio/Pipe$PipeSource;->timeout:Lokio/Timeout;

    move-object v9, v0

    iget-object v9, v9, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-object v9, v9, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v8, v9}, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    .line 205
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-object v8, v8, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v8}, Lokio/Buffer;->size()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    .line 206
    move-object v8, v0

    iget-object v8, v8, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-boolean v8, v8, Lokio/Pipe;->sinkClosed:Z

    if-eqz v8, :cond_0

    const-wide/16 v8, -0x1

    move-object v10, v4

    monitor-exit v10

    move-wide v0, v8

    .line 212
    :goto_0
    return-wide v0

    .line 210
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-object v8, v8, Lokio/Pipe;->buffer:Lokio/Buffer;

    move-object v9, v1

    move-wide v10, v2

    invoke-virtual {v8, v9, v10, v11}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide v8

    move-wide v5, v8

    .line 211
    move-object v8, v0

    iget-object v8, v8, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-object v8, v8, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 212
    move-wide v8, v5

    move-object v10, v4

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v0, v8

    goto :goto_0
.end method

.method public timeout()Lokio/Timeout;
    .locals 2

    .prologue
    .line 224
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/Pipe$PipeSource;->timeout:Lokio/Timeout;

    move-object v0, v1

    return-object v0
.end method
