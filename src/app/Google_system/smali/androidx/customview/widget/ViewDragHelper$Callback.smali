.class public abstract Landroidx/customview/widget/ViewDragHelper$Callback;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/customview/widget/ViewDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 152
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 310
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    const/4 v4, 0x0

    move v0, v4

    return v0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 325
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    const/4 v4, 0x0

    move v0, v4

    return v0
.end method

.method public getOrderedChildIndex(I)I
    .locals 3

    .prologue
    .line 255
    move-object v0, p0

    move v1, p1

    move v2, v1

    move v0, v2

    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 266
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 277
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public onEdgeDragStarted(II)V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method public onEdgeLock(I)Z
    .locals 3

    .prologue
    .line 232
    move-object v0, p0

    move v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public onEdgeTouched(II)V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 187
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 176
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 207
    return-void
.end method

.method public abstract tryCaptureView(Landroid/view/View;I)Z
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
