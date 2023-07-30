.class public Lokio/AsyncTimeout;
.super Lokio/Timeout;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/AsyncTimeout$Watchdog;
    }
.end annotation


# static fields
.field private static final IDLE_TIMEOUT_MILLIS:J

.field private static final IDLE_TIMEOUT_NANOS:J

.field private static final TIMEOUT_WRITE_SIZE:I = 0x10000

.field static head:Lokio/AsyncTimeout;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private inQueue:Z

.field private next:Lokio/AsyncTimeout;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private timeoutAt:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lokio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    .line 51
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-wide v1, Lokio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lokio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lokio/Timeout;-><init>()V

    return-void
.end method

.method static awaitTimeout()Lokio/AsyncTimeout;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 343
    sget-object v5, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    iget-object v5, v5, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    move-object v0, v5

    .line 346
    move-object v5, v0

    if-nez v5, :cond_1

    .line 347
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    move-wide v1, v5

    .line 348
    const-class v5, Lokio/AsyncTimeout;

    sget-wide v6, Lokio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 349
    sget-object v5, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    iget-object v5, v5, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    if-nez v5, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    move-wide v7, v1

    sub-long/2addr v5, v7

    sget-wide v7, Lokio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_0

    .line 350
    sget-object v5, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    .line 349
    :goto_0
    move-object v0, v5

    .line 369
    :goto_1
    return-object v0

    .line 351
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 354
    :cond_1
    move-object v5, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lokio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v5

    move-wide v1, v5

    .line 357
    move-wide v5, v1

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 360
    move-wide v5, v1

    const-wide/32 v7, 0xf4240

    div-long/2addr v5, v7

    move-wide v3, v5

    .line 361
    move-wide v5, v1

    move-wide v7, v3

    const-wide/32 v9, 0xf4240

    mul-long/2addr v7, v9

    sub-long/2addr v5, v7

    move-wide v1, v5

    .line 362
    const-class v5, Lokio/AsyncTimeout;

    move-wide v6, v3

    move-wide v8, v1

    long-to-int v8, v8

    invoke-virtual {v5, v6, v7, v8}, Ljava/lang/Object;->wait(JI)V

    .line 363
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1

    .line 367
    :cond_2
    sget-object v5, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    move-object v6, v0

    iget-object v6, v6, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object v6, v5, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 368
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 369
    move-object v5, v0

    move-object v0, v5

    goto :goto_1
.end method

.method private static declared-synchronized cancelScheduledTimeout(Lokio/AsyncTimeout;)Z
    .locals 5

    .prologue
    .line 128
    move-object v0, p0

    const-class v4, Lokio/AsyncTimeout;

    monitor-enter v4

    :try_start_0
    sget-object v2, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    move-object v1, v2

    :goto_0
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 129
    move-object v2, v1

    iget-object v2, v2, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    move-object v3, v0

    if-ne v2, v3, :cond_0

    .line 130
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object v3, v2, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 131
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    const/4 v2, 0x0

    move v0, v2

    .line 137
    :goto_1
    monitor-exit v4

    return v0

    .line 128
    :cond_0
    move-object v2, v1

    :try_start_1
    iget-object v2, v2, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_0

    .line 137
    :cond_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_1

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method private remainingNanos(J)J
    .locals 7

    .prologue
    .line 145
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-wide v3, v3, Lokio/AsyncTimeout;->timeoutAt:J

    move-wide v5, v1

    sub-long/2addr v3, v5

    move-wide v0, v3

    return-wide v0
.end method

