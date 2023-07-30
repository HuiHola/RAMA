.class Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$1;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Comparable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 5

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/Comparable;

    move-object v5, v2

    check-cast v5, Ljava/lang/Comparable;

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$1;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v3

    move v0, v3

    return v0
.end method
