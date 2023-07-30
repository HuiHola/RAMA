.class Lokio/RealBufferedSink$1;
.super Ljava/io/OutputStream;
.source "RealBufferedSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/RealBufferedSink;->outputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokio/RealBufferedSink;


# direct methods
.method constructor <init>(Lokio/RealBufferedSink;)V
    .locals 4

    .prologue
    .line 191
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokio/RealBufferedSink$1;->this$0:Lokio/RealBufferedSink;

    move-object v2, v0

    invoke-direct {v2}, Ljava/io/OutputStream;-><init>()V

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
    .line 212
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSink$1;->this$0:Lokio/RealBufferedSink;

    invoke-virtual {v1}, Lokio/RealBufferedSink;->close()V

    .line 213
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSink$1;->this$0:Lokio/RealBufferedSink;

    iget-boolean v1, v1, Lokio/RealBufferedSink;->closed:Z

    if-nez v1, :cond_0

    .line 207
    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSink$1;->this$0:Lokio/RealBufferedSink;

    invoke-virtual {v1}, Lokio/RealBufferedSink;->flush()V

    .line 209
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 216
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Lokio/RealBufferedSink$1;->this$0:Lokio/RealBufferedSink;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".outputStream()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public write(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokio/RealBufferedSink$1;->this$0:Lokio/RealBufferedSink;

    iget-boolean v2, v2, Lokio/RealBufferedSink;->closed:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 194
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lokio/RealBufferedSink$1;->this$0:Lokio/RealBufferedSink;

    iget-object v2, v2, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    move v3, v1

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v2

    .line 195
    move-object v2, v0

    iget-object v2, v2, Lokio/RealBufferedSink$1;->this$0:Lokio/RealBufferedSink;

    invoke-virtual {v2}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v2

    .line 196
    return-void
.end method

.method public write([BII)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Lokio/RealBufferedSink$1;->this$0:Lokio/RealBufferedSink;

    iget-boolean v4, v4, Lokio/RealBufferedSink;->closed:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/IOException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "closed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 200
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lokio/RealBufferedSink$1;->this$0:Lokio/RealBufferedSink;

    iget-object v4, v4, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v4

    .line 201
    move-object v4, v0

    iget-object v4, v4, Lokio/RealBufferedSink$1;->this$0:Lokio/RealBufferedSink;

    invoke-virtual {v4}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v4

    .line 202
    return-void
.end method
