.class public final Landroidx/core/view/ScaleGestureDetectorCompat;
.super Ljava/lang/Object;
.source "ScaleGestureDetectorCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isQuickScaleEnabled(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .prologue
    .line 78
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 79
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isQuickScaleEnabled()Z

    move-result v1

    move v0, v1

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static isQuickScaleEnabled(Ljava/lang/Object;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/ScaleGestureDetector;

    invoke-static {v1}, Landroidx/core/view/ScaleGestureDetectorCompat;->isQuickScaleEnabled(Landroid/view/ScaleGestureDetector;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static setQuickScaleEnabled(Landroid/view/ScaleGestureDetector;Z)V
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 54
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 56
    :cond_0
    return-void
.end method

.method public static setQuickScaleEnabled(Ljava/lang/Object;Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/ScaleGestureDetector;

    move v3, v1

    invoke-static {v2, v3}, Landroidx/core/view/ScaleGestureDetectorCompat;->setQuickScaleEnabled(Landroid/view/ScaleGestureDetector;Z)V

    .line 42
    return-void
.end method
