.class public abstract Lcom/airbnb/lottie/parser/moshi/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;,
        Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;
    }
.end annotation


# static fields
.field private static final REPLACEMENT_CHARS:[Ljava/lang/String;


# instance fields
.field failOnUnknown:Z

.field lenient:Z

.field pathIndices:[I

.field pathNames:[Ljava/lang/String;

.field scopes:[I

.field stackSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 193
    const/16 v1, 0x80

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader;->REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 194
    const/4 v1, 0x0

    move v0, v1

    :goto_0
    move v1, v0

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 195
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader;->REPLACEMENT_CHARS:[Ljava/lang/String;

    move v2, v0

    const-string v3, "\\u%04x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_0
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x22

    const-string v3, "\\\""

    aput-object v3, v1, v2

    .line 198
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x5c

    const-string v3, "\\\\"

    aput-object v3, v1, v2

    .line 199
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x9

    const-string v3, "\\t"

    aput-object v3, v1, v2

    .line 200
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x8

    const-string v3, "\\b"

    aput-object v3, v1, v2

    .line 201
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0xa

    const-string v3, "\\n"

    aput-object v3, v1, v2

    .line 202
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0xd

    const-string v3, "\\r"

    aput-object v3, v1, v2

    .line 203
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0xc

    const-string v3, "\\f"

    aput-object v3, v1, v2

    .line 204
    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 226
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 227
    move-object v1, v0

    const/16 v2, 0x20

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/airbnb/lottie/parser/moshi/JsonReader;->scopes:[I

    .line 228
    move-object v1, v0

    const/16 v2, 0x20

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    .line 229
    move-object v1, v0

    const/16 v2, 0x20

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 230
    return-void
.end method

.method static synthetic access$000(Lokio/BufferedSink;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->string(Lokio/BufferedSink;Ljava/lang/String;)V

    return-void
.end method

.method public static of(Lokio/BufferedSource;)Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .locals 5

    .prologue
    .line 222
    move-object v0, p0

    new-instance v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;-><init>(Lokio/BufferedSource;)V

    move-object v0, v1

    return-object v0
.end method

.method private static string(Lokio/BufferedSink;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    move-object v0, p0

    move-object v1, p1

    sget-object v8, Lcom/airbnb/lottie/parser/moshi/JsonReader;->REPLACEMENT_CHARS:[Ljava/lang/String;

    move-object v2, v8

    .line 401
    move-object v8, v0

    const/16 v9, 0x22

    invoke-interface {v8, v9}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v8

    .line 402
    const/4 v8, 0x0

    move v3, v8

    .line 403
    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move v4, v8

    .line 404
    const/4 v8, 0x0

    move v5, v8

    :goto_0
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_5

    .line 405
    move-object v8, v1

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v6, v8

    .line 407
    move v8, v6

    const/16 v9, 0x80

    if-ge v8, v9, :cond_1

    .line 408
    move-object v8, v2

    move v9, v6

    aget-object v8, v8, v9

    move-object v7, v8

    .line 409
    move-object v8, v7

    if-nez v8, :cond_2

    .line 404
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 412
    :cond_1
    move v8, v6

    const/16 v9, 0x2028

    if-ne v8, v9, :cond_4

    .line 413
    const-string v8, "\\u2028"

    move-object v7, v8

    .line 419
    :cond_2
    :goto_2
    move v8, v3

    move v9, v5

    if-ge v8, v9, :cond_3

    .line 420
    move-object v8, v0

    move-object v9, v1

    move v10, v3

    move v11, v5

    invoke-interface {v8, v9, v10, v11}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;

    move-result-object v8

    .line 422
    :cond_3
    move-object v8, v0

    move-object v9, v7

    invoke-interface {v8, v9}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v8

    .line 423
    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v3, v8

    goto :goto_1

    .line 414
    :cond_4
    move v8, v6

    const/16 v9, 0x2029

    if-ne v8, v9, :cond_0

    .line 415
    const-string v8, "\\u2029"

    move-object v7, v8

    goto :goto_2

    .line 425
    :cond_5
    move v8, v3

    move v9, v4

    if-ge v8, v9, :cond_6

    .line 426
    move-object v8, v0

    move-object v9, v1

    move v10, v3

    move v11, v4

    invoke-interface {v8, v9, v10, v11}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;

    move-result-object v8

    .line 428
    :cond_6
    move-object v8, v0

    const/16 v9, 0x22

    invoke-interface {v8, v9}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v8

    .line 429
    return-void
.end method


# virtual methods
.method public abstract beginArray()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract beginObject()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract endArray()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract endObject()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 363
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/parser/moshi/JsonReader;->scopes:[I

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    invoke-static {v1, v2, v3, v4}, Lcom/airbnb/lottie/parser/moshi/JsonScope;->getPath(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public abstract hasNext()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract nextBoolean()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract nextDouble()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract nextInt()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract nextName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract nextString()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final pushScope(I)V
    .locals 9

    .prologue
    .line 233
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonReader;->scopes:[I

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 234
    move-object v2, v0

    iget v2, v2, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    const/16 v3, 0x100

    if-ne v2, v3, :cond_0

    .line 235
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Nesting too deep at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 237
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonReader;->scopes:[I

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonReader;->scopes:[I

    array-length v4, v4

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v2, Lcom/airbnb/lottie/parser/moshi/JsonReader;->scopes:[I

    .line 238
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    array-length v4, v4

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, v2, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    .line 239
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    array-length v4, v4

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v2, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 241
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/parser/moshi/JsonReader;->scopes:[I

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    move v4, v1

    aput v4, v2, v3

    .line 242
    return-void
.end method

.method public abstract selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract skipName()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract skipValue()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;
        }
    .end annotation

    .prologue
    .line 249
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
