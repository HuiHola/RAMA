.class Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet$1;
.super Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap",
        "<TK;TV;>.",
        "LinkedTreeMapIterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet;)V
    .locals 4

    .prologue
    .line 832
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet$1;->this$1:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet;

    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet;->this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;-><init>(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 834
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet$1;->nextNode()Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object v1

    iget-object v1, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method
