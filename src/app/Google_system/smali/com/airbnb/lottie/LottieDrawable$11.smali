.class Lcom/airbnb/lottie/LottieDrawable$11;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/LottieDrawable;

.field final synthetic val$endMarkerName:Ljava/lang/String;

.field final synthetic val$playEndMarkerStartFrame:Z

.field final synthetic val$startMarkerName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 612
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/airbnb/lottie/LottieDrawable$11;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/airbnb/lottie/LottieDrawable$11;->val$startMarkerName:Ljava/lang/String;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/airbnb/lottie/LottieDrawable$11;->val$endMarkerName:Ljava/lang/String;

    move-object v5, v0

    move v6, v4

    iput-boolean v6, v5, Lcom/airbnb/lottie/LottieDrawable$11;->val$playEndMarkerStartFrame:Z

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 6

    .prologue
    .line 615
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable$11;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable$11;->val$startMarkerName:Ljava/lang/String;

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieDrawable$11;->val$endMarkerName:Ljava/lang/String;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/airbnb/lottie/LottieDrawable$11;->val$playEndMarkerStartFrame:Z

    invoke-virtual {v2, v3, v4, v5}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 616
    return-void
.end method
