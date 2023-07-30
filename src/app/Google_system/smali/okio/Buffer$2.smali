.class Lokio/Buffer$2;
.super Ljava/io/InputStream;
.source "Buffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Buffer;->inputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokio/Buffer;


# direct methods
.method constructor <init>(Lokio/Buffer;)V
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokio/Buffer$2;->this$0:Lokio/Buffer;

    move-object v2, v0

    invoke-direct {v2}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 5

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/Buffer$2;->this$0:Lokio/Buffer;

    iget-wide v1, v1, Lokio/Buffer;->size:J

    const-wide/32 v3, 0x7fffffff

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    move v0, v1

    return v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public read()I
    .locals 5

    .prologue
    .line 127
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/Buffer$2;->this$0:Lokio/Buffer;

    iget-wide v1, v1, Lokio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lokio/Buffer$2;->this$0:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    move-result v1

    const/16 v2, 0xff

    and-int/lit16 v1, v1, 0xff

    move v0, v1

    .line 128
    :goto_0
    return v0

    :cond_0
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 8

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Lokio/Buffer$2;->this$0:Lokio/Buffer;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lokio/Buffer;->read([BII)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 143
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Lokio/Buffer$2;->this$0:Lokio/Buffer;

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
