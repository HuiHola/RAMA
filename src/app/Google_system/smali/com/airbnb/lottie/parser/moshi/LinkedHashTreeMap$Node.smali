.class final Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final hash:I

.field height:I

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
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

.field parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field prev:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 7

    .prologue
    .line 479
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 480
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    .line 481
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->hash:I

    .line 482
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->prev:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    iput-object v2, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->next:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 483
    return-void
.end method

.method constructor <init>(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Ljava/lang/Object;ILcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node",
            "<TK;TV;>;TK;I",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node",
            "<TK;TV;>;",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 486
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 487
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 488
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    .line 489
    move-object v6, v0

    move v7, v3

    iput v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->hash:I

    .line 490
    move-object v6, v0

    const/4 v7, 0x1

    iput v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 491
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->next:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 492
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->prev:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 493
    move-object v6, v5

    move-object v7, v0

    iput-object v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->next:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 494
    move-object v6, v4

    move-object v7, v0

    iput-object v7, v6, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->prev:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 495
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 513
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    instance-of v3, v3, Ljava/util/Map$Entry;

    if-eqz v3, :cond_4

    .line 514
    move-object v3, v1

    check-cast v3, Ljava/util/Map$Entry;

    move-object v2, v3

    .line 515
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    if-nez v3, :cond_1

    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    if-nez v3, :cond_3

    move-object v3, v2

    .line 516
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    :goto_0
    const/4 v3, 0x1

    .line 515
    :goto_1
    move v0, v3

    .line 518
    :goto_2
    return v0

    .line 515
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 516
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 518
    :cond_4
    const/4 v3, 0x0

    move v0, v3

    goto :goto_2
.end method

.method public first()Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 534
    move-object v0, p0

    move-object v3, v0

    move-object v1, v3

    .line 535
    move-object v3, v1

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v2, v3

    .line 536
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 537
    move-object v3, v2

    move-object v1, v3

    .line 538
    move-object v3, v1

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v2, v3

    goto :goto_0

    .line 540
    :cond_0
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 498
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 502
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 522
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 523
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    xor-int/2addr v1, v2

    .line 522
    move v0, v1

    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    .line 523
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public last()Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 547
    move-object v0, p0

    move-object v3, v0

    move-object v1, v3

    .line 548
    move-object v3, v1

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v2, v3

    .line 549
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 550
    move-object v3, v2

    move-object v1, v3

    .line 551
    move-object v3, v1

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-object v2, v3

    goto :goto_0

    .line 553
    :cond_0
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 506
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    move-object v2, v3

    .line 507
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    .line 508
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 527
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