.method private static declared-synchronized scheduleTimeout(Lokio/AsyncTimeout;JZ)V
    .locals 20

    .prologue
    .line 86
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    const-class v18, Lokio/AsyncTimeout;

    monitor-enter v18

    :try_start_0
    sget-object v9, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    if-nez v9, :cond_0

    .line 87
    new-instance v9, Lokio/AsyncTimeout;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    invoke-direct {v10}, Lokio/AsyncTimeout;-><init>()V

    sput-object v9, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    .line 88
    new-instance v9, Lokio/AsyncTimeout$Watchdog;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    invoke-direct {v10}, Lokio/AsyncTimeout$Watchdog;-><init>()V

    invoke-virtual {v9}, Lokio/AsyncTimeout$Watchdog;->start()V

    .line 91
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    move-wide v4, v9

    .line 92
    move-wide v9, v1

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_3

    move v9, v3

    if-eqz v9, :cond_3

    .line 95
    move-object v9, v0

    move-wide v10, v4

    move-wide v12, v1

    move-object v14, v0

    invoke-virtual {v14}, Lokio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v14

    move-wide/from16 v16, v4

    sub-long v14, v14, v16

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    add-long/2addr v10, v12

    iput-wide v10, v9, Lokio/AsyncTimeout;->timeoutAt:J

    .line 105
    :goto_0
    move-object v9, v0

    move-wide v10, v4

    invoke-direct {v9, v10, v11}, Lokio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v9

    move-wide v6, v9

    .line 106
    sget-object v9, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    move-object v8, v9

    .line 107
    :goto_1
    move-object v9, v8

    iget-object v9, v9, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    if-eqz v9, :cond_1

    move-wide v9, v6

    move-object v11, v8

    iget-object v11, v11, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    move-wide v12, v4

    invoke-direct {v11, v12, v13}, Lokio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_6

    .line 108
    :cond_1
    move-object v9, v0

    move-object v10, v8

    iget-object v10, v10, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object v10, v9, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 109
    move-object v9, v8

    move-object v10, v0

    iput-object v10, v9, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 110
    move-object v9, v8

    sget-object v10, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    if-ne v9, v10, :cond_2

    .line 111
    const-class v9, Lokio/AsyncTimeout;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_2
    monitor-exit v18

    return-void

    .line 96
    :cond_3
    move-wide v9, v1

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_4

    .line 97
    move-object v9, v0

    move-wide v10, v4

    move-wide v12, v1

    add-long/2addr v10, v12

    :try_start_1
    iput-wide v10, v9, Lokio/AsyncTimeout;->timeoutAt:J

    goto :goto_0

    .line 98
    :cond_4
    move v9, v3

    if-eqz v9, :cond_5

    .line 99
    move-object v9, v0

    move-object v10, v0

    invoke-virtual {v10}, Lokio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v10

    iput-wide v10, v9, Lokio/AsyncTimeout;->timeoutAt:J

    goto :goto_0

    .line 101
    :cond_5
    new-instance v9, Ljava/lang/AssertionError;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v18

    throw v0

    .line 106
    :cond_6
    move-object v9, v8

    :try_start_2
    iget-object v9, v9, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v8, v9

    goto :goto_1
.end method


# virtual methods
.method public final enter()V
    .locals 9

    .prologue
    .line 73
    move-object v0, p0

    move-object v4, v0

    iget-boolean v4, v4, Lokio/AsyncTimeout;->inQueue:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "Unbalanced enter/exit"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 74
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lokio/AsyncTimeout;->timeoutNanos()J

    move-result-wide v4

    move-wide v1, v4

    .line 75
    move-object v4, v0

    invoke-virtual {v4}, Lokio/AsyncTimeout;->hasDeadline()Z

    move-result v4

    move v3, v4

    .line 76
    move-wide v4, v1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    move v4, v3

    if-nez v4, :cond_1

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_1
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lokio/AsyncTimeout;->inQueue:Z

    .line 80
    move-object v4, v0

    move-wide v5, v1

    move v7, v3

    invoke-static {v4, v5, v6, v7}, Lokio/AsyncTimeout;->scheduleTimeout(Lokio/AsyncTimeout;JZ)V

    .line 81
    goto :goto_0
.end method

.method final exit(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lokio/AsyncTimeout;->exit()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    move-object v0, v2

    .line 286
    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lokio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method final exit(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Lokio/AsyncTimeout;->exit()Z

    move-result v3

    move v2, v3

    .line 276
    move v3, v2

    if-eqz v3, :cond_0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lokio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 277
    :cond_0
    return-void
.end method

.method public final exit()Z
    .locals 3

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokio/AsyncTimeout;->inQueue:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 122
    :goto_0
    return v0

    .line 121
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lokio/AsyncTimeout;->inQueue:Z

    .line 122
    move-object v1, v0

    invoke-static {v1}, Lokio/AsyncTimeout;->cancelScheduledTimeout(Lokio/AsyncTimeout;)Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 7
    .param p1    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 295
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Ljava/io/InterruptedIOException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "timeout"

    invoke-direct {v4, v5}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 296
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 297
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    .line 299
    :cond_0
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public final sink(Lokio/Sink;)Lokio/Sink;
    .locals 7

    .prologue
    .line 160
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lokio/AsyncTimeout$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lokio/AsyncTimeout$1;-><init>(Lokio/AsyncTimeout;Lokio/Sink;)V

    move-object v0, v2

    return-object v0
.end method

.method public final source(Lokio/Source;)Lokio/Source;
    .locals 7

    .prologue
    .line 232
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lokio/AsyncTimeout$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lokio/AsyncTimeout$2;-><init>(Lokio/AsyncTimeout;Lokio/Source;)V

    move-object v0, v2

    return-object v0
.end method

.method protected timedOut()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method
