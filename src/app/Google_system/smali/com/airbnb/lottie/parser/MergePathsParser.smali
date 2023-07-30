.class Lcom/airbnb/lottie/parser/MergePathsParser;
.super Ljava/lang/Object;
.source "MergePathsParser.java"


# static fields
.field private static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "nm"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "mm"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string v3, "hd"

    aput-object v3, v1, v2

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/MergePathsParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;)Lcom/airbnb/lottie/model/content/MergePaths;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    move-object v0, p0

    const/4 v4, 0x0

    move-object v1, v4

    .line 19
    const/4 v4, 0x0

    move-object v2, v4

    .line 20
    const/4 v4, 0x0

    move v3, v4

    .line 22
    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 23
    move-object v4, v0

    sget-object v5, Lcom/airbnb/lottie/parser/MergePathsParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 34
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 35
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 25
    :pswitch_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 26
    goto :goto_0

    .line 28
    :pswitch_1
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v4

    invoke-static {v4}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->forId(I)Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    move-result-object v4

    move-object v2, v4

    .line 29
    goto :goto_0

    .line 31
    :pswitch_2
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v4

    move v3, v4

    .line 32
    goto :goto_0

    .line 39
    :cond_0
    new-instance v4, Lcom/airbnb/lottie/model/content/MergePaths;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/airbnb/lottie/model/content/MergePaths;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;Z)V

    move-object v0, v4

    return-object v0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
