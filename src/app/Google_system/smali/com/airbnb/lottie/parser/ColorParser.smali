.class public Lcom/airbnb/lottie/parser/ColorParser;
.super Ljava/lang/Object;
.source "ColorParser.java"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/parser/ValueParser",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/airbnb/lottie/parser/ColorParser;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    new-instance v0, Lcom/airbnb/lottie/parser/ColorParser;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/airbnb/lottie/parser/ColorParser;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/ColorParser;->INSTANCE:Lcom/airbnb/lottie/parser/ColorParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Integer;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v12, v1

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v12

    sget-object v13, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v12, v13, :cond_3

    const/4 v12, 0x1

    :goto_0
    move v3, v12

    .line 17
    move v12, v3

    if-eqz v12, :cond_0

    .line 18
    move-object v12, v1

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 20
    :cond_0
    move-object v12, v1

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v12

    move-wide v4, v12

    .line 21
    move-object v12, v1

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v12

    move-wide v6, v12

    .line 22
    move-object v12, v1

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v12

    move-wide v8, v12

    .line 23
    move-object v12, v1

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v12

    move-wide v10, v12

    .line 24
    move v12, v3

    if-eqz v12, :cond_1

    .line 25
    move-object v12, v1

    invoke-virtual {v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 28
    :cond_1
    move-wide v12, v4

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_2

    move-wide v12, v6

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_2

    move-wide v12, v8

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_2

    .line 29
    move-wide v12, v4

    const-wide v14, 0x406fe00000000000L    # 255.0

    mul-double/2addr v12, v14

    move-wide v4, v12

    .line 30
    move-wide v12, v6

    const-wide v14, 0x406fe00000000000L    # 255.0

    mul-double/2addr v12, v14

    move-wide v6, v12

    .line 31
    move-wide v12, v8

    const-wide v14, 0x406fe00000000000L    # 255.0

    mul-double/2addr v12, v14

    move-wide v8, v12

    .line 35
    move-wide v12, v10

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_2

    move-wide v12, v10

    const-wide v14, 0x406fe00000000000L    # 255.0

    mul-double/2addr v12, v14

    move-wide v10, v12

    .line 38
    :cond_2
    move-wide v12, v10

    double-to-int v12, v12

    move-wide v13, v4

    double-to-int v13, v13

    move-wide v14, v6

    double-to-int v14, v14

    move-wide v15, v8

    double-to-int v15, v15

    invoke-static {v12, v13, v14, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v0, v12

    return-object v0

    .line 16
    :cond_3
    const/4 v12, 0x0

    goto :goto_0
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

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/parser/ColorParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method
