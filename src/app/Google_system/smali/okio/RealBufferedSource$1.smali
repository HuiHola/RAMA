.class Lokio/RealBufferedSource$1;
.super Ljava/io/InputStream;
.source "RealBufferedSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/RealBufferedSource;->inputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokio/RealBufferedSource;


# direct methods
.method constructor <init>(Lokio/RealBufferedSource;)V
    .locals 4

    .prologue
    .line 432
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokio/RealBufferedSource$1;->this$0:Lokio/RealBufferedSource;

    move-object v2, v0

    invoke-direct {v2}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSource$1;->this$0:Lokio/RealBufferedSource;

    iget-boolean v1, v1, Lokio/RealBufferedSource;->closed:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string v3, "closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 456
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSource$1;->this$0:Lokio/RealBufferedSource;

    iget-object v1, v1, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v1, v1, Lokio/Buffer;->size:J

    const-wide/32 v3, 0x7fffffff

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    move v0, v1

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 460
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSource$1;->this$0:Lokio/RealBufferedSource;

    invoke-virtual {v1}, Lokio/RealBufferedSource;->close()V

    .line 461
    return-void
.end method

.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lokio/RealBufferedSource$1;->this$0:Lokio/RealBufferedSource;

    iget-boolean v3, v3, Lokio/RealBufferedSource;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 435
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lokio/RealBufferedSource$1;->this$0:Lokio/RealBufferedSource;

    iget-object v3, v3, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v3, v3, Lokio/Buffer;->size:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 436
    move-object v3, v0

    iget-object v3, v3, Lokio/RealBufferedSource$1;->this$0:Lokio/RealBufferedSource;

    iget-object v3, v3, Lokio/RealBufferedSource;->source:Lokio/Source;

    move-object v4, v0

    iget-object v4, v4, Lokio/RealBufferedSource$1;->this$0:Lokio/RealBufferedSource;

    iget-object v4, v4, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v5, 0x2000

    invoke-interface {v3, v4, v5, v6}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v3

    move-wide v1, v3

    .line 437
    move-wide v3, v1

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    const/4 v3, -0x1

    move v0, v3

    .line 439
    :goto_0
    return v0

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lokio/RealBufferedSource$1;->this$0:Lokio/RealBufferedSource;

    iget-object v3, v3, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    move-result v3

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    move v0, v3

    goto :goto_0
.end method

.method public read([BII)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object v6, v0

    iget-object v6, v6, Lokio/RealBufferedSource$1;->this$0:Lokio/RealBufferedSource;

    iget-boolean v6, v6, Lokio/RealBufferedSource;->closed:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/io/IOException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "closed"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 444
    :cond_0
    move-object v6, v1

    array-length v6, v6

    int-to-long v6, v6

    move v8, v2

    int-to-long v8, v8

    move v10, v3

    int-to-long v10, v10

    invoke-static/range {v6 .. v11}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 446
    move-object v6, v0

    iget-object v6, v6, Lokio/RealBufferedSource$1;->this$0:Lokio/RealBufferedSource;

    iget-object v6, v6, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v6, v6, Lokio/Buffer;->size:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 447
    move-object v6, v0

    iget-object v6, v6, Lokio/RealBufferedSource$1;->this$0:Lokio/RealBufferedSource;

    iget-object v6, v6, Lokio/RealBufferedSource;->source:Lokio/Source;

    move-object v7, v0

    iget-object v7, v7, Lokio/RealBufferedSource$1;->this$0:Lokio/RealBufferedSource;

    iget-object v7, v7, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v8, 0x2000

    invoke-interface {v6, v7, v8, v9}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v6

    move-wide v4, v6

    .line 448
    move-wide v6, v4

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    const/4 v6, -0x1

    move v0, v6

    .line 451
    :goto_0
    return v0

    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lokio/RealBufferedSource$1;->this$0:Lokio/RealBufferedSource;

    iget-object v6, v6, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-virtual {v6, v7, v8, v9}, Lokio/Buffer;->read([BII)I

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 464
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Lokio/RealBufferedSource$1;->this$0:Lokio/RealBufferedSource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".inputStream()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
