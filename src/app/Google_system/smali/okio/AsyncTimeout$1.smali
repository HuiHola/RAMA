.class Lokio/AsyncTimeout$1;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/AsyncTimeout;->sink(Lokio/Sink;)Lokio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokio/AsyncTimeout;

.field final synthetic val$sink:Lokio/Sink;


# direct methods
.method constructor <init>(Lokio/AsyncTimeout;Lokio/Sink;)V
    .locals 5

    .prologue
    .line 160
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

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
    .line 205
    move-object v0, p0

    const/4 v4, 0x0

    move v1, v4

    .line 206
    move-object v4, v0

    iget-object v4, v4, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v4}, Lokio/AsyncTimeout;->enter()V

    .line 208
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;

    invoke-interface {v4}, Lokio/Sink;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    const/4 v4, 0x1

    move v1, v4

    .line 213
    move-object v4, v0

    iget-object v4, v4, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    move v5, v1

    invoke-virtual {v4, v5}, Lokio/AsyncTimeout;->exit(Z)V

    .line 215
    return-void

    .line 210
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 211
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v0

    iget-object v4, v4, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    move v5, v1

    invoke-virtual {v4, v5}, Lokio/AsyncTimeout;->exit(Z)V

    move-object v4, v3

    throw v4
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    move-object v0, p0

    const/4 v4, 0x0

    move v1, v4

    .line 193
    move-object v4, v0

    iget-object v4, v4, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v4}, Lokio/AsyncTimeout;->enter()V

    .line 195
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;

    invoke-interface {v4}, Lokio/Sink;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    const/4 v4, 0x1

    move v1, v4

    .line 200
    move-object v4, v0

    iget-object v4, v4, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    move v5, v1

    invoke-virtual {v4, v5}, Lokio/AsyncTimeout;->exit(Z)V

    .line 202
    return-void

    .line 197
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 198
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v0

    iget-object v4, v4, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    move v5, v1

    invoke-virtual {v4, v5}, Lokio/AsyncTimeout;->exit(Z)V

    move-object v4, v3

    throw v4
.end method

.method public timeout()Lokio/Timeout;
    .locals 2

    .prologue
    .line 218
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    move-object v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 222
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncTimeout.sink("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;

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
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object v9, v1

    iget-wide v9, v9, Lokio/Buffer;->size:J

    const-wide/16 v11, 0x0

    move-wide v13, v2

    invoke-static/range {v9 .. v14}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 164
    :goto_0
    move-wide v9, v2

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_2

    .line 166
    const-wide/16 v9, 0x0

    move-wide v4, v9

    .line 167
    move-object v9, v1

    iget-object v9, v9, Lokio/Buffer;->head:Lokio/Segment;

    move-object v6, v9

    :goto_1
    move-wide v9, v4

    const-wide/32 v11, 0x10000

    cmp-long v9, v9, v11

    if-gez v9, :cond_0

    .line 168
    move-object v9, v6

    iget v9, v9, Lokio/Segment;->limit:I

    move-object v10, v6

    iget v10, v10, Lokio/Segment;->pos:I

    sub-int/2addr v9, v10

    move v7, v9

    .line 169
    move-wide v9, v4

    move v11, v7

    int-to-long v11, v11

    add-long/2addr v9, v11

    move-wide v4, v9

    .line 170
    move-wide v9, v4

    move-wide v11, v2

    cmp-long v9, v9, v11

    if-ltz v9, :cond_1

    .line 171
    move-wide v9, v2

    move-wide v4, v9

    .line 177
    :cond_0
    const/4 v9, 0x0

    move v6, v9

    .line 178
    move-object v9, v0

    iget-object v9, v9, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v9}, Lokio/AsyncTimeout;->enter()V

    .line 180
    move-object v9, v0

    :try_start_0
    iget-object v9, v9, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;

    move-object v10, v1

    move-wide v11, v4

    invoke-interface {v9, v10, v11, v12}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    move-wide v9, v2

    move-wide v11, v4

    sub-long/2addr v9, v11

    move-wide v2, v9

    .line 182
    const/4 v9, 0x1

    move v6, v9

    .line 186
    move-object v9, v0

    iget-object v9, v9, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    move v10, v6

    invoke-virtual {v9, v10}, Lokio/AsyncTimeout;->exit(Z)V

    .line 188
    goto :goto_0

    .line 167
    :cond_1
    move-object v9, v6

    iget-object v9, v9, Lokio/Segment;->next:Lokio/Segment;

    move-object v6, v9

    goto :goto_1

    .line 183
    :catch_0
    move-exception v9

    move-object v7, v9

    .line 184
    move-object v9, v0

    :try_start_1
    iget-object v9, v9, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    move-object v10, v7

    invoke-virtual {v9, v10}, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v9

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v0

    iget-object v9, v9, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    move v10, v6

    invoke-virtual {v9, v10}, Lokio/AsyncTimeout;->exit(Z)V

    move-object v9, v8

    throw v9

    .line 189
    :cond_2
    return-void
.end method
