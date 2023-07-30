.class final Lokio/Pipe$PipeSink;
.super Ljava/lang/Object;
.source "Pipe.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Pipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PipeSink"
.end annotation


# instance fields
.field final synthetic this$0:Lokio/Pipe;

.field final timeout:Lokio/PushableTimeout;


# direct methods
.method constructor <init>(Lokio/Pipe;)V
    .locals 6

    .prologue
    .line 108
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 109
    move-object v2, v0

    new-instance v3, Lokio/PushableTimeout;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lokio/PushableTimeout;-><init>()V

    iput-object v3, v2, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    move-object v0, p0

    const/4 v5, 0x0

    move-object v1, v5

    .line 171
    move-object v5, v0

    iget-object v5, v5, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v5, v5, Lokio/Pipe;->buffer:Lokio/Buffer;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v2, v6

    monitor-enter v5

    .line 172
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v5, v5, Lokio/Pipe;->sinkClosed:Z

    if-eqz v5, :cond_0

    move-object v5, v2

    monitor-exit v5

    .line 191
    :goto_0
    return-void

    .line 174
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    invoke-static {v5}, Lokio/Pipe;->access$000(Lokio/Pipe;)Lokio/Sink;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 175
    move-object v5, v0

    iget-object v5, v5, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    invoke-static {v5}, Lokio/Pipe;->access$000(Lokio/Pipe;)Lokio/Sink;

    move-result-object v5

    move-object v1, v5

    .line 181
    :goto_1
    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    move-object v5, v1

    if-eqz v5, :cond_1

    .line 184
    move-object v5, v0

    iget-object v5, v5, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    move-object v6, v1

    invoke-interface {v6}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v6

    invoke-virtual {v5, v6}, Lokio/PushableTimeout;->push(Lokio/Timeout;)V

    .line 186
    move-object v5, v1

    :try_start_1
    invoke-interface {v5}, Lokio/Sink;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 188
    move-object v5, v0

    iget-object v5, v5, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    invoke-virtual {v5}, Lokio/PushableTimeout;->pop()V

    .line 191
    :cond_1
    goto :goto_0

    .line 177
    :cond_2
    move-object v5, v0

    :try_start_2
    iget-object v5, v5, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v5, v5, Lokio/Pipe;->sourceClosed:Z

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v5, v5, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    new-instance v5, Ljava/io/IOException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "source is closed"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 181
    :catchall_0
    move-exception v5

    move-object v3, v5

    move-object v5, v2

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v3

    throw v5

    .line 178
    :cond_3
    move-object v5, v0

    :try_start_3
    iget-object v5, v5, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lokio/Pipe;->sinkClosed:Z

    .line 179
    move-object v5, v0

    iget-object v5, v5, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v5, v5, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 188
    :catchall_1
    move-exception v5

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    invoke-virtual {v5}, Lokio/PushableTimeout;->pop()V

    move-object v5, v4

    throw v5
.end method

.method public flush()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    move-object v0, p0

    const/4 v5, 0x0

    move-object v1, v5

    .line 149
    move-object v5, v0

    iget-object v5, v5, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v5, v5, Lokio/Pipe;->buffer:Lokio/Buffer;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v2, v6

    monitor-enter v5

    .line 150
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v5, v5, Lokio/Pipe;->sinkClosed:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "closed"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 157
    :catchall_0
    move-exception v5

    move-object v3, v5

    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v3

    throw v5

    .line 152
    :cond_0
    move-object v5, v0

    :try_start_1
    iget-object v5, v5, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    invoke-static {v5}, Lokio/Pipe;->access$000(Lokio/Pipe;)Lokio/Sink;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 153
    move-object v5, v0

    iget-object v5, v5, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    invoke-static {v5}, Lokio/Pipe;->access$000(Lokio/Pipe;)Lokio/Sink;

    move-result-object v5

    move-object v1, v5

    .line 157
    :cond_1
    move-object v5, v2

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    move-object v5, v1

    if-eqz v5, :cond_2

    .line 160
    move-object v5, v0

    iget-object v5, v5, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    move-object v6, v1

    invoke-interface {v6}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v6

    invoke-virtual {v5, v6}, Lokio/PushableTimeout;->push(Lokio/Timeout;)V

    .line 162
    move-object v5, v1

    :try_start_2
    invoke-interface {v5}, Lokio/Sink;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 164
    move-object v5, v0

    iget-object v5, v5, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    invoke-virtual {v5}, Lokio/PushableTimeout;->pop()V

    .line 167
    :cond_2
    return-void

    .line 154
    :cond_3
    move-object v5, v0

    :try_start_3
    iget-object v5, v5, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v5, v5, Lokio/Pipe;->sourceClosed:Z

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v5, v5, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 155
    new-instance v5, Ljava/io/IOException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "source is closed"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    :catchall_1
    move-exception v5

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    invoke-virtual {v5}, Lokio/PushableTimeout;->pop()V

    move-object v5, v4

    throw v5
