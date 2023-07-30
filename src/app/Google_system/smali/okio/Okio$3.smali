.class final Lokio/Okio$3;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Okio;->blackhole()Lokio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 199
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 2

    .prologue
    .line 208
    move-object v0, p0

    sget-object v1, Lokio/Timeout;->NONE:Lokio/Timeout;

    move-object v0, v1

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, v1

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Lokio/Buffer;->skip(J)V

    .line 202
    return-void
.end method
