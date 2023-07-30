.class Lcom/airbnb/lottie/model/layer/BaseLayer$1;
.super Ljava/lang/Object;
.source "BaseLayer.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/model/layer/BaseLayer;->setupInOutAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/model/layer/BaseLayer;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/model/layer/BaseLayer;)V
    .locals 4

    .prologue
    .line 152
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/model/layer/BaseLayer$1;->this$0:Lcom/airbnb/lottie/model/layer/BaseLayer;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged()V
    .locals 4

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/BaseLayer$1;->this$0:Lcom/airbnb/lottie/model/layer/BaseLayer;

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/BaseLayer$1;->this$0:Lcom/airbnb/lottie/model/layer/BaseLayer;

    invoke-static {v2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->access$000(Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v1, v2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->access$100(Lcom/airbnb/lottie/model/layer/BaseLayer;Z)V

    .line 156
    return-void

    .line 155
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
