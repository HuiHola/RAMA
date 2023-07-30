.class public Lcom/mycompany/payload/AssetsFileReaderAndIpSetter;
.super Ljava/lang/Object;
.source "AssetsFileReaderAndIpSetter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    .prologue
    .line 9
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 11
    move-object v8, v1

    :try_start_0
    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    move-object v3, v8

    .line 12
    move-object v8, v3

    const-string v9, "ip.txt"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    move-object v4, v8

    .line 13
    new-instance v8, Ljava/io/BufferedReader;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/io/InputStreamReader;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v4

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v5, v8

    .line 14
    move-object v8, v5

    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 15
    move-object v8, v6

    sput-object v8, Lcom/mycompany/payload/MainIpContinor;->IP:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v8

    move-object v3, v8

    goto :goto_0
.end method
