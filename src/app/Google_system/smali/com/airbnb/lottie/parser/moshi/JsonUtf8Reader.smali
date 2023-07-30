.class final Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;
.super Lcom/airbnb/lottie/parser/moshi/JsonReader;
.source "JsonUtf8Reader.java"


# static fields
.field private static final CLOSING_BLOCK_COMMENT:Lokio/ByteString;

.field private static final DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

.field private static final LINEFEED_OR_CARRIAGE_RETURN:Lokio/ByteString;

.field private static final MIN_INCOMPLETE_INTEGER:J = -0xcccccccccccccccL

.field private static final NUMBER_CHAR_DECIMAL:I = 0x3

.field private static final NUMBER_CHAR_DIGIT:I = 0x2

.field private static final NUMBER_CHAR_EXP_DIGIT:I = 0x7

.field private static final NUMBER_CHAR_EXP_E:I = 0x5

.field private static final NUMBER_CHAR_EXP_SIGN:I = 0x6

.field private static final NUMBER_CHAR_FRACTION_DIGIT:I = 0x4

.field private static final NUMBER_CHAR_NONE:I = 0x0

.field private static final NUMBER_CHAR_SIGN:I = 0x1

.field private static final PEEKED_BEGIN_ARRAY:I = 0x3

.field private static final PEEKED_BEGIN_OBJECT:I = 0x1

.field private static final PEEKED_BUFFERED:I = 0xb

.field private static final PEEKED_BUFFERED_NAME:I = 0xf

.field private static final PEEKED_DOUBLE_QUOTED:I = 0x9

.field private static final PEEKED_DOUBLE_QUOTED_NAME:I = 0xd

.field private static final PEEKED_END_ARRAY:I = 0x4

.field private static final PEEKED_END_OBJECT:I = 0x2

.field private static final PEEKED_EOF:I = 0x12

.field private static final PEEKED_FALSE:I = 0x6

.field private static final PEEKED_LONG:I = 0x10

.field private static final PEEKED_NONE:I = 0x0

.field private static final PEEKED_NULL:I = 0x7

.field private static final PEEKED_NUMBER:I = 0x11

.field private static final PEEKED_SINGLE_QUOTED:I = 0x8

.field private static final PEEKED_SINGLE_QUOTED_NAME:I = 0xc

.field private static final PEEKED_TRUE:I = 0x5

.field private static final PEEKED_UNQUOTED:I = 0xa

.field private static final PEEKED_UNQUOTED_NAME:I = 0xe

.field private static final SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

.field private static final UNQUOTED_STRING_TERMINALS:Lokio/ByteString;


# instance fields
.field private final buffer:Lokio/Buffer;

.field private peeked:I

.field private peekedLong:J

.field private peekedNumberLength:I

.field private peekedString:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final source:Lokio/BufferedSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "\'\\"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 30
    const-string v0, "\"\\"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 31
    const-string v0, "{}[]:, \n\t\r\u000c/\\;#="

    .line 32
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->UNQUOTED_STRING_TERMINALS:Lokio/ByteString;

    .line 33
    const-string v0, "\n\r"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->LINEFEED_OR_CARRIAGE_RETURN:Lokio/ByteString;

    .line 34
    const-string v0, "*/"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->CLOSING_BLOCK_COMMENT:Lokio/ByteString;

    return-void
.end method

.method constructor <init>(Lokio/BufferedSource;)V
    .locals 6

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/parser/moshi/JsonReader;-><init>()V

    .line 72
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 94
    move-object v2, v1

    if-nez v2, :cond_0

    .line 95
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "source == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 98
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v3

    iput-object v3, v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 99
    move-object v2, v0

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pushScope(I)V

    .line 100
    return-void
.end method

.method private checkLenient()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 950
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->lenient:Z

    if-nez v1, :cond_0

    .line 951
    move-object v1, v0

    const-string v2, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    .line 953
    :cond_0
    return-void
.end method

