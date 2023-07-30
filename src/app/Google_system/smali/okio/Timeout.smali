.class public Lokio/Timeout;
.super Ljava/lang/Object;
.source "Timeout.java"


# static fields
.field public static final NONE:Lokio/Timeout;


# instance fields
.field private deadlineNanoTime:J

.field private hasDeadline:Z

.field private timeoutNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lokio/Timeout$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lokio/Timeout$1;-><init>()V

    sput-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method static minTimeout(JJ)J
    .locals 8

    .prologue
    .line 231
    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    move-wide v4, v2

    move-wide v0, v4

    .line 234
    :goto_0
    return-wide v0

    .line 232
    :cond_0
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    move-wide v4, v0

    move-wide v0, v4

    goto :goto_0

    .line 233
    :cond_1
    move-wide v4, v0

    move-wide v6, v2

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    move-wide v4, v0

    move-wide v0, v4

    goto :goto_0

    .line 234
    :cond_2
    move-wide v4, v2

    move-wide v0, v4

    goto :goto_0
.end method


# virtual methods
.method public clearDeadline()Lokio/Timeout;
    .locals 3

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lokio/Timeout;->hasDeadline:Z

    .line 135
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public clearTimeout()Lokio/Timeout;
    .locals 4

    .prologue
    .line 128
    move-object v0, p0

    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lokio/Timeout;->timeoutNanos:J

    .line 129
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public final deadline(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    .locals 11

    .prologue
    .line 121
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, v1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "duration <= 0: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide v7, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 122
    :cond_0
    move-object v4, v3

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string v6, "unit == null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 123
    :cond_1
    move-object v4, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    move-object v7, v3

    move-wide v8, v1

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public deadlineNanoTime()J
    .locals 5

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokio/Timeout;->hasDeadline:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "No deadline"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_0
    move-object v1, v0

    iget-wide v1, v1, Lokio/Timeout;->deadlineNanoTime:J

    move-wide v0, v1

    return-wide v0
.end method

.method public deadlineNanoTime(J)Lokio/Timeout;
    .locals 6

    .prologue
    .line 114
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lokio/Timeout;->hasDeadline:Z

    .line 115
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lokio/Timeout;->deadlineNanoTime:J

    .line 116
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public hasDeadline()Z
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokio/Timeout;->hasDeadline:Z

    move v0, v1

    return v0
.end method

.method public throwIfReached()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    move-object v0, p0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 146
    new-instance v1, Ljava/io/InterruptedIOException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string v3, "interrupted"

    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Lokio/Timeout;->hasDeadline:Z

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-wide v1, v1, Lokio/Timeout;->deadlineNanoTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    .line 150
    new-instance v1, Ljava/io/InterruptedIOException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string v3, "deadline reached"

    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_1
    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    .locals 10

    .prologue
    .line 81
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, v1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timeout < 0: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide v7, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 82
    :cond_0
    move-object v4, v3

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "unit == null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 83
    :cond_1
    move-object v4, v0

    move-object v5, v3

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    iput-wide v5, v4, Lokio/Timeout;->timeoutNanos:J

    .line 84
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public timeoutNanos()J
    .locals 3

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lokio/Timeout;->timeoutNanos:J

    move-wide v0, v1

    return-wide v0
.end method

.method public final waitUntilNotified(Ljava/lang/Object;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    .line 192
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v15, v2

    :try_start_0
    invoke-virtual {v15}, Lokio/Timeout;->hasDeadline()Z

    move-result v15

    move v4, v15

    .line 193
    move-object v15, v2

    invoke-virtual {v15}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v15

    move-wide v5, v15

    .line 195
    move v15, v4

    if-nez v15, :cond_0

    move-wide v15, v5

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-nez v15, :cond_0

    .line 196
    move-object v15, v3

    invoke-virtual {v15}, Ljava/lang/Object;->wait()V

    .line 228
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    move-wide v9, v15

    .line 203
    move v15, v4

    if-eqz v15, :cond_2

    move-wide v15, v5

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 204
    move-object v15, v2

    invoke-virtual {v15}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v15

    move-wide/from16 v17, v9

    sub-long v15, v15, v17

    move-wide v11, v15

    .line 205
    move-wide v15, v5

    move-wide/from16 v17, v11

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v15

    move-wide v7, v15

    .line 213
    :goto_1
    const-wide/16 v15, 0x0

    move-wide v11, v15

    .line 214
    move-wide v15, v7

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-lez v15, :cond_1

    .line 215
    move-wide v15, v7

    const-wide/32 v17, 0xf4240

    div-long v15, v15, v17

    move-wide v13, v15

    .line 216
    move-object v15, v3

    move-wide/from16 v16, v13

    move-wide/from16 v18, v7

    move-wide/from16 v20, v13

    const-wide/32 v22, 0xf4240

    mul-long v20, v20, v22

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v15 .. v18}, Ljava/lang/Object;->wait(JI)V

    .line 217
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    move-wide/from16 v17, v9

    sub-long v15, v15, v17

    move-wide v11, v15

    .line 221
    :cond_1
    move-wide v15, v11

    move-wide/from16 v17, v7

    cmp-long v15, v15, v17

    if-ltz v15, :cond_4

    .line 222
    new-instance v15, Ljava/io/InterruptedIOException;

    move-object/from16 v24, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v24

    const-string v17, "timeout"

    invoke-direct/range {v16 .. v17}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :catch_0
    move-exception v15

    move-object v4, v15

    .line 225
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Thread;->interrupt()V

    .line 226
    new-instance v15, Ljava/io/InterruptedIOException;

    move-object/from16 v24, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v24

    const-string v17, "interrupted"

    invoke-direct/range {v16 .. v17}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 206
    :cond_2
    move v15, v4

    if-eqz v15, :cond_3

    .line 207
    move-object v15, v2

    :try_start_1
    invoke-virtual {v15}, Lokio/Timeout;->deadlineNanoTime()J
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v15

    move-wide/from16 v17, v9

    sub-long v15, v15, v17

    move-wide v7, v15

    goto :goto_1

    .line 209
    :cond_3
    move-wide v15, v5

    move-wide v7, v15

    goto :goto_1

    .line 228
    :cond_4
    goto/16 :goto_0
.end method
