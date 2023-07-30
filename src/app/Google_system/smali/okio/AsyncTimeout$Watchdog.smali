.class final Lokio/AsyncTimeout$Watchdog;
.super Ljava/lang/Thread;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Watchdog"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 304
    move-object v0, p0

    move-object v1, v0

    const-string v2, "Okio Watchdog"

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 305
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lokio/AsyncTimeout$Watchdog;->setDaemon(Z)V

    .line 306
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 312
    move-object v0, p0

    :goto_0
    :try_start_0
    const-class v4, Lokio/AsyncTimeout;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :try_start_1
    invoke-static {}, Lokio/AsyncTimeout;->awaitTimeout()Lokio/AsyncTimeout;

    move-result-object v4

    move-object v1, v4

    .line 316
    move-object v4, v1

    if-nez v4, :cond_0

    move-object v4, v2

    monitor-exit v4

    goto :goto_0

    .line 320
    :cond_0
    move-object v4, v1

    sget-object v5, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    if-ne v4, v5, :cond_1

    .line 321
    const/4 v4, 0x0

    sput-object v4, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    .line 322
    move-object v4, v2

    monitor-exit v4

    return-void

    .line 324
    :cond_1
    move-object v4, v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    move-object v4, v1

    :try_start_2
    invoke-virtual {v4}, Lokio/AsyncTimeout;->timedOut()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 329
    goto :goto_0

    .line 324
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v3

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 328
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 329
    goto :goto_0
.end method
