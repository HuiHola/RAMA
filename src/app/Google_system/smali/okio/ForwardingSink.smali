.class public abstract Lokio/ForwardingSink;
.super Ljava/lang/Object;
.source "ForwardingSink.java"

# interfaces
.implements Lokio/Sink;


# instance fields
.field private final delegate:Lokio/Sink;


# direct methods
.method public constructor <init>(Lokio/Sink;)V
    .locals 6

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 25
    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "delegate == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 26
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokio/ForwardingSink;->delegate:Lokio/Sink;

    .line 27
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/ForwardingSink;->delegate:Lokio/Sink;

    invoke-interface {v1}, Lokio/Sink;->close()V

    .line 48
    return-void
.end method

.method public final delegate()Lokio/Sink;
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/ForwardingSink;->delegate:Lokio/Sink;

    move-object v0, v1

    return-object v0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/ForwardingSink;->delegate:Lokio/Sink;

    invoke-interface {v1}, Lokio/Sink;->flush()V

    .line 40
    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/ForwardingSink;->delegate:Lokio/Sink;

    invoke-interface {v1}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lokio/ForwardingSink;->delegate:Lokio/Sink;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    iget-object v4, v4, Lokio/ForwardingSink;->delegate:Lokio/Sink;

    move-object v5, v1

    move-wide v6, v2

    invoke-interface {v4, v5, v6, v7}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 36
    return-void
.end method
