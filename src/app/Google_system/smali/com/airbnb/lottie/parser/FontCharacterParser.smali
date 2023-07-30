.class Lcom/airbnb/lottie/parser/FontCharacterParser;
.super Ljava/lang/Object;
.source "FontCharacterParser.java"


# static fields
.field private static final DATA_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 13
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "ch"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "size"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string v3, "w"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string v3, "style"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string v3, "fFamily"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string v3, "data"

    aput-object v3, v1, v2

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/FontCharacterParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "shapes"

    aput-object v3, v1, v2

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/FontCharacterParser;->DATA_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/FontCharacter;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v10, 0x0

    move v2, v10

    .line 29
    const-wide/16 v10, 0x0

    move-wide v3, v10

    .line 30
    const-wide/16 v10, 0x0

    move-wide v5, v10

    .line 31
    const/4 v10, 0x0

    move-object v7, v10

    .line 32
    const/4 v10, 0x0

    move-object v8, v10

    .line 33
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v10

    .line 35
    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 36
    :goto_0
    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 37
    move-object v10, v0

    sget-object v11, Lcom/airbnb/lottie/parser/FontCharacterParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v10, v11}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 72
    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 73
    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 39
    :pswitch_0
    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v2, v10

    .line 40
    goto :goto_0

    .line 42
    :pswitch_1
    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v10

    move-wide v3, v10

    .line 43
    goto :goto_0

    .line 45
    :pswitch_2
    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v10

    move-wide v5, v10

    .line 46
    goto :goto_0

    .line 48
    :pswitch_3
    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 49
    goto :goto_0

    .line 51
    :pswitch_4
    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 52
    goto :goto_0

    .line 54
    :pswitch_5
    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 55
    :goto_1
    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 56
    move-object v10, v0

    sget-object v11, Lcom/airbnb/lottie/parser/FontCharacterParser;->DATA_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v10, v11}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v10

    packed-switch v10, :pswitch_data_1

    .line 65
    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 66
    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_1

    .line 58
    :pswitch_6
    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 59
    :goto_2
    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 60
    move-object v10, v9

    move-object v11, v0

    move-object v12, v1

    invoke-static {v11, v12}, Lcom/airbnb/lottie/parser/ContentModelParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    move-result-object v11

    check-cast v11, Lcom/airbnb/lottie/model/content/ShapeGroup;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_2

    .line 62
    :cond_0
    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 63
    goto :goto_1

    .line 69
    :cond_1
    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 70
    goto/16 :goto_0

    .line 76
    :cond_2
    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 78
    new-instance v10, Lcom/airbnb/lottie/model/FontCharacter;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    move-object v12, v9

    move v13, v2

    move-wide v14, v3

    move-wide/from16 v16, v5

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    invoke-direct/range {v11 .. v19}, Lcom/airbnb/lottie/model/FontCharacter;-><init>(Ljava/util/List;CDDLjava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    return-object v0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 56
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
