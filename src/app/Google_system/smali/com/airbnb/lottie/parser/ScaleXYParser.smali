.class public Lcom/airbnb/lottie/parser/ScaleXYParser;
.super Ljava/lang/Object;
.source "ScaleXYParser.java"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/parser/ValueParser",
        "<",
        "Lcom/airbnb/lottie/value/ScaleXY;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/airbnb/lottie/parser/ScaleXYParser;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    new-instance v0, Lcom/airbnb/lottie/parser/ScaleXYParser;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/airbnb/lottie/parser/ScaleXYParser;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/ScaleXYParser;->INSTANCE:Lcom/airbnb/lottie/parser/ScaleXYParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Lcom/airbnb/lottie/value/ScaleXY;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v1

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v6

    sget-object v7, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    :goto_0
    move v3, v6

    .line 18
    move v6, v3

    if-eqz v6, :cond_0

    .line 19
    move-object v6, v1

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 21
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v6, v6

    move v4, v6

    .line 22
    move-object v6, v1

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v6, v6

    move v5, v6

    .line 23
    :goto_1
    move-object v6, v1

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 24
    move-object v6, v1

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_1

    .line 17
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 26
    :cond_2
    move v6, v3

    if-eqz v6, :cond_3

    .line 27
    move-object v6, v1

    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 29
    :cond_3
    new-instance v6, Lcom/airbnb/lottie/value/ScaleXY;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move v8, v4

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    move v9, v2

    mul-float/2addr v8, v9

    move v9, v5

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v9, v10

    move v10, v2

    mul-float/2addr v9, v10

    invoke-direct {v7, v8, v9}, Lcom/airbnb/lottie/value/ScaleXY;-><init>(FF)V

    move-object v0, v6

    return-object v0
.end method

.method public bridge synthetic parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/parser/ScaleXYParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Lcom/airbnb/lottie/value/ScaleXY;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method
