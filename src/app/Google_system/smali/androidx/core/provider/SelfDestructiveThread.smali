.class public Landroidx/core/provider/SelfDestructiveThread;
.super Ljava/lang/Object;
.source "SelfDestructiveThread.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;
    }
.end annotation


# static fields
.field private static final MSG_DESTRUCTION:I = 0x0

.field private static final MSG_INVOKE_RUNNABLE:I = 0x1


# instance fields
.field private mCallback:Landroid/os/Handler$Callback;

.field private final mDestructAfterMillisec:I

.field private mGeneration:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPriority:I

.field private mThread:Landroid/os/HandlerThread;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mThreadName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 9

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object v4, v0

    new-instance v5, Ljava/lang/Object;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v5, v4, Landroidx/core/provider/SelfDestructiveThread;->mLock:Ljava/lang/Object;

    .line 58
    move-object v4, v0

    new-instance v5, Landroidx/core/provider/SelfDestructiveThread$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/core/provider/SelfDestructiveThread$1;-><init>(Landroidx/core/provider/SelfDestructiveThread;)V

    iput-object v5, v4, Landroidx/core/provider/SelfDestructiveThread;->mCallback:Landroid/os/Handler$Callback;

    .line 80
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/core/provider/SelfDestructiveThread;->mThreadName:Ljava/lang/String;

    .line 81
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroidx/core/provider/SelfDestructiveThread;->mPriority:I

    .line 82
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroidx/core/provider/SelfDestructiveThread;->mDestructAfterMillisec:I

    .line 83
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/core/provider/SelfDestructiveThread;->mGeneration:I

    .line 84
    return-void
.end method

