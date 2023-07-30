.class Lcom/airbnb/lottie/parser/FontParser;
.super Ljava/lang/Object;
.source "FontParser.java"


# static fields
.field private static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "fFamily"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "fName"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string v3, "fStyle"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string v3, "ascent"

    aput-object v3, v1, v2

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/FontParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;)Lcom/airbnb/lottie/model/Font;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    move-object v0, p0

    const/4 v5, 0x0

    move-object v1, v5

    .line 20
    const/4 v5, 0x0

    move-object v2, v5

    .line 21
    const/4 v5, 0x0

    move-object v3, v5

    .line 22
    const/4 v5, 0x0

    move v4, v5

    .line 24
    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 25
    :goto_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 26
    move-object v5, v0

    sget-object v6, Lcom/airbnb/lottie/parser/FontParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 40
    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 41
    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 28
    :pswitch_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 29
    goto :goto_0

    .line 31
    :pswitch_1
    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 32
    goto :goto_0

    .line 34
    :pswitch_2
    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 35
    goto :goto_0

    .line 37
    :pswitch_3
    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v5

    double-to-float v5, v5

    move v4, v5

    .line 38
    goto :goto_0

    .line 44
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 46
    new-instance v5, Lcom/airbnb/lottie/model/Font;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/airbnb/lottie/model/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    move-object v0, v5

    return-object v0

    .line 26
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
