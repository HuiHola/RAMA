.class public Lcom/airbnb/lottie/utils/LogcatLogger;
.super Ljava/lang/Object;
.source "LogcatLogger.java"

# interfaces
.implements Lcom/airbnb/lottie/LottieLogger;


# static fields
.field private static final loggedMessages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Ljava/util/HashSet;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/LogcatLogger;->loggedMessages:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/lottie/utils/LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-boolean v3, Lcom/airbnb/lottie/L;->DBG:Z

    if-eqz v3, :cond_0

    .line 29
    const-string v3, "LOTTIE"

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 31
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-boolean v3, Lcom/airbnb/lottie/L;->DBG:Z

    if-eqz v3, :cond_0

    .line 49
    const-string v3, "LOTTIE"

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 51
    :cond_0
    return-void
.end method

.method public warning(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/lottie/utils/LogcatLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-object v3, Lcom/airbnb/lottie/utils/LogcatLogger;->loggedMessages:Ljava/util/Set;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_0
    const-string v3, "LOTTIE"

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 44
    sget-object v3, Lcom/airbnb/lottie/utils/LogcatLogger;->loggedMessages:Ljava/util/Set;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 45
    goto :goto_0
.end method
