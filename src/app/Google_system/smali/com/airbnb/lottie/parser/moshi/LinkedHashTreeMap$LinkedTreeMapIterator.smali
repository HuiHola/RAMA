.class abstract Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "LinkedTreeMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field lastReturned:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field next:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;)V
    .locals 4

    .prologue
    .line 760
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 761
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->header:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->next:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    iput-object v3, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->next:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 762
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 763
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    iget v3, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->modCount:I

    iput v3, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 3

    .prologue
    .line 766
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->next:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    iget-object v2, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->header:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final nextNode()Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 770
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->next:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v1, v2

    .line 771
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->header:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    if-ne v2, v3, :cond_0

    .line 772
    new-instance v2, Ljava/util/NoSuchElementException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 774
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    iget v2, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->modCount:I

    move-object v3, v0

    iget v3, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    if-eq v2, v3, :cond_1

    .line 775
    new-instance v2, Ljava/util/ConcurrentModificationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 777
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->next:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    iput-object v3, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->next:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 778
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v0, v2

    return-object v0
.end method

.method public final remove()V
    .locals 5

    .prologue
    .line 782
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    if-nez v1, :cond_0

    .line 783
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 785
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->removeInternal(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Z)V

    .line 786
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 787
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    iget v2, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->modCount:I

    iput v2, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    .line 788
    return-void
.end method
