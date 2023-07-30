.class public final Lokio/Okio;
.super Ljava/lang/Object;
.source "Okio.java"


# static fields
.field static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lokio/Okio;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokio/Okio;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static appendingSink(Ljava/io/File;)Lokio/Sink;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    move-object v1, v0

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string v3, "file == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v1}, Lokio/Okio;->sink(Ljava/io/OutputStream;)Lokio/Sink;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static blackhole()Lokio/Sink;
    .locals 3

    .prologue
    .line 199
    new-instance v0, Lokio/Okio$3;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lokio/Okio$3;-><init>()V

    return-object v0
.end method

.method public static buffer(Lokio/Sink;)Lokio/BufferedSink;
    .locals 5

    .prologue
    .line 60
    move-object v0, p0

    new-instance v1, Lokio/RealBufferedSink;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    move-object v0, v1

    return-object v0
.end method

.method public static buffer(Lokio/Source;)Lokio/BufferedSource;
    .locals 5

    .prologue
    .line 51
    move-object v0, p0

    new-instance v1, Lokio/RealBufferedSource;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    move-object v0, v1

    return-object v0
.end method

.method static isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .locals 3

    .prologue
    .line 262
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 263
    invoke-virtual {v1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getsockname failed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 262
    :goto_0
    move v0, v1

    return v0

    .line 263
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static sink(Ljava/io/File;)Lokio/Sink;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    move-object v1, v0

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "file == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Lokio/Okio;->sink(Ljava/io/OutputStream;)Lokio/Sink;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static sink(Ljava/io/OutputStream;)Lokio/Sink;
    .locals 5

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Lokio/Timeout;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lokio/Timeout;-><init>()V

    invoke-static {v1, v2}, Lokio/Okio;->sink(Ljava/io/OutputStream;Lokio/Timeout;)Lokio/Sink;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private static sink(Ljava/io/OutputStream;Lokio/Timeout;)Lokio/Sink;
    .locals 7

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "out == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_0
    move-object v2, v1

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "timeout == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_1
    new-instance v2, Lokio/Okio$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move-object v5, v0

    invoke-direct {v3, v4, v5}, Lokio/Okio$1;-><init>(Lokio/Timeout;Ljava/io/OutputStream;)V

    move-object v0, v2

    return-object v0
.end method

.method public static sink(Ljava/net/Socket;)Lokio/Sink;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    move-object v3, v0

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "socket == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 117
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/io/IOException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "socket\'s output stream == null"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 118
    :cond_1
    move-object v3, v0

    invoke-static {v3}, Lokio/Okio;->timeout(Ljava/net/Socket;)Lokio/AsyncTimeout;

    move-result-object v3

    move-object v1, v3

    .line 119
    move-object v3, v0

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    move-object v4, v1

    invoke-static {v3, v4}, Lokio/Okio;->sink(Ljava/io/OutputStream;Lokio/Timeout;)Lokio/Sink;

    move-result-object v3

    move-object v2, v3

    .line 120
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Lokio/AsyncTimeout;->sink(Lokio/Sink;)Lokio/Sink;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public static varargs sink(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Sink;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .prologue
    .line 193
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "path == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 194
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->sink(Ljava/io/OutputStream;)Lokio/Sink;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static source(Ljava/io/File;)Lokio/Source;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 167
    move-object v0, p0

    move-object v1, v0

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "file == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static source(Ljava/io/InputStream;)Lokio/Source;
    .locals 5

    .prologue
    .line 125
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Lokio/Timeout;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lokio/Timeout;-><init>()V

    invoke-static {v1, v2}, Lokio/Okio;->source(Ljava/io/InputStream;Lokio/Timeout;)Lokio/Source;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private static source(Ljava/io/InputStream;Lokio/Timeout;)Lokio/Source;
    .locals 7

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "in == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    :cond_0
    move-object v2, v1

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "timeout == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    :cond_1
    new-instance v2, Lokio/Okio$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move-object v5, v0

    invoke-direct {v3, v4, v5}, Lokio/Okio$2;-><init>(Lokio/Timeout;Ljava/io/InputStream;)V

    move-object v0, v2

    return-object v0
.end method

.method public static source(Ljava/net/Socket;)Lokio/Source;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    move-object v0, p0

    move-object v3, v0

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "socket == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 223
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/io/IOException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "socket\'s input stream == null"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 224
    :cond_1
    move-object v3, v0

    invoke-static {v3}, Lokio/Okio;->timeout(Ljava/net/Socket;)Lokio/AsyncTimeout;

    move-result-object v3

    move-object v1, v3

    .line 225
    move-object v3, v0

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-object v4, v1

    invoke-static {v3, v4}, Lokio/Okio;->source(Ljava/io/InputStream;Lokio/Timeout;)Lokio/Source;

    move-result-object v3

    move-object v2, v3

    .line 226
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Lokio/AsyncTimeout;->source(Lokio/Source;)Lokio/Source;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public static varargs source(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Source;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .prologue
    .line 174
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "path == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 175
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private static timeout(Ljava/net/Socket;)Lokio/AsyncTimeout;
    .locals 5

    .prologue
    .line 230
    move-object v0, p0

    new-instance v1, Lokio/Okio$4;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lokio/Okio$4;-><init>(Ljava/net/Socket;)V

    move-object v0, v1

    return-object v0
.end method
