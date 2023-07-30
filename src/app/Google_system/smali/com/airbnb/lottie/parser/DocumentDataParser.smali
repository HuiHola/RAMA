.class public Lcom/airbnb/lottie/parser/DocumentDataParser;
.super Ljava/lang/Object;
.source "DocumentDataParser.java"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/parser/ValueParser",
        "<",
        "Lcom/airbnb/lottie/model/DocumentData;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/airbnb/lottie/parser/DocumentDataParser;

.field private static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 11
    new-instance v0, Lcom/airbnb/lottie/parser/DocumentDataParser;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Lcom/airbnb/lottie/parser/DocumentDataParser;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/DocumentDataParser;->INSTANCE:Lcom/airbnb/lottie/parser/DocumentDataParser;

    .line 12
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "t"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "f"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string v3, "s"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string v3, "j"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string v3, "tr"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string v3, "lh"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    const-string v3, "ls"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    const-string v3, "fc"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    const-string v3, "sc"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    const-string v3, "sw"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa

    const-string v3, "of"

    aput-object v3, v1, v2

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/DocumentDataParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Lcom/airbnb/lottie/model/DocumentData;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    const/16 v17, 0x0

    move-object/from16 v5, v17

    .line 32
    const/16 v17, 0x0

    move-object/from16 v6, v17

    .line 33
    const/16 v17, 0x0

    move/from16 v7, v17

    .line 34
    sget-object v17, Lcom/airbnb/lottie/model/DocumentData$Justification;->CENTER:Lcom/airbnb/lottie/model/DocumentData$Justification;

    move-object/from16 v8, v17

    .line 35
    const/16 v17, 0x0

    move/from16 v9, v17

    .line 36
    const/16 v17, 0x0

    move/from16 v10, v17

    .line 37
    const/16 v17, 0x0

    move/from16 v11, v17

    .line 38
    const/16 v17, 0x0

    move/from16 v12, v17

    .line 39
    const/16 v17, 0x0

    move/from16 v13, v17

    .line 40
    const/16 v17, 0x0

    move/from16 v14, v17

    .line 41
    const/16 v17, 0x1

    move/from16 v15, v17

    .line 43
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 44
    :goto_0
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 45
    move-object/from16 v17, v3

    sget-object v18, Lcom/airbnb/lottie/parser/DocumentDataParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual/range {v17 .. v18}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 85
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 86
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 47
    :pswitch_0
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v5, v17

    .line 48
    goto :goto_0

    .line 50
    :pswitch_1
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v6, v17

    .line 51
    goto :goto_0

    .line 53
    :pswitch_2
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v7, v17

    .line 54
    goto :goto_0

    .line 56
    :pswitch_3
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v17

    move/from16 v16, v17

    .line 57
    move/from16 v17, v16

    sget-object v18, Lcom/airbnb/lottie/model/DocumentData$Justification;->CENTER:Lcom/airbnb/lottie/model/DocumentData$Justification;

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/model/DocumentData$Justification;->ordinal()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_0

    move/from16 v17, v16

    if-gez v17, :cond_1

    .line 58
    :cond_0
    sget-object v17, Lcom/airbnb/lottie/model/DocumentData$Justification;->CENTER:Lcom/airbnb/lottie/model/DocumentData$Justification;

    move-object/from16 v8, v17

    goto :goto_0

    .line 60
    :cond_1
    invoke-static {}, Lcom/airbnb/lottie/model/DocumentData$Justification;->values()[Lcom/airbnb/lottie/model/DocumentData$Justification;

    move-result-object v17

    move/from16 v18, v16

    aget-object v17, v17, v18

    move-object/from16 v8, v17

    .line 62
    goto :goto_0

    .line 64
    :pswitch_4
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v17

    move/from16 v9, v17

    .line 65
    goto :goto_0

    .line 67
    :pswitch_5
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v10, v17

    .line 68
    goto :goto_0

    .line 70
    :pswitch_6
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v11, v17

    .line 71
    goto/16 :goto_0

    .line 73
    :pswitch_7
    move-object/from16 v17, v3

    invoke-static/range {v17 .. v17}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToColor(Lcom/airbnb/lottie/parser/moshi/JsonReader;)I

    move-result v17

    move/from16 v12, v17

    .line 74
    goto/16 :goto_0

    .line 76
    :pswitch_8
    move-object/from16 v17, v3

    invoke-static/range {v17 .. v17}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToColor(Lcom/airbnb/lottie/parser/moshi/JsonReader;)I

    move-result v17

    move/from16 v13, v17

    .line 77
    goto/16 :goto_0

    .line 79
    :pswitch_9
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v14, v17

    .line 80
    goto/16 :goto_0

    .line 82
    :pswitch_a
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v17

    move/from16 v15, v17

    .line 83
    goto/16 :goto_0

    .line 89
    :cond_2
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 91
    new-instance v17, Lcom/airbnb/lottie/model/DocumentData;

    move-object/from16 v30, v17

    move-object/from16 v17, v30

    move-object/from16 v18, v30

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v21, v7

    move-object/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    move/from16 v29, v15

    invoke-direct/range {v18 .. v29}, Lcom/airbnb/lottie/model/DocumentData;-><init>(Ljava/lang/String;Ljava/lang/String;FLcom/airbnb/lottie/model/DocumentData$Justification;IFFIIFZ)V

    move-object/from16 v2, v17

    return-object v2

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
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

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/parser/DocumentDataParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Lcom/airbnb/lottie/model/DocumentData;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method