.end method

.method public timeout()Lokio/Timeout;
    .locals 2

    .prologue
    .line 194
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    move-object v0, v1

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    const/4 v12, 0x0

    move-object v4, v12

    .line 113
    move-object v12, v0

    iget-object v12, v12, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v12, v12, Lokio/Pipe;->buffer:Lokio/Buffer;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v5, v13

    monitor-enter v12

    .line 114
    move-object v12, v0

    :try_start_0
    iget-object v12, v12, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v12, v12, Lokio/Pipe;->sinkClosed:Z

    if-eqz v12, :cond_1

    new-instance v12, Ljava/lang/IllegalStateException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const-string v14, "closed"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 135
    :catchall_0
    move-exception v12

    move-object v10, v12

    move-object v12, v5

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v12, v10

    throw v12

    .line 124
    :cond_0
    move-object v12, v0

    :try_start_1
    iget-object v12, v12, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-wide v12, v12, Lokio/Pipe;->maxBufferSize:J

    move-object v14, v0

    iget-object v14, v14, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v14, v14, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v14}, Lokio/Buffer;->size()J

    move-result-wide v14

    sub-long/2addr v12, v14

    move-wide v6, v12

    .line 125
    move-wide v12, v6

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_5

    .line 126
    move-object v12, v0

    iget-object v12, v12, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    move-object v13, v0

    iget-object v13, v13, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v13, v13, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v12, v13}, Lokio/PushableTimeout;->waitUntilNotified(Ljava/lang/Object;)V

    .line 116
    :cond_1
    :goto_0
    move-wide v12, v2

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_2

    .line 117
    move-object v12, v0

    iget-object v12, v12, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    invoke-static {v12}, Lokio/Pipe;->access$000(Lokio/Pipe;)Lokio/Sink;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 118
    move-object v12, v0

    iget-object v12, v12, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    invoke-static {v12}, Lokio/Pipe;->access$000(Lokio/Pipe;)Lokio/Sink;

    move-result-object v12

    move-object v4, v12

    .line 135
    :cond_2
    move-object v12, v5

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    move-object v12, v4

    if-eqz v12, :cond_3

    .line 138
    move-object v12, v0

    iget-object v12, v12, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    move-object v13, v4

    invoke-interface {v13}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v13

    invoke-virtual {v12, v13}, Lokio/PushableTimeout;->push(Lokio/Timeout;)V

    .line 140
    move-object v12, v4

    move-object v13, v1

    move-wide v14, v2

    :try_start_2
    invoke-interface {v12, v13, v14, v15}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 142
    move-object v12, v0

    iget-object v12, v12, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    invoke-virtual {v12}, Lokio/PushableTimeout;->pop()V

    .line 145
    :cond_3
    return-void

    .line 122
    :cond_4
    move-object v12, v0

    :try_start_3
    iget-object v12, v12, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v12, v12, Lokio/Pipe;->sourceClosed:Z

    if-eqz v12, :cond_0

    new-instance v12, Ljava/io/IOException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const-string v14, "source is closed"

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 130
    :cond_5
    move-wide v12, v6

    move-wide v14, v2

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    move-wide v8, v12

    .line 131
    move-object v12, v0

    iget-object v12, v12, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v12, v12, Lokio/Pipe;->buffer:Lokio/Buffer;

    move-object v13, v1

    move-wide v14, v8

    invoke-virtual {v12, v13, v14, v15}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 132
    move-wide v12, v2

    move-wide v14, v8

    sub-long/2addr v12, v14

    move-wide v2, v12

    .line 133
    move-object v12, v0

    iget-object v12, v12, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v12, v12, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 134
    goto :goto_0

    .line 142
    :catchall_1
    move-exception v12

    move-object v11, v12

    move-object v12, v0

    iget-object v12, v12, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    invoke-virtual {v12}, Lokio/PushableTimeout;->pop()V

    move-object v12, v11

    throw v12
.end method
