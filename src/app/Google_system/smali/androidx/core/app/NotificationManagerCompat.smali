.class public final Landroidx/core/app/NotificationManagerCompat;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationManagerCompat$CancelTask;,
        Landroidx/core/app/NotificationManagerCompat$NotifyTask;,
        Landroidx/core/app/NotificationManagerCompat$Task;,
        Landroidx/core/app/NotificationManagerCompat$ServiceConnectedEvent;,
        Landroidx/core/app/NotificationManagerCompat$SideChannelManager;
    }
.end annotation


# static fields
.field public static final ACTION_BIND_SIDE_CHANNEL:Ljava/lang/String; = "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"

.field private static final CHECK_OP_NO_THROW:Ljava/lang/String; = "checkOpNoThrow"

.field public static final EXTRA_USE_SIDE_CHANNEL:Ljava/lang/String; = "android.support.useSideChannel"

.field public static final IMPORTANCE_DEFAULT:I = 0x3

.field public static final IMPORTANCE_HIGH:I = 0x4

.field public static final IMPORTANCE_LOW:I = 0x2

.field public static final IMPORTANCE_MAX:I = 0x5

.field public static final IMPORTANCE_MIN:I = 0x1

.field public static final IMPORTANCE_NONE:I = 0x0

.field public static final IMPORTANCE_UNSPECIFIED:I = -0x3e8

.field static final MAX_SIDE_CHANNEL_SDK_VERSION:I = 0x13

.field private static final OP_POST_NOTIFICATION:Ljava/lang/String; = "OP_POST_NOTIFICATION"

.field private static final SETTING_ENABLED_NOTIFICATION_LISTENERS:Ljava/lang/String; = "enabled_notification_listeners"

.field private static final SIDE_CHANNEL_RETRY_BASE_INTERVAL_MS:I = 0x3e8

.field private static final SIDE_CHANNEL_RETRY_MAX_COUNT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "NotifManCompat"

.field private static sEnabledNotificationListenerPackages:Ljava/util/Set;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "sEnabledNotificationListenersLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sEnabledNotificationListeners:Ljava/lang/String;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "sEnabledNotificationListenersLock"
    .end annotation
.end field

.field private static final sEnabledNotificationListenersLock:Ljava/lang/Object;

.field private static final sLock:Ljava/lang/Object;

.field private static sSideChannelManager:Landroidx/core/app/NotificationManagerCompat$SideChannelManager;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "sLock"
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 97
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/app/NotificationManagerCompat;->sEnabledNotificationListenersLock:Ljava/lang/Object;

    .line 101
    new-instance v0, Ljava/util/HashSet;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroidx/core/app/NotificationManagerCompat;->sEnabledNotificationListenerPackages:Ljava/util/Set;

    .line 106
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/app/NotificationManagerCompat;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 156
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 157
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    .line 158
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, v2, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    .line 160
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    new-instance v1, Landroidx/core/app/NotificationManagerCompat;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/core/app/NotificationManagerCompat;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    return-object v0
.end method

