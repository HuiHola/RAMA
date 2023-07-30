.class final Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet;
.super Ljava/util/AbstractSet;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;)V
    .locals 4

    .prologue
    .line 826
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet;->this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    move-object v2, v0

    invoke-direct {v2}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 848
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet;->this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    invoke-virtual {v1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->clear()V

    .line 849
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 840
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet;->this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 832
    move-object v0, p0

    new-instance v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet$1;-><init>(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet;)V

    move-object v0, v1

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 844
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet;->this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->removeInternalByKey(Ljava/lang/Object;)Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

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

.method public size()I
    .locals 2

    .prologue
    .line 828
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet;->this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    iget v1, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->size:I

    move v0, v1

    return v0
.end method
