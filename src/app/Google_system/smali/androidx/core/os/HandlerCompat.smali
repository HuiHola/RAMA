.class public final Landroidx/core/os/HandlerCompat;
.super Ljava/lang/Object;
.source "HandlerCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    .locals 11
    .param p0    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-lt v6, v7, :cond_0

    .line 56
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-wide v9, v3

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result v6

    move v0, v6

    .line 61
    :goto_0
    return v0

    .line 59
    :cond_0
    move-object v6, v0

    move-object v7, v1

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v6

    move-object v5, v6

    .line 60
    move-object v6, v5

    move-object v7, v2

    iput-object v7, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 61
    move-object v6, v0

    move-object v7, v5

    move-wide v8, v3

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v6

    move v0, v6

    goto :goto_0
.end method
