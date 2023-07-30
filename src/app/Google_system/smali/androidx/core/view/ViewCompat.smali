.class public Landroidx/core/view/ViewCompat;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;,
        Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerWrapper;,
        Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;,
        Landroidx/core/view/ViewCompat$ScrollIndicators;,
        Landroidx/core/view/ViewCompat$NestedScrollType;,
        Landroidx/core/view/ViewCompat$ScrollAxis;,
        Landroidx/core/view/ViewCompat$FocusRelativeDirection;,
        Landroidx/core/view/ViewCompat$FocusRealDirection;,
        Landroidx/core/view/ViewCompat$FocusDirection;
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_LIVE_REGION_ASSERTIVE:I = 0x2

.field public static final ACCESSIBILITY_LIVE_REGION_NONE:I = 0x0

.field public static final ACCESSIBILITY_LIVE_REGION_POLITE:I = 0x1

.field public static final IMPORTANT_FOR_ACCESSIBILITY_AUTO:I = 0x0

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO:I = 0x2

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS:I = 0x4

.field public static final IMPORTANT_FOR_ACCESSIBILITY_YES:I = 0x1

.field public static final LAYER_TYPE_HARDWARE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYER_TYPE_NONE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYER_TYPE_SOFTWARE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYOUT_DIRECTION_INHERIT:I = 0x2

.field public static final LAYOUT_DIRECTION_LOCALE:I = 0x3

.field public static final LAYOUT_DIRECTION_LTR:I = 0x0

.field public static final LAYOUT_DIRECTION_RTL:I = 0x1

.field public static final MEASURED_HEIGHT_STATE_SHIFT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEASURED_SIZE_MASK:I = 0xffffff
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEASURED_STATE_MASK:I = -0x1000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEASURED_STATE_TOO_SMALL:I = 0x1000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OVER_SCROLL_ALWAYS:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OVER_SCROLL_IF_CONTENT_SCROLLS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OVER_SCROLL_NEVER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCROLL_AXIS_HORIZONTAL:I = 0x1

.field public static final SCROLL_AXIS_NONE:I = 0x0

.field public static final SCROLL_AXIS_VERTICAL:I = 0x2

.field public static final SCROLL_INDICATOR_BOTTOM:I = 0x2

.field public static final SCROLL_INDICATOR_END:I = 0x20

.field public static final SCROLL_INDICATOR_LEFT:I = 0x4

.field public static final SCROLL_INDICATOR_RIGHT:I = 0x8

.field public static final SCROLL_INDICATOR_START:I = 0x10

.field public static final SCROLL_INDICATOR_TOP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ViewCompat"

.field public static final TYPE_NON_TOUCH:I = 0x1

.field public static final TYPE_TOUCH:I

.field private static sAccessibilityDelegateCheckFailed:Z

.field private static sAccessibilityDelegateField:Ljava/lang/reflect/Field;

.field private static sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

.field private static sDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

.field private static sDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

.field private static sMinHeightField:Ljava/lang/reflect/Field;

.field private static sMinHeightFieldFetched:Z

.field private static sMinWidthField:Ljava/lang/reflect/Field;

.field private static sMinWidthFieldFetched:Z

.field private static final sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sTempDetachBound:Z

.field private static sThreadLocalRect:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static sTransitionNameMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Landroidx/core/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 452
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroidx/core/view/ViewCompat;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 464
    const/4 v0, 0x0

    sput-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 468
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 3464
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addKeyboardNavigationClusters(Landroid/view/View;Ljava/util/Collection;I)V
    .locals 6
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Collection",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 3330
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 3331
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V

    .line 3333
    :cond_0
    return-void
.end method

