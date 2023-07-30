.class public Lokio/ForwardingTimeout;
.super Lokio/Timeout;
.source "ForwardingTimeout.java"


# instance fields
.field private delegate:Lokio/Timeout;


# direct methods
.method public constructor <init>(Lokio/Timeout;)V
    .locals 6

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lokio/Timeout;-><init>()V

    .line 26
    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "delegate == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 27
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    .line 28
    return-void
.end method


# virtual methods
.method public clearDeadline()Lokio/Timeout;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {v1}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public clearTimeout()Lokio/Timeout;
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {v1}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public deadlineNanoTime()J
    .locals 3

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {v1}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public deadlineNanoTime(J)Lokio/Timeout;
    .locals 6

    .prologue
    .line 58
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-object v3, v3, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public final delegate()Lokio/Timeout;
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    move-object v0, v1

    return-object v0
.end method

.method public hasDeadline()Z
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {v1}, Lokio/Timeout;->hasDeadline()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public final setDelegate(Lokio/Timeout;)Lokio/ForwardingTimeout;
    .locals 6

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "delegate == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 37
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    .line 38
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public throwIfReached()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {v1}, Lokio/Timeout;->throwIfReached()V

    .line 71
    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    .locals 8

    .prologue
    .line 42
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    move-wide v5, v1

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public timeoutNanos()J
    .locals 3

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {v1}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method
