.class final Lokio/PushableTimeout;
.super Lokio/Timeout;
.source "PushableTimeout.java"


# instance fields
.field private originalDeadlineNanoTime:J

.field private originalHasDeadline:Z

.field private originalTimeoutNanos:J

.field private pushed:Lokio/Timeout;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lokio/Timeout;-><init>()V

    return-void
.end method


# virtual methods
.method pop()V
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/PushableTimeout;->pushed:Lokio/Timeout;

    move-object v2, v0

    iget-wide v2, v2, Lokio/PushableTimeout;->originalTimeoutNanos:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v1

    .line 50
    move-object v1, v0

    iget-boolean v1, v1, Lokio/PushableTimeout;->originalHasDeadline:Z

    if-eqz v1, :cond_0

    .line 51
    move-object v1, v0

    iget-object v1, v1, Lokio/PushableTimeout;->pushed:Lokio/Timeout;

    move-object v2, v0

    iget-wide v2, v2, Lokio/PushableTimeout;->originalDeadlineNanoTime:J

    invoke-virtual {v1, v2, v3}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v1

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lokio/PushableTimeout;->pushed:Lokio/Timeout;

    invoke-virtual {v1}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    move-result-object v1

    goto :goto_0
.end method

.method push(Lokio/Timeout;)V
    .locals 7

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokio/PushableTimeout;->pushed:Lokio/Timeout;

    .line 34
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lokio/Timeout;->hasDeadline()Z

    move-result v3

    iput-boolean v3, v2, Lokio/PushableTimeout;->originalHasDeadline:Z

    .line 35
    move-object v2, v0

    move-object v3, v0

    iget-boolean v3, v3, Lokio/PushableTimeout;->originalHasDeadline:Z

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v3

    :goto_0
    iput-wide v3, v2, Lokio/PushableTimeout;->originalDeadlineNanoTime:J

    .line 36
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v3

    iput-wide v3, v2, Lokio/PushableTimeout;->originalTimeoutNanos:J

    .line 38
    move-object v2, v1

    move-object v3, v0

    iget-wide v3, v3, Lokio/PushableTimeout;->originalTimeoutNanos:J

    move-object v5, v0

    invoke-virtual {v5}, Lokio/PushableTimeout;->timeoutNanos()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lokio/PushableTimeout;->minTimeout(JJ)J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v2

    .line 40
    move-object v2, v0

    iget-boolean v2, v2, Lokio/PushableTimeout;->originalHasDeadline:Z

    if-eqz v2, :cond_2

    move-object v2, v0

    invoke-virtual {v2}, Lokio/PushableTimeout;->hasDeadline()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 41
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lokio/PushableTimeout;->deadlineNanoTime()J

    move-result-wide v3

    move-object v5, v0

    iget-wide v5, v5, Lokio/PushableTimeout;->originalDeadlineNanoTime:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v2

    .line 45
    :cond_0
    :goto_1
    return-void

    .line 35
    :cond_1
    const-wide/16 v3, -0x1

    goto :goto_0

    .line 42
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Lokio/PushableTimeout;->hasDeadline()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lokio/PushableTimeout;->deadlineNanoTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v2

    goto :goto_1
.end method
