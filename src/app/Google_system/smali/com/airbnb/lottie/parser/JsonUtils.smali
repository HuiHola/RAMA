.class Lcom/airbnb/lottie/parser/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# static fields
.field private static final POINT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "x"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "y"

    aput-object v3, v1, v2

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/JsonUtils;->POINT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method private static jsonArrayToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 68
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v4, v4

    move v2, v4

    .line 69
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v4, v4

    move v3, v4

    .line 70
    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v4

    sget-object v5, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-eq v4, v5, :cond_0

    .line 71
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 73
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 74
    new-instance v4, Landroid/graphics/PointF;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move v6, v2

    move v7, v1

    mul-float/2addr v6, v7

    move v7, v3

    move v8, v1

    mul-float/2addr v7, v8

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v0, v4

    return-object v0
.end method

.method private static jsonNumbersToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v4, v4

    move v2, v4

    .line 57
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v4, v4

    move v3, v4

    .line 58
    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 61
    :cond_0
    new-instance v4, Landroid/graphics/PointF;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move v6, v2

    move v7, v1

    mul-float/2addr v6, v7

    move v7, v3

    move v8, v1

    mul-float/2addr v7, v8

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v0, v4

    return-object v0
.end method

.method private static jsonObjectToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    move v1, p1

    const/4 v4, 0x0

    move v2, v4

    .line 81
    const/4 v4, 0x0

    move v3, v4

    .line 82
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 83
    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    move-object v4, v0

    sget-object v5, Lcom/airbnb/lottie/parser/JsonUtils;->POINT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 92
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 93
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 86
    :pswitch_0
    move-object v4, v0

    invoke-static {v4}, Lcom/airbnb/lottie/parser/JsonUtils;->valueFromObject(Lcom/airbnb/lottie/parser/moshi/JsonReader;)F

    move-result v4

    move v2, v4

    .line 87
    goto :goto_0

    .line 89
    :pswitch_1
    move-object v4, v0

    invoke-static {v4}, Lcom/airbnb/lottie/parser/JsonUtils;->valueFromObject(Lcom/airbnb/lottie/parser/moshi/JsonReader;)F

    move-result v4

    move v3, v4

    .line 90
    goto :goto_0

    .line 96
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 97
    new-instance v4, Landroid/graphics/PointF;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move v6, v2

    move v7, v1

    mul-float/2addr v6, v7

    move v7, v3

    move v8, v1

    mul-float/2addr v7, v8

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v0, v4

    return-object v0

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static jsonToColor(Lcom/airbnb/lottie/parser/moshi/JsonReader;)I
    .locals 8
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 23
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v4

    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    move v1, v4

    .line 24
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v4

    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    move v2, v4

    .line 25
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v4

    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    move v3, v4

    .line 26
    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 27
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 29
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 30
    const/16 v4, 0xff

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    move v0, v4

    return v0
.end method

.method static jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    move v1, p1

    sget-object v2, Lcom/airbnb/lottie/parser/JsonUtils$1;->$SwitchMap$com$airbnb$lottie$parser$moshi$JsonReader$Token:[I

    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 51
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown point starts with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    :pswitch_0
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonNumbersToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v2

    move-object v0, v2

    .line 50
    :goto_0
    return-object v0

    .line 49
    :pswitch_1
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonArrayToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 50
    :pswitch_2
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonObjectToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static jsonToPoints(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "F)",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    move-object v0, p0

    move v1, p1

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 36
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 37
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v3

    sget-object v4, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v3, v4, :cond_0

    .line 38
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 39
    move-object v3, v2

    move-object v4, v0

    move v5, v1

    invoke-static {v4, v5}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 40
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    goto :goto_0

    .line 42
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 43
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method static valueFromObject(Lcom/airbnb/lottie/parser/moshi/JsonReader;)F
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v3

    move-object v1, v3

    .line 102
    sget-object v3, Lcom/airbnb/lottie/parser/JsonUtils$1;->$SwitchMap$com$airbnb$lottie$parser$moshi$JsonReader$Token:[I

    move-object v4, v1

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 114
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown value for token of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 104
    :pswitch_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v3

    double-to-float v3, v3

    move v0, v3

    .line 112
    :goto_0
    return v0

    .line 106
    :pswitch_1
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 107
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v3

    double-to-float v3, v3

    move v2, v3

    .line 108
    :goto_1
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_1

    .line 111
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 112
    move v3, v2

    move v0, v3

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
