.class public Lcom/airbnb/lottie/parser/ShapeDataParser;
.super Ljava/lang/Object;
.source "ShapeDataParser.java"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/parser/ValueParser",
        "<",
        "Lcom/airbnb/lottie/model/content/ShapeData;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/airbnb/lottie/parser/ShapeDataParser;

.field private static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 16
    new-instance v0, Lcom/airbnb/lottie/parser/ShapeDataParser;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Lcom/airbnb/lottie/parser/ShapeDataParser;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/ShapeDataParser;->INSTANCE:Lcom/airbnb/lottie/parser/ShapeDataParser;

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "c"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "v"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string v3, "i"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string v3, "o"

    aput-object v3, v1, v2

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/ShapeDataParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Lcom/airbnb/lottie/model/content/ShapeData;
    .locals 26
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

    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v19

    sget-object v20, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 32
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 35
    :cond_0
    const/16 v19, 0x0

    move/from16 v5, v19

    .line 36
    const/16 v19, 0x0

    move-object/from16 v6, v19

    .line 37
    const/16 v19, 0x0

    move-object/from16 v7, v19

    .line 38
    const/16 v19, 0x0

    move-object/from16 v8, v19

    .line 39
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 41
    :goto_0
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 42
    move-object/from16 v19, v3

    sget-object v20, Lcom/airbnb/lottie/parser/ShapeDataParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual/range {v19 .. v20}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v19

    packed-switch v19, :pswitch_data_0

    .line 56
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 57
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 44
    :pswitch_0
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v19

    move/from16 v5, v19

    .line 45
    goto :goto_0

    .line 47
    :pswitch_1
    move-object/from16 v19, v3

    move/from16 v20, v4

    invoke-static/range {v19 .. v20}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoints(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/util/List;

    move-result-object v19

    move-object/from16 v6, v19

    .line 48
    goto :goto_0

    .line 50
    :pswitch_2
    move-object/from16 v19, v3

    move/from16 v20, v4

    invoke-static/range {v19 .. v20}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoints(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/util/List;

    move-result-object v19

    move-object/from16 v7, v19

    .line 51
    goto :goto_0

    .line 53
    :pswitch_3
    move-object/from16 v19, v3

    move/from16 v20, v4

    invoke-static/range {v19 .. v20}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoints(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/util/List;

    move-result-object v19

    move-object/from16 v8, v19

    .line 54
    goto :goto_0

    .line 61
    :cond_1
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 63
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v19

    sget-object v20, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 64
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 67
    :cond_2
    move-object/from16 v19, v6

    if-eqz v19, :cond_3

    move-object/from16 v19, v7

    if-eqz v19, :cond_3

    move-object/from16 v19, v8

    if-nez v19, :cond_4

    .line 68
    :cond_3
    new-instance v19, Ljava/lang/IllegalArgumentException;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    const-string v21, "Shape data was missing information."

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 71
    :cond_4
    move-object/from16 v19, v6

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 72
    new-instance v19, Lcom/airbnb/lottie/model/content/ShapeData;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    new-instance v21, Landroid/graphics/PointF;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    invoke-direct/range {v22 .. v22}, Landroid/graphics/PointF;-><init>()V

    const/16 v22, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v23

    invoke-direct/range {v20 .. v23}, Lcom/airbnb/lottie/model/content/ShapeData;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    move-object/from16 v2, v19

    .line 101
    :goto_1
    return-object v2

    .line 75
    :cond_5
    move-object/from16 v19, v6

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v9, v19

    .line 76
    move-object/from16 v19, v6

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/PointF;

    move-object/from16 v10, v19

    .line 77
    move-object/from16 v19, v10

    move-object/from16 v11, v19

    .line 78
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move/from16 v21, v9

    invoke-direct/range {v20 .. v21}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v12, v19

    .line 80
    const/16 v19, 0x1

    move/from16 v13, v19

    :goto_2
    move/from16 v19, v13

    move/from16 v20, v9

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    .line 81
    move-object/from16 v19, v6

    move/from16 v20, v13

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/PointF;

    move-object/from16 v10, v19

    .line 82
    move-object/from16 v19, v6

    move/from16 v20, v13

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/PointF;

    move-object/from16 v14, v19

    .line 83
    move-object/from16 v19, v8

    move/from16 v20, v13

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/PointF;

    move-object/from16 v15, v19

    .line 84
    move-object/from16 v19, v7

    move/from16 v20, v13

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/PointF;

    move-object/from16 v16, v19

    .line 85
    move-object/from16 v19, v14

    move-object/from16 v20, v15

    invoke-static/range {v19 .. v20}, Lcom/airbnb/lottie/utils/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v19

    move-object/from16 v17, v19

    .line 86
    move-object/from16 v19, v10

    move-object/from16 v20, v16

    invoke-static/range {v19 .. v20}, Lcom/airbnb/lottie/utils/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v19

    move-object/from16 v18, v19

    .line 87
    move-object/from16 v19, v12

    new-instance v20, Lcom/airbnb/lottie/model/CubicCurveData;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move-object/from16 v22, v17

    move-object/from16 v23, v18

    move-object/from16 v24, v10

    invoke-direct/range {v21 .. v24}, Lcom/airbnb/lottie/model/CubicCurveData;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v19

    .line 80
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 90
    :cond_6
    move/from16 v19, v5

    if-eqz v19, :cond_7

    .line 91
    move-object/from16 v19, v6

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/PointF;

    move-object/from16 v10, v19

    .line 92
    move-object/from16 v19, v6

    move/from16 v20, v9

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/PointF;

    move-object/from16 v13, v19

    .line 93
    move-object/from16 v19, v8

    move/from16 v20, v9

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/PointF;

    move-object/from16 v14, v19

    .line 94
    move-object/from16 v19, v7

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/PointF;

    move-object/from16 v15, v19

    .line 96
    move-object/from16 v19, v13

    move-object/from16 v20, v14

    invoke-static/range {v19 .. v20}, Lcom/airbnb/lottie/utils/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v19

    move-object/from16 v16, v19

    .line 97
    move-object/from16 v19, v10

    move-object/from16 v20, v15

    invoke-static/range {v19 .. v20}, Lcom/airbnb/lottie/utils/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v19

    move-object/from16 v17, v19

    .line 99
    move-object/from16 v19, v12

    new-instance v20, Lcom/airbnb/lottie/model/CubicCurveData;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move-object/from16 v22, v16

    move-object/from16 v23, v17

    move-object/from16 v24, v10

    invoke-direct/range {v21 .. v24}, Lcom/airbnb/lottie/model/CubicCurveData;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v19

    .line 101
    :cond_7
    new-instance v19, Lcom/airbnb/lottie/model/content/ShapeData;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v11

    move/from16 v22, v5

    move-object/from16 v23, v12

    invoke-direct/range {v20 .. v23}, Lcom/airbnb/lottie/model/content/ShapeData;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    move-object/from16 v2, v19

    goto/16 :goto_1

    .line 42
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
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
    .line 15
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/parser/ShapeDataParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Lcom/airbnb/lottie/model/content/ShapeData;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method
