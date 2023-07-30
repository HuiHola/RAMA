.class Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;
.super Landroid/support/v4/app/INotificationSideChannel$Stub;
.source "NotificationCompatSideChannelService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompatSideChannelService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationSideChannelStub"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/app/NotificationCompatSideChannelService;


# direct methods
.method constructor <init>(Landroidx/core/app/NotificationCompatSideChannelService;)V
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidx/core/app/NotificationCompatSideChannelService;

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/app/INotificationSideChannel$Stub;-><init>()V

    .line 76
    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;ILjava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidx/core/app/NotificationCompatSideChannelService;

    invoke-static {}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->getCallingUid()I

    move-result v8

    move-object v9, v1

    invoke-virtual {v7, v8, v9}, Landroidx/core/app/NotificationCompatSideChannelService;->checkPermission(ILjava/lang/String;)V

    .line 93
    invoke-static {}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->clearCallingIdentity()J

    move-result-wide v7

    move-wide v4, v7

    .line 95
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidx/core/app/NotificationCompatSideChannelService;

    move-object v8, v1

    move v9, v2

    move-object v10, v3

    invoke-virtual {v7, v8, v9, v10}, Landroidx/core/app/NotificationCompatSideChannelService;->cancel(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    move-wide v7, v4

    invoke-static {v7, v8}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    .line 99
    return-void

    .line 97
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-wide v7, v4

    invoke-static {v7, v8}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    move-object v7, v6

    throw v7
.end method

.method public cancelAll(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidx/core/app/NotificationCompatSideChannelService;

    invoke-static {}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->getCallingUid()I

    move-result v6

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroidx/core/app/NotificationCompatSideChannelService;->checkPermission(ILjava/lang/String;)V

    .line 104
    invoke-static {}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->clearCallingIdentity()J

    move-result-wide v5

    move-wide v2, v5

    .line 106
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidx/core/app/NotificationCompatSideChannelService;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompatSideChannelService;->cancelAll(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    move-wide v5, v2

    invoke-static {v5, v6}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    .line 110
    return-void

    .line 108
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-wide v5, v2

    invoke-static {v5, v6}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    move-object v5, v4

    throw v5
.end method

.method public notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidx/core/app/NotificationCompatSideChannelService;

    invoke-static {}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->getCallingUid()I

    move-result v9

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Landroidx/core/app/NotificationCompatSideChannelService;->checkPermission(ILjava/lang/String;)V

    .line 82
    invoke-static {}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->clearCallingIdentity()J

    move-result-wide v8

    move-wide v5, v8

    .line 84
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidx/core/app/NotificationCompatSideChannelService;

    move-object v9, v1

    move v10, v2

    move-object v11, v3

    move-object v12, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Landroidx/core/app/NotificationCompatSideChannelService;->notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    move-wide v8, v5

    invoke-static {v8, v9}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    .line 88
    return-void

    .line 86
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-wide v8, v5

    invoke-static {v8, v9}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    move-object v8, v7

    throw v8
.end method
