.class final Lcom/airbnb/lottie/parser/moshi/JsonScope;
.super Ljava/lang/Object;
.source "JsonScope.java"


# static fields
.field static final CLOSED:I = 0x8

.field static final DANGLING_NAME:I = 0x4

.field static final EMPTY_ARRAY:I = 0x1

.field static final EMPTY_DOCUMENT:I = 0x6

.field static final EMPTY_OBJECT:I = 0x3

.field static final NONEMPTY_ARRAY:I = 0x2

.field static final NONEMPTY_DOCUMENT:I = 0x7

.field static final NONEMPTY_OBJECT:I = 0x5


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method static getPath(I[I[Ljava/lang/String;[I)Ljava/lang/String;
    .locals 10

    .prologue
    .line 56
    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x24

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v4, v6

    .line 57
    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v5

    move v7, v0

    if-ge v6, v7, :cond_1

    .line 58
    move-object v6, v1

    move v7, v5

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 57
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 61
    :pswitch_0
    move-object v6, v4

    const/16 v7, 0x5b

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    move v8, v5

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 62
    goto :goto_1

    .line 67
    :pswitch_1
    move-object v6, v4

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 68
    move-object v6, v2

    move v7, v5

    aget-object v6, v6, v7

    if-eqz v6, :cond_0

    .line 69
    move-object v6, v4

    move-object v7, v2

    move v8, v5

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_1

    .line 79
    :cond_1
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    return-object v0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
