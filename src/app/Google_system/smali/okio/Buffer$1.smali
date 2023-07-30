.class Lokio/Buffer$1;
.super Ljava/io/OutputStream;
.source "Buffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Buffer;->outputStream()Ljava/io/OutputStream;
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
    .line 79
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokio/Buffer$1;->this$0:Lokio/Buffer;

    move-object v2, v0

    invoke-direct {v2}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Lokio/Buffer$1;->this$0:Lokio/Buffer;

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
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokio/Buffer$1;->this$0:Lokio/Buffer;

    move v3, v1

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v2

    .line 82
    return-void
.end method

.method public write([BII)V
    .locals 8

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Lokio/Buffer$1;->this$0:Lokio/Buffer;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v4

    .line 86
    return-void
.end method