.method public static addOnUnhandledKeyEventListener(Landroid/view/View;Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V
    .locals 8
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3402
    move-object v0, p0

    move-object v1, p1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_1

    .line 3404
    move-object v4, v0

    sget v5, Landroidx/core/R$id;->tag_unhandled_key_listeners:I

    .line 3406
    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    move-object v2, v4

    .line 3407
    move-object v4, v2

    if-nez v4, :cond_0

    .line 3408
    new-instance v4, Landroidx/collection/ArrayMap;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroidx/collection/ArrayMap;-><init>()V

    move-object v2, v4

    .line 3409
    move-object v4, v0

    sget v5, Landroidx/core/R$id;->tag_unhandled_key_listeners:I

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 3411
    :cond_0
    new-instance v4, Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerWrapper;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerWrapper;-><init>(Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V

    move-object v3, v4

    .line 3413
    move-object v4, v2

    move-object v5, v1

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 3414
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->addOnUnhandledKeyEventListener(Landroid/view/View$OnUnhandledKeyEventListener;)V

    .line 3428
    :goto_0
    return-void

    .line 3417
    :cond_1
    move-object v4, v0

    sget v5, Landroidx/core/R$id;->tag_unhandled_key_listeners:I

    .line 3419
    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object v2, v4

    .line 3420
    move-object v4, v2

    if-nez v4, :cond_2

    .line 3421
    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    .line 3422
    move-object v4, v0

    sget v5, Landroidx/core/R$id;->tag_unhandled_key_listeners:I

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 3424
    :cond_2
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 3425
    move-object v4, v2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 3426
    move-object v4, v0

    invoke-static {v4}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->registerListeningView(Landroid/view/View;)V

    .line 3428
    :cond_3
    goto :goto_0
.end method

.method public static animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 6
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1754
    move-object v0, p0

    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    if-nez v2, :cond_0

    .line 1755
    new-instance v2, Ljava/util/WeakHashMap;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 1757
    :cond_0
    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-object v1, v2

    .line 1758
    move-object v2, v1

    if-nez v2, :cond_1

    .line 1759
    new-instance v2, Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;-><init>(Landroid/view/View;)V

    move-object v1, v2

    .line 1760
    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1762
    :cond_1
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method private static bindTempDetach()V
    .locals 4

    .prologue
    .line 1572
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "dispatchStartTemporaryDetach"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/view/ViewCompat;->sDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    .line 1574
    const-class v1, Landroid/view/View;

    const-string v2, "dispatchFinishTemporaryDetach"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/view/ViewCompat;->sDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1579
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Landroidx/core/view/ViewCompat;->sTempDetachBound:Z

    .line 1580
    return-void

    .line 1576
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1577
    const-string v1, "ViewCompat"

    const-string v2, "Couldn\'t find method"

    move-object v3, v0

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    goto :goto_0
.end method

.method public static canScrollHorizontally(Landroid/view/View;I)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 496
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public static canScrollVertically(Landroid/view/View;I)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 510
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public static cancelDragAndDrop(Landroid/view/View;)V
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3201
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 3202
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->cancelDragAndDrop()V

    .line 3204
    :cond_0
    return-void
.end method

.method public static combineMeasuredStates(II)I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1462
    move v0, p0

    move v1, p1

    move v2, v0

    move v3, v1

    invoke-static {v2, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    move v0, v2

    return v0
.end method

.method private static compatOffsetLeftAndRight(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 2995
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2996
    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 2997
    move-object v3, v0

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 2999
    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v2, v3

    .line 3000
    move-object v3, v2

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 3001
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 3004
    :cond_0
    return-void
.end method

.method private static compatOffsetTopAndBottom(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 2947
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2948
    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 2949
    move-object v3, v0

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 2951
    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v2, v3

    .line 2952
    move-object v3, v2

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 2953
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 2956
    :cond_0
    return-void
.end method

.method public static dispatchApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 8
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2259
    move-object v0, p0

    move-object v1, p1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    .line 2260
    move-object v4, v1

    invoke-static {v4}, Landroidx/core/view/WindowInsetsCompat;->unwrap(Landroidx/core/view/WindowInsetsCompat;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowInsets;

    move-object v2, v4

    .line 2261
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v4

    move-object v3, v4

    .line 2262
    move-object v4, v3

    move-object v5, v2

    if-eq v4, v5, :cond_0

    .line 2263
    new-instance v4, Landroid/view/WindowInsets;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v3

    invoke-direct {v5, v6}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    move-object v2, v4

    .line 2265
    :cond_0
    move-object v4, v2

    invoke-static {v4}, Landroidx/core/view/WindowInsetsCompat;->wrap(Ljava/lang/Object;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v4

    move-object v0, v4

    .line 2267
    :goto_0
    return-object v0

    :cond_1
    move-object v4, v1

    move-object v0, v4

    goto :goto_0
.end method

.method public static dispatchFinishTemporaryDetach(Landroid/view/View;)V
    .locals 5
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1609
    move-object v0, p0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 1610
    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 1626
    :goto_0
    return-void

    .line 1612
    :cond_0
    sget-boolean v2, Landroidx/core/view/ViewCompat;->sTempDetachBound:Z

    if-nez v2, :cond_1

    .line 1613
    invoke-static {}, Landroidx/core/view/ViewCompat;->bindTempDetach()V

    .line 1615
    :cond_1
    sget-object v2, Landroidx/core/view/ViewCompat;->sDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_2

    .line 1617
    :try_start_0
    sget-object v2, Landroidx/core/view/ViewCompat;->sDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

    move-object v3, v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1620
    goto :goto_0

    .line 1618
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1619
    const-string v2, "ViewCompat"

    const-string v3, "Error calling dispatchFinishTemporaryDetach"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 1620
    goto :goto_0

    .line 1623
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/View;->onFinishTemporaryDetach()V

    goto :goto_0
.end method

.method public static dispatchNestedFling(Landroid/view/View;FFZ)Z
    .locals 8
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2779
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    .line 2780
    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/View;->dispatchNestedFling(FFZ)Z

    move-result v4

    move v0, v4

    .line 2786
    :goto_0
    return v0

    .line 2782
    :cond_0
    move-object v4, v0

    instance-of v4, v4, Landroidx/core/view/NestedScrollingChild;

    if-eqz v4, :cond_1

    .line 2783
    move-object v4, v0

    check-cast v4, Landroidx/core/view/NestedScrollingChild;

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-interface {v4, v5, v6, v7}, Landroidx/core/view/NestedScrollingChild;->dispatchNestedFling(FFZ)Z

    move-result v4

    move v0, v4

    goto :goto_0

    .line 2786
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public static dispatchNestedPreFling(Landroid/view/View;FF)Z
    .locals 6
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2822
    move-object v0, p0

    move v1, p1

    move v2, p2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 2823
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->dispatchNestedPreFling(FF)Z

    move-result v3

    move v0, v3

    .line 2828
    :goto_0
    return v0

    .line 2825
    :cond_0
    move-object v3, v0

    instance-of v3, v3, Landroidx/core/view/NestedScrollingChild;

    if-eqz v3, :cond_1

    .line 2826
    move-object v3, v0

    check-cast v3, Landroidx/core/view/NestedScrollingChild;

    move v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroidx/core/view/NestedScrollingChild;->dispatchNestedPreFling(FF)Z

    move-result v3

    move v0, v3

    goto :goto_0

    .line 2828
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public static dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .locals 10
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2597
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_0

    .line 2598
    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->dispatchNestedPreScroll(II[I[I)Z

    move-result v5

    move v0, v5

    .line 2604
    :goto_0
    return v0

    .line 2600
    :cond_0
    move-object v5, v0

    instance-of v5, v5, Landroidx/core/view/NestedScrollingChild;

    if-eqz v5, :cond_1

    .line 2601
    move-object v5, v0

    check-cast v5, Landroidx/core/view/NestedScrollingChild;

    move v6, v1

    move v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Landroidx/core/view/NestedScrollingChild;->dispatchNestedPreScroll(II[I[I)Z

    move-result v5

    move v0, v5

    goto :goto_0

    .line 2604
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public static dispatchNestedPreScroll(Landroid/view/View;II[I[II)Z
    .locals 12
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2749
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    instance-of v6, v6, Landroidx/core/view/NestedScrollingChild2;

    if-eqz v6, :cond_0

    .line 2750
    move-object v6, v0

    check-cast v6, Landroidx/core/view/NestedScrollingChild2;

    move v7, v1

    move v8, v2

    move-object v9, v3

    move-object v10, v4

    move v11, v5

    invoke-interface/range {v6 .. v11}, Landroidx/core/view/NestedScrollingChild2;->dispatchNestedPreScroll(II[I[II)Z

    move-result v6

    move v0, v6

    .line 2755
    :goto_0
    return v0

    .line 2752
    :cond_0
    move v6, v5

    if-nez v6, :cond_1

    .line 2753
    move-object v6, v0

    move v7, v1

    move v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-static {v6, v7, v8, v9, v10}, Landroidx/core/view/ViewCompat;->dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z

    move-result v6

    move v0, v6

    goto :goto_0

    .line 2755
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method public static dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .locals 12
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2566
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_0

    .line 2567
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/view/View;->dispatchNestedScroll(IIII[I)Z

    move-result v6

    move v0, v6

    .line 2574
    :goto_0
    return v0

    .line 2570
    :cond_0
    move-object v6, v0

    instance-of v6, v6, Landroidx/core/view/NestedScrollingChild;

    if-eqz v6, :cond_1

    .line 2571
    move-object v6, v0

    check-cast v6, Landroidx/core/view/NestedScrollingChild;

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move-object v11, v5

    invoke-interface/range {v6 .. v11}, Landroidx/core/view/NestedScrollingChild;->dispatchNestedScroll(IIII[I)Z

    move-result v6

    move v0, v6

    goto :goto_0

    .line 2574
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method public static dispatchNestedScroll(Landroid/view/View;IIII[II)Z
    .locals 14
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2717
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    instance-of v7, v7, Landroidx/core/view/NestedScrollingChild2;

    if-eqz v7, :cond_0

    .line 2718
    move-object v7, v0

    check-cast v7, Landroidx/core/view/NestedScrollingChild2;

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move-object v12, v5

    move v13, v6

    invoke-interface/range {v7 .. v13}, Landroidx/core/view/NestedScrollingChild2;->dispatchNestedScroll(IIII[II)Z

    move-result v7

    move v0, v7

    .line 2724
    :goto_0
    return v0

    .line 2720
    :cond_0
    move v7, v6

    if-nez v7, :cond_1

    .line 2721
    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move-object v12, v5

    invoke-static/range {v7 .. v12}, Landroidx/core/view/ViewCompat;->dispatchNestedScroll(Landroid/view/View;IIII[I)Z

    move-result v7

    move v0, v7

    goto :goto_0

    .line 2724
    :cond_1
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0
.end method

.method public static dispatchStartTemporaryDetach(Landroid/view/View;)V
    .locals 5
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1586
    move-object v0, p0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 1587
    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 1603
    :goto_0
    return-void

    .line 1589
    :cond_0
    sget-boolean v2, Landroidx/core/view/ViewCompat;->sTempDetachBound:Z

    if-nez v2, :cond_1

    .line 1590
    invoke-static {}, Landroidx/core/view/ViewCompat;->bindTempDetach()V

    .line 1592
    :cond_1
    sget-object v2, Landroidx/core/view/ViewCompat;->sDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_2

    .line 1594
    :try_start_0
    sget-object v2, Landroidx/core/view/ViewCompat;->sDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    move-object v3, v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1597
    goto :goto_0

    .line 1595
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1596
    const-string v2, "ViewCompat"

    const-string v3, "Error calling dispatchStartTemporaryDetach"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 1597
    goto :goto_0

    .line 1600
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/View;->onStartTemporaryDetach()V

    goto :goto_0
.end method

.method static dispatchUnhandledKeyEventBeforeCallback(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 5
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .prologue
    .line 3505
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 3506
    const/4 v2, 0x0

    move v0, v2

    .line 3508
    :goto_0
    return v0

    :cond_0
    move-object v2, v0

    invoke-static {v2}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->at(Landroid/view/View;)Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->dispatch(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method static dispatchUnhandledKeyEventBeforeHierarchy(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .prologue
    .line 3497
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 3498
    const/4 v2, 0x0

    move v0, v2

    .line 3500
    :goto_0
    return v0

    :cond_0
    move-object v2, v0

    invoke-static {v2}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->at(Landroid/view/View;)Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->preDispatch(Landroid/view/KeyEvent;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public static generateViewId()I
    .locals 5

    .prologue
    .line 3379
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 3380
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    move v0, v2

    .line 3388
    :goto_0
    return v0

    .line 3383
    :cond_0
    sget-object v2, Landroidx/core/view/ViewCompat;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    move v0, v2

    .line 3385
    move v2, v0

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    .line 3386
    move v2, v1

    const v3, 0xffffff

    if-le v2, v3, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .line 3387
    :cond_1
    sget-object v2, Landroidx/core/view/ViewCompat;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    move v3, v0

    move v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3388
    move v2, v0

    move v0, v2

    goto :goto_0
.end method

.method public static getAccessibilityLiveRegion(Landroid/view/View;)I
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1475
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 1476
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v1

    move v0, v1

    .line 1478
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 6
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1129
    move-object v0, p0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 1130
    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    move-object v1, v2

    .line 1131
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 1132
    new-instance v2, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v2

    .line 1135
    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public static getAlpha(Landroid/view/View;)F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1149
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2355
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 2356
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    .line 2359
    :goto_0
    return-object v0

    .line 2358
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Landroidx/core/view/TintableBackgroundView;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroidx/core/view/TintableBackgroundView;

    .line 2359
    invoke-interface {v1}, Landroidx/core/view/TintableBackgroundView;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2400
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 2401
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    move-object v0, v1

    .line 2404
    :goto_0
    return-object v0

    .line 2403
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Landroidx/core/view/TintableBackgroundView;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroidx/core/view/TintableBackgroundView;

    .line 2404
    invoke-interface {v1}, Landroidx/core/view/TintableBackgroundView;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 3039
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 3040
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    move-object v0, v1

    .line 3042
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getDisplay(Landroid/view/View;)Landroid/view/Display;
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 3160
    move-object v0, p0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 3161
    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v2

    move-object v0, v2

    .line 3168
    :goto_0
    return-object v0

    .line 3163
    :cond_0
    move-object v2, v0

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3164
    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    move-object v1, v2

    .line 3166
    move-object v2, v1

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 3168
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public static getElevation(Landroid/view/View;)F
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2038
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 2039
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getElevation()F

    move-result v1

    move v0, v1

    .line 2041
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private static getEmptyTempRect()Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 473
    sget-object v1, Landroidx/core/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    if-nez v1, :cond_0

    .line 474
    new-instance v1, Ljava/lang/ThreadLocal;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Landroidx/core/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    .line 476
    :cond_0
    sget-object v1, Landroidx/core/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    move-object v0, v1

    .line 477
    move-object v1, v0

    if-nez v1, :cond_1

    .line 478
    new-instance v1, Landroid/graphics/Rect;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v1

    .line 479
    sget-object v1, Landroidx/core/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 481
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 482
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public static getFitsSystemWindows(Landroid/view/View;)Z
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2164
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 2165
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v1

    move v0, v1

    .line 2167
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static getImportantForAccessibility(Landroid/view/View;)I
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 999
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 1000
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v1

    move v0, v1

    .line 1002
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static getImportantForAutofill(Landroid/view/View;)I
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 730
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 731
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getImportantForAutofill()I

    move-result v1

    move v0, v1

    .line 733
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static getLabelFor(Landroid/view/View;)I
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1224
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 1225
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getLabelFor()I

    move-result v1

    move v0, v1

    .line 1227
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static getLayerType(Landroid/view/View;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1213
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getLayerType()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getLayoutDirection(Landroid/view/View;)I
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1297
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 1298
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    move v0, v1

    .line 1300
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static getMatrix(Landroid/view/View;)Landroid/graphics/Matrix;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1675
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getMeasuredHeightAndState(Landroid/view/View;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1433
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getMeasuredState(Landroid/view/View;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1447
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getMeasuredWidthAndState(Landroid/view/View;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1416
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getMinimumHeight(Landroid/view/View;)I
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1720
    move-object v0, p0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 1721
    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getMinimumHeight()I

    move-result v2

    move v0, v2

    .line 1743
    :goto_0
    return v0

    .line 1724
    :cond_0
    sget-boolean v2, Landroidx/core/view/ViewCompat;->sMinHeightFieldFetched:Z

    if-nez v2, :cond_1

    .line 1726
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string v3, "mMinHeight"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroidx/core/view/ViewCompat;->sMinHeightField:Ljava/lang/reflect/Field;

    .line 1727
    sget-object v2, Landroidx/core/view/ViewCompat;->sMinHeightField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1731
    :goto_1
    const/4 v2, 0x1

    sput-boolean v2, Landroidx/core/view/ViewCompat;->sMinHeightFieldFetched:Z

    .line 1734
    :cond_1
    sget-object v2, Landroidx/core/view/ViewCompat;->sMinHeightField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_2

    .line 1736
    :try_start_1
    sget-object v2, Landroidx/core/view/ViewCompat;->sMinHeightField:Ljava/lang/reflect/Field;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    move v0, v2

    goto :goto_0

    .line 1728
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_1

    .line 1737
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 1743
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public static getMinimumWidth(Landroid/view/View;)I
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1686
    move-object v0, p0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 1687
    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getMinimumWidth()I

    move-result v2

    move v0, v2

    .line 1709
    :goto_0
    return v0

    .line 1690
    :cond_0
    sget-boolean v2, Landroidx/core/view/ViewCompat;->sMinWidthFieldFetched:Z

    if-nez v2, :cond_1

    .line 1692
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string v3, "mMinWidth"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroidx/core/view/ViewCompat;->sMinWidthField:Ljava/lang/reflect/Field;

    .line 1693
    sget-object v2, Landroidx/core/view/ViewCompat;->sMinWidthField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1697
    :goto_1
    const/4 v2, 0x1

    sput-boolean v2, Landroidx/core/view/ViewCompat;->sMinWidthFieldFetched:Z

    .line 1700
    :cond_1
    sget-object v2, Landroidx/core/view/ViewCompat;->sMinWidthField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_2

    .line 1702
    :try_start_1
    sget-object v2, Landroidx/core/view/ViewCompat;->sMinWidthField:Ljava/lang/reflect/Field;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    move v0, v2

    goto :goto_0

    .line 1694
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_1

    .line 1703
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 1709
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public static getNextClusterForwardId(Landroid/view/View;)I
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3222
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 3223
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getNextClusterForwardId()I

    move-result v1

    move v0, v1

    .line 3225
    :goto_0
    return v0

    :cond_0
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method public static getOverScrollMode(Landroid/view/View;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 528
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getOverScrollMode()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getPaddingEnd(Landroid/view/View;)I
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .prologue
    .line 1542
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 1543
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    move v0, v1

    .line 1545
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public static getPaddingStart(Landroid/view/View;)I
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .prologue
    .line 1526
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 1527
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    move v0, v1

    .line 1529
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public static getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1335
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 1336
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    move-object v0, v1

    .line 1338
    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static getPivotX(Landroid/view/View;)F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1919
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getPivotX()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getPivotY(Landroid/view/View;)F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1948
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getPivotY()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getRotation(Landroid/view/View;)F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1972
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getRotation()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getRotationX(Landroid/view/View;)F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1980
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getRotationX()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getRotationY(Landroid/view/View;)F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1988
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getRotationY()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getScaleX(Landroid/view/View;)F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1996
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getScaleY(Landroid/view/View;)F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2004
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getScrollIndicators(Landroid/view/View;)I
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3131
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 3132
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getScrollIndicators()I

    move-result v1

    move v0, v1

    .line 3134
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2095
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 2096
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 2101
    :goto_0
    return-object v0

    .line 2098
    :cond_0
    sget-object v1, Landroidx/core/view/ViewCompat;->sTransitionNameMap:Ljava/util/WeakHashMap;

    if-nez v1, :cond_1

    .line 2099
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0

    .line 2101
    :cond_1
    sget-object v1, Landroidx/core/view/ViewCompat;->sTransitionNameMap:Ljava/util/WeakHashMap;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method public static getTranslationX(Landroid/view/View;)F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1639
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getTranslationY(Landroid/view/View;)F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1653
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getTranslationZ(Landroid/view/View;)F
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2059
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 2060
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getTranslationZ()F

    move-result v1

    move v0, v1

    .line 2062
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static getWindowSystemUiVisibility(Landroid/view/View;)I
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2108
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 2109
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v1

    move v0, v1

    .line 2111
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static getX(Landroid/view/View;)F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2012
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getY(Landroid/view/View;)F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2020
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getZ(Landroid/view/View;)F
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2886
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 2887
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getZ()F

    move-result v1

    move v0, v1

    .line 2889
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static hasAccessibilityDelegate(Landroid/view/View;)Z
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 856
    move-object v0, p0

    sget-boolean v2, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    if-eqz v2, :cond_0

    .line 857
    const/4 v2, 0x0

    move v0, v2

    .line 873
    :goto_0
    return v0

    .line 859
    :cond_0
    sget-object v2, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    if-nez v2, :cond_1

    .line 861
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string v3, "mAccessibilityDelegate"

    .line 862
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    .line 863
    sget-object v2, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    :cond_1
    :try_start_1
    sget-object v2, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    .line 864
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 865
    const/4 v2, 0x1

    sput-boolean v2, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    .line 866
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 870
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 871
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 872
    const/4 v2, 0x1

    sput-boolean v2, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    .line 873
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public static hasExplicitFocusable(Landroid/view/View;)Z
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3366
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 3367
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v1

    move v0, v1

    .line 3369
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public static hasNestedScrollingParent(Landroid/view/View;)Z
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2537
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 2538
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->hasNestedScrollingParent()Z

    move-result v1

    move v0, v1

    .line 2543
    :goto_0
    return v0

    .line 2540
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Landroidx/core/view/NestedScrollingChild;

    if-eqz v1, :cond_1

    .line 2541
    move-object v1, v0

    check-cast v1, Landroidx/core/view/NestedScrollingChild;

    invoke-interface {v1}, Landroidx/core/view/NestedScrollingChild;->hasNestedScrollingParent()Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 2543
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static hasNestedScrollingParent(Landroid/view/View;I)Z
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2682
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    instance-of v2, v2, Landroidx/core/view/NestedScrollingChild2;

    if-eqz v2, :cond_1

    .line 2683
    move-object v2, v0

    check-cast v2, Landroidx/core/view/NestedScrollingChild2;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/core/view/NestedScrollingChild2;->hasNestedScrollingParent(I)Z

    move-result v2

    .line 2687
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    :goto_0
    return v0

    .line 2684
    :cond_1
    move v2, v1

    if-nez v2, :cond_0

    .line 2685
    move-object v2, v0

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->hasNestedScrollingParent(Landroid/view/View;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public static hasOnClickListeners(Landroid/view/View;)Z
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3061
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_0

    .line 3062
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v1

    move v0, v1

    .line 3064
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static hasOverlappingRendering(Landroid/view/View;)Z
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2315
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 2316
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v1

    move v0, v1

    .line 2318
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method public static hasTransientState(Landroid/view/View;)Z
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 886
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 887
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->hasTransientState()Z

    move-result v1

    move v0, v1

    .line 889
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static isAttachedToWindow(Landroid/view/View;)Z
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3049
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 3050
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    move v0, v1

    .line 3052
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isFocusedByDefault(Landroid/view/View;)Z
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3277
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 3278
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->isFocusedByDefault()Z

    move-result v1

    move v0, v1

    .line 3280
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static isImportantForAccessibility(Landroid/view/View;)Z
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1077
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 1078
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result v1

    move v0, v1

    .line 1080
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method public static isImportantForAutofill(Landroid/view/View;)Z
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 843
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 844
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->isImportantForAutofill()Z

    move-result v1

    move v0, v1

    .line 846
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method public static isInLayout(Landroid/view/View;)Z
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2844
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 2845
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->isInLayout()Z

    move-result v1

    move v0, v1

    .line 2847
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static isKeyboardNavigationCluster(Landroid/view/View;)Z
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3248
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 3249
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->isKeyboardNavigationCluster()Z

    move-result v1

    move v0, v1

    .line 3251
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static isLaidOut(Landroid/view/View;)Z
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2855
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 2856
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    move v0, v1

    .line 2858
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_1

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isLayoutDirectionResolved(Landroid/view/View;)Z
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2872
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 2873
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->isLayoutDirectionResolved()Z

    move-result v1

    move v0, v1

    .line 2875
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static isNestedScrollingEnabled(Landroid/view/View;)Z
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2479
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 2480
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v1

    move v0, v1

    .line 2485
    :goto_0
    return v0

    .line 2482
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Landroidx/core/view/NestedScrollingChild;

    if-eqz v1, :cond_1

    .line 2483
    move-object v1, v0

    check-cast v1, Landroidx/core/view/NestedScrollingChild;

    invoke-interface {v1}, Landroidx/core/view/NestedScrollingChild;->isNestedScrollingEnabled()Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 2485
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static isOpaque(Landroid/view/View;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1379
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->isOpaque()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isPaddingRelative(Landroid/view/View;)Z
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2328
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 2329
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->isPaddingRelative()Z

    move-result v1

    move v0, v1

    .line 2331
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static jumpDrawablesToCurrentState(Landroid/view/View;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2194
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2195
    return-void
.end method

.method public static keyboardNavigationClusterSearch(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;
    .locals 6
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3314
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 3315
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->keyboardNavigationClusterSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    .line 3317
    :goto_0
    return-object v0

    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public static offsetLeftAndRight(Landroid/view/View;I)V
    .locals 11
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2964
    move-object v0, p0

    move v1, p1

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_0

    .line 2965
    move-object v6, v0

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2992
    :goto_0
    return-void

    .line 2966
    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_4

    .line 2967
    invoke-static {}, Landroidx/core/view/ViewCompat;->getEmptyTempRect()Landroid/graphics/Rect;

    move-result-object v6

    move-object v2, v6

    .line 2968
    const/4 v6, 0x0

    move v3, v6

    .line 2970
    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    move-object v4, v6

    .line 2971
    move-object v6, v4

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_1

    .line 2972
    move-object v6, v4

    check-cast v6, Landroid/view/View;

    move-object v5, v6

    .line 2973
    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    move-object v10, v5

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 2976
    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    move-object v9, v0

    .line 2977
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 2976
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_1
    move v3, v6

    .line 2981
    :cond_1
    move-object v6, v0

    move v7, v1

    invoke-static {v6, v7}, Landroidx/core/view/ViewCompat;->compatOffsetLeftAndRight(Landroid/view/View;I)V

    .line 2985
    move v6, v3

    if-eqz v6, :cond_2

    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    move-object v9, v0

    .line 2986
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 2985
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2987
    move-object v6, v4

    check-cast v6, Landroid/view/View;

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 2989
    :cond_2
    goto :goto_0

    .line 2976
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 2990
    :cond_4
    move-object v6, v0

    move v7, v1

    invoke-static {v6, v7}, Landroidx/core/view/ViewCompat;->compatOffsetLeftAndRight(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method public static offsetTopAndBottom(Landroid/view/View;I)V
    .locals 11
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2916
    move-object v0, p0

    move v1, p1

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_0

    .line 2917
    move-object v6, v0

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2944
    :goto_0
    return-void

    .line 2918
    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_4

    .line 2919
    invoke-static {}, Landroidx/core/view/ViewCompat;->getEmptyTempRect()Landroid/graphics/Rect;

    move-result-object v6

    move-object v2, v6

    .line 2920
    const/4 v6, 0x0

    move v3, v6

    .line 2922
    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    move-object v4, v6

    .line 2923
    move-object v6, v4

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_1

    .line 2924
    move-object v6, v4

    check-cast v6, Landroid/view/View;

    move-object v5, v6

    .line 2925
    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    move-object v10, v5

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 2928
    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    move-object v9, v0

    .line 2929
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 2928
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_1
    move v3, v6

    .line 2933
    :cond_1
    move-object v6, v0

    move v7, v1

    invoke-static {v6, v7}, Landroidx/core/view/ViewCompat;->compatOffsetTopAndBottom(Landroid/view/View;I)V

    .line 2937
    move v6, v3

    if-eqz v6, :cond_2

    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    move-object v9, v0

    .line 2938
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 2937
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2939
    move-object v6, v4

    check-cast v6, Landroid/view/View;

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 2941
    :cond_2
    goto :goto_0

    .line 2928
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 2942
    :cond_4
    move-object v6, v0

    move v7, v1

    invoke-static {v6, v7}, Landroidx/core/view/ViewCompat;->compatOffsetTopAndBottom(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method public static onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 8
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2234
    move-object v0, p0

    move-object v1, p1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    .line 2235
    move-object v4, v1

    invoke-static {v4}, Landroidx/core/view/WindowInsetsCompat;->unwrap(Landroidx/core/view/WindowInsetsCompat;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowInsets;

    move-object v2, v4

    .line 2236
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v4

    move-object v3, v4

    .line 2237
    move-object v4, v3

    move-object v5, v2

    if-eq v4, v5, :cond_0

    .line 2238
    new-instance v4, Landroid/view/WindowInsets;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v3

    invoke-direct {v5, v6}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    move-object v2, v4

    .line 2240
    :cond_0
    move-object v4, v2

    invoke-static {v4}, Landroidx/core/view/WindowInsetsCompat;->wrap(Ljava/lang/Object;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v4

    move-object v0, v4

    .line 2242
    :goto_0
    return-object v0

    :cond_1
    move-object v4, v1

    move-object v0, v4

    goto :goto_0
.end method

.method public static onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 619
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 620
    return-void
.end method

.method public static onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 650
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->unwrap()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 651
    return-void
.end method

.method public static onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 587
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 588
    return-void
.end method

.method public static performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1099
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 1100
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v3

    move v0, v3

    .line 1102
    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;)V
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 915
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 916
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 920
    :goto_0
    return-void

    .line 918
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    goto :goto_0
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .locals 10
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 937
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_0

    .line 938
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->postInvalidateOnAnimation(IIII)V

    .line 942
    :goto_0
    return-void

    .line 940
    :cond_0
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->postInvalidate(IIII)V

    goto :goto_0
.end method

.method public static postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 6
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 955
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 956
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 960
    :goto_0
    return-void

    .line 958
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    goto :goto_0
.end method

.method public static postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 10
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 977
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_0

    .line 978
    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 982
    :goto_0
    return-void

    .line 980
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v6

    move-wide v8, v2

    add-long/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v4

    goto :goto_0
.end method

.method public static removeOnUnhandledKeyEventListener(Landroid/view/View;Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V
    .locals 6
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3439
    move-object v0, p0

    move-object v1, p1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_2

    .line 3441
    move-object v4, v0

    sget v5, Landroidx/core/R$id;->tag_unhandled_key_listeners:I

    .line 3443
    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    move-object v2, v4

    .line 3444
    move-object v4, v2

    if-nez v4, :cond_0

    .line 3462
    :goto_0
    return-void

    .line 3447
    :cond_0
    move-object v4, v2

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View$OnUnhandledKeyEventListener;

    move-object v3, v4

    .line 3448
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 3449
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->removeOnUnhandledKeyEventListener(Landroid/view/View$OnUnhandledKeyEventListener;)V

    .line 3451
    :cond_1
    goto :goto_0

    .line 3453
    :cond_2
    move-object v4, v0

    sget v5, Landroidx/core/R$id;->tag_unhandled_key_listeners:I

    .line 3455
    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object v2, v4

    .line 3456
    move-object v4, v2

    if-eqz v4, :cond_3

    .line 3457
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 3458
    move-object v4, v2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 3459
    move-object v4, v0

    invoke-static {v4}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->unregisterListeningView(Landroid/view/View;)V

    .line 3462
    :cond_3
    goto :goto_0
.end method

.method public static requestApplyInsets(Landroid/view/View;)V
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2119
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_1

    .line 2120
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->requestApplyInsets()V

    .line 2124
    :cond_0
    :goto_0
    return-void

    .line 2121
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 2122
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->requestFitSystemWindows()V

    goto :goto_0
.end method

.method public static requireViewById(Landroid/view/View;I)Landroid/view/View;
    .locals 7
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 1358
    move-object v0, p0

    move v1, p1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_0

    .line 1359
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    .line 1366
    :goto_0
    return-object v0

    .line 1362
    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 1363
    move-object v3, v2

    if-nez v3, :cond_1

    .line 1364
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "ID does not reference a View inside this View"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1366
    :cond_1
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public static resolveSizeAndState(III)I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1399
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, v0

    move v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public static restoreDefaultFocus(Landroid/view/View;)Z
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3344
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 3345
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v1

    move v0, v1

    .line 3347
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public static setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 676
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 677
    return-void

    .line 676
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/core/view/AccessibilityDelegateCompat;->getBridge()Landroid/view/View$AccessibilityDelegate;

    move-result-object v3

    goto :goto_0
.end method

.method public static setAccessibilityLiveRegion(Landroid/view/View;I)V
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1511
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 1512
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 1514
    :cond_0
    return-void
.end method

.method public static setActivated(Landroid/view/View;Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2297
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setActivated(Z)V

    .line 2298
    return-void
.end method

.method public static setAlpha(Landroid/view/View;F)V
    .locals 4
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1811
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1812
    return-void
.end method

.method public static varargs setAutofillHints(Landroid/view/View;[Ljava/lang/String;)V
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 709
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 710
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setAutofillHints([Ljava/lang/String;)V

    .line 712
    :cond_0
    return-void
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2341
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 2342
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2346
    :goto_0
    return-void

    .line 2344
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 6
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2371
    move-object v0, p0

    move-object v1, p1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_4

    .line 2372
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 2374
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ne v4, v5, :cond_2

    .line 2377
    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v2, v4

    .line 2378
    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v4, v0

    .line 2379
    invoke-virtual {v4}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    if-eqz v4, :cond_3

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 2380
    move-object v4, v2

    if-eqz v4, :cond_2

    move v4, v3

    if-eqz v4, :cond_2

    .line 2381
    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2382
    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    .line 2384
    :cond_1
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2390
    :cond_2
    :goto_1
    return-void

    .line 2379
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 2387
    :cond_4
    move-object v4, v0

    instance-of v4, v4, Landroidx/core/view/TintableBackgroundView;

    if-eqz v4, :cond_2

    .line 2388
    move-object v4, v0

    check-cast v4, Landroidx/core/view/TintableBackgroundView;

    move-object v5, v1

    invoke-interface {v4, v5}, Landroidx/core/view/TintableBackgroundView;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method

.method public static setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 6
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2418
    move-object v0, p0

    move-object v1, p1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_4

    .line 2419
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 2421
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ne v4, v5, :cond_2

    .line 2424
    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v2, v4

    .line 2425
    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v4, v0

    .line 2426
    invoke-virtual {v4}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    if-eqz v4, :cond_3

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 2427
    move-object v4, v2

    if-eqz v4, :cond_2

    move v4, v3

    if-eqz v4, :cond_2

    .line 2428
    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2429
    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    .line 2431
    :cond_1
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2437
    :cond_2
    :goto_1
    return-void

    .line 2426
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 2434
    :cond_4
    move-object v4, v0

    instance-of v4, v4, Landroidx/core/view/TintableBackgroundView;

    if-eqz v4, :cond_2

    .line 2435
    move-object v4, v0

    check-cast v4, Landroidx/core/view/TintableBackgroundView;

    move-object v5, v1

    invoke-interface {v4, v5}, Landroidx/core/view/TintableBackgroundView;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_1
.end method

.method public static setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2139
    move-object v0, p0

    move v1, p1

    sget-object v3, Landroidx/core/view/ViewCompat;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    .line 2141
    :try_start_0
    const-class v3, Landroid/view/ViewGroup;

    const-string v4, "setChildrenDrawingOrderEnabled"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    .line 2142
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroidx/core/view/ViewCompat;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2146
    :goto_0
    sget-object v3, Landroidx/core/view/ViewCompat;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2149
    :cond_0
    :try_start_1
    sget-object v3, Landroidx/core/view/ViewCompat;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    .line 2157
    :goto_1
    return-void

    .line 2143
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 2144
    const-string v3, "ViewCompat"

    const-string v4, "Unable to find childrenDrawingOrderEnabled"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_0

    .line 2150
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 2151
    const-string v3, "ViewCompat"

    const-string v4, "Unable to invoke childrenDrawingOrderEnabled"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 2156
    goto :goto_1

    .line 2152
    :catch_2
    move-exception v3

    move-object v2, v3

    .line 2153
    const-string v3, "ViewCompat"

    const-string v4, "Unable to invoke childrenDrawingOrderEnabled"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 2156
    goto :goto_1

    .line 2154
    :catch_3
    move-exception v3

    move-object v2, v3

    .line 2155
    const-string v3, "ViewCompat"

    const-string v4, "Unable to invoke childrenDrawingOrderEnabled"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_1
.end method

.method public static setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3024
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    .line 3025
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 3027
    :cond_0
    return-void
.end method

.method public static setElevation(Landroid/view/View;F)V
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2027
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 2028
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setElevation(F)V

    .line 2030
    :cond_0
    return-void
.end method

.method public static setFitsSystemWindows(Landroid/view/View;Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2180
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 2181
    return-void
.end method

.method public static setFocusedByDefault(Landroid/view/View;Z)V
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3296
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 3297
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusedByDefault(Z)V

    .line 3299
    :cond_0
    return-void
.end method

.method public static setHasTransientState(Landroid/view/View;Z)V
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 900
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 901
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setHasTransientState(Z)V

    .line 903
    :cond_0
    return-void
.end method

.method public static setImportantForAccessibility(Landroid/view/View;I)V
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1026
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 1027
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1038
    :cond_0
    :goto_0
    return-void

    .line 1028
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 1032
    move v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 1033
    const/4 v2, 0x2

    move v1, v2

    .line 1036
    :cond_2
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_0
.end method

.method public static setImportantForAutofill(Landroid/view/View;I)V
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 774
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 775
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setImportantForAutofill(I)V

    .line 777
    :cond_0
    return-void
.end method

.method public static setKeyboardNavigationCluster(Landroid/view/View;Z)V
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3262
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 3263
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setKeyboardNavigationCluster(Z)V

    .line 3265
    :cond_0
    return-void
.end method

.method public static setLabelFor(Landroid/view/View;I)V
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 1238
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 1239
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setLabelFor(I)V

    .line 1241
    :cond_0
    return-void
.end method

.method public static setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 5
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1274
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 1275
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 1283
    :goto_0
    return-void

    .line 1279
    :cond_0
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getLayerType()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1281
    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public static setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1188
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1189
    return-void
.end method

.method public static setLayoutDirection(Landroid/view/View;I)V
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1321
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 1322
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutDirection(I)V

    .line 1324
    :cond_0
    return-void
.end method

.method public static setNestedScrollingEnabled(Landroid/view/View;Z)V
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2456
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 2457
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 2463
    :cond_0
    :goto_0
    return-void

    .line 2459
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Landroidx/core/view/NestedScrollingChild;

    if-eqz v2, :cond_0

    .line 2460
    move-object v2, v0

    check-cast v2, Landroidx/core/view/NestedScrollingChild;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/core/view/NestedScrollingChild;->setNestedScrollingEnabled(Z)V

    goto :goto_0
.end method

.method public static setNextClusterForwardId(Landroid/view/View;I)V
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3236
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 3237
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setNextClusterForwardId(I)V

    .line 3239
    :cond_0
    return-void
.end method

.method public static setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V
    .locals 7
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2203
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 2204
    move-object v2, v1

    if-nez v2, :cond_0

    .line 2205
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 2218
    :goto_0
    return-void

    .line 2209
    :cond_0
    move-object v2, v0

    new-instance v3, Landroidx/core/view/ViewCompat$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/core/view/ViewCompat$1;-><init>(Landroidx/core/view/OnApplyWindowInsetsListener;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 2218
    :cond_1
    goto :goto_0
.end method

.method public static setOverScrollMode(Landroid/view/View;I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 547
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setOverScrollMode(I)V

    .line 548
    return-void
.end method

.method public static setPaddingRelative(Landroid/view/View;IIII)V
    .locals 10
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 1563
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_0

    .line 1564
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1568
    :goto_0
    return-void

    .line 1566
    :cond_0
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public static setPivotX(Landroid/view/View;F)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1935
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    .line 1936
    return-void
.end method

.method public static setPivotY(Landroid/view/View;F)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1964
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    .line 1965
    return-void
.end method

.method public static setPointerIcon(Landroid/view/View;Landroidx/core/view/PointerIconCompat;)V
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3142
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 3143
    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v1

    .line 3144
    invoke-virtual {v3}, Landroidx/core/view/PointerIconCompat;->getPointerIcon()Ljava/lang/Object;

    move-result-object v3

    :goto_0
    check-cast v3, Landroid/view/PointerIcon;

    check-cast v3, Landroid/view/PointerIcon;

    .line 3143
    invoke-virtual {v2, v3}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 3146
    :cond_0
    return-void

    .line 3144
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static setRotation(Landroid/view/View;F)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1854
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 1855
    return-void
.end method

.method public static setRotationX(Landroid/view/View;F)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1868
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotationX(F)V

    .line 1869
    return-void
.end method

.method public static setRotationY(Landroid/view/View;F)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1882
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotationY(F)V

    .line 1883
    return-void
.end method

.method public static setSaveFromParentEnabled(Landroid/view/View;Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2281
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 2282
    return-void
.end method

.method public static setScaleX(Landroid/view/View;F)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1895
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 1896
    return-void
.end method

.method public static setScaleY(Landroid/view/View;F)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1908
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 1909
    return-void
.end method

.method public static setScrollIndicators(Landroid/view/View;I)V
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3079
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 3080
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setScrollIndicators(I)V

    .line 3082
    :cond_0
    return-void
.end method

.method public static setScrollIndicators(Landroid/view/View;II)V
    .locals 6
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3113
    move-object v0, p0

    move v1, p1

    move v2, p2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    .line 3114
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setScrollIndicators(II)V

    .line 3116
    :cond_0
    return-void
.end method

.method public static setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3180
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 3181
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 3183
    :cond_0
    return-void
.end method

.method public static setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .locals 6
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2073
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 2074
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 2081
    :goto_0
    return-void

    .line 2076
    :cond_0
    sget-object v2, Landroidx/core/view/ViewCompat;->sTransitionNameMap:Ljava/util/WeakHashMap;

    if-nez v2, :cond_1

    .line 2077
    new-instance v2, Ljava/util/WeakHashMap;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v2, Landroidx/core/view/ViewCompat;->sTransitionNameMap:Ljava/util/WeakHashMap;

    .line 2079
    :cond_1
    sget-object v2, Landroidx/core/view/ViewCompat;->sTransitionNameMap:Ljava/util/WeakHashMap;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public static setTranslationX(Landroid/view/View;F)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1777
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 1778
    return-void
.end method

.method public static setTranslationY(Landroid/view/View;F)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1794
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1795
    return-void
.end method

.method public static setTranslationZ(Landroid/view/View;F)V
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2048
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 2049
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationZ(F)V

    .line 2051
    :cond_0
    return-void
.end method

.method public static setX(Landroid/view/View;F)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1826
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 1827
    return-void
.end method

.method public static setY(Landroid/view/View;F)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1841
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 1842
    return-void
.end method

.method public static setZ(Landroid/view/View;F)V
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2905
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 2906
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setZ(F)V

    .line 2908
    :cond_0
    return-void
.end method

.method public static startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 10
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3190
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_0

    .line 3191
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v5

    move v0, v5

    .line 3193
    :goto_0
    return v0

    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method public static startNestedScroll(Landroid/view/View;I)Z
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2501
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 2502
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->startNestedScroll(I)Z

    move-result v2

    move v0, v2

    .line 2507
    :goto_0
    return v0

    .line 2504
    :cond_0
    move-object v2, v0

    instance-of v2, v2, Landroidx/core/view/NestedScrollingChild;

    if-eqz v2, :cond_1

    .line 2505
    move-object v2, v0

    check-cast v2, Landroidx/core/view/NestedScrollingChild;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/core/view/NestedScrollingChild;->startNestedScroll(I)Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 2507
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public static startNestedScroll(Landroid/view/View;II)Z
    .locals 6
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2648
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    instance-of v3, v3, Landroidx/core/view/NestedScrollingChild2;

    if-eqz v3, :cond_0

    .line 2649
    move-object v3, v0

    check-cast v3, Landroidx/core/view/NestedScrollingChild2;

    move v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroidx/core/view/NestedScrollingChild2;->startNestedScroll(II)Z

    move-result v3

    move v0, v3

    .line 2653
    :goto_0
    return v0

    .line 2650
    :cond_0
    move v3, v2

    if-nez v3, :cond_1

    .line 2651
    move-object v3, v0

    move v4, v1

    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->startNestedScroll(Landroid/view/View;I)Z

    move-result v3

    move v0, v3

    goto :goto_0

    .line 2653
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public static stopNestedScroll(Landroid/view/View;)V
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2520
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 2521
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->stopNestedScroll()V

    .line 2525
    :cond_0
    :goto_0
    return-void

    .line 2522
    :cond_1
    move-object v1, v0

    instance-of v1, v1, Landroidx/core/view/NestedScrollingChild;

    if-eqz v1, :cond_0

    .line 2523
    move-object v1, v0

    check-cast v1, Landroidx/core/view/NestedScrollingChild;

    invoke-interface {v1}, Landroidx/core/view/NestedScrollingChild;->stopNestedScroll()V

    goto :goto_0
.end method

.method public static stopNestedScroll(Landroid/view/View;I)V
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2665
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    instance-of v2, v2, Landroidx/core/view/NestedScrollingChild2;

    if-eqz v2, :cond_1

    .line 2666
    move-object v2, v0

    check-cast v2, Landroidx/core/view/NestedScrollingChild2;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/core/view/NestedScrollingChild2;->stopNestedScroll(I)V

    .line 2670
    :cond_0
    :goto_0
    return-void

    .line 2667
    :cond_1
    move v2, v1

    if-nez v2, :cond_0

    .line 2668
    move-object v2, v0

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    goto :goto_0
.end method

.method private static tickleInvalidationFlag(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 3007
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    move v1, v2

    .line 3008
    move-object v2, v0

    move v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 3009
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 3010
    return-void
.end method

.method public static updateDragShadow(Landroid/view/View;Landroid/view/View$DragShadowBuilder;)V
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3210
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 3211
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->updateDragShadow(Landroid/view/View$DragShadowBuilder;)V

    .line 3213
    :cond_0
    return-void
.end method
