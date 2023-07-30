.class final Lokio/Timeout$1;
.super Lokio/Timeout;
.source "Timeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Timeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lokio/Timeout;-><init>()V

    return-void
.end method


# virtual methods
.method public deadlineNanoTime(J)Lokio/Timeout;
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public throwIfReached()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    .locals 5

    .prologue
    .line 50
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method