.method private post(Ljava/lang/Runnable;)V
    .locals 10

    .prologue
    .line 107
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/provider/SelfDestructiveThread;->mLock:Ljava/lang/Object;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v2, v5

    monitor-enter v4

    .line 108
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroidx/core/provider/SelfDestructiveThread;->mThread:Landroid/os/HandlerThread;

    if-nez v4, :cond_0

    .line 109
    move-object v4, v0

    new-instance v5, Landroid/os/HandlerThread;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/provider/SelfDestructiveThread;->mThreadName:Ljava/lang/String;

    move-object v8, v0

    iget v8, v8, Landroidx/core/provider/SelfDestructiveThread;->mPriority:I

    invoke-direct {v6, v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v5, v4, Landroidx/core/provider/SelfDestructiveThread;->mThread:Landroid/os/HandlerThread;

    .line 110
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/provider/SelfDestructiveThread;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 111
    move-object v4, v0

    new-instance v5, Landroid/os/Handler;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/provider/SelfDestructiveThread;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/provider/SelfDestructiveThread;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v6, v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v5, v4, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    .line 112
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Landroidx/core/provider/SelfDestructiveThread;->mGeneration:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroidx/core/provider/SelfDestructiveThread;->mGeneration:I

    .line 114
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v4

    .line 116
    move-object v4, v2

    monitor-exit v4

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method


# virtual methods
.method public getGeneration()I
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/provider/SelfDestructiveThread;->mLock:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 102
    move-object v3, v0

    :try_start_0
    iget v3, v3, Landroidx/core/provider/SelfDestructiveThread;->mGeneration:I

    move-object v4, v1

    monitor-exit v4

    move v0, v3

    return v0

    .line 103
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

.method public isRunning()Z
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/provider/SelfDestructiveThread;->mLock:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 92
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/core/provider/SelfDestructiveThread;->mThread:Landroid/os/HandlerThread;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move-object v4, v1

    monitor-exit v4

    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 93
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

.method onDestruction()V
    .locals 6

    .prologue
    .line 223
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/provider/SelfDestructiveThread;->mLock:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 224
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    move-object v3, v1

    monitor-exit v3

    .line 233
    :goto_0
    return-void

    .line 229
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/provider/SelfDestructiveThread;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->quit()Z

    move-result v3

    .line 230
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/core/provider/SelfDestructiveThread;->mThread:Landroid/os/HandlerThread;

    .line 231
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    .line 232
    move-object v3, v1

    monitor-exit v3

    .line 233
    goto :goto_0

    .line 232
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

.method onInvokeRunnable(Ljava/lang/Runnable;)V
    .locals 9

    .prologue
    .line 214
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 215
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/provider/SelfDestructiveThread;->mLock:Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v2, v5

    monitor-enter v4

    .line 216
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Landroidx/core/provider/SelfDestructiveThread;->mDestructAfterMillisec:I

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v4

    .line 219
    move-object v4, v2

    monitor-exit v4

    .line 220
    return-void

    .line 219
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public postAndReply(Ljava/util/concurrent/Callable;Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Landroidx/core/provider/SelfDestructiveThread$ReplyCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Landroid/os/Handler;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    move-object v3, v4

    .line 137
    move-object v4, v0

    new-instance v5, Landroidx/core/provider/SelfDestructiveThread$2;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    move-object v8, v1

    move-object v9, v3

    move-object v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Landroidx/core/provider/SelfDestructiveThread$2;-><init>(Landroidx/core/provider/SelfDestructiveThread;Ljava/util/concurrent/Callable;Landroid/os/Handler;Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;)V

    invoke-direct {v4, v5}, Landroidx/core/provider/SelfDestructiveThread;->post(Ljava/lang/Runnable;)V

    .line 155
    return-void
.end method

.method public postAndWait(Ljava/util/concurrent/Callable;I)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 166
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    new-instance v11, Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    invoke-direct {v12}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    move-object v3, v11

    .line 167
    move-object v11, v3

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v11

    move-object v4, v11

    .line 169
    new-instance v11, Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    invoke-direct {v12}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object v5, v11

    .line 170
    new-instance v11, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object v6, v11

    .line 171
    move-object v11, v0

    new-instance v12, Landroidx/core/provider/SelfDestructiveThread$3;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    move-object v14, v0

    move-object v15, v5

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v6

    move-object/from16 v19, v4

    invoke-direct/range {v13 .. v19}, Landroidx/core/provider/SelfDestructiveThread$3;-><init>(Landroidx/core/provider/SelfDestructiveThread;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/locks/Condition;)V

    invoke-direct {v11, v12}, Landroidx/core/provider/SelfDestructiveThread;->post(Ljava/lang/Runnable;)V

    .line 189
    move-object v11, v3

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 191
    move-object v11, v6

    :try_start_0
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v11

    if-nez v11, :cond_0

    .line 192
    move-object v11, v5

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    move-object v7, v11

    .line 209
    move-object v11, v3

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v11, v7

    move-object v0, v11

    :goto_0
    return-object v0

    .line 194
    :cond_0
    :try_start_1
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move v12, v2

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v11

    move-wide v7, v11

    .line 197
    :cond_1
    move-object v11, v4

    move-wide v12, v7

    :try_start_2
    invoke-interface {v11, v12, v13}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v11

    move-wide v7, v11

    .line 201
    :goto_1
    move-object v11, v6

    :try_start_3
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v11

    if-nez v11, :cond_2

    .line 202
    move-object v11, v5

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v11

    move-object v9, v11

    .line 209
    move-object v11, v3

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v11, v9

    move-object v0, v11

    goto :goto_0

    .line 198
    :catch_0
    move-exception v11

    move-object v9, v11

    goto :goto_1

    .line 204
    :cond_2
    move-wide v11, v7

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-gtz v11, :cond_1

    .line 205
    :try_start_4
    new-instance v11, Ljava/lang/InterruptedException;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    const-string v13, "timeout"

    invoke-direct {v12, v13}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 209
    :catchall_0
    move-exception v11

    move-object v10, v11

    move-object v11, v3

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v11, v10

    throw v11
.end method
