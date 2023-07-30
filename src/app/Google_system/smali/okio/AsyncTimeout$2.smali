.class Lokio/AsyncTimeout$2;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/AsyncTimeout;->source(Lokio/Source;)Lokio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokio/AsyncTimeout;

.field final synthetic val$source:Lokio/Source;


# direct methods
.method constructor <init>(Lokio/AsyncTimeout;Lokio/Source;)V
    .locals 5

    .prologue
    .line 232
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokio/AsyncTimeout$2;->val$source:Lokio/Source;

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
    .line 248
    move-object v0, p0

    const/4 v4, 0x0

    move v1, v4

    .line 249
    move-object v4, v0

    iget-object v4, v4, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v4}, Lokio/AsyncTimeout;->enter()V

    .line 251
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lokio/AsyncTimeout$2;->val$source:Lokio/Source;

    invoke-interface {v4}, Lokio/Source;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    const/4 v4, 0x1

    move v1, v4

    .line 256
    move-object v4, v0

    iget-object v4, v4, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    move v5, v1

    invoke-virtual {v4, v5}, Lokio/AsyncTimeout;->exit(Z)V

    .line 258
    return-void

    .line 253
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 254
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v0

    iget-object v4, v4, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    move v5, v1

    invoke-virtual {v4, v5}, Lokio/AsyncTimeout;->exit(Z)V

    move-object v4, v3

    throw v4
.end method

.method public read(Lokio/Buffer;J)J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    const/4 v10, 0x0

    move v4, v10

    .line 235
    move-object v10, v0

    iget-object v10, v10, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v10}, Lokio/AsyncTimeout;->enter()V

    .line 237
    move-object v10, v0

    :try_start_0
    iget-object v10, v10, Lokio/AsyncTimeout$2;->val$source:Lokio/Source;

    move-object v11, v1

    move-wide v12, v2

    invoke-interface {v10, v11, v12, v13}, Lokio/Source;->read(Lokio/Buffer;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    move-wide v5, v10

    .line 238
    const/4 v10, 0x1

    move v4, v10

    .line 239
    move-wide v10, v5

    move-wide v7, v10

    .line 243
    move-object v10, v0

    iget-object v10, v10, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    move v11, v4

    invoke-virtual {v10, v11}, Lokio/AsyncTimeout;->exit(Z)V

    .line 239
    move-wide v10, v7

    move-wide v0, v10

    return-wide v0

    .line 240
    :catch_0
    move-exception v10

    move-object v5, v10

    .line 241
    move-object v10, v0

    :try_start_1
    iget-object v10, v10, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    move-object v11, v5

    invoke-virtual {v10, v11}, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v10

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v0

    iget-object v10, v10, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    move v11, v4

    invoke-virtual {v10, v11}, Lokio/AsyncTimeout;->exit(Z)V

    move-object v10, v9

    throw v10
.end method

.method public timeout()Lokio/Timeout;
    .locals 2

    .prologue
    .line 261
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    move-object v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 265
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncTimeout.source("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lokio/AsyncTimeout$2;->val$source:Lokio/Source;

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
