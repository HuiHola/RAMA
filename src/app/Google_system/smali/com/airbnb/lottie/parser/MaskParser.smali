.class Lcom/airbnb/lottie/parser/MaskParser;
.super Ljava/lang/Object;
.source "MaskParser.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/Mask;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v11, 0x0

    move-object v2, v11

    .line 19
    const/4 v11, 0x0

    move-object v3, v11

    .line 20
    const/4 v11, 0x0

    move-object v4, v11

    .line 21
    const/4 v11, 0x0

    move v5, v11

    .line 23
    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 24
    :goto_0
    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 25
    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 26
    move-object v11, v6

    move-object v7, v11

    const/4 v11, -0x1

    move v8, v11

    move-object v11, v7

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_0
    :goto_1
    move v11, v8

    packed-switch v11, :pswitch_data_0

    .line 58
    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 60
    :goto_2
    goto :goto_0

    .line 26
    :sswitch_0
    move-object v11, v7

    const-string v12, "mode"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x0

    move v8, v11

    goto :goto_1

    :sswitch_1
    move-object v11, v7

    const-string v12, "pt"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x1

    move v8, v11

    goto :goto_1

    :sswitch_2
    move-object v11, v7

    const-string v12, "o"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x2

    move v8, v11

    goto :goto_1

    :sswitch_3
    move-object v11, v7

    const-string v12, "inv"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x3

    move v8, v11

    goto :goto_1

    .line 28
    :pswitch_0
    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    const/4 v11, -0x1

    move v10, v11

    move-object v11, v9

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_1

    :cond_1
    :goto_3
    move v11, v10

    packed-switch v11, :pswitch_data_1

    .line 44
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown mask mode "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Defaulting to Add."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 45
    sget-object v11, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_ADD:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    move-object v2, v11

    .line 47
    :goto_4
    goto :goto_2

    .line 28
    :sswitch_4
    move-object v11, v9

    const-string v12, "a"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    move v10, v11

    goto :goto_3

    :sswitch_5
    move-object v11, v9

    const-string v12, "s"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    move v10, v11

    goto :goto_3

    :sswitch_6
    move-object v11, v9

    const-string v12, "n"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x2

    move v10, v11

    goto :goto_3

    :sswitch_7
    move-object v11, v9

    const-string v12, "i"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x3

    move v10, v11

    goto :goto_3

    .line 30
    :pswitch_1
    sget-object v11, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_ADD:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    move-object v2, v11

    .line 31
    goto :goto_4

    .line 33
    :pswitch_2
    sget-object v11, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_SUBTRACT:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    move-object v2, v11

    .line 34
    goto :goto_4

    .line 36
    :pswitch_3
    sget-object v11, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_NONE:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    move-object v2, v11

    .line 37
    goto :goto_4

    .line 39
    :pswitch_4
    move-object v11, v1

    const-string v12, "Animation contains intersect masks. They are not supported but will be treated like add masks."

    invoke-virtual {v11, v12}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 41
    sget-object v11, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_INTERSECT:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    move-object v2, v11

    .line 42
    goto :goto_4

    .line 49
    :pswitch_5
    move-object v11, v0

    move-object v12, v1

    invoke-static {v11, v12}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseShapeData(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

    move-result-object v11

    move-object v3, v11

    .line 50
    goto/16 :goto_2

    .line 52
    :pswitch_6
    move-object v11, v0

    move-object v12, v1

    invoke-static {v11, v12}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v11

    move-object v4, v11

    .line 53
    goto/16 :goto_2

    .line 55
    :pswitch_7
    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v11

    move v5, v11

    .line 56
    goto/16 :goto_2

    .line 61
    :cond_2
    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 63
    new-instance v11, Lcom/airbnb/lottie/model/content/Mask;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    move/from16 v16, v5

    invoke-direct/range {v12 .. v16}, Lcom/airbnb/lottie/model/content/Mask;-><init>(Lcom/airbnb/lottie/model/content/Mask$MaskMode;Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Z)V

    move-object v0, v11

    return-object v0

    .line 26
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f -> :sswitch_2
        0xe04 -> :sswitch_1
        0x197f1 -> :sswitch_3
        0x3339a3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 28
    :sswitch_data_1
    .sparse-switch
        0x61 -> :sswitch_4
        0x69 -> :sswitch_7
        0x6e -> :sswitch_6
        0x73 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
