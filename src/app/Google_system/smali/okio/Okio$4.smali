.class final Lokio/Okio$4;
.super Lokio/AsyncTimeout;
.source "Okio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Okio;->timeout(Ljava/net/Socket;)Lokio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$socket:Ljava/net/Socket;


# direct methods
.method constructor <init>(Ljava/net/Socket;)V
    .locals 4

    .prologue
    .line 230
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokio/Okio$4;->val$socket:Ljava/net/Socket;

    move-object v2, v0

    invoke-direct {v2}, Lokio/AsyncTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 7
    .param p1    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 232
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Ljava/net/SocketTimeoutException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "timeout"

    invoke-direct {v4, v5}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 233
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 234
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    .line 236
    :cond_0
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method protected timedOut()V
    .locals 7

    .prologue
    .line 241
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lokio/Okio$4;->val$socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1

    .line 253
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 243
    sget-object v2, Lokio/Okio;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to close timed out socket "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lokio/Okio$4;->val$socket:Ljava/net/Socket;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    goto :goto_0

    .line 244
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 245
    move-object v2, v1

    invoke-static {v2}, Lokio/Okio;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    sget-object v2, Lokio/Okio;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to close timed out socket "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lokio/Okio$4;->val$socket:Ljava/net/Socket;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 250
    :cond_0
    move-object v2, v1

    throw v2
.end method
