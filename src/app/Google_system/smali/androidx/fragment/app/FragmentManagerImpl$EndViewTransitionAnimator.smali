.class Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;
.super Landroid/view/animation/AnimationSet;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EndViewTransitionAnimator"
.end annotation


# instance fields
.field private mAnimating:Z

.field private final mChild:Landroid/view/View;

.field private mEnded:Z

.field private final mParent:Landroid/view/ViewGroup;

.field private mTransitionEnded:Z


# direct methods
.method constructor <init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/animation/Animation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 4072
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 4068
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mAnimating:Z

    .line 4073
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mParent:Landroid/view/ViewGroup;

    .line 4074
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mChild:Landroid/view/View;

    .line 4075
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->addAnimation(Landroid/view/animation/Animation;)V

    .line 4078
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mParent:Landroid/view/ViewGroup;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    move-result v4

    .line 4079
    return-void
.end method


# virtual methods
.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 9

    .prologue
    .line 4083
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mAnimating:Z

    .line 4084
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mEnded:Z

    if-eqz v5, :cond_1

    .line 4085
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mTransitionEnded:Z

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .line 4092
    :goto_1
    return v0

    .line 4085
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 4087
    :cond_1
    move-object v5, v0

    move-wide v6, v1

    move-object v8, v3

    invoke-super {v5, v6, v7, v8}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v5

    move v4, v5

    .line 4088
    move v5, v4

    if-nez v5, :cond_2

    .line 4089
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mEnded:Z

    .line 4090
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mParent:Landroid/view/ViewGroup;

    move-object v6, v0

    invoke-static {v5, v6}, Landroidx/fragment/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/fragment/app/OneShotPreDrawListener;

    move-result-object v5

    .line 4092
    :cond_2
    const/4 v5, 0x1

    move v0, v5

    goto :goto_1
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;F)Z
    .locals 11

    .prologue
    .line 4098
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mAnimating:Z

    .line 4099
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mEnded:Z

    if-eqz v6, :cond_1

    .line 4100
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mTransitionEnded:Z

    if-nez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    move v0, v6

    .line 4107
    :goto_1
    return v0

    .line 4100
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 4102
    :cond_1
    move-object v6, v0

    move-wide v7, v1

    move-object v9, v3

    move v10, v4

    invoke-super {v6, v7, v8, v9, v10}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result v6

    move v5, v6

    .line 4103
    move v6, v5

    if-nez v6, :cond_2

    .line 4104
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mEnded:Z

    .line 4105
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mParent:Landroid/view/ViewGroup;

    move-object v7, v0

    invoke-static {v6, v7}, Landroidx/fragment/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/fragment/app/OneShotPreDrawListener;

    move-result-object v6

    .line 4107
    :cond_2
    const/4 v6, 0x1

    move v0, v6

    goto :goto_1
.end method

.method public run()V
    .locals 3

    .prologue
    .line 4112
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mEnded:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mAnimating:Z

    if-eqz v1, :cond_0

    .line 4113
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mAnimating:Z

    .line 4115
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mParent:Landroid/view/ViewGroup;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 4120
    :goto_0
    return-void

    .line 4117
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mParent:Landroid/view/ViewGroup;

    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mChild:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 4118
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mTransitionEnded:Z

    goto :goto_0
.end method
