.class Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlIterator;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AvlIterator"
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
.field private stackTop:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
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
    .line 622
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public next()Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 636
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlIterator;->stackTop:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v1, v4

    .line 637
    move-object v4, v1

    if-nez v4, :cond_0

    .line 638
    const/4 v4, 0x0

    move-object v0, v4

    .line 648
    :goto_0
    return-object v0

    .line 640
    :cond_0
    move-object v4, v1

    move-object v2, v4

    .line 641
    move-object v4, v2

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v1, v4

    .line 642
    move-object v4, v2

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 643
    move-object v4, v2

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v3, v4

    :goto_1
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 644
    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 645
    move-object v4, v3

    move-object v1, v4

    .line 643
    move-object v4, v3

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v3, v4

    goto :goto_1

    .line 647
    :cond_1
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlIterator;->stackTop:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 648
    move-object v4, v2

    move-object v0, v4

    goto :goto_0
.end method

.method reset(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 627
    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move-object v2, v4

    .line 628
    move-object v4, v1

    move-object v3, v4

    :goto_0
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 629
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 630
    move-object v4, v3

    move-object v2, v4

    .line 628
    move-object v4, v3

    iget-object v4, v4, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v3, v4

    goto :goto_0

    .line 632
    :cond_0
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlIterator;->stackTop:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 633
    return-void
.end method
