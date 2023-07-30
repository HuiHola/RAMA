.class public Lcom/mycompany/payload/ServerLoopCaller;
.super Ljava/lang/Object;
.source "ServerLoopCaller.java"


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 14
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 15
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/mycompany/payload/ServerLoopCaller;->context:Landroid/content/Context;

    .line 16
    move-object v4, v0

    invoke-virtual {v4}, Lcom/mycompany/payload/ServerLoopCaller;->isInternetOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 17
    new-instance v4, Lcom/mycompany/payload/ServerConnection;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/mycompany/payload/ServerConnection;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/mycompany/payload/ServerConnection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v4

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 21
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/mycompany/payload/ServerLoopCaller;->context:Landroid/content/Context;

    .line 22
    move-object v5, v0

    invoke-virtual {v5}, Lcom/mycompany/payload/ServerLoopCaller;->isInternetOn()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 23
    new-instance v5, Lcom/mycompany/payload/ServerConnection;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Lcom/mycompany/payload/ServerConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/mycompany/payload/ServerConnection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v5

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 27
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/mycompany/payload/ServerLoopCaller;->context:Landroid/content/Context;

    .line 28
    move-object v6, v0

    invoke-virtual {v6}, Lcom/mycompany/payload/ServerLoopCaller;->isInternetOn()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 29
    new-instance v6, Lcom/mycompany/payload/ServerConnection;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/mycompany/payload/ServerConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Lcom/mycompany/payload/ServerConnection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v6

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    .prologue
    .line 32
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 33
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/mycompany/payload/ServerLoopCaller;->context:Landroid/content/Context;

    .line 34
    move-object v7, v0

    invoke-virtual {v7}, Lcom/mycompany/payload/ServerLoopCaller;->isInternetOn()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 35
    new-instance v7, Lcom/mycompany/payload/ServerConnection;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    invoke-direct/range {v8 .. v13}, Lcom/mycompany/payload/ServerConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v7, v8}, Lcom/mycompany/payload/ServerConnection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v7

    :cond_0
    return-void
.end method


# virtual methods
.method public isInternetOn()Z
    .locals 7

    .prologue
    .line 10
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Lcom/mycompany/payload/ServerLoopCaller;->context:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    move-object v2, v5

    .line 11
    move-object v5, v2

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    move-object v3, v5

    .line 12
    move-object v5, v3

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    move v0, v5

    return v0
.end method