.method private doPeek()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->scopes:[I

    move-object v5, v0

    iget v5, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    move v1, v4

    .line 213
    move v4, v1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 214
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->scopes:[I

    move-object v5, v0

    iget v5, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x2

    aput v6, v4, v5

    .line 300
    :cond_0
    :goto_0
    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v4

    move v2, v4

    .line 301
    move v4, v2

    sparse-switch v4, :sswitch_data_0

    .line 333
    move-object v4, v0

    invoke-direct {v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekKeyword()I

    move-result v4

    move v3, v4

    .line 334
    move v4, v3

    if-eqz v4, :cond_10

    .line 335
    move v4, v3

    move v0, v4

    .line 348
    :goto_1
    return v0

    .line 215
    :cond_1
    move v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 217
    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v4

    move v2, v4

    .line 218
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    move-result v4

    .line 219
    move v4, v2

    sparse-switch v4, :sswitch_data_1

    .line 227
    move-object v4, v0

    const-string v5, "Unterminated array"

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v4

    throw v4

    .line 221
    :sswitch_0
    move-object v4, v0

    const/4 v5, 0x4

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    iput v6, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v0, v4

    goto :goto_1

    .line 223
    :sswitch_1
    move-object v4, v0

    invoke-direct {v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 229
    :sswitch_2
    goto :goto_0

    :cond_2
    move v4, v1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    move v4, v1

    const/4 v5, 0x5

    if-ne v4, v5, :cond_7

    .line 230
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->scopes:[I

    move-object v5, v0

    iget v5, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x4

    aput v6, v4, v5

    .line 232
    move v4, v1

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    .line 233
    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v4

    move v2, v4

    .line 234
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    move-result v4

    .line 235
    move v4, v2

    sparse-switch v4, :sswitch_data_2

    .line 243
    move-object v4, v0

    const-string v5, "Unterminated object"

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v4

    throw v4

    .line 237
    :sswitch_3
    move-object v4, v0

    const/4 v5, 0x2

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    iput v6, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v0, v4

    goto :goto_1

    .line 239
    :sswitch_4
    move-object v4, v0

    invoke-direct {v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 246
    :cond_4
    :sswitch_5
    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v4

    move v2, v4

    .line 247
    move v4, v2

    sparse-switch v4, :sswitch_data_3

    .line 263
    move-object v4, v0

    invoke-direct {v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 264
    move-object v4, v0

    move v5, v2

    int-to-char v5, v5

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->isLiteral(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 265
    move-object v4, v0

    const/16 v5, 0xe

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    iput v6, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v0, v4

    goto/16 :goto_1

    .line 249
    :sswitch_6
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    move-result v4

    .line 250
    move-object v4, v0

    const/16 v5, 0xd

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    iput v6, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v0, v4

    goto/16 :goto_1

    .line 252
    :sswitch_7
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    move-result v4

    .line 253
    move-object v4, v0

    invoke-direct {v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 254
    move-object v4, v0

    const/16 v5, 0xc

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    iput v6, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v0, v4

    goto/16 :goto_1

    .line 256
    :sswitch_8
    move v4, v1

    const/4 v5, 0x5

    if-eq v4, v5, :cond_5

    .line 257
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    move-result v4

    .line 258
    move-object v4, v0

    const/4 v5, 0x2

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    iput v6, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v0, v4

    goto/16 :goto_1

    .line 260
    :cond_5
    move-object v4, v0

    const-string v5, "Expected name"

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v4

    throw v4

    .line 267
    :cond_6
    move-object v4, v0

    const-string v5, "Expected name"

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v4

    throw v4

    .line 270
    :cond_7
    move v4, v1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_9

    .line 271
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->scopes:[I

    move-object v5, v0

    iget v5, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x5

    aput v6, v4, v5

    .line 273
    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v4

    move v2, v4

    .line 274
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    move-result v4

    .line 275
    move v4, v2

    packed-switch v4, :pswitch_data_0

    .line 285
    :pswitch_0
    move-object v4, v0

    const-string v5, "Expected \':\'"

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v4

    throw v4

    .line 287
    :cond_8
    :goto_2
    :pswitch_1
    goto/16 :goto_0

    .line 279
    :pswitch_2
    move-object v4, v0

    invoke-direct {v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 280
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    const-wide/16 v5, 0x1

    invoke-interface {v4, v5, v6}, Lokio/BufferedSource;->request(J)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Lokio/Buffer;->getByte(J)B

    move-result v4

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_8

    .line 281
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    move-result v4

    goto :goto_2

    .line 287
    :cond_9
    move v4, v1

    const/4 v5, 0x6

    if-ne v4, v5, :cond_a

    .line 288
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->scopes:[I

    move-object v5, v0

    iget v5, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x7

    aput v6, v4, v5

    goto/16 :goto_0

    .line 289
    :cond_a
    move v4, v1

    const/4 v5, 0x7

    if-ne v4, v5, :cond_c

    .line 290
    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v4

    move v2, v4

    .line 291
    move v4, v2

    const/4 v5, -0x1

    if-ne v4, v5, :cond_b

    .line 292
    move-object v4, v0

    const/16 v5, 0x12

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    iput v6, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v0, v4

    goto/16 :goto_1

    .line 294
    :cond_b
    move-object v4, v0

    invoke-direct {v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 296
    goto/16 :goto_0

    :cond_c
    move v4, v1

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 297
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "JsonReader is closed"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 303
    :sswitch_9
    move v4, v1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    .line 304
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    move-result v4

    .line 305
    move-object v4, v0

    const/4 v5, 0x4

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    iput v6, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v0, v4

    goto/16 :goto_1

    .line 311
    :cond_d
    :sswitch_a
    move v4, v1

    const/4 v5, 0x1

    if-eq v4, v5, :cond_e

    move v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_f

    .line 312
    :cond_e
    move-object v4, v0

    invoke-direct {v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 313
    move-object v4, v0

    const/4 v5, 0x7

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    iput v6, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v0, v4

    goto/16 :goto_1

    .line 315
    :cond_f
    move-object v4, v0

    const-string v5, "Unexpected value"

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v4

    throw v4

    .line 318
    :sswitch_b
    move-object v4, v0

    invoke-direct {v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 319
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    move-result v4

    .line 320
    move-object v4, v0

    const/16 v5, 0x8

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    iput v6, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v0, v4

    goto/16 :goto_1

    .line 322
    :sswitch_c
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    move-result v4

    .line 323
    move-object v4, v0

    const/16 v5, 0x9

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    iput v6, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v0, v4

    goto/16 :goto_1

    .line 325
    :sswitch_d
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    move-result v4

    .line 326
    move-object v4, v0

    const/4 v5, 0x3

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    iput v6, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v0, v4

    goto/16 :goto_1

    .line 328
    :sswitch_e
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    move-result v4

    .line 329
    move-object v4, v0

    const/4 v5, 0x1

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    iput v6, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v0, v4

    goto/16 :goto_1

    .line 338
    :cond_10
    move-object v4, v0

    invoke-direct {v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekNumber()I

    move-result v4

    move v3, v4

    .line 339
    move v4, v3

    if-eqz v4, :cond_11

    .line 340
    move v4, v3

    move v0, v4

    goto/16 :goto_1

    .line 343
    :cond_11
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lokio/Buffer;->getByte(J)B

    move-result v5

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->isLiteral(I)Z

    move-result v4

    if-nez v4, :cond_12

    .line 344
    move-object v4, v0

    const-string v5, "Expected value"

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v4

    throw v4

    .line 347
    :cond_12
    move-object v4, v0

    invoke-direct {v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 348
    move-object v4, v0

    const/16 v5, 0xa

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    iput v6, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v0, v4

    goto/16 :goto_1

    .line 301
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_c
        0x27 -> :sswitch_b
        0x2c -> :sswitch_a
        0x3b -> :sswitch_a
        0x5b -> :sswitch_d
        0x5d -> :sswitch_9
        0x7b -> :sswitch_e
    .end sparse-switch

    .line 219
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_2
        0x3b -> :sswitch_1
        0x5d -> :sswitch_0
    .end sparse-switch

    .line 235
    :sswitch_data_2
    .sparse-switch
        0x2c -> :sswitch_5
        0x3b -> :sswitch_4
        0x7d -> :sswitch_3
    .end sparse-switch

    .line 247
    :sswitch_data_3
    .sparse-switch
        0x22 -> :sswitch_6
        0x27 -> :sswitch_7
        0x7d -> :sswitch_8
    .end sparse-switch

    .line 275
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private findName(Ljava/lang/String;Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I
    .locals 8

    .prologue
    .line 594
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v5, 0x0

    move v3, v5

    move-object v5, v2

    iget-object v5, v5, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    array-length v5, v5

    move v4, v5

    :goto_0
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_1

    .line 595
    move-object v5, v1

    move-object v6, v2

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    move v7, v3

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 596
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 597
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    move-object v6, v0

    iget v6, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move-object v7, v1

    aput-object v7, v5, v6

    .line 599
    move v5, v3

    move v0, v5

    .line 602
    :goto_1
    return v0

    .line 594
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 602
    :cond_1
    const/4 v5, -0x1

    move v0, v5

    goto :goto_1
.end method

.method private findString(Ljava/lang/String;Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I
    .locals 11

    .prologue
    .line 637
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v5, 0x0

    move v3, v5

    move-object v5, v2

    iget-object v5, v5, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    array-length v5, v5

    move v4, v5

    :goto_0
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_1

    .line 638
    move-object v5, v1

    move-object v6, v2

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    move v7, v3

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 639
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 640
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    move-object v6, v0

    iget v6, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move-object v9, v5

    move v10, v6

    move-object v5, v9

    move v6, v10

    move-object v7, v9

    move v8, v10

    aget v7, v7, v8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 642
    move v5, v3

    move v0, v5

    .line 645
    :goto_1
    return v0

    .line 637
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 645
    :cond_1
    const/4 v5, -0x1

    move v0, v5

    goto :goto_1
.end method

.method private isLiteral(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    move-object v0, p0

    move v1, p1

    move v2, v1

    sparse-switch v2, :sswitch_data_0

    .line 505
    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    .line 491
    :sswitch_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 503
    :sswitch_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 485
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private nextNonWhitespace(Z)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 895
    move-object v0, p0

    move v1, p1

    const/4 v5, 0x0

    move v2, v5

    .line 896
    :cond_0
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    invoke-interface {v5, v6, v7}, Lokio/BufferedSource;->request(J)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 897
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    move v6, v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lokio/Buffer;->getByte(J)B

    move-result v5

    move v3, v5

    .line 898
    move v5, v3

    const/16 v6, 0xa

    if-eq v5, v6, :cond_0

    move v5, v3

    const/16 v6, 0x20

    if-eq v5, v6, :cond_0

    move v5, v3

    const/16 v6, 0xd

    if-eq v5, v6, :cond_0

    move v5, v3

    const/16 v6, 0x9

    if-ne v5, v6, :cond_1

    .line 899
    goto :goto_0

    .line 902
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lokio/Buffer;->skip(J)V

    .line 903
    move v5, v3

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_4

    .line 904
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    const-wide/16 v6, 0x2

    invoke-interface {v5, v6, v7}, Lokio/BufferedSource;->request(J)Z

    move-result v5

    if-nez v5, :cond_2

    .line 905
    move v5, v3

    move v0, v5

    .line 945
    :goto_1
    return v0

    .line 908
    :cond_2
    move-object v5, v0

    invoke-direct {v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 909
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v6, 0x1

    invoke-virtual {v5, v6, v7}, Lokio/Buffer;->getByte(J)B

    move-result v5

    move v4, v5

    .line 910
    move v5, v4

    sparse-switch v5, :sswitch_data_0

    .line 930
    move v5, v3

    move v0, v5

    goto :goto_1

    .line 913
    :sswitch_0
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->readByte()B

    move-result v5

    .line 914
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->readByte()B

    move-result v5

    .line 915
    move-object v5, v0

    invoke-direct {v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipToEndOfBlockComment()Z

    move-result v5

    if-nez v5, :cond_3

    .line 916
    move-object v5, v0

    const-string v6, "Unterminated comment"

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v5

    throw v5

    .line 918
    :cond_3
    const/4 v5, 0x0

    move v2, v5

    .line 919
    goto/16 :goto_0

    .line 923
    :sswitch_1
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->readByte()B

    move-result v5

    .line 924
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->readByte()B

    move-result v5

    .line 925
    move-object v5, v0

    invoke-direct {v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipToEndOfLine()V

    .line 926
    const/4 v5, 0x0

    move v2, v5

    .line 927
    goto/16 :goto_0

    .line 932
    :cond_4
    move v5, v3

    const/16 v6, 0x23

    if-ne v5, v6, :cond_5

    .line 935
    move-object v5, v0

    invoke-direct {v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 936
    move-object v5, v0

    invoke-direct {v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipToEndOfLine()V

    .line 937
    const/4 v5, 0x0

    move v2, v5

    .line 941
    goto/16 :goto_0

    .line 939
    :cond_5
    move v5, v3

    move v0, v5

    goto :goto_1

    .line 942
    :cond_6
    move v5, v1

    if-eqz v5, :cond_7

    .line 943
    new-instance v5, Ljava/io/EOFException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "End of input"

    invoke-direct {v6, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 945
    :cond_7
    const/4 v5, -0x1

    move v0, v5

    goto :goto_1

    .line 910
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x2f -> :sswitch_1
    .end sparse-switch
.end method

.method private nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 715
    move-object v0, p0

    move-object v1, p1

    const/4 v6, 0x0

    move-object v2, v6

    .line 717
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    move-object v7, v1

    invoke-interface {v6, v7}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v6

    move-wide v3, v6

    .line 718
    move-wide v6, v3

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    move-object v6, v0

    const-string v7, "Unterminated string"

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v6

    throw v6

    .line 721
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    move-wide v7, v3

    invoke-virtual {v6, v7, v8}, Lokio/Buffer;->getByte(J)B

    move-result v6

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_2

    .line 722
    move-object v6, v2

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v6

    .line 723
    :cond_1
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    move-wide v8, v3

    invoke-virtual {v7, v8, v9}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 724
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v6}, Lokio/Buffer;->readByte()B

    move-result v6

    .line 725
    move-object v6, v2

    move-object v7, v0

    invoke-direct {v7}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->readEscapeCharacter()C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 726
    goto :goto_0

    .line 730
    :cond_2
    move-object v6, v2

    if-nez v6, :cond_3

    .line 731
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    move-wide v7, v3

    invoke-virtual {v6, v7, v8}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 732
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v6}, Lokio/Buffer;->readByte()B

    move-result v6

    .line 733
    move-object v6, v5

    move-object v0, v6

    .line 737
    :goto_1
    return-object v0

    .line 735
    :cond_3
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    move-wide v8, v3

    invoke-virtual {v7, v8, v9}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 736
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v6}, Lokio/Buffer;->readByte()B

    move-result v6

    .line 737
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_1
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 744
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    sget-object v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->UNQUOTED_STRING_TERMINALS:Lokio/ByteString;

    invoke-interface {v3, v4}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v3

    move-wide v1, v3

    .line 745
    move-wide v3, v1

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private peekKeyword()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    move-object v0, p0

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v7

    move v1, v7

    .line 357
    move v7, v1

    const/16 v8, 0x74

    if-eq v7, v8, :cond_0

    move v7, v1

    const/16 v8, 0x54

    if-ne v7, v8, :cond_1

    .line 358
    :cond_0
    const-string v7, "true"

    move-object v2, v7

    .line 359
    const-string v7, "TRUE"

    move-object v3, v7

    .line 360
    const/4 v7, 0x5

    move v4, v7

    .line 374
    :goto_0
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v5, v7

    .line 375
    const/4 v7, 0x1

    move v6, v7

    :goto_1
    move v7, v6

    move v8, v5

    if-ge v7, v8, :cond_8

    .line 376
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    move v8, v6

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    int-to-long v8, v8

    invoke-interface {v7, v8, v9}, Lokio/BufferedSource;->request(J)Z

    move-result v7

    if-nez v7, :cond_6

    .line 377
    const/4 v7, 0x0

    move v0, v7

    .line 391
    :goto_2
    return v0

    .line 361
    :cond_1
    move v7, v1

    const/16 v8, 0x66

    if-eq v7, v8, :cond_2

    move v7, v1

    const/16 v8, 0x46

    if-ne v7, v8, :cond_3

    .line 362
    :cond_2
    const-string v7, "false"

    move-object v2, v7

    .line 363
    const-string v7, "FALSE"

    move-object v3, v7

    .line 364
    const/4 v7, 0x6

    move v4, v7

    goto :goto_0

    .line 365
    :cond_3
    move v7, v1

    const/16 v8, 0x6e

    if-eq v7, v8, :cond_4

    move v7, v1

    const/16 v8, 0x4e

    if-ne v7, v8, :cond_5

    .line 366
    :cond_4
    const-string v7, "null"

    move-object v2, v7

    .line 367
    const-string v7, "NULL"

    move-object v3, v7

    .line 368
    const/4 v7, 0x7

    move v4, v7

    goto :goto_0

    .line 370
    :cond_5
    const/4 v7, 0x0

    move v0, v7

    goto :goto_2

    .line 379
    :cond_6
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    move v8, v6

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v7

    move v1, v7

    .line 380
    move v7, v1

    move-object v8, v2

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_7

    move v7, v1

    move-object v8, v3

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_7

    .line 381
    const/4 v7, 0x0

    move v0, v7

    goto :goto_2

    .line 375
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 385
    :cond_8
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    int-to-long v8, v8

    invoke-interface {v7, v8, v9}, Lokio/BufferedSource;->request(J)Z

    move-result v7

    if-eqz v7, :cond_9

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    move v9, v5

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Lokio/Buffer;->getByte(J)B

    move-result v8

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->isLiteral(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 386
    const/4 v7, 0x0

    move v0, v7

    goto :goto_2

    .line 390
    :cond_9
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    move v8, v5

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lokio/Buffer;->skip(J)V

    .line 391
    move-object v7, v0

    move v8, v4

    move-object v11, v7

    move v12, v8

    move v7, v12

    move-object v8, v11

    move v9, v12

    iput v9, v8, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v0, v7

    goto :goto_2
.end method

.method private peekNumber()I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    move-object/from16 v0, p0

    const-wide/16 v10, 0x0

    move-wide v1, v10

    .line 396
    const/4 v10, 0x0

    move v3, v10

    .line 397
    const/4 v10, 0x1

    move v4, v10

    .line 398
    const/4 v10, 0x0

    move v5, v10

    .line 400
    const/4 v10, 0x0

    move v6, v10

    .line 404
    :goto_0
    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    move v11, v6

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    int-to-long v11, v11

    invoke-interface {v10, v11, v12}, Lokio/BufferedSource;->request(J)Z

    move-result v10

    if-nez v10, :cond_2

    .line 470
    :goto_1
    move v10, v5

    const/4 v11, 0x2

    if-ne v10, v11, :cond_16

    move v10, v4

    if-eqz v10, :cond_16

    move-wide v10, v1

    const-wide/high16 v12, -0x8000000000000000L

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    move v10, v3

    if-eqz v10, :cond_16

    :cond_0
    move-wide v10, v1

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    move v10, v3

    if-nez v10, :cond_16

    .line 472
    :cond_1
    move-object v10, v0

    move v11, v3

    if-eqz v11, :cond_15

    move-wide v11, v1

    :goto_2
    iput-wide v11, v10, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    .line 473
    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    move v11, v6

    int-to-long v11, v11

    invoke-virtual {v10, v11, v12}, Lokio/Buffer;->skip(J)V

    .line 474
    move-object v10, v0

    const/16 v11, 0x10

    move-object v15, v10

    move/from16 v16, v11

    move/from16 v10, v16

    move-object v11, v15

    move/from16 v12, v16

    iput v12, v11, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v0, v10

    .line 480
    :goto_3
    return v0

    .line 408
    :cond_2
    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    move v11, v6

    int-to-long v11, v11

    invoke-virtual {v10, v11, v12}, Lokio/Buffer;->getByte(J)B

    move-result v10

    move v7, v10

    .line 409
    move v10, v7

    sparse-switch v10, :sswitch_data_0

    .line 444
    move v10, v7

    const/16 v11, 0x30

    if-lt v10, v11, :cond_3

    move v10, v7

    const/16 v11, 0x39

    if-le v10, v11, :cond_c

    .line 445
    :cond_3
    move-object v10, v0

    move v11, v7

    invoke-direct {v10, v11}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->isLiteral(I)Z

    move-result v10

    if-nez v10, :cond_b

    .line 446
    goto :goto_1

    .line 411
    :sswitch_0
    move v10, v5

    if-nez v10, :cond_5

    .line 412
    const/4 v10, 0x1

    move v3, v10

    .line 413
    const/4 v10, 0x1

    move v5, v10

    .line 403
    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 415
    :cond_5
    move v10, v5

    const/4 v11, 0x5

    if-ne v10, v11, :cond_6

    .line 416
    const/4 v10, 0x6

    move v5, v10

    .line 417
    goto :goto_4

    .line 419
    :cond_6
    const/4 v10, 0x0

    move v0, v10

    goto :goto_3

    .line 422
    :sswitch_1
    move v10, v5

    const/4 v11, 0x5

    if-ne v10, v11, :cond_7

    .line 423
    const/4 v10, 0x6

    move v5, v10

    .line 424
    goto :goto_4

    .line 426
    :cond_7
    const/4 v10, 0x0

    move v0, v10

    goto :goto_3

    .line 430
    :sswitch_2
    move v10, v5

    const/4 v11, 0x2

    if-eq v10, v11, :cond_8

    move v10, v5

    const/4 v11, 0x4

    if-ne v10, v11, :cond_9

    .line 431
    :cond_8
    const/4 v10, 0x5

    move v5, v10

    .line 432
    goto :goto_4

    .line 434
    :cond_9
    const/4 v10, 0x0

    move v0, v10

    goto :goto_3

    .line 437
    :sswitch_3
    move v10, v5

    const/4 v11, 0x2

    if-ne v10, v11, :cond_a

    .line 438
    const/4 v10, 0x3

    move v5, v10

    .line 439
    goto :goto_4

    .line 441
    :cond_a
    const/4 v10, 0x0

    move v0, v10

    goto :goto_3

    .line 448
    :cond_b
    const/4 v10, 0x0

    move v0, v10

    goto :goto_3

    .line 450
    :cond_c
    move v10, v5

    const/4 v11, 0x1

    if-eq v10, v11, :cond_d

    move v10, v5

    if-nez v10, :cond_e

    .line 451
    :cond_d
    move v10, v7

    const/16 v11, 0x30

    add-int/lit8 v10, v10, -0x30

    neg-int v10, v10

    int-to-long v10, v10

    move-wide v1, v10

    .line 452
    const/4 v10, 0x2

    move v5, v10

    goto :goto_4

    .line 453
    :cond_e
    move v10, v5

    const/4 v11, 0x2

    if-ne v10, v11, :cond_12

    .line 454
    move-wide v10, v1

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_f

    .line 455
    const/4 v10, 0x0

    move v0, v10

    goto :goto_3

    .line 457
    :cond_f
    move-wide v10, v1

    const-wide/16 v12, 0xa

    mul-long/2addr v10, v12

    move v12, v7

    const/16 v13, 0x30

    add-int/lit8 v12, v12, -0x30

    int-to-long v12, v12

    sub-long/2addr v10, v12

    move-wide v8, v10

    .line 458
    move v10, v4

    move-wide v11, v1

    const-wide v13, -0xcccccccccccccccL

    cmp-long v11, v11, v13

    if-gtz v11, :cond_10

    move-wide v11, v1

    const-wide v13, -0xcccccccccccccccL

    cmp-long v11, v11, v13

    if-nez v11, :cond_11

    move-wide v11, v8

    move-wide v13, v1

    cmp-long v11, v11, v13

    if-gez v11, :cond_11

    :cond_10
    const/4 v11, 0x1

    :goto_5
    and-int/2addr v10, v11

    move v4, v10

    .line 460
    move-wide v10, v8

    move-wide v1, v10

    .line 461
    goto :goto_4

    .line 458
    :cond_11
    const/4 v11, 0x0

    goto :goto_5

    .line 461
    :cond_12
    move v10, v5

    const/4 v11, 0x3

    if-ne v10, v11, :cond_13

    .line 462
    const/4 v10, 0x4

    move v5, v10

    goto/16 :goto_4

    .line 463
    :cond_13
    move v10, v5

    const/4 v11, 0x5

    if-eq v10, v11, :cond_14

    move v10, v5

    const/4 v11, 0x6

    if-ne v10, v11, :cond_4

    .line 464
    :cond_14
    const/4 v10, 0x7

    move v5, v10

    goto/16 :goto_4

    .line 472
    :cond_15
    move-wide v11, v1

    neg-long v11, v11

    goto/16 :goto_2

    .line 475
    :cond_16
    move v10, v5

    const/4 v11, 0x2

    if-eq v10, v11, :cond_17

    move v10, v5

    const/4 v11, 0x4

    if-eq v10, v11, :cond_17

    move v10, v5

    const/4 v11, 0x7

    if-ne v10, v11, :cond_18

    .line 477
    :cond_17
    move-object v10, v0

    move v11, v6

    iput v11, v10, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    .line 478
    move-object v10, v0

    const/16 v11, 0x11

    move-object v15, v10

    move/from16 v16, v11

    move/from16 v10, v16

    move-object v11, v15

    move/from16 v12, v16

    iput v12, v11, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v0, v10

    goto/16 :goto_3

    .line 480
    :cond_18
    const/4 v10, 0x0

    move v0, v10

    goto/16 :goto_3

    .line 409
    nop

    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_1
        0x2d -> :sswitch_0
        0x2e -> :sswitch_3
        0x45 -> :sswitch_2
        0x65 -> :sswitch_2
    .end sparse-switch
.end method

.method private readEscapeCharacter()C
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 988
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    const-wide/16 v7, 0x1

    invoke-interface {v6, v7, v8}, Lokio/BufferedSource;->request(J)Z

    move-result v6

    if-nez v6, :cond_0

    .line 989
    move-object v6, v0

    const-string v7, "Unterminated escape sequence"

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v6

    throw v6

    .line 992
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v6}, Lokio/Buffer;->readByte()B

    move-result v6

    move v1, v6

    .line 993
    move v6, v1

    sparse-switch v6, :sswitch_data_0

    .line 1039
    move-object v6, v0

    iget-boolean v6, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->lenient:Z

    if-nez v6, :cond_6

    move-object v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid escape sequence: \\"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v1

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v6

    throw v6

    .line 995
    :sswitch_0
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    const-wide/16 v7, 0x4

    invoke-interface {v6, v7, v8}, Lokio/BufferedSource;->request(J)Z

    move-result v6

    if-nez v6, :cond_1

    .line 996
    new-instance v6, Ljava/io/EOFException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unterminated escape sequence at path "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v9}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 999
    :cond_1
    const/4 v6, 0x0

    move v2, v6

    .line 1000
    const/4 v6, 0x0

    move v3, v6

    move v6, v3

    const/4 v7, 0x4

    add-int/lit8 v6, v6, 0x4

    move v4, v6

    :goto_0
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_5

    .line 1001
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    move v7, v3

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Lokio/Buffer;->getByte(J)B

    move-result v6

    move v5, v6

    .line 1002
    move v6, v2

    const/4 v7, 0x4

    shl-int/lit8 v6, v6, 0x4

    int-to-char v6, v6

    move v2, v6

    .line 1003
    move v6, v5

    const/16 v7, 0x30

    if-lt v6, v7, :cond_2

    move v6, v5

    const/16 v7, 0x39

    if-gt v6, v7, :cond_2

    .line 1004
    move v6, v2

    move v7, v5

    const/16 v8, 0x30

    add-int/lit8 v7, v7, -0x30

    add-int/2addr v6, v7

    int-to-char v6, v6

    move v2, v6

    .line 1000
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1005
    :cond_2
    move v6, v5

    const/16 v7, 0x61

    if-lt v6, v7, :cond_3

    move v6, v5

    const/16 v7, 0x66

    if-gt v6, v7, :cond_3

    .line 1006
    move v6, v2

    move v7, v5

    const/16 v8, 0x61

    add-int/lit8 v7, v7, -0x61

    const/16 v8, 0xa

    add-int/lit8 v7, v7, 0xa

    add-int/2addr v6, v7

    int-to-char v6, v6

    move v2, v6

    goto :goto_1

    .line 1007
    :cond_3
    move v6, v5

    const/16 v7, 0x41

    if-lt v6, v7, :cond_4

    move v6, v5

    const/16 v7, 0x46

    if-gt v6, v7, :cond_4

    .line 1008
    move v6, v2

    move v7, v5

    const/16 v8, 0x41

    add-int/lit8 v7, v7, -0x41

    const/16 v8, 0xa

    add-int/lit8 v7, v7, 0xa

    add-int/2addr v6, v7

    int-to-char v6, v6

    move v2, v6

    goto :goto_1

    .line 1010
    :cond_4
    move-object v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\\u"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v9, 0x4

    invoke-virtual {v8, v9, v10}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v6

    throw v6

    .line 1013
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v7, 0x4

    invoke-virtual {v6, v7, v8}, Lokio/Buffer;->skip(J)V

    .line 1014
    move v6, v2

    move v0, v6

    .line 1040
    :goto_2
    return v0

    .line 1017
    :sswitch_1
    const/16 v6, 0x9

    move v0, v6

    goto :goto_2

    .line 1020
    :sswitch_2
    const/16 v6, 0x8

    move v0, v6

    goto :goto_2

    .line 1023
    :sswitch_3
    const/16 v6, 0xa

    move v0, v6

    goto :goto_2

    .line 1026
    :sswitch_4
    const/16 v6, 0xd

    move v0, v6

    goto :goto_2

    .line 1029
    :sswitch_5
    const/16 v6, 0xc

    move v0, v6

    goto :goto_2

    .line 1036
    :sswitch_6
    move v6, v1

    int-to-char v6, v6

    move v0, v6

    goto :goto_2

    .line 1040
    :cond_6
    move v6, v1

    int-to-char v6, v6

    move v0, v6

    goto :goto_2

    .line 993
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_6
        0x22 -> :sswitch_6
        0x27 -> :sswitch_6
        0x2f -> :sswitch_6
        0x5c -> :sswitch_6
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private skipQuotedValue(Lokio/ByteString;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 750
    move-object v0, p0

    move-object v1, p1

    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    move-object v5, v1

    invoke-interface {v4, v5}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v4

    move-wide v2, v4

    .line 751
    move-wide v4, v2

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    move-object v4, v0

    const-string v5, "Unterminated string"

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v4

    throw v4

    .line 753
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Lokio/Buffer;->getByte(J)B

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_1

    .line 754
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    move-wide v5, v2

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lokio/Buffer;->skip(J)V

    .line 755
    move-object v4, v0

    invoke-direct {v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->readEscapeCharacter()C

    move-result v4

    .line 760
    goto :goto_0

    .line 757
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    move-wide v5, v2

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lokio/Buffer;->skip(J)V

    .line 758
    return-void
.end method

.method private skipToEndOfBlockComment()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 969
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    sget-object v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->CLOSING_BLOCK_COMMENT:Lokio/ByteString;

    invoke-interface {v4, v5}, Lokio/BufferedSource;->indexOf(Lokio/ByteString;)J

    move-result-wide v4

    move-wide v1, v4

    .line 970
    move-wide v4, v1

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 971
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    move v5, v3

    if-eqz v5, :cond_1

    move-wide v5, v1

    sget-object v7, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->CLOSING_BLOCK_COMMENT:Lokio/ByteString;

    invoke-virtual {v7}, Lokio/ByteString;->size()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    :goto_1
    invoke-virtual {v4, v5, v6}, Lokio/Buffer;->skip(J)V

    .line 972
    move v4, v3

    move v0, v4

    return v0

    .line 970
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 971
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v5

    goto :goto_1
.end method

.method private skipToEndOfLine()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 961
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    sget-object v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->LINEFEED_OR_CARRIAGE_RETURN:Lokio/ByteString;

    invoke-interface {v3, v4}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v3

    move-wide v1, v3

    .line 962
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    move-wide v4, v1

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    move-wide v4, v1

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    :goto_0
    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->skip(J)V

    .line 963
    return-void

    .line 962
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    goto :goto_0
.end method

.method private skipUnquotedValue()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 764
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    sget-object v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->UNQUOTED_STRING_TERMINALS:Lokio/ByteString;

    invoke-interface {v3, v4}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v3

    move-wide v1, v3

    .line 765
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    move-wide v4, v1

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    move-wide v4, v1

    :goto_0
    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->skip(J)V

    .line 766
    return-void

    .line 765
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    goto :goto_0
.end method


# virtual methods
.method public beginArray()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v1, v2

    .line 105
    move v2, v1

    if-nez v2, :cond_0

    .line 106
    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v2

    move v1, v2

    .line 108
    :cond_0
    move v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 109
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pushScope(I)V

    .line 110
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    move-object v3, v0

    iget v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 111
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 116
    return-void

    .line 113
    :cond_1
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    .line 114
    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public beginObject()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v1, v2

    .line 135
    move v2, v1

    if-nez v2, :cond_0

    .line 136
    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v2

    move v1, v2

    .line 138
    :cond_0
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 139
    move-object v2, v0

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pushScope(I)V

    .line 140
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 145
    return-void

    .line 142
    :cond_1
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    .line 143
    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 824
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 825
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->scopes:[I

    const/4 v2, 0x0

    const/16 v3, 0x8

    aput v3, v1, v2

    .line 826
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    .line 827
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->clear()V

    .line 828
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->close()V

    .line 829
    return-void
.end method

.method public endArray()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v1, v2

    .line 120
    move v2, v1

    if-nez v2, :cond_0

    .line 121
    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v2

    move v1, v2

    .line 123
    :cond_0
    move v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 124
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    .line 125
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    move-object v3, v0

    iget v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v6, v2

    move v7, v3

    move-object v2, v6

    move v3, v7

    move-object v4, v6

    move v5, v7

    aget v4, v4, v5

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 126
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 131
    return-void

    .line 128
    :cond_1
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected END_ARRAY but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    .line 129
    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public endObject()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v1, v2

    .line 149
    move v2, v1

    if-nez v2, :cond_0

    .line 150
    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v2

    move v1, v2

    .line 152
    :cond_0
    move v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 153
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    .line 154
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    move-object v3, v0

    iget v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 155
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    move-object v3, v0

    iget v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v6, v2

    move v7, v3

    move-object v2, v6

    move v3, v7

    move-object v4, v6

    move v5, v7

    aget v4, v4, v5

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 156
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 161
    return-void

    .line 158
    :cond_1
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected END_OBJECT but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    .line 159
    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public hasNext()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v1, v2

    .line 165
    move v2, v1

    if-nez v2, :cond_0

    .line 166
    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v2

    move v1, v2

    .line 168
    :cond_0
    move v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    move v2, v1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    move v2, v1

    const/16 v3, 0x12

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public nextBoolean()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 649
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v1, v2

    .line 650
    move v2, v1

    if-nez v2, :cond_0

    .line 651
    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v2

    move v1, v2

    .line 653
    :cond_0
    move v2, v1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 654
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 655
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    move-object v3, v0

    iget v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v6, v2

    move v7, v3

    move-object v2, v6

    move v3, v7

    move-object v4, v6

    move v5, v7

    aget v4, v4, v5

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 656
    const/4 v2, 0x1

    move v0, v2

    .line 660
    :goto_0
    return v0

    .line 657
    :cond_1
    move v2, v1

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 658
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 659
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    move-object v3, v0

    iget v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v6, v2

    move v7, v3

    move-object v2, v6

    move v3, v7

    move-object v4, v6

    move v5, v7

    aget v4, v4, v5

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 660
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 662
    :cond_2
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected a boolean but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public nextDouble()D
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 666
    move-object v0, p0

    move-object v5, v0

    iget v5, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v1, v5

    .line 667
    move v5, v1

    if-nez v5, :cond_0

    .line 668
    move-object v5, v0

    invoke-direct {v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v5

    move v1, v5

    .line 671
    :cond_0
    move v5, v1

    const/16 v6, 0x10

    if-ne v5, v6, :cond_1

    .line 672
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 673
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    move-object v6, v0

    iget v6, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move-object v10, v5

    move v11, v6

    move-object v5, v10

    move v6, v11

    move-object v7, v10

    move v8, v11

    aget v7, v7, v8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 674
    move-object v5, v0

    iget-wide v5, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    long-to-double v5, v5

    move-wide v0, v5

    .line 704
    :goto_0
    return-wide v0

    .line 677
    :cond_1
    move v5, v1

    const/16 v6, 0x11

    if-ne v5, v6, :cond_4

    .line 678
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    move-object v7, v0

    iget v7, v7, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 689
    :cond_2
    :goto_1
    move-object v5, v0

    const/16 v6, 0xb

    iput v6, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 692
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    move-wide v2, v5

    .line 697
    move-object v5, v0

    iget-boolean v5, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->lenient:Z

    if-nez v5, :cond_8

    move-wide v5, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_3

    move-wide v5, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 698
    :cond_3
    new-instance v5, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "JSON forbids NaN and infinities: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    .line 699
    invoke-virtual {v8}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 679
    :cond_4
    move v5, v1

    const/16 v6, 0x9

    if-ne v5, v6, :cond_5

    .line 680
    move-object v5, v0

    move-object v6, v0

    sget-object v7, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {v6, v7}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_1

    .line 681
    :cond_5
    move v5, v1

    const/16 v6, 0x8

    if-ne v5, v6, :cond_6

    .line 682
    move-object v5, v0

    move-object v6, v0

    sget-object v7, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {v6, v7}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_1

    .line 683
    :cond_6
    move v5, v1

    const/16 v6, 0xa

    if-ne v5, v6, :cond_7

    .line 684
    move-object v5, v0

    move-object v6, v0

    invoke-direct {v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_1

    .line 685
    :cond_7
    move v5, v1

    const/16 v6, 0xb

    if-eq v5, v6, :cond_2

    .line 686
    new-instance v5, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected a double but was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v8}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v8}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 693
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 694
    new-instance v5, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected a double but was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    .line 695
    invoke-virtual {v8}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 701
    :cond_8
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 702
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 703
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    move-object v6, v0

    iget v6, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move-object v10, v5

    move v11, v6

    move-object v5, v10

    move v6, v11

    move-object v7, v10

    move v8, v11

    aget v7, v7, v8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 704
    move-wide v5, v2

    move-wide v0, v5

    goto/16 :goto_0
.end method

.method public nextInt()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 769
    move-object v0, p0

    move-object v6, v0

    iget v6, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v1, v6

    .line 770
    move v6, v1

    if-nez v6, :cond_0

    .line 771
    move-object v6, v0

    invoke-direct {v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v6

    move v1, v6

    .line 775
    :cond_0
    move v6, v1

    const/16 v7, 0x10

    if-ne v6, v7, :cond_2

    .line 776
    move-object v6, v0

    iget-wide v6, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    long-to-int v6, v6

    move v2, v6

    .line 777
    move-object v6, v0

    iget-wide v6, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    move v8, v2

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 778
    new-instance v6, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected an int but was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    iget-wide v9, v9, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " at path "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    .line 779
    invoke-virtual {v9}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 781
    :cond_1
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 782
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    move-object v7, v0

    iget v7, v7, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move-object v11, v6

    move v12, v7

    move-object v6, v11

    move v7, v12

    move-object v8, v11

    move v9, v12

    aget v8, v8, v9

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v7

    .line 783
    move v6, v2

    move v0, v6

    .line 820
    :goto_0
    return v0

    .line 786
    :cond_2
    move v6, v1

    const/16 v7, 0x11

    if-ne v6, v7, :cond_4

    .line 787
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    move-object v8, v0

    iget v8, v8, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 804
    :cond_3
    :goto_1
    move-object v6, v0

    const/16 v7, 0xb

    iput v7, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 807
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v6

    move-wide v3, v6

    .line 812
    move-wide v6, v3

    double-to-int v6, v6

    move v2, v6

    .line 813
    move v6, v2

    int-to-double v6, v6

    move-wide v8, v3

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_8

    .line 814
    new-instance v6, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected an int but was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " at path "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    .line 815
    invoke-virtual {v9}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 788
    :cond_4
    move v6, v1

    const/16 v7, 0x9

    if-eq v6, v7, :cond_5

    move v6, v1

    const/16 v7, 0x8

    if-ne v6, v7, :cond_7

    .line 789
    :cond_5
    move-object v6, v0

    move v7, v1

    const/16 v8, 0x9

    if-ne v7, v8, :cond_6

    .line 790
    move-object v7, v0

    sget-object v8, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v7

    .line 791
    :goto_2
    iput-object v7, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 793
    move-object v6, v0

    :try_start_1
    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v2, v6

    .line 794
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 795
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    move-object v7, v0

    iget v7, v7, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move-object v11, v6

    move v12, v7

    move-object v6, v11

    move v7, v12

    move-object v8, v11

    move v9, v12

    aget v8, v8, v9

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 796
    move v6, v2

    move v0, v6

    goto/16 :goto_0

    .line 791
    :cond_6
    move-object v7, v0

    sget-object v8, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 797
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 799
    goto/16 :goto_1

    .line 800
    :cond_7
    move v6, v1

    const/16 v7, 0xb

    if-eq v6, v7, :cond_3

    .line 801
    new-instance v6, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected an int but was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v9}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " at path "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v9}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 808
    :catch_1
    move-exception v6

    move-object v5, v6

    .line 809
    new-instance v6, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected an int but was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " at path "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    .line 810
    invoke-virtual {v9}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 817
    :cond_8
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 818
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 819
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    move-object v7, v0

    iget v7, v7, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move-object v11, v6

    move v12, v7

    move-object v6, v11

    move v7, v12

    move-object v8, v11

    move v9, v12

    aget v8, v8, v9

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v7

    .line 820
    move v6, v2

    move v0, v6

    goto/16 :goto_0
.end method

.method public nextName()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 510
    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v1, v3

    .line 511
    move v3, v1

    if-nez v3, :cond_0

    .line 512
    move-object v3, v0

    invoke-direct {v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v3

    move v1, v3

    .line 515
    :cond_0
    move v3, v1

    const/16 v4, 0xe

    if-ne v3, v4, :cond_1

    .line 516
    move-object v3, v0

    invoke-direct {v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 526
    :goto_0
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 527
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    move-object v4, v0

    iget v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move-object v5, v2

    aput-object v5, v3, v4

    .line 528
    move-object v3, v2

    move-object v0, v3

    return-object v0

    .line 517
    :cond_1
    move v3, v1

    const/16 v4, 0xd

    if-ne v3, v4, :cond_2

    .line 518
    move-object v3, v0

    sget-object v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 519
    :cond_2
    move v3, v1

    const/16 v4, 0xc

    if-ne v3, v4, :cond_3

    .line 520
    move-object v3, v0

    sget-object v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 521
    :cond_3
    move v3, v1

    const/16 v4, 0xf

    if-ne v3, v4, :cond_4

    .line 522
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    move-object v2, v3

    goto :goto_0

    .line 524
    :cond_4
    new-instance v3, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected a name but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public nextString()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 606
    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v1, v3

    .line 607
    move v3, v1

    if-nez v3, :cond_0

    .line 608
    move-object v3, v0

    invoke-direct {v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v3

    move v1, v3

    .line 611
    :cond_0
    move v3, v1

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 612
    move-object v3, v0

    invoke-direct {v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 627
    :goto_0
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 628
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    move-object v4, v0

    iget v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget v5, v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 629
    move-object v3, v2

    move-object v0, v3

    return-object v0

    .line 613
    :cond_1
    move v3, v1

    const/16 v4, 0x9

    if-ne v3, v4, :cond_2

    .line 614
    move-object v3, v0

    sget-object v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 615
    :cond_2
    move v3, v1

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 616
    move-object v3, v0

    sget-object v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 617
    :cond_3
    move v3, v1

    const/16 v4, 0xb

    if-ne v3, v4, :cond_4

    .line 618
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    move-object v2, v3

    .line 619
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_0

    .line 620
    :cond_4
    move v3, v1

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5

    .line 621
    move-object v3, v0

    iget-wide v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 622
    :cond_5
    move v3, v1

    const/16 v4, 0x11

    if-ne v3, v4, :cond_6

    .line 623
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    move-object v4, v0

    iget v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 625
    :cond_6
    new-instance v3, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected a string but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v1, v2

    .line 173
    move v2, v1

    if-nez v2, :cond_0

    .line 174
    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v2

    move v1, v2

    .line 177
    :cond_0
    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 207
    new-instance v2, Ljava/lang/AssertionError;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 179
    :pswitch_0
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-object v0, v2

    .line 205
    :goto_0
    return-object v0

    .line 181
    :pswitch_1
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-object v0, v2

    goto :goto_0

    .line 183
    :pswitch_2
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-object v0, v2

    goto :goto_0

    .line 185
    :pswitch_3
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-object v0, v2

    goto :goto_0

    .line 190
    :pswitch_4
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NAME:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-object v0, v2

    goto :goto_0

    .line 193
    :pswitch_5
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BOOLEAN:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-object v0, v2

    goto :goto_0

    .line 195
    :pswitch_6
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NULL:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-object v0, v2

    goto :goto_0

    .line 200
    :pswitch_7
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->STRING:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-object v0, v2

    goto :goto_0

    .line 203
    :pswitch_8
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-object v0, v2

    goto :goto_0

    .line 205
    :pswitch_9
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_DOCUMENT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-object v0, v2

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 532
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget v6, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v2, v6

    .line 533
    move v6, v2

    if-nez v6, :cond_0

    .line 534
    move-object v6, v0

    invoke-direct {v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v6

    move v2, v6

    .line 536
    :cond_0
    move v6, v2

    const/16 v7, 0xc

    if-lt v6, v7, :cond_1

    move v6, v2

    const/16 v7, 0xf

    if-le v6, v7, :cond_2

    .line 537
    :cond_1
    const/4 v6, -0x1

    move v0, v6

    .line 565
    :goto_0
    return v0

    .line 539
    :cond_2
    move v6, v2

    const/16 v7, 0xf

    if-ne v6, v7, :cond_3

    .line 540
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->findName(Ljava/lang/String;Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v6

    move v0, v6

    goto :goto_0

    .line 543
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    move-object v7, v1

    iget-object v7, v7, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->doubleQuoteSuffix:Lokio/Options;

    invoke-interface {v6, v7}, Lokio/BufferedSource;->select(Lokio/Options;)I

    move-result v6

    move v3, v6

    .line 544
    move v6, v3

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 545
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 546
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    move-object v7, v0

    iget v7, v7, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move-object v8, v1

    iget-object v8, v8, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    move v9, v3

    aget-object v8, v8, v9

    aput-object v8, v6, v7

    .line 548
    move v6, v3

    move v0, v6

    goto :goto_0

    .line 553
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    move-object v7, v0

    iget v7, v7, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    move-object v4, v6

    .line 555
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextName()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 556
    move-object v6, v0

    move-object v7, v5

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->findName(Ljava/lang/String;Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v6

    move v3, v6

    .line 558
    move v6, v3

    const/4 v7, -0x1

    if-ne v6, v7, :cond_5

    .line 559
    move-object v6, v0

    const/16 v7, 0xf

    iput v7, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 560
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 562
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    move-object v7, v0

    iget v7, v7, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move-object v8, v4

    aput-object v8, v6, v7

    .line 565
    :cond_5
    move v6, v3

    move v0, v6

    goto :goto_0
.end method

.method public skipName()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 569
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->failOnUnknown:Z

    if-eqz v2, :cond_0

    .line 570
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot skip unexpected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 572
    :cond_0
    move-object v2, v0

    iget v2, v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v1, v2

    .line 573
    move v2, v1

    if-nez v2, :cond_1

    .line 574
    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v2

    move v1, v2

    .line 576
    :cond_1
    move v2, v1

    const/16 v3, 0xe

    if-ne v2, v3, :cond_3

    .line 577
    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipUnquotedValue()V

    .line 585
    :cond_2
    :goto_0
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 586
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    move-object v3, v0

    iget v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    const-string v4, "null"

    aput-object v4, v2, v3

    .line 587
    return-void

    .line 578
    :cond_3
    move v2, v1

    const/16 v3, 0xd

    if-ne v2, v3, :cond_4

    .line 579
    move-object v2, v0

    sget-object v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    goto :goto_0

    .line 580
    :cond_4
    move v2, v1

    const/16 v3, 0xc

    if-ne v2, v3, :cond_5

    .line 581
    move-object v2, v0

    sget-object v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    goto :goto_0

    .line 582
    :cond_5
    move v2, v1

    const/16 v3, 0xf

    if-eq v2, v3, :cond_2

    .line 583
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected a name but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public skipValue()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 832
    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->failOnUnknown:Z

    if-eqz v3, :cond_0

    .line 833
    new-instance v3, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot skip unexpected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 835
    :cond_0
    const/4 v3, 0x0

    move v1, v3

    .line 837
    :cond_1
    move-object v3, v0

    iget v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v2, v3

    .line 838
    move v3, v2

    if-nez v3, :cond_2

    .line 839
    move-object v3, v0

    invoke-direct {v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v3

    move v2, v3

    .line 842
    :cond_2
    move v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 843
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pushScope(I)V

    .line 844
    add-int/lit8 v1, v1, 0x1

    .line 874
    :cond_3
    :goto_0
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 875
    move v3, v1

    if-nez v3, :cond_1

    .line 877
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    move-object v4, v0

    iget v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget v5, v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 878
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    move-object v4, v0

    iget v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    const-string v5, "null"

    aput-object v5, v3, v4

    .line 879
    return-void

    .line 845
    :cond_4
    move v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 846
    move-object v3, v0

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pushScope(I)V

    .line 847
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 848
    :cond_5
    move v3, v2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7

    .line 849
    add-int/lit8 v1, v1, -0x1

    .line 850
    move v3, v1

    if-gez v3, :cond_6

    .line 851
    new-instance v3, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected a value but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    .line 852
    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 854
    :cond_6
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    goto :goto_0

    .line 855
    :cond_7
    move v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    .line 856
    add-int/lit8 v1, v1, -0x1

    .line 857
    move v3, v1

    if-gez v3, :cond_8

    .line 858
    new-instance v3, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected a value but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    .line 859
    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 861
    :cond_8
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    goto/16 :goto_0

    .line 862
    :cond_9
    move v3, v2

    const/16 v4, 0xe

    if-eq v3, v4, :cond_a

    move v3, v2

    const/16 v4, 0xa

    if-ne v3, v4, :cond_b

    .line 863
    :cond_a
    move-object v3, v0

    invoke-direct {v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipUnquotedValue()V

    goto/16 :goto_0

    .line 864
    :cond_b
    move v3, v2

    const/16 v4, 0x9

    if-eq v3, v4, :cond_c

    move v3, v2

    const/16 v4, 0xd

    if-ne v3, v4, :cond_d

    .line 865
    :cond_c
    move-object v3, v0

    sget-object v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    goto/16 :goto_0

    .line 866
    :cond_d
    move v3, v2

    const/16 v4, 0x8

    if-eq v3, v4, :cond_e

    move v3, v2

    const/16 v4, 0xc

    if-ne v3, v4, :cond_f

    .line 867
    :cond_e
    move-object v3, v0

    sget-object v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    goto/16 :goto_0

    .line 868
    :cond_f
    move v3, v2

    const/16 v4, 0x11

    if-ne v3, v4, :cond_10

    .line 869
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    move-object v4, v0

    iget v4, v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->skip(J)V

    goto/16 :goto_0

    .line 870
    :cond_10
    move v3, v2

    const/16 v4, 0x12

    if-ne v3, v4, :cond_3

    .line 871
    new-instance v3, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected a value but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    .line 872
    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 977
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JsonReader("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
