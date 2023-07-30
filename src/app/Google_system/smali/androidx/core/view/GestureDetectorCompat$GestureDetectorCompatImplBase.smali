.class Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;
.super Ljava/lang/Object;
.source "GestureDetectorCompat.java"

# interfaces
.implements Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/GestureDetectorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GestureDetectorCompatImplBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_TIMEOUT:I

.field private static final LONGPRESS_TIMEOUT:I

.field private static final LONG_PRESS:I = 0x2

.field private static final SHOW_PRESS:I = 0x1

.field private static final TAP:I = 0x3

.field private static final TAP_TIMEOUT:I


# instance fields
.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field mCurrentDownEvent:Landroid/view/MotionEvent;

.field mDeferConfirmSingleTap:Z

.field mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private final mHandler:Landroid/os/Handler;

.field private mInLongPress:Z

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastFocusX:F

.field private mLastFocusY:F

.field final mListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field mStillDown:Z

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->LONGPRESS_TIMEOUT:I

    .line 63
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->TAP_TIMEOUT:I

    .line 64
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->DOUBLE_TAP_TIMEOUT:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 10

    .prologue
    .line 152
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 153
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 154
    move-object v4, v0

    new-instance v5, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;-><init>(Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;Landroid/os/Handler;)V

    iput-object v5, v4, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    .line 158
    :goto_0
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 159
    move-object v4, v2

    instance-of v4, v4, Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v4, :cond_0

    .line 160
    move-object v4, v0

    move-object v5, v2

    check-cast v5, Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-virtual {v4, v5}, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 162
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->init(Landroid/content/Context;)V

    .line 163
    return-void

    .line 156
    :cond_1
    move-object v4, v0

    new-instance v5, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;-><init>(Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)V

    iput-object v5, v4, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private cancel()V
    .locals 3

    .prologue
    .line 414
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 415
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 416
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 417
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 418
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 419
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    .line 420
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mStillDown:Z

    .line 421
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    .line 422
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    .line 423
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    .line 424
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    if-eqz v1, :cond_0

    .line 425
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    .line 427
    :cond_0
    return-void
.end method

.method private cancelTaps()V
    .locals 3

    .prologue
    .line 430
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 431
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 432
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 433
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    .line 434
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    .line 435
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    .line 436
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    .line 437
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    if-eqz v1, :cond_0

    .line 438
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    .line 440
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 9

    .prologue
    .line 166
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    if-nez v5, :cond_0

    .line 167
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Context must not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 169
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    if-nez v5, :cond_1

    .line 170
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "OnGestureListener must not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 172
    :cond_1
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsLongpressEnabled:Z

    .line 174
    move-object v5, v1

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    move-object v2, v5

    .line 175
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    move v3, v5

    .line 176
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v5

    move v4, v5

    .line 177
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v6

    iput v6, v5, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMinimumFlingVelocity:I

    .line 178
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v6

    iput v6, v5, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMaximumFlingVelocity:I

    .line 180
    move-object v5, v0

    move v6, v3

    move v7, v3

    mul-int/2addr v6, v7

    iput v6, v5, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mTouchSlopSquare:I

    .line 181
    move-object v5, v0

    move v6, v4

    move v7, v4

    mul-int/2addr v6, v7

    iput v6, v5, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapSlopSquare:I

    .line 182
    return-void
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    .line 444
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    if-nez v6, :cond_0

    .line 445
    const/4 v6, 0x0

    move v0, v6

    .line 454
    :goto_0
    return v0

    .line 448
    :cond_0
    move-object v6, v3

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    sget v8, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 449
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 452
    :cond_1
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    sub-int/2addr v6, v7

    move v4, v6

    .line 453
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    sub-int/2addr v6, v7

    move v5, v6

    .line 454
    move v6, v4

    move v7, v4

    mul-int/2addr v6, v7

    move v7, v5

    move v8, v5

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapSlopSquare:I

    if-ge v6, v7, :cond_2

    const/4 v6, 0x1

    :goto_1
    move v0, v6

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method


