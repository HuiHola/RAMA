.class final Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;
.super Ljava/util/AbstractMap;
.source "LinkedHashTreeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet;,
        Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;,
        Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;,
        Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;,
        Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlIterator;,
        Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private entrySet:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap",
            "<TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field final header:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private keySet:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap",
            "<TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field modCount:I

.field size:I

.field table:[Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const-class v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->$assertionsDisabled:Z

    .line 41
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$1;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;-><init>(Ljava/util/Comparator;)V

    .line 60
    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/util/AbstractMap;-><init>()V

    .line 50
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->size:I

    .line 51
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->modCount:I

    .line 73
    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_0

    .line 74
    move-object v3, v1

    .line 75
    :goto_0
    iput-object v3, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->comparator:Ljava/util/Comparator;

    .line 76
    move-object v2, v0

    new-instance v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;-><init>()V

    iput-object v3, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->header:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 77
    move-object v2, v0

    const/16 v3, 0x10

    new-array v3, v3, [Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    iput-object v3, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->table:[Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 78
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->table:[Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    array-length v3, v3

    const/4 v4, 0x2

    div-int/lit8 v3, v3, 0x2

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->table:[Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    array-length v4, v4

    const/4 v5, 0x4

    div-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    iput v3, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->threshold:I

    .line 79
    return-void

    .line 75
    :cond_0
    sget-object v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    goto :goto_0
.end method

.method private doubleCapacity()V
    .locals 5

    .prologue
    .line 558
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->table:[Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    invoke-static {v2}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->doubleCapacity([Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)[Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object v2

    iput-object v2, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->table:[Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 559
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->table:[Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    array-length v2, v2

    const/4 v3, 0x2

    div-int/lit8 v2, v2, 0x2

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->table:[Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    array-length v3, v3

    const/4 v4, 0x4

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->threshold:I

    .line 560
    return-void
.end method

.method static doubleCapacity([Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)[Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node",
            "<TK;TV;>;)[",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 568
    move-object v0, p0

    move-object v11, v0

    array-length v11, v11

    move v1, v11

    .line 570
    move v11, v1

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    new-array v11, v11, [Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v2, v11

    .line 571
    new-instance v11, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlIterator;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlIterator;-><init>()V

    move-object v3, v11

    .line 572
    new-instance v11, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;-><init>()V

    move-object v4, v11

    .line 573
    new-instance v11, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;-><init>()V

    move-object v5, v11

    .line 576
    const/4 v11, 0x0

    move v6, v11

    :goto_0
    move v11, v6

    move v12, v1

    if-ge v11, v12, :cond_7

    .line 577
    move-object v11, v0

    move v12, v6

    aget-object v11, v11, v12

    move-object v7, v11

    .line 578
    move-object v11, v7

    if-nez v11, :cond_0

    .line 576
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 583
    :cond_0
    move-object v11, v3

    move-object v12, v7

    invoke-virtual {v11, v12}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlIterator;->reset(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    .line 584
    const/4 v11, 0x0

    move v8, v11

    .line 585
    const/4 v11, 0x0

    move v9, v11

    .line 586
    :goto_2
    move-object v11, v3

    invoke-virtual {v11}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlIterator;->next()Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object v11

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v10, v12

    if-eqz v11, :cond_2

    .line 587
    move-object v11, v10

    iget v11, v11, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->hash:I

    move v12, v1

    and-int/2addr v11, v12

    if-nez v11, :cond_1

    .line 588
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 590
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 595
    :cond_2
    move-object v11, v4

    move v12, v8

    invoke-virtual {v11, v12}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->reset(I)V

    .line 596
    move-object v11, v5

    move v12, v9

    invoke-virtual {v11, v12}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->reset(I)V

    .line 597
    move-object v11, v3

    move-object v12, v7

    invoke-virtual {v11, v12}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlIterator;->reset(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    .line 598
    :goto_3
    move-object v11, v3

    invoke-virtual {v11}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlIterator;->next()Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object v11

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v10, v12

    if-eqz v11, :cond_4

    .line 599
    move-object v11, v10

    iget v11, v11, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->hash:I

    move v12, v1

    and-int/2addr v11, v12

    if-nez v11, :cond_3

    .line 600
    move-object v11, v4

    move-object v12, v10

    invoke-virtual {v11, v12}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->add(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    goto :goto_3

    .line 602
    :cond_3
    move-object v11, v5

    move-object v12, v10

    invoke-virtual {v11, v12}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->add(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    goto :goto_3

    .line 607
    :cond_4
    move-object v11, v2

    move v12, v6

    move v13, v8

    if-lez v13, :cond_5

    move-object v13, v4

    invoke-virtual {v13}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->root()Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object v13

    :goto_4
    aput-object v13, v11, v12

    .line 608
    move-object v11, v2

    move v12, v6

    move v13, v1

    add-int/2addr v12, v13

    move v13, v9

    if-lez v13, :cond_6

    move-object v13, v5

    invoke-virtual {v13}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->root()Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object v13

    :goto_5
    aput-object v13, v11, v12

    goto :goto_1

    .line 607
    :cond_5
    const/4 v13, 0x0

    goto :goto_4

    .line 608
    :cond_6
    const/4 v13, 0x0

    goto :goto_5

    .line 610
    :cond_7
    move-object v11, v2

    move-object v0, v11

    return-object v0
.end method

.method private equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 224
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    if-eq v3, v4, :cond_0

    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private rebalance(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    .prologue
    .line 339
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v14, v1

    move-object v3, v14

    :goto_0
    move-object v14, v3

    if-eqz v14, :cond_1

    .line 340
    move-object v14, v3

    iget-object v14, v14, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v4, v14

    .line 341
    move-object v14, v3

    iget-object v14, v14, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v5, v14

    .line 342
    move-object v14, v4

    if-eqz v14, :cond_2

    move-object v14, v4

    iget v14, v14, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    :goto_1
    move v6, v14

    .line 343
    move-object v14, v5

    if-eqz v14, :cond_3

    move-object v14, v5

    iget v14, v14, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    :goto_2
    move v7, v14

    .line 345
    move v14, v6

    move v15, v7

    sub-int/2addr v14, v15

    move v8, v14

    .line 346
    move v14, v8

    const/4 v15, -0x2

    if-ne v14, v15, :cond_9

    .line 347
    move-object v14, v5

    iget-object v14, v14, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v9, v14

    .line 348
    move-object v14, v5

    iget-object v14, v14, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v10, v14

    .line 349
    move-object v14, v10

    if-eqz v14, :cond_4

    move-object v14, v10

    iget v14, v14, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    :goto_3
    move v11, v14

    .line 350
    move-object v14, v9

    if-eqz v14, :cond_5

    move-object v14, v9

    iget v14, v14, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    :goto_4
    move v12, v14

    .line 352
    move v14, v12

    move v15, v11

    sub-int/2addr v14, v15

    move v13, v14

    .line 353
    move v14, v13

    const/4 v15, -0x1

    if-eq v14, v15, :cond_0

    move v14, v13

    if-nez v14, :cond_6

    move v14, v2

    if-nez v14, :cond_6

    .line 354
    :cond_0
    move-object v14, v0

    move-object v15, v3

    invoke-direct {v14, v15}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->rotateLeft(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    .line 360
    :goto_5
    move v14, v2

    if-eqz v14, :cond_8

    .line 396
    :cond_1
    :goto_6
    return-void

    .line 342
    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    .line 343
    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    .line 349
    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    .line 350
    :cond_5
    const/4 v14, 0x0

    goto :goto_4

    .line 356
    :cond_6
    sget-boolean v14, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->$assertionsDisabled:Z

    if-nez v14, :cond_7

    move v14, v13

    const/4 v15, 0x1

    if-eq v14, v15, :cond_7

    new-instance v14, Ljava/lang/AssertionError;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 357
    :cond_7
    move-object v14, v0

    move-object v15, v5

    invoke-direct {v14, v15}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->rotateRight(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    .line 358
    move-object v14, v0

    move-object v15, v3

    invoke-direct {v14, v15}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->rotateLeft(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    goto :goto_5

    .line 339
    :cond_8
    :goto_7
    move-object v14, v3

    iget-object v14, v14, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v3, v14

    goto :goto_0

    .line 364
    :cond_9
    move v14, v8

    const/4 v15, 0x2

    if-ne v14, v15, :cond_10

    .line 365
    move-object v14, v4

    iget-object v14, v14, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v9, v14

    .line 366
    move-object v14, v4

    iget-object v14, v14, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v10, v14

    .line 367
    move-object v14, v10

    if-eqz v14, :cond_b

    move-object v14, v10

    iget v14, v14, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    :goto_8
    move v11, v14

    .line 368
    move-object v14, v9

    if-eqz v14, :cond_c

    move-object v14, v9

    iget v14, v14, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    :goto_9
    move v12, v14

    .line 370
    move v14, v12

    move v15, v11

    sub-int/2addr v14, v15

    move v13, v14

    .line 371
    move v14, v13

    const/4 v15, 0x1

    if-eq v14, v15, :cond_a

    move v14, v13

    if-nez v14, :cond_d

    move v14, v2

    if-nez v14, :cond_d

    .line 372
    :cond_a
    move-object v14, v0

    move-object v15, v3

    invoke-direct {v14, v15}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->rotateRight(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    .line 378
    :goto_a
    move v14, v2

    if-eqz v14, :cond_f

    .line 379
    goto :goto_6

    .line 367
    :cond_b
    const/4 v14, 0x0

    goto :goto_8

    .line 368
    :cond_c
    const/4 v14, 0x0

    goto :goto_9

    .line 374
    :cond_d
    sget-boolean v14, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->$assertionsDisabled:Z

    if-nez v14, :cond_e

    move v14, v13

    const/4 v15, -0x1

    if-eq v14, v15, :cond_e

    new-instance v14, Ljava/lang/AssertionError;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 375
    :cond_e
    move-object v14, v0

    move-object v15, v4

    invoke-direct {v14, v15}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->rotateLeft(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    .line 376
    move-object v14, v0

    move-object v15, v3

    invoke-direct {v14, v15}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->rotateRight(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    goto :goto_a

    .line 382
    :cond_f
    goto :goto_7

    :cond_10
    move v14, v8

    if-nez v14, :cond_11

    .line 383
    move-object v14, v3

    move v15, v6

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    iput v15, v14, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 384
    move v14, v2

    if-eqz v14, :cond_8

    .line 385
    goto/16 :goto_6

    .line 389
    :cond_11
    sget-boolean v14, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->$assertionsDisabled:Z

    if-nez v14, :cond_12

    move v14, v8

    const/4 v15, -0x1

    if-eq v14, v15, :cond_12

    move v14, v8

    const/4 v15, 0x1

    if-eq v14, v15, :cond_12

    new-instance v14, Ljava/lang/AssertionError;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 390
    :cond_12
    move-object v14, v3

    move v15, v6

    move/from16 v16, v7

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    iput v15, v14, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 391
    move v14, v2

    if-nez v14, :cond_8

    .line 392
    goto/16 :goto_6
.end method

.method private replaceInParent(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node",
            "<TK;TV;>;",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 312
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    iget-object v5, v5, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v3, v5

    .line 313
    move-object v5, v1

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 314
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 315
    move-object v5, v2

    move-object v6, v3

    iput-object v6, v5, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 318
    :cond_0
    move-object v5, v3

    if-eqz v5, :cond_3

    .line 319
    move-object v5, v3

    iget-object v5, v5, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v6, v1

    if-ne v5, v6, :cond_1

    .line 320
    move-object v5, v3

    move-object v6, v2

    iput-object v6, v5, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 329
    :goto_0
    return-void

    .line 322
    :cond_1
    sget-boolean v5, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    move-object v5, v3

    iget-object v5, v5, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v6, v1

    if-eq v5, v6, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 323
    :cond_2
    move-object v5, v3

    move-object v6, v2

    iput-object v6, v5, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    goto :goto_0

    .line 326
    :cond_3
    move-object v5, v1

    iget v5, v5, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->hash:I

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->table:[Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    array-length v6, v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    move v4, v5

    .line 327
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->table:[Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move v6, v4

    move-object v7, v2

    aput-object v7, v5, v6

    goto :goto_0
.end method

.method private rotateLeft(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 402
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v2, v6

    .line 403
    move-object v6, v1

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v3, v6

    .line 404
    move-object v6, v3

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v4, v6

    .line 405
    move-object v6, v3

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v5, v6

    .line 408
    move-object v6, v1

    move-object v7, v4

    iput-object v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 409
    move-object v6, v4

    if-eqz v6, :cond_0

    .line 410
    move-object v6, v4

    move-object v7, v1

    iput-object v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 413
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->replaceInParent(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    .line 416
    move-object v6, v3

    move-object v7, v1

    iput-object v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 417
    move-object v6, v1

    move-object v7, v3

    iput-object v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 420
    move-object v6, v1

    move-object v7, v2

    if-eqz v7, :cond_1

    move-object v7, v2

    iget v7, v7, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 421
    :goto_0
    move-object v8, v4

    if-eqz v8, :cond_2

    move-object v8, v4

    iget v8, v8, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 420
    :goto_1
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 422
    move-object v6, v3

    move-object v7, v1

    iget v7, v7, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 423
    move-object v8, v5

    if-eqz v8, :cond_3

    move-object v8, v5

    iget v8, v8, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 422
    :goto_2
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 424
    return-void

    .line 420
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 421
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 423
    :cond_3
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private rotateRight(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 430
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v2, v6

    .line 431
    move-object v6, v1

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v3, v6

    .line 432
    move-object v6, v2

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v4, v6

    .line 433
    move-object v6, v2

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v5, v6

    .line 436
    move-object v6, v1

    move-object v7, v5

    iput-object v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 437
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 438
    move-object v6, v5

    move-object v7, v1

    iput-object v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 441
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->replaceInParent(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    .line 444
    move-object v6, v2

    move-object v7, v1

    iput-object v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 445
    move-object v6, v1

    move-object v7, v2

    iput-object v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 448
    move-object v6, v1

    move-object v7, v3

    if-eqz v7, :cond_1

    move-object v7, v3

    iget v7, v7, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 449
    :goto_0
    move-object v8, v5

    if-eqz v8, :cond_2

    move-object v8, v5

    iget v8, v8, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 448
    :goto_1
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 450
    move-object v6, v2

    move-object v7, v1

    iget v7, v7, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 451
    move-object v8, v4

    if-eqz v8, :cond_3

    move-object v8, v4

    iget v8, v8, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 450
    :goto_2
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 452
    return-void

    .line 448
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 449
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 451
    :cond_3
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private static secondaryHash(I)I
    .locals 5

    .prologue
    .line 235
    move v0, p0

    move v1, v0

    move v2, v0

    const/16 v3, 0x14

    ushr-int/lit8 v2, v2, 0x14

    move v3, v0

    const/16 v4, 0xc

    ushr-int/lit8 v3, v3, 0xc

    xor-int/2addr v2, v3

    xor-int/2addr v1, v2

    move v0, v1

    .line 236
    move v1, v0

    move v2, v0

    const/4 v3, 0x7

    ushr-int/lit8 v2, v2, 0x7

    xor-int/2addr v1, v2

    move v2, v0

    const/4 v3, 0x4

    ushr-int/lit8 v2, v2, 0x4

    xor-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 859
    move-object v0, p0

    new-instance v1, Ljava/util/LinkedHashMap;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 10

    .prologue
    .line 105
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->table:[Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->size:I

    .line 107
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->modCount:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->modCount:I

    .line 110
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->header:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v1, v4

    .line 111
    move-object v4, v1

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->next:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v2, v4

    :goto_0
    move-object v4, v2

    move-object v5, v1

    if-eq v4, v5, :cond_0

    .line 112
    move-object v4, v2

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->next:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v3, v4

    .line 113
    move-object v4, v2

    move-object v5, v2

    const/4 v6, 0x0

    move-object v8, v5

    move-object v9, v6

    move-object v5, v9

    move-object v6, v8

    move-object v7, v9

    iput-object v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->prev:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    iput-object v5, v4, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->next:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 114
    move-object v4, v3

    move-object v2, v4

    .line 115
    goto :goto_0

    .line 117
    :cond_0
    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v8, v5

    move-object v9, v6

    move-object v5, v9

    move-object v6, v8

    move-object v7, v9

    iput-object v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->prev:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    iput-object v5, v4, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->next:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 118
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 458
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->entrySet:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;

    move-object v1, v2

    .line 459
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    move-object v2, v0

    new-instance v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;-><init>(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;)V

    move-object v6, v2

    move-object v7, v3

    move-object v2, v7

    move-object v3, v6

    move-object v4, v7

    iput-object v4, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->entrySet:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;

    goto :goto_0
.end method

.method find(Ljava/lang/Object;Z)Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 132
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v12, v1

    iget-object v12, v12, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->comparator:Ljava/util/Comparator;

    move-object v4, v12

    .line 133
    move-object v12, v1

    iget-object v12, v12, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->table:[Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v5, v12

    .line 134
    move-object v12, v2

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v12

    invoke-static {v12}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->secondaryHash(I)I

    move-result v12

    move v6, v12

    .line 135
    move v12, v6

    move-object v13, v5

    array-length v13, v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    and-int/2addr v12, v13

    move v7, v12

    .line 136
    move-object v12, v5

    move v13, v7

    aget-object v12, v12, v13

    move-object v8, v12

    .line 137
    const/4 v12, 0x0

    move v9, v12

    .line 139
    move-object v12, v8

    if-eqz v12, :cond_3

    .line 142
    move-object v12, v4

    sget-object v13, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v12, v13, :cond_0

    .line 143
    move-object v12, v2

    check-cast v12, Ljava/lang/Comparable;

    .line 144
    :goto_0
    move-object v10, v12

    .line 147
    :goto_1
    move-object v12, v10

    if-eqz v12, :cond_1

    .line 148
    move-object v12, v10

    move-object v13, v8

    iget-object v13, v13, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v12, v13}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v12

    .line 149
    :goto_2
    move v9, v12

    .line 152
    move v12, v9

    if-nez v12, :cond_2

    .line 153
    move-object v12, v8

    move-object v1, v12

    .line 196
    :goto_3
    return-object v1

    .line 144
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 149
    :cond_1
    move-object v12, v4

    move-object v13, v2

    move-object v14, v8

    iget-object v14, v14, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v12, v13, v14}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v12

    goto :goto_2

    .line 157
    :cond_2
    move v12, v9

    if-gez v12, :cond_4

    move-object v12, v8

    iget-object v12, v12, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    :goto_4
    move-object v11, v12

    .line 158
    move-object v12, v11

    if-nez v12, :cond_5

    .line 167
    :cond_3
    move v12, v3

    if-nez v12, :cond_6

    .line 168
    const/4 v12, 0x0

    move-object v1, v12

    goto :goto_3

    .line 157
    :cond_4
    move-object v12, v8

    iget-object v12, v12, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    goto :goto_4

    .line 162
    :cond_5
    move-object v12, v11

    move-object v8, v12

    .line 163
    goto :goto_1

    .line 172
    :cond_6
    move-object v12, v1

    iget-object v12, v12, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->header:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v10, v12

    .line 174
    move-object v12, v8

    if-nez v12, :cond_9

    .line 176
    move-object v12, v4

    sget-object v13, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v12, v13, :cond_7

    move-object v12, v2

    instance-of v12, v12, Ljava/lang/Comparable;

    if-nez v12, :cond_7

    .line 177
    new-instance v12, Ljava/lang/ClassCastException;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v2

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is not Comparable"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 179
    :cond_7
    new-instance v12, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v14, v8

    move-object v15, v2

    move/from16 v16, v6

    move-object/from16 v17, v10

    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->prev:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object/from16 v18, v0

    invoke-direct/range {v13 .. v18}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;-><init>(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Ljava/lang/Object;ILcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    move-object v11, v12

    .line 180
    move-object v12, v5

    move v13, v7

    move-object v14, v11

    aput-object v14, v12, v13

    .line 191
    :goto_5
    move-object v12, v1

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    iget v13, v13, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->size:I

    move-object/from16 v19, v12

    move/from16 v20, v13

    move/from16 v12, v20

    move-object/from16 v13, v19

    move/from16 v14, v20

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    iput v14, v13, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->size:I

    move-object v13, v1

    iget v13, v13, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->threshold:I

    if-le v12, v13, :cond_8

    .line 192
    move-object v12, v1

    invoke-direct {v12}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->doubleCapacity()V

    .line 194
    :cond_8
    move-object v12, v1

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    iget v13, v13, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->modCount:I

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->modCount:I

    .line 196
    move-object v12, v11

    move-object v1, v12

    goto/16 :goto_3

    .line 182
    :cond_9
    new-instance v12, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v14, v8

    move-object v15, v2

    move/from16 v16, v6

    move-object/from16 v17, v10

    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->prev:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object/from16 v18, v0

    invoke-direct/range {v13 .. v18}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;-><init>(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Ljava/lang/Object;ILcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    move-object v11, v12

    .line 183
    move v12, v9

    if-gez v12, :cond_a

    .line 184
    move-object v12, v8

    move-object v13, v11

    iput-object v13, v12, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 188
    :goto_6
    move-object v12, v1

    move-object v13, v8

    const/4 v14, 0x1

    invoke-direct {v12, v13, v14}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->rebalance(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Z)V

    goto :goto_5

    .line 186
    :cond_a
    move-object v12, v8

    move-object v13, v11

    iput-object v13, v12, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    goto :goto_6
.end method

.method findByEntry(Ljava/util/Map$Entry;)Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 218
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object v4

    move-object v2, v4

    .line 219
    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v2

    iget-object v5, v5, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    move-object v6, v1

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 220
    move v4, v3

    if-eqz v4, :cond_1

    move-object v4, v2

    :goto_1
    move-object v0, v4

    return-object v0

    .line 219
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 220
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method findByObject(Ljava/lang/Object;)Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->find(Ljava/lang/Object;Z)Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    move-object v0, v3

    .line 204
    :goto_1
    return-object v0

    .line 202
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 204
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object v3

    move-object v2, v3

    .line 87
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 463
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->keySet:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet;

    move-object v1, v2

    .line 464
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    move-object v2, v0

    new-instance v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet;-><init>(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;)V

    move-object v6, v2

    move-object v7, v3

    move-object v2, v7

    move-object v3, v6

    move-object v4, v7

    iput-object v4, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->keySet:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet;

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    if-nez v5, :cond_0

    .line 96
    new-instance v5, Ljava/lang/NullPointerException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "key == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 98
    :cond_0
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->find(Ljava/lang/Object;Z)Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object v5

    move-object v3, v5

    .line 99
    move-object v5, v3

    iget-object v5, v5, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    move-object v4, v5

    .line 100
    move-object v5, v3

    move-object v6, v2

    iput-object v6, v5, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    .line 101
    move-object v5, v4

    move-object v0, v5

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->removeInternalByKey(Ljava/lang/Object;)Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object v3

    move-object v2, v3

    .line 122
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method removeInternal(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Z)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    .prologue
    .line 246
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move v9, v2

    if-eqz v9, :cond_0

    .line 247
    move-object v9, v1

    iget-object v9, v9, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->prev:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v10, v1

    iget-object v10, v10, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->next:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    iput-object v10, v9, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->next:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 248
    move-object v9, v1

    iget-object v9, v9, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->next:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v10, v1

    iget-object v10, v10, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->prev:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    iput-object v10, v9, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->prev:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 249
    move-object v9, v1

    move-object v10, v1

    const/4 v11, 0x0

    move-object v13, v10

    move-object v14, v11

    move-object v10, v14

    move-object v11, v13

    move-object v12, v14

    iput-object v12, v11, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->prev:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    iput-object v10, v9, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->next:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 252
    :cond_0
    move-object v9, v1

    iget-object v9, v9, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v3, v9

    .line 253
    move-object v9, v1

    iget-object v9, v9, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v4, v9

    .line 254
    move-object v9, v1

    iget-object v9, v9, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v5, v9

    .line 255
    move-object v9, v3

    if-eqz v9, :cond_4

    move-object v9, v4

    if-eqz v9, :cond_4

    .line 266
    move-object v9, v3

    iget v9, v9, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    move-object v10, v4

    iget v10, v10, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    if-le v9, v10, :cond_3

    move-object v9, v3

    invoke-virtual {v9}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->last()Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object v9

    :goto_0
    move-object v6, v9

    .line 267
    move-object v9, v0

    move-object v10, v6

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->removeInternal(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Z)V

    .line 269
    const/4 v9, 0x0

    move v7, v9

    .line 270
    move-object v9, v1

    iget-object v9, v9, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v3, v9

    .line 271
    move-object v9, v3

    if-eqz v9, :cond_1

    .line 272
    move-object v9, v3

    iget v9, v9, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    move v7, v9

    .line 273
    move-object v9, v6

    move-object v10, v3

    iput-object v10, v9, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 274
    move-object v9, v3

    move-object v10, v6

    iput-object v10, v9, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 275
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 277
    :cond_1
    const/4 v9, 0x0

    move v8, v9

    .line 278
    move-object v9, v1

    iget-object v9, v9, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v4, v9

    .line 279
    move-object v9, v4

    if-eqz v9, :cond_2

    .line 280
    move-object v9, v4

    iget v9, v9, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    move v8, v9

    .line 281
    move-object v9, v6

    move-object v10, v4

    iput-object v10, v9, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 282
    move-object v9, v4

    move-object v10, v6

    iput-object v10, v9, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 283
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 285
    :cond_2
    move-object v9, v6

    move v10, v7

    move v11, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 286
    move-object v9, v0

    move-object v10, v1

    move-object v11, v6

    invoke-direct {v9, v10, v11}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->replaceInParent(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    .line 301
    :goto_1
    return-void

    .line 266
    :cond_3
    move-object v9, v4

    invoke-virtual {v9}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->first()Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object v9

    goto :goto_0

    .line 288
    :cond_4
    move-object v9, v3

    if-eqz v9, :cond_5

    .line 289
    move-object v9, v0

    move-object v10, v1

    move-object v11, v3

    invoke-direct {v9, v10, v11}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->replaceInParent(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    .line 290
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 298
    :goto_2
    move-object v9, v0

    move-object v10, v5

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->rebalance(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Z)V

    .line 299
    move-object v9, v0

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->size:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->size:I

    .line 300
    move-object v9, v0

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->modCount:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->modCount:I

    .line 301
    goto :goto_1

    .line 291
    :cond_5
    move-object v9, v4

    if-eqz v9, :cond_6

    .line 292
    move-object v9, v0

    move-object v10, v1

    move-object v11, v4

    invoke-direct {v9, v10, v11}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->replaceInParent(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    .line 293
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    goto :goto_2

    .line 295
    :cond_6
    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->replaceInParent(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    goto :goto_2
.end method

.method removeInternalByKey(Ljava/lang/Object;)Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 304
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object v3

    move-object v2, v3

    .line 305
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 306
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->removeInternal(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Z)V

    .line 308
    :cond_0
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->size:I

    move v0, v1

    return v0
.end method
