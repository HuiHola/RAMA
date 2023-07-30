.class public final Landroidx/core/os/EnvironmentCompat;
.super Ljava/lang/Object;
.source "EnvironmentCompat.java"


# static fields
.field public static final MEDIA_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final TAG:Ljava/lang/String; = "EnvironmentCompat"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStorageState(Ljava/io/File;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 55
    move-object v0, p0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    .line 56
    move-object v3, v0

    invoke-static {v3}, Landroid/os/Environment;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 71
    :goto_0
    return-object v0

    .line 60
    :cond_0
    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 61
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 62
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 64
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 71
    :cond_1
    :goto_1
    const-string v3, "unknown"

    move-object v0, v3

    goto :goto_0

    .line 67
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 68
    const-string v3, "EnvironmentCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to resolve canonical path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_1
.end method