# virtual methods
.method dispatchLongPress()V
    .locals 3

    .prologue
    .line 458
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 459
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    .line 460
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    .line 461
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v1, v2}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 462
    return-void
.end method

.method public isLongpressEnabled()Z
    .locals 2

    .prologue
    .line 215
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsLongpressEnabled:Z

    move v0, v1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 33

    .prologue
    .line 228
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Landroid/view/MotionEvent;->getAction()I

    move-result v25

    move/from16 v4, v25

    .line 230
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    if-nez v25, :cond_0

    .line 231
    move-object/from16 v25, v2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 233
    :cond_0
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    move-object/from16 v26, v3

    invoke-virtual/range {v25 .. v26}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 235
    move/from16 v25, v4

    const/16 v26, 0xff

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    const/16 v26, 0x6

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    const/16 v25, 0x1

    :goto_0
    move/from16 v5, v25

    .line 237
    move/from16 v25, v5

    if-eqz v25, :cond_2

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v25

    :goto_1
    move/from16 v6, v25

    .line 240
    const/16 v25, 0x0

    move/from16 v7, v25

    const/16 v25, 0x0

    move/from16 v8, v25

    .line 241
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v25

    move/from16 v9, v25

    .line 242
    const/16 v25, 0x0

    move/from16 v10, v25

    :goto_2
    move/from16 v25, v10

    move/from16 v26, v9

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_4

    .line 243
    move/from16 v25, v6

    move/from16 v26, v10

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 242
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 235
    :cond_1
    const/16 v25, 0x0

    goto :goto_0

    .line 237
    :cond_2
    const/16 v25, -0x1

    goto :goto_1

    .line 244
    :cond_3
    move/from16 v25, v7

    move-object/from16 v26, v3

    move/from16 v27, v10

    invoke-virtual/range {v26 .. v27}, Landroid/view/MotionEvent;->getX(I)F

    move-result v26

    add-float v25, v25, v26

    move/from16 v7, v25

    .line 245
    move/from16 v25, v8

    move-object/from16 v26, v3

    move/from16 v27, v10

    invoke-virtual/range {v26 .. v27}, Landroid/view/MotionEvent;->getY(I)F

    move-result v26

    add-float v25, v25, v26

    move/from16 v8, v25

    goto :goto_3

    .line 247
    :cond_4
    move/from16 v25, v5

    if-eqz v25, :cond_6

    move/from16 v25, v9

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    :goto_4
    move/from16 v10, v25

    .line 248
    move/from16 v25, v7

    move/from16 v26, v10

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v25, v25, v26

    move/from16 v11, v25

    .line 249
    move/from16 v25, v8

    move/from16 v26, v10

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v25, v25, v26

    move/from16 v12, v25

    .line 251
    const/16 v25, 0x0

    move/from16 v13, v25

    .line 253
    move/from16 v25, v4

    const/16 v26, 0xff

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_0

    .line 410
    :cond_5
    :goto_5
    :pswitch_0
    move/from16 v25, v13

    move/from16 v2, v25

    return v2

    .line 247
    :cond_6
    move/from16 v25, v9

    goto :goto_4

    .line 255
    :pswitch_1
    move-object/from16 v25, v2

    move-object/from16 v26, v2

    move/from16 v27, v11

    move-object/from16 v31, v26

    move/from16 v32, v27

    move/from16 v26, v32

    move-object/from16 v27, v31

    move/from16 v28, v32

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusX:F

    .line 256
    move-object/from16 v25, v2

    move-object/from16 v26, v2

    move/from16 v27, v12

    move-object/from16 v31, v26

    move/from16 v32, v27

    move/from16 v26, v32

    move-object/from16 v27, v31

    move/from16 v28, v32

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusY:F

    .line 258
    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v25}, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->cancelTaps()V

    .line 259
    goto :goto_5

    .line 262
    :pswitch_2
    move-object/from16 v25, v2

    move-object/from16 v26, v2

    move/from16 v27, v11

    move-object/from16 v31, v26

    move/from16 v32, v27

    move/from16 v26, v32

    move-object/from16 v27, v31

    move/from16 v28, v32

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusX:F

    .line 263
    move-object/from16 v25, v2

    move-object/from16 v26, v2

    move/from16 v27, v12

    move-object/from16 v31, v26

    move/from16 v32, v27

    move/from16 v26, v32

    move-object/from16 v27, v31

    move/from16 v28, v32

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusY:F

    .line 267
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    const/16 v26, 0x3e8

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMaximumFlingVelocity:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 268
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v25

    move/from16 v14, v25

    .line 269
    move-object/from16 v25, v3

    move/from16 v26, v14

    invoke-virtual/range {v25 .. v26}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v25

    move/from16 v15, v25

    .line 270
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    move/from16 v26, v15

    invoke-virtual/range {v25 .. v26}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v25

    move/from16 v16, v25

    .line 271
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    move/from16 v26, v15

    invoke-virtual/range {v25 .. v26}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v25

    move/from16 v17, v25

    .line 272
    const/16 v25, 0x0

    move/from16 v18, v25

    :goto_6
    move/from16 v25, v18

    move/from16 v26, v9

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_9

    .line 273
    move/from16 v25, v18

    move/from16 v26, v14

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 272
    :cond_7
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 275
    :cond_8
    move-object/from16 v25, v3

    move/from16 v26, v18

    invoke-virtual/range {v25 .. v26}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v25

    move/from16 v19, v25

    .line 276
    move/from16 v25, v16

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v26, v0

    move/from16 v27, v19

    invoke-virtual/range {v26 .. v27}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v26

    mul-float v25, v25, v26

    move/from16 v20, v25

    .line 277
    move/from16 v25, v17

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v26, v0

    move/from16 v27, v19

    invoke-virtual/range {v26 .. v27}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v26

    mul-float v25, v25, v26

    move/from16 v21, v25

    .line 279
    move/from16 v25, v20

    move/from16 v26, v21

    add-float v25, v25, v26

    move/from16 v22, v25

    .line 280
    move/from16 v25, v22

    const/16 v26, 0x0

    cmpg-float v25, v25, v26

    if-gez v25, :cond_7

    .line 281
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/VelocityTracker;->clear()V

    .line 285
    :cond_9
    goto/16 :goto_5

    .line 288
    :pswitch_3
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v25, v0

    if-eqz v25, :cond_b

    .line 289
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v25

    move/from16 v18, v25

    .line 290
    move/from16 v25, v18

    if-eqz v25, :cond_a

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeMessages(I)V

    .line 291
    :cond_a
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e

    move/from16 v25, v18

    if-eqz v25, :cond_e

    move-object/from16 v25, v2

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v26, v0

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    move-object/from16 v28, v3

    .line 292
    invoke-direct/range {v25 .. v28}, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v25

    if-eqz v25, :cond_e

    .line 295
    move-object/from16 v25, v2

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    .line 297
    move/from16 v25, v13

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v26, v0

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    invoke-interface/range {v26 .. v27}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v26

    or-int v25, v25, v26

    move/from16 v13, v25

    .line 299
    move/from16 v25, v13

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v26, v0

    move-object/from16 v27, v3

    invoke-interface/range {v26 .. v27}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v26

    or-int v25, v25, v26

    move/from16 v13, v25

    .line 306
    :cond_b
    :goto_7
    move-object/from16 v25, v2

    move-object/from16 v26, v2

    move/from16 v27, v11

    move-object/from16 v31, v26

    move/from16 v32, v27

    move/from16 v26, v32

    move-object/from16 v27, v31

    move/from16 v28, v32

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusX:F

    .line 307
    move-object/from16 v25, v2

    move-object/from16 v26, v2

    move/from16 v27, v12

    move-object/from16 v31, v26

    move/from16 v32, v27

    move/from16 v26, v32

    move-object/from16 v27, v31

    move/from16 v28, v32

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusY:F

    .line 308
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v25, v0

    if-eqz v25, :cond_c

    .line 309
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/MotionEvent;->recycle()V

    .line 311
    :cond_c
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    invoke-static/range {v26 .. v26}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 312
    move-object/from16 v25, v2

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    .line 313
    move-object/from16 v25, v2

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    .line 314
    move-object/from16 v25, v2

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mStillDown:Z

    .line 315
    move-object/from16 v25, v2

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    .line 316
    move-object/from16 v25, v2

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    .line 318
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsLongpressEnabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_d

    .line 319
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeMessages(I)V

    .line 320
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v27

    sget v29, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->TAP_TIMEOUT:I

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    add-long v27, v27, v29

    sget v29, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->LONGPRESS_TIMEOUT:I

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    add-long v27, v27, v29

    invoke-virtual/range {v25 .. v28}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-result v25

    .line 323
    :cond_d
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    .line 324
    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v27

    sget v29, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->TAP_TIMEOUT:I

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    add-long v27, v27, v29

    .line 323
    invoke-virtual/range {v25 .. v28}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-result v25

    .line 325
    move/from16 v25, v13

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v26, v0

    move-object/from16 v27, v3

    invoke-interface/range {v26 .. v27}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v26

    or-int v25, v25, v26

    move/from16 v13, v25

    .line 326
    goto/16 :goto_5

    .line 302
    :cond_e
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    sget v27, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->DOUBLE_TAP_TIMEOUT:I

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    invoke-virtual/range {v25 .. v28}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result v25

    goto/16 :goto_7

    .line 329
    :pswitch_4
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    move/from16 v25, v0

    if-eqz v25, :cond_f

    .line 330
    goto/16 :goto_5

    .line 332
    :cond_f
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    move/from16 v25, v0

    move/from16 v26, v11

    sub-float v25, v25, v26

    move/from16 v18, v25

    .line 333
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    move/from16 v25, v0

    move/from16 v26, v12

    sub-float v25, v25, v26

    move/from16 v19, v25

    .line 334
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    move/from16 v25, v0

    if-eqz v25, :cond_10

    .line 336
    move/from16 v25, v13

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v26, v0

    move-object/from16 v27, v3

    invoke-interface/range {v26 .. v27}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v26

    or-int v25, v25, v26

    move/from16 v13, v25

    goto/16 :goto_5

    .line 337
    :cond_10
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    move/from16 v25, v0

    if-eqz v25, :cond_13

    .line 338
    move/from16 v25, v11

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusX:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v20, v25

    .line 339
    move/from16 v25, v12

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusY:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v21, v25

    .line 340
    move/from16 v25, v20

    move/from16 v26, v20

    mul-int v25, v25, v26

    move/from16 v26, v21

    move/from16 v27, v21

    mul-int v26, v26, v27

    add-int v25, v25, v26

    move/from16 v22, v25

    .line 341
    move/from16 v25, v22

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mTouchSlopSquare:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_11

    .line 342
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v25, v0

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v26, v0

    move-object/from16 v27, v3

    move/from16 v28, v18

    move/from16 v29, v19

    invoke-interface/range {v25 .. v29}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v25

    move/from16 v13, v25

    .line 343
    move-object/from16 v25, v2

    move/from16 v26, v11

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    .line 344
    move-object/from16 v25, v2

    move/from16 v26, v12

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    .line 345
    move-object/from16 v25, v2

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    .line 346
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeMessages(I)V

    .line 347
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeMessages(I)V

    .line 348
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeMessages(I)V

    .line 350
    :cond_11
    move/from16 v25, v22

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mTouchSlopSquare:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_12

    .line 351
    move-object/from16 v25, v2

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    .line 353
    :cond_12
    goto/16 :goto_5

    :cond_13
    move/from16 v25, v18

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x3f800000    # 1.0f

    cmpl-float v25, v25, v26

    if-gez v25, :cond_14

    move/from16 v25, v19

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x3f800000    # 1.0f

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_5

    .line 354
    :cond_14
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v25, v0

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v26, v0

    move-object/from16 v27, v3

    move/from16 v28, v18

    move/from16 v29, v19

    invoke-interface/range {v25 .. v29}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v25

    move/from16 v13, v25

    .line 355
    move-object/from16 v25, v2

    move/from16 v26, v11

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    .line 356
    move-object/from16 v25, v2

    move/from16 v26, v12

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    goto/16 :goto_5

    .line 361
    :pswitch_5
    move-object/from16 v25, v2

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mStillDown:Z

    .line 362
    move-object/from16 v25, v3

    invoke-static/range {v25 .. v25}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v25

    move-object/from16 v20, v25

    .line 363
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    move/from16 v25, v0

    if-eqz v25, :cond_18

    .line 365
    move/from16 v25, v13

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v26, v0

    move-object/from16 v27, v3

    invoke-interface/range {v26 .. v27}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v26

    or-int v25, v25, v26

    move/from16 v13, v25

    .line 388
    :cond_15
    :goto_8
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v25, v0

    if-eqz v25, :cond_16

    .line 389
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/MotionEvent;->recycle()V

    .line 392
    :cond_16
    move-object/from16 v25, v2

    move-object/from16 v26, v20

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 393
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    if-eqz v25, :cond_17

    .line 396
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/VelocityTracker;->recycle()V

    .line 397
    move-object/from16 v25, v2

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 399
    :cond_17
    move-object/from16 v25, v2

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    .line 400
    move-object/from16 v25, v2

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    .line 401
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeMessages(I)V

    .line 402
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeMessages(I)V

    .line 403
    goto/16 :goto_5

    .line 366
    :cond_18
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    move/from16 v25, v0

    if-eqz v25, :cond_19

    .line 367
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeMessages(I)V

    .line 368
    move-object/from16 v25, v2

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    goto/16 :goto_8

    .line 369
    :cond_19
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1a

    .line 370
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v25, v0

    move-object/from16 v26, v3

    invoke-interface/range {v25 .. v26}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v25

    move/from16 v13, v25

    .line 371
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    move/from16 v25, v0

    if-eqz v25, :cond_15

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v25, v0

    if-eqz v25, :cond_15

    .line 372
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v25, v0

    move-object/from16 v26, v3

    invoke-interface/range {v25 .. v26}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v25

    goto/16 :goto_8

    .line 376
    :cond_1a
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    move-object/from16 v21, v25

    .line 377
    move-object/from16 v25, v3

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v25

    move/from16 v22, v25

    .line 378
    move-object/from16 v25, v21

    const/16 v26, 0x3e8

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMaximumFlingVelocity:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 379
    move-object/from16 v25, v21

    move/from16 v26, v22

    invoke-virtual/range {v25 .. v26}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v25

    move/from16 v23, v25

    .line 380
    move-object/from16 v25, v21

    move/from16 v26, v22

    invoke-virtual/range {v25 .. v26}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v25

    move/from16 v24, v25

    .line 382
    move/from16 v25, v23

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMinimumFlingVelocity:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-gtz v25, :cond_1b

    move/from16 v25, v24

    .line 383
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMinimumFlingVelocity:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-lez v25, :cond_15

    .line 384
    :cond_1b
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v25, v0

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v26, v0

    move-object/from16 v27, v3

    move/from16 v28, v24

    move/from16 v29, v23

    invoke-interface/range {v25 .. v29}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v25

    move/from16 v13, v25

    goto/16 :goto_8

    .line 406
    :pswitch_6
    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v25}, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->cancel()V

    goto/16 :goto_5

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 4

    .prologue
    .line 207
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsLongpressEnabled:Z

    .line 208
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 4

    .prologue
    .line 193
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 194
    return-void
.end method
