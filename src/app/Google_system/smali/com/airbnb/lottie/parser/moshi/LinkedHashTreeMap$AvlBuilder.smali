.class final Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AvlBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private leavesSkipped:I

.field private leavesToSkip:I

.field private size:I

.field private stack:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 670
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method add(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 687
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    const/4 v9, 0x0

    move-object v11, v8

    move-object v12, v9

    move-object v8, v12

    move-object v9, v11

    move-object v10, v12

    iput-object v10, v9, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v11, v7

    move-object v12, v8

    move-object v7, v12

    move-object v8, v11

    move-object v9, v12

    iput-object v9, v8, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    iput-object v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 688
    move-object v6, v1

    const/4 v7, 0x1

    iput v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 691
    move-object v6, v0

    iget v6, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    if-lez v6, :cond_0

    move-object v6, v0

    iget v6, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->size:I

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    .line 692
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->size:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 693
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    .line 694
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 697
    :cond_0
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    iput-object v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 698
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 699
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->size:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 702
    move-object v6, v0

    iget v6, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    if-lez v6, :cond_1

    move-object v6, v0

    iget v6, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->size:I

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_1

    .line 703
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->size:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 704
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    .line 705
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 721
    :cond_1
    const/4 v6, 0x4

    move v2, v6

    :goto_0
    move-object v6, v0

    iget v6, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->size:I

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    and-int/2addr v6, v7

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_5

    .line 722
    move-object v6, v0

    iget v6, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    if-nez v6, :cond_3

    .line 724
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v3, v6

    .line 725
    move-object v6, v3

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v4, v6

    .line 726
    move-object v6, v4

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v5, v6

    .line 727
    move-object v6, v4

    move-object v7, v5

    iget-object v7, v7, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    iput-object v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 728
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 730
    move-object v6, v4

    move-object v7, v5

    iput-object v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 731
    move-object v6, v4

    move-object v7, v3

    iput-object v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 732
    move-object v6, v4

    move-object v7, v3

    iget v7, v7, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 733
    move-object v6, v5

    move-object v7, v4

    iput-object v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 734
    move-object v6, v3

    move-object v7, v4

    iput-object v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 721
    :cond_2
    :goto_1
    move v6, v2

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    move v2, v6

    goto :goto_0

    .line 735
    :cond_3
    move-object v6, v0

    iget v6, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 737
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v3, v6

    .line 738
    move-object v6, v3

    iget-object v6, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v4, v6

    .line 739
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 741
    move-object v6, v4

    move-object v7, v3

    iput-object v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 742
    move-object v6, v4

    move-object v7, v3

    iget v7, v7, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 743
    move-object v6, v3

    move-object v7, v4

    iput-object v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 744
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 745
    goto :goto_1

    :cond_4
    move-object v6, v0

    iget v6, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 746
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    goto :goto_1

    .line 749
    :cond_5
    return-void
.end method

.method reset(I)V
    .locals 6

    .prologue
    .line 679
    move-object v0, p0

    move v1, p1

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v3

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    .line 680
    move-object v3, v0

    move v4, v2

    move v5, v1

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    .line 681
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 682
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 683
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 684
    return-void
.end method

.method root()Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 752
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v1, v2

    .line 753
    move-object v2, v1

    iget-object v2, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    if-eqz v2, :cond_0

    .line 754
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 756
    :cond_0
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method
