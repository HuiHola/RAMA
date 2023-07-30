.class final Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;)V
    .locals 4

    .prologue
    .line 791
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;->this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    move-object v2, v0

    invoke-direct {v2}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 822
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;->this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    invoke-virtual {v1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->clear()V

    .line 823
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 805
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;->this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    move-object v3, v1

    check-cast v3, Ljava/util/Map$Entry;

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->findByEntry(Ljava/util/Map$Entry;)Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

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

.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 797
    move-object v0, p0

    new-instance v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet$1;-><init>(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;)V

    move-object v0, v1

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 809
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    instance-of v3, v3, Ljava/util/Map$Entry;

    if-nez v3, :cond_0

    .line 810
    const/4 v3, 0x0

    move v0, v3

    .line 818
    :goto_0
    return v0

    .line 813
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;->this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    move-object v4, v1

    check-cast v4, Ljava/util/Map$Entry;

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->findByEntry(Ljava/util/Map$Entry;)Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object v3

    move-object v2, v3

    .line 814
    move-object v3, v2

    if-nez v3, :cond_1

    .line 815
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 817
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;->this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->removeInternal(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Z)V

    .line 818
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 793
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;->this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    iget v1, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->size:I

    move v0, v1

    return v0
.end method
