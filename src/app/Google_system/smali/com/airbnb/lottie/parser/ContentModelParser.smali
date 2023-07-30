.class Lcom/airbnb/lottie/parser/ContentModelParser;
.super Ljava/lang/Object;
.source "ContentModelParser.java"


# static fields
.field private static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "ty"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "d"

    aput-object v3, v1, v2

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/ContentModelParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, p1

    const/4 v7, 0x0

    move-object v2, v7

    .line 26
    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 30
    const/4 v7, 0x2

    move v3, v7

    .line 32
    :goto_0
    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 33
    move-object v7, v0

    sget-object v8, Lcom/airbnb/lottie/parser/ContentModelParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 41
    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 42
    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 35
    :pswitch_0
    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 46
    :cond_0
    move-object v7, v2

    if-nez v7, :cond_1

    .line 47
    const/4 v7, 0x0

    move-object v0, v7

    .line 103
    :goto_1
    return-object v0

    .line 38
    :pswitch_1
    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v7

    move v3, v7

    .line 39
    goto :goto_0

    .line 50
    :cond_1
    const/4 v7, 0x0

    move-object v4, v7

    .line 51
    move-object v7, v2

    move-object v5, v7

    const/4 v7, -0x1

    move v6, v7

    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_2
    :goto_2
    move v7, v6

    packed-switch v7, :pswitch_data_1

    .line 95
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown shape type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 98
    :goto_3
    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 99
    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_3

    .line 51
    :sswitch_0
    move-object v7, v5

    const-string v8, "gr"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    move v6, v7

    goto :goto_2

    :sswitch_1
    move-object v7, v5

    const-string v8, "st"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    move v6, v7

    goto :goto_2

    :sswitch_2
    move-object v7, v5

    const-string v8, "gs"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x2

    move v6, v7

    goto :goto_2

    :sswitch_3
    move-object v7, v5

    const-string v8, "fl"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x3

    move v6, v7

    goto :goto_2

    :sswitch_4
    move-object v7, v5

    const-string v8, "gf"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x4

    move v6, v7

    goto :goto_2

    :sswitch_5
    move-object v7, v5

    const-string v8, "tr"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x5

    move v6, v7

    goto :goto_2

    :sswitch_6
    move-object v7, v5

    const-string v8, "sh"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x6

    move v6, v7

    goto :goto_2

    :sswitch_7
    move-object v7, v5

    const-string v8, "el"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x7

    move v6, v7

    goto/16 :goto_2

    :sswitch_8
    move-object v7, v5

    const-string v8, "rc"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x8

    move v6, v7

    goto/16 :goto_2

    :sswitch_9
    move-object v7, v5

    const-string v8, "tm"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x9

    move v6, v7

    goto/16 :goto_2

    :sswitch_a
    move-object v7, v5

    const-string v8, "sr"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0xa

    move v6, v7

    goto/16 :goto_2

    :sswitch_b
    move-object v7, v5

    const-string v8, "mm"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0xb

    move v6, v7

    goto/16 :goto_2

    :sswitch_c
    move-object v7, v5

    const-string v8, "rp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0xc

    move v6, v7

    goto/16 :goto_2

    .line 53
    :pswitch_2
    move-object v7, v0

    move-object v8, v1

    invoke-static {v7, v8}, Lcom/airbnb/lottie/parser/ShapeGroupParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeGroup;

    move-result-object v7

    move-object v4, v7

    .line 54
    goto/16 :goto_3

    .line 56
    :pswitch_3
    move-object v7, v0

    move-object v8, v1

    invoke-static {v7, v8}, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeStroke;

    move-result-object v7

    move-object v4, v7

    .line 57
    goto/16 :goto_3

    .line 59
    :pswitch_4
    move-object v7, v0

    move-object v8, v1

    invoke-static {v7, v8}, Lcom/airbnb/lottie/parser/GradientStrokeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/GradientStroke;

    move-result-object v7

    move-object v4, v7

    .line 60
    goto/16 :goto_3

    .line 62
    :pswitch_5
    move-object v7, v0

    move-object v8, v1

    invoke-static {v7, v8}, Lcom/airbnb/lottie/parser/ShapeFillParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeFill;

    move-result-object v7

    move-object v4, v7

    .line 63
    goto/16 :goto_3

    .line 65
    :pswitch_6
    move-object v7, v0

    move-object v8, v1

    invoke-static {v7, v8}, Lcom/airbnb/lottie/parser/GradientFillParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/GradientFill;

    move-result-object v7

    move-object v4, v7

    .line 66
    goto/16 :goto_3

    .line 68
    :pswitch_7
    move-object v7, v0

    move-object v8, v1

    invoke-static {v7, v8}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v7

    move-object v4, v7

    .line 69
    goto/16 :goto_3

    .line 71
    :pswitch_8
    move-object v7, v0

    move-object v8, v1

    invoke-static {v7, v8}, Lcom/airbnb/lottie/parser/ShapePathParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapePath;

    move-result-object v7

    move-object v4, v7

    .line 72
    goto/16 :goto_3

    .line 74
    :pswitch_9
    move-object v7, v0

    move-object v8, v1

    move v9, v3

    invoke-static {v7, v8, v9}, Lcom/airbnb/lottie/parser/CircleShapeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;I)Lcom/airbnb/lottie/model/content/CircleShape;

    move-result-object v7

    move-object v4, v7

    .line 75
    goto/16 :goto_3

    .line 77
    :pswitch_a
    move-object v7, v0

    move-object v8, v1

    invoke-static {v7, v8}, Lcom/airbnb/lottie/parser/RectangleShapeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/RectangleShape;

    move-result-object v7

    move-object v4, v7

    .line 78
    goto/16 :goto_3

    .line 80
    :pswitch_b
    move-object v7, v0

    move-object v8, v1

    invoke-static {v7, v8}, Lcom/airbnb/lottie/parser/ShapeTrimPathParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeTrimPath;

    move-result-object v7

    move-object v4, v7

    .line 81
    goto/16 :goto_3

    .line 83
    :pswitch_c
    move-object v7, v0

    move-object v8, v1

    invoke-static {v7, v8}, Lcom/airbnb/lottie/parser/PolystarShapeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/PolystarShape;

    move-result-object v7

    move-object v4, v7

    .line 84
    goto/16 :goto_3

    .line 86
    :pswitch_d
    move-object v7, v0

    invoke-static {v7}, Lcom/airbnb/lottie/parser/MergePathsParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;)Lcom/airbnb/lottie/model/content/MergePaths;

    move-result-object v7

    move-object v4, v7

    .line 87
    move-object v7, v1

    const-string v8, "Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove()."

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 90
    goto/16 :goto_3

    .line 92
    :pswitch_e
    move-object v7, v0

    move-object v8, v1

    invoke-static {v7, v8}, Lcom/airbnb/lottie/parser/RepeaterParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/Repeater;

    move-result-object v7

    move-object v4, v7

    .line 93
    goto/16 :goto_3

    .line 101
    :cond_3
    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 103
    move-object v7, v4

    move-object v0, v7

    goto/16 :goto_1

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 51
    :sswitch_data_0
    .sparse-switch
        0xca7 -> :sswitch_7
        0xcc6 -> :sswitch_3
        0xcdf -> :sswitch_4
        0xceb -> :sswitch_0
        0xcec -> :sswitch_2
        0xda0 -> :sswitch_b
        0xe31 -> :sswitch_8
        0xe3e -> :sswitch_c
        0xe55 -> :sswitch_6
        0xe5f -> :sswitch_a
        0xe61 -> :sswitch_1
        0xe79 -> :sswitch_9
        0xe7e -> :sswitch_5
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
