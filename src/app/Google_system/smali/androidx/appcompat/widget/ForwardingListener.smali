.class public abstract Landroidx/appcompat/widget/ForwardingListener;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ForwardingListener$TriggerLongPress;,
        Landroidx/appcompat/widget/ForwardingListener$DisallowIntercept;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mDisallowIntercept:Ljava/lang/Runnable;

.field private mForwarding:Z

.field private final mLongPressTimeout:I

.field private final mScaledTouchSlop:F

.field final mSrc:Landroid/view/View;

.field private final mTapTimeout:I

.field private final mTmpLocation:[I

.field private mTriggerLongPress:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 68
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 66
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, v2, Landroidx/appcompat/widget/ForwardingListener;->mTmpLocation:[I

    .line 69
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ForwardingListener;->mSrc:Landroid/view/View;

    .line 70
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setLongClickable(Z)V

    .line 71
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 73
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Landroidx/appcompat/widget/ForwardingListener;->mScaledTouchSlop:F

    .line 74
    move-object v2, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    iput v3, v2, Landroidx/appcompat/widget/ForwardingListener;->mTapTimeout:I

    .line 77
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/ForwardingListener;->mTapTimeout:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x2

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroidx/appcompat/widget/ForwardingListener;->mLongPressTimeout:I

    .line 78
    return-void
.end method

.method private clearCallbacks()V
    .locals 3

    .prologue
    .line 216
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 217
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ForwardingListener;->mSrc:Landroid/view/View;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 220
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 221
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ForwardingListener;->mSrc:Landroid/view/View;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 223
    :cond_1
    return-void
.end method

.method private onTouchForwarded(Landroid/view/MotionEvent;)Z
    .locals 12

    .prologue
    .line 259
    move-object v0, p0

    move-object v1, p1

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/ForwardingListener;->mSrc:Landroid/view/View;

    move-object v2, v9

    .line 260
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/appcompat/widget/ForwardingListener;->getPopup()Landroidx/appcompat/view/menu/ShowableListMenu;

    move-result-object v9

    move-object v3, v9

    .line 261
    move-object v9, v3

    if-eqz v9, :cond_0

    move-object v9, v3

    invoke-interface {v9}, Landroidx/appcompat/view/menu/ShowableListMenu;->isShowing()Z

    move-result v9

    if-nez v9, :cond_1

    .line 262
    :cond_0
    const/4 v9, 0x0

    move v0, v9

    .line 284
    :goto_0
    return v0

    .line 265
    :cond_1
    move-object v9, v3

    invoke-interface {v9}, Landroidx/appcompat/view/menu/ShowableListMenu;->getListView()Landroid/widget/ListView;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/widget/DropDownListView;

    move-object v4, v9

    .line 266
    move-object v9, v4

    if-eqz v9, :cond_2

    move-object v9, v4

    invoke-virtual {v9}, Landroidx/appcompat/widget/DropDownListView;->isShown()Z

    move-result v9

    if-nez v9, :cond_3

    .line 267
    :cond_2
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 271
    :cond_3
    move-object v9, v1

    invoke-static {v9}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    move-object v5, v9

    .line 272
    move-object v9, v0

    move-object v10, v2

    move-object v11, v5

    invoke-direct {v9, v10, v11}, Landroidx/appcompat/widget/ForwardingListener;->toGlobalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v9

    .line 273
    move-object v9, v0

    move-object v10, v4

    move-object v11, v5

    invoke-direct {v9, v10, v11}, Landroidx/appcompat/widget/ForwardingListener;->toLocalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v9

    .line 276
    move-object v9, v4

    move-object v10, v5

    move-object v11, v0

    iget v11, v11, Landroidx/appcompat/widget/ForwardingListener;->mActivePointerId:I

    invoke-virtual {v9, v10, v11}, Landroidx/appcompat/widget/DropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    move-result v9

    move v6, v9

    .line 277
    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 280
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    move v7, v9

    .line 281
    move v9, v7

    const/4 v10, 0x1

    if-eq v9, v10, :cond_4

    move v9, v7

    const/4 v10, 0x3

    if-eq v9, v10, :cond_4

    const/4 v9, 0x1

    :goto_1
    move v8, v9

    .line 284
    move v9, v6

    if-eqz v9, :cond_5

    move v9, v8

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    :goto_2
    move v0, v9

    goto :goto_0

    .line 281
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 284
    :cond_5
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private onTouchObserved(Landroid/view/MotionEvent;)Z
    .locals 12

    .prologue
    .line 170
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ForwardingListener;->mSrc:Landroid/view/View;

    move-object v2, v7

    .line 171
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 172
    const/4 v7, 0x0

    move v0, v7

    .line 212
    :goto_0
    return v0

    .line 175
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    move v3, v7

    .line 176
    move v7, v3

    packed-switch v7, :pswitch_data_0

    .line 212
    :cond_1
    :goto_1
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 178
    :pswitch_0
    move-object v7, v0

    move-object v8, v1

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, v7, Landroidx/appcompat/widget/ForwardingListener;->mActivePointerId:I

    .line 180
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-nez v7, :cond_2

    .line 181
    move-object v7, v0

    new-instance v8, Landroidx/appcompat/widget/ForwardingListener$DisallowIntercept;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Landroidx/appcompat/widget/ForwardingListener$DisallowIntercept;-><init>(Landroidx/appcompat/widget/ForwardingListener;)V

    iput-object v8, v7, Landroidx/appcompat/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    .line 183
    :cond_2
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    move-object v9, v0

    iget v9, v9, Landroidx/appcompat/widget/ForwardingListener;->mTapTimeout:I

    int-to-long v9, v9

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v7

    .line 185
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-nez v7, :cond_3

    .line 186
    move-object v7, v0

    new-instance v8, Landroidx/appcompat/widget/ForwardingListener$TriggerLongPress;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Landroidx/appcompat/widget/ForwardingListener$TriggerLongPress;-><init>(Landroidx/appcompat/widget/ForwardingListener;)V

    iput-object v8, v7, Landroidx/appcompat/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    .line 188
    :cond_3
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    move-object v9, v0

    iget v9, v9, Landroidx/appcompat/widget/ForwardingListener;->mLongPressTimeout:I

    int-to-long v9, v9

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v7

    .line 189
    goto :goto_1

    .line 191
    :pswitch_1
    move-object v7, v1

    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/widget/ForwardingListener;->mActivePointerId:I

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    move v4, v7

    .line 192
    move v7, v4

    if-ltz v7, :cond_1

    .line 193
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    move v5, v7

    .line 194
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    move v6, v7

    .line 197
    move-object v7, v2

    move v8, v5

    move v9, v6

    move-object v10, v0

    iget v10, v10, Landroidx/appcompat/widget/ForwardingListener;->mScaledTouchSlop:F

    invoke-static {v7, v8, v9, v10}, Landroidx/appcompat/widget/ForwardingListener;->pointInView(Landroid/view/View;FFF)Z

    move-result v7

    if-nez v7, :cond_4

    .line 198
    move-object v7, v0

    invoke-direct {v7}, Landroidx/appcompat/widget/ForwardingListener;->clearCallbacks()V

    .line 201
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 202
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 204
    :cond_4
    goto :goto_1

    .line 208
    :pswitch_2
    move-object v7, v0

    invoke-direct {v7}, Landroidx/appcompat/widget/ForwardingListener;->clearCallbacks()V

    goto/16 :goto_1

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static pointInView(Landroid/view/View;FFF)Z
    .locals 7

    .prologue
    .line 288
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v1

    move v5, v3

    neg-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    move v4, v2

    move v5, v3

    neg-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    move v4, v1

    move-object v5, v0

    .line 289
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move v6, v3

    add-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    move v4, v2

    move-object v5, v0

    .line 290
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move v6, v3

    add-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    return v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private toGlobalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    .line 309
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ForwardingListener;->mTmpLocation:[I

    move-object v3, v4

    .line 310
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 311
    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v5, v5

    move-object v6, v3

    const/4 v7, 0x1

    aget v6, v6, v7

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 312
    const/4 v4, 0x1

    move v0, v4

    return v0
.end method

.method private toLocalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    .line 298
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ForwardingListener;->mTmpLocation:[I

    move-object v3, v4

    .line 299
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 300
    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    aget v5, v5, v6

    neg-int v5, v5

    int-to-float v5, v5

    move-object v6, v3

    const/4 v7, 0x1

    aget v6, v6, v7

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 301
    const/4 v4, 0x1

    move v0, v4

    return v0
.end method


# virtual methods
.method public abstract getPopup()Landroidx/appcompat/view/menu/ShowableListMenu;
.end method

.method protected onForwardingStarted()Z
    .locals 3

    .prologue
    .line 139
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ForwardingListener;->getPopup()Landroidx/appcompat/view/menu/ShowableListMenu;

    move-result-object v2

    move-object v1, v2

    .line 140
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Landroidx/appcompat/view/menu/ShowableListMenu;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 141
    move-object v2, v1

    invoke-interface {v2}, Landroidx/appcompat/view/menu/ShowableListMenu;->show()V

    .line 143
    :cond_0
    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method protected onForwardingStopped()Z
    .locals 3

    .prologue
    .line 156
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ForwardingListener;->getPopup()Landroidx/appcompat/view/menu/ShowableListMenu;

    move-result-object v2

    move-object v1, v2

    .line 157
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Landroidx/appcompat/view/menu/ShowableListMenu;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    move-object v2, v1

    invoke-interface {v2}, Landroidx/appcompat/view/menu/ShowableListMenu;->dismiss()V

    .line 160
    :cond_0
    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method onLongPress()V
    .locals 13

    .prologue
    .line 226
    move-object v0, p0

    move-object v5, v0

    invoke-direct {v5}, Landroidx/appcompat/widget/ForwardingListener;->clearCallbacks()V

    .line 228
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ForwardingListener;->mSrc:Landroid/view/View;

    move-object v1, v5

    .line 229
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->isLongClickable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/ForwardingListener;->onForwardingStarted()Z

    move-result v5

    if-nez v5, :cond_2

    .line 236
    goto :goto_0

    .line 240
    :cond_2
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 243
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-wide v2, v5

    .line 244
    move-wide v5, v2

    move-wide v7, v2

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    move-object v4, v5

    .line 245
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 246
    move-object v5, v4

    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 248
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/appcompat/widget/ForwardingListener;->mForwarding:Z

    .line 249
    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16

    .prologue
    .line 94
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v8, v0

    iget-boolean v8, v8, Landroidx/appcompat/widget/ForwardingListener;->mForwarding:Z

    move v3, v8

    .line 96
    move v8, v3

    if-eqz v8, :cond_4

    .line 97
    move-object v8, v0

    move-object v9, v2

    invoke-direct {v8, v9}, Landroidx/appcompat/widget/ForwardingListener;->onTouchForwarded(Landroid/view/MotionEvent;)Z

    move-result v8

    if-nez v8, :cond_0

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/appcompat/widget/ForwardingListener;->onForwardingStopped()Z

    move-result v8

    if-nez v8, :cond_3

    :cond_0
    const/4 v8, 0x1

    :goto_0
    move v4, v8

    .line 111
    :cond_1
    :goto_1
    move-object v8, v0

    move v9, v4

    iput-boolean v9, v8, Landroidx/appcompat/widget/ForwardingListener;->mForwarding:Z

    .line 112
    move v8, v4

    if-nez v8, :cond_2

    move v8, v3

    if-eqz v8, :cond_6

    :cond_2
    const/4 v8, 0x1

    :goto_2
    move v0, v8

    return v0

    .line 97
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 99
    :cond_4
    move-object v8, v0

    move-object v9, v2

    invoke-direct {v8, v9}, Landroidx/appcompat/widget/ForwardingListener;->onTouchObserved(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/appcompat/widget/ForwardingListener;->onForwardingStarted()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    :goto_3
    move v4, v8

    .line 101
    move v8, v4

    if-eqz v8, :cond_1

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-wide v5, v8

    .line 104
    move-wide v8, v5

    move-wide v10, v5

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    move-object v7, v8

    .line 106
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ForwardingListener;->mSrc:Landroid/view/View;

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 107
    move-object v8, v7

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1

    .line 99
    :cond_5
    const/4 v8, 0x0

    goto :goto_3

    .line 112
    :cond_6
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 121
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/appcompat/widget/ForwardingListener;->mForwarding:Z

    .line 122
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/appcompat/widget/ForwardingListener;->mActivePointerId:I

    .line 124
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 125
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ForwardingListener;->mSrc:Landroid/view/View;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    .line 127
    :cond_0
    return-void
.end method