.method public static getEnabledListenerPackages(Landroid/content/Context;)Ljava/util/Set;
    .locals 15
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    move-object v0, p0

    move-object v11, v0

    .line 264
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "enabled_notification_listeners"

    .line 263
    invoke-static {v11, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v1, v11

    .line 266
    sget-object v11, Landroidx/core/app/NotificationManagerCompat;->sEnabledNotificationListenersLock:Ljava/lang/Object;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v2, v12

    monitor-enter v11

    .line 268
    move-object v11, v1

    if-eqz v11, :cond_2

    move-object v11, v1

    :try_start_0
    sget-object v12, Landroidx/core/app/NotificationManagerCompat;->sEnabledNotificationListeners:Ljava/lang/String;

    .line 269
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 270
    move-object v11, v1

    const-string v12, ":"

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    .line 271
    new-instance v11, Ljava/util/HashSet;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v13, v3

    array-length v13, v13

    invoke-direct {v12, v13}, Ljava/util/HashSet;-><init>(I)V

    move-object v4, v11

    .line 272
    move-object v11, v3

    move-object v5, v11

    move-object v11, v5

    array-length v11, v11

    move v6, v11

    const/4 v11, 0x0

    move v7, v11

    :goto_0
    move v11, v7

    move v12, v6

    if-ge v11, v12, :cond_1

    move-object v11, v5

    move v12, v7

    aget-object v11, v11, v12

    move-object v8, v11

    .line 273
    move-object v11, v8

    invoke-static {v11}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    move-object v9, v11

    .line 274
    move-object v11, v9

    if-eqz v11, :cond_0

    .line 275
    move-object v11, v4

    move-object v12, v9

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 272
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 278
    :cond_1
    move-object v11, v4

    sput-object v11, Landroidx/core/app/NotificationManagerCompat;->sEnabledNotificationListenerPackages:Ljava/util/Set;

    .line 279
    move-object v11, v1

    sput-object v11, Landroidx/core/app/NotificationManagerCompat;->sEnabledNotificationListeners:Ljava/lang/String;

    .line 281
    :cond_2
    sget-object v11, Landroidx/core/app/NotificationManagerCompat;->sEnabledNotificationListenerPackages:Ljava/util/Set;

    move-object v12, v2

    monitor-exit v12

    move-object v0, v11

    return-object v0

    .line 282
    :catchall_0
    move-exception v11

    move-object v10, v11

    move-object v11, v2

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v10

    throw v11
.end method

.method private pushSideChannelQueue(Landroidx/core/app/NotificationManagerCompat$Task;)V
    .locals 8

    .prologue
    .line 297
    move-object v0, p0

    move-object v1, p1

    sget-object v4, Landroidx/core/app/NotificationManagerCompat;->sLock:Ljava/lang/Object;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 298
    :try_start_0
    sget-object v4, Landroidx/core/app/NotificationManagerCompat;->sSideChannelManager:Landroidx/core/app/NotificationManagerCompat$SideChannelManager;

    if-nez v4, :cond_0

    .line 299
    new-instance v4, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;-><init>(Landroid/content/Context;)V

    sput-object v4, Landroidx/core/app/NotificationManagerCompat;->sSideChannelManager:Landroidx/core/app/NotificationManagerCompat$SideChannelManager;

    .line 301
    :cond_0
    sget-object v4, Landroidx/core/app/NotificationManagerCompat;->sSideChannelManager:Landroidx/core/app/NotificationManagerCompat$SideChannelManager;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->queueTask(Landroidx/core/app/NotificationManagerCompat$Task;)V

    .line 302
    move-object v4, v2

    monitor-exit v4

    .line 303
    return-void

    .line 302
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

.method private static useSideChannelForNotification(Landroid/app/Notification;)Z
    .locals 4

    .prologue
    .line 289
    move-object v0, p0

    move-object v2, v0

    invoke-static {v2}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v2

    move-object v1, v2

    .line 290
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    const-string v3, "android.support.useSideChannel"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public areNotificationsEnabled()Z
    .locals 16

    .prologue
    .line 220
    move-object/from16 v0, p0

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x18

    if-lt v9, v10, :cond_0

    .line 221
    move-object v9, v0

    iget-object v9, v9, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v9}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v9

    move v0, v9

    .line 241
    :goto_0
    return v0

    .line 222
    :cond_0
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x13

    if-lt v9, v10, :cond_2

    .line 223
    move-object v9, v0

    iget-object v9, v9, Landroidx/core/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    const-string v10, "appops"

    .line 224
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager;

    move-object v1, v9

    .line 225
    move-object v9, v0

    iget-object v9, v9, Landroidx/core/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    move-object v2, v9

    .line 226
    move-object v9, v0

    iget-object v9, v9, Landroidx/core/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 227
    move-object v9, v2

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    move v4, v9

    .line 229
    :try_start_0
    const-class v9, Landroid/app/AppOpsManager;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    move-object v5, v9

    .line 230
    move-object v9, v5

    const-string v10, "checkOpNoThrow"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Class;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x1

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x2

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    move-object v6, v9

    .line 232
    move-object v9, v5

    const-string v10, "OP_POST_NOTIFICATION"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    move-object v7, v9

    .line 233
    move-object v9, v7

    const-class v10, Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move v8, v9

    .line 234
    move-object v9, v6

    move-object v10, v1

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move v14, v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x1

    move v14, v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x2

    move-object v14, v3

    aput-object v14, v12, v13

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-nez v9, :cond_1

    const/4 v9, 0x1

    :goto_1
    move v0, v9

    goto/16 :goto_0

    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 236
    :catch_0
    move-exception v9

    move-object v5, v9

    .line 238
    const/4 v9, 0x1

    move v0, v9

    goto/16 :goto_0

    .line 241
    :cond_2
    const/4 v9, 0x1

    move v0, v9

    goto/16 :goto_0
.end method

.method public cancel(I)V
    .locals 5

    .prologue
    .line 167
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    move v4, v1

    invoke-virtual {v2, v3, v4}, Landroidx/core/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V

    .line 168
    return-void
.end method

.method public cancel(Ljava/lang/String;I)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 176
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 177
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-gt v3, v4, :cond_0

    .line 178
    move-object v3, v0

    new-instance v4, Landroidx/core/app/NotificationManagerCompat$CancelTask;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move v7, v2

    move-object v8, v1

    invoke-direct {v5, v6, v7, v8}, Landroidx/core/app/NotificationManagerCompat$CancelTask;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v3, v4}, Landroidx/core/app/NotificationManagerCompat;->pushSideChannelQueue(Landroidx/core/app/NotificationManagerCompat$Task;)V

    .line 180
    :cond_0
    return-void
.end method

.method public cancelAll()V
    .locals 6

    .prologue
    .line 184
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->cancelAll()V

    .line 185
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v1, v2, :cond_0

    .line 186
    move-object v1, v0

    new-instance v2, Landroidx/core/app/NotificationManagerCompat$CancelTask;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/core/app/NotificationManagerCompat$CancelTask;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroidx/core/app/NotificationManagerCompat;->pushSideChannelQueue(Landroidx/core/app/NotificationManagerCompat$Task;)V

    .line 188
    :cond_0
    return-void
.end method

.method public getImportance()I
    .locals 3

    .prologue
    .line 251
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 252
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getImportance()I

    move-result v1

    move v0, v1

    .line 254
    :goto_0
    return v0

    :cond_0
    const/16 v1, -0x3e8

    move v0, v1

    goto :goto_0
.end method

.method public notify(ILandroid/app/Notification;)V
    .locals 7
    .param p2    # Landroid/app/Notification;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 196
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    const/4 v4, 0x0

    move v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroidx/core/app/NotificationManagerCompat;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 197
    return-void
.end method

.method public notify(Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/app/Notification;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 206
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v3

    invoke-static {v4}, Landroidx/core/app/NotificationManagerCompat;->useSideChannelForNotification(Landroid/app/Notification;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    move-object v4, v0

    new-instance v5, Landroidx/core/app/NotificationManagerCompat$NotifyTask;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move v8, v2

    move-object v9, v1

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Landroidx/core/app/NotificationManagerCompat$NotifyTask;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V

    invoke-direct {v4, v5}, Landroidx/core/app/NotificationManagerCompat;->pushSideChannelQueue(Landroidx/core/app/NotificationManagerCompat$Task;)V

    .line 210
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0
.end method
