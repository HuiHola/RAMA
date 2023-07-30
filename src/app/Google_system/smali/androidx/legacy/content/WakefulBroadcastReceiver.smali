.class public abstract Landroidx/legacy/content/WakefulBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WakefulBroadcastReceiver.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final EXTRA_WAKE_LOCK_ID:Ljava/lang/String; = "androidx.contentpager.content.wakelockid"

.field private static mNextId:I

.field private static final sActiveWakeLocks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    new-instance v0, Landroid/util/SparseArray;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroidx/legacy/content/WakefulBroadcastReceiver;->sActiveWakeLocks:Landroid/util/SparseArray;

    .line 77
    const/4 v0, 0x1

    sput v0, Landroidx/legacy/content/WakefulBroadcastReceiver;->mNextId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static completeWakefulIntent(Landroid/content/Intent;)Z
    .locals 9

    .prologue
    .line 126
    move-object v0, p0

    move-object v5, v0

    const-string v6, "androidx.contentpager.content.wakelockid"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    move v1, v5

    .line 127
    move v5, v1

    if-nez v5, :cond_0

    .line 128
    const/4 v5, 0x0

    move v0, v5

    .line 144
    :goto_0
    return v0

    .line 130
    :cond_0
    sget-object v5, Landroidx/legacy/content/WakefulBroadcastReceiver;->sActiveWakeLocks:Landroid/util/SparseArray;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v2, v6

    monitor-enter v5

    .line 131
    :try_start_0
    sget-object v5, Landroidx/legacy/content/WakefulBroadcastReceiver;->sActiveWakeLocks:Landroid/util/SparseArray;

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager$WakeLock;

    move-object v3, v5

    .line 132
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 133
    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 134
    sget-object v5, Landroidx/legacy/content/WakefulBroadcastReceiver;->sActiveWakeLocks:Landroid/util/SparseArray;

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 135
    const/4 v5, 0x1

    move-object v6, v2

    monitor-exit v6

    move v0, v5

    goto :goto_0

    .line 143
    :cond_1
    const-string v5, "WakefulBroadcastReceiv."

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No active wake lock id #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 144
    const/4 v5, 0x1

    move-object v6, v2

    monitor-exit v6

    move v0, v5

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method public static startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 13

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, p1

    sget-object v8, Landroidx/legacy/content/WakefulBroadcastReceiver;->sActiveWakeLocks:Landroid/util/SparseArray;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v2, v9

    monitor-enter v8

    .line 95
    :try_start_0
    sget v8, Landroidx/legacy/content/WakefulBroadcastReceiver;->mNextId:I

    move v3, v8

    .line 96
    sget v8, Landroidx/legacy/content/WakefulBroadcastReceiver;->mNextId:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    sput v8, Landroidx/legacy/content/WakefulBroadcastReceiver;->mNextId:I

    .line 97
    sget v8, Landroidx/legacy/content/WakefulBroadcastReceiver;->mNextId:I

    if-gtz v8, :cond_0

    .line 98
    const/4 v8, 0x1

    sput v8, Landroidx/legacy/content/WakefulBroadcastReceiver;->mNextId:I

    .line 101
    :cond_0
    move-object v8, v1

    const-string v9, "androidx.contentpager.content.wakelockid"

    move v10, v3

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    .line 102
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v8

    move-object v4, v8

    .line 103
    move-object v8, v4

    if-nez v8, :cond_1

    .line 104
    const/4 v8, 0x0

    move-object v9, v2

    monitor-exit v9

    move-object v0, v8

    .line 113
    :goto_0
    return-object v0

    .line 107
    :cond_1
    move-object v8, v0

    const-string v9, "power"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    move-object v5, v8

    .line 108
    move-object v8, v5

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "androidx.core:wake:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v4

    .line 109
    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 108
    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    move-object v6, v8

    .line 110
    move-object v8, v6

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 111
    move-object v8, v6

    const-wide/32 v9, 0xea60

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 112
    sget-object v8, Landroidx/legacy/content/WakefulBroadcastReceiver;->sActiveWakeLocks:Landroid/util/SparseArray;

    move v9, v3

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    move-object v8, v4

    move-object v9, v2

    monitor-exit v9

    move-object v0, v8

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v2

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v7

    throw v8
.end method
