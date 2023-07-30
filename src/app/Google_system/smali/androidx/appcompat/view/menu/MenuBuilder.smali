.class public Landroidx/appcompat/view/menu/MenuBuilder;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Landroidx/core/internal/view/SupportMenu;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;,
        Landroidx/appcompat/view/menu/MenuBuilder$Callback;
    }
.end annotation


# static fields
.field private static final ACTION_VIEW_STATES_KEY:Ljava/lang/String; = "android:menu:actionviewstates"

.field private static final EXPANDED_ACTION_VIEW_ID:Ljava/lang/String; = "android:menu:expandedactionview"

.field private static final PRESENTER_KEY:Ljava/lang/String; = "android:menu:presenters"

.field private static final TAG:Ljava/lang/String; = "MenuBuilder"

.field private static final sCategoryToOrder:[I


# instance fields
.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDefaultShowAsAction:I

.field private mExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

.field private mFrozenViewStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupDividerEnabled:Z

.field mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field mHeaderTitle:Ljava/lang/CharSequence;

.field mHeaderView:Landroid/view/View;

.field private mIsActionItemsStale:Z

.field private mIsClosing:Z

.field private mIsVisibleItemsStale:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsChangedWhileDispatchPrevented:Z

.field private mNonActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalIconsVisible:Z

.field private mOverrideVisibleItems:Z

.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroidx/appcompat/view/menu/MenuPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mStructureChangedWhileDispatchPrevented:Z

.field private mTempShortcutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/appcompat/view/menu/MenuBuilder;->sCategoryToOrder:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 229
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 134
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 165
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 167
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 169
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z

    .line 171
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 173
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mIsClosing:Z

    .line 175
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 177
    move-object v2, v0

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 188
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mGroupDividerEnabled:Z

    .line 230
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 231
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 232
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 234
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 235
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 237
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 238
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 239
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 241
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 242
    return-void
.end method

.method private createNewMenuItem(IIIILjava/lang/CharSequence;I)Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 17

    .prologue
    .line 466
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    new-instance v7, Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v0

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move-object v14, v5

    move v15, v6

    invoke-direct/range {v8 .. v15}, Landroidx/appcompat/view/menu/MenuItemImpl;-><init>(Landroidx/appcompat/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    move-object v0, v7

    return-object v0
.end method

.method private dispatchPresenterUpdate(Z)V
    .locals 7

    .prologue
    .line 290
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 302
    :goto_0
    return-void

    .line 292
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 293
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_1
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    move-object v3, v5

    .line 294
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/MenuPresenter;

    move-object v4, v5

    .line 295
    move-object v5, v4

    if-nez v5, :cond_1

    .line 296
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 300
    :goto_2
    goto :goto_1

    .line 298
    :cond_1
    move-object v5, v4

    move v6, v1

    invoke-interface {v5, v6}, Landroidx/appcompat/view/menu/MenuPresenter;->updateMenuView(Z)V

    goto :goto_2

    .line 301
    :cond_2
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 302
    goto :goto_0
.end method

.method private dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    .line 350
    move-object v0, p0

    move-object v1, p1

    move-object v8, v1

    const-string v9, "android:menu:presenters"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v8

    move-object v2, v8

    .line 352
    move-object v8, v2

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v8

    :goto_1
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    move-object v4, v8

    .line 355
    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/view/menu/MenuPresenter;

    move-object v5, v8

    .line 356
    move-object v8, v5

    if-nez v8, :cond_3

    .line 357
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v8

    .line 367
    :cond_2
    :goto_2
    goto :goto_1

    .line 359
    :cond_3
    move-object v8, v5

    invoke-interface {v8}, Landroidx/appcompat/view/menu/MenuPresenter;->getId()I

    move-result v8

    move v6, v8

    .line 360
    move v8, v6

    if-lez v8, :cond_2

    .line 361
    move-object v8, v2

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Parcelable;

    move-object v7, v8

    .line 362
    move-object v8, v7

    if-eqz v8, :cond_2

    .line 363
    move-object v8, v5

    move-object v9, v7

    invoke-interface {v8, v9}, Landroidx/appcompat/view/menu/MenuPresenter;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_2

    .line 368
    :cond_4
    goto :goto_0
.end method

.method private dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    .line 327
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 347
    :goto_0
    return-void

    .line 329
    :cond_0
    new-instance v8, Landroid/util/SparseArray;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    move-object v2, v8

    .line 331
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v8

    :goto_1
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    move-object v4, v8

    .line 332
    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/view/menu/MenuPresenter;

    move-object v5, v8

    .line 333
    move-object v8, v5

    if-nez v8, :cond_2

    .line 334
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v8

    .line 344
    :cond_1
    :goto_2
    goto :goto_1

    .line 336
    :cond_2
    move-object v8, v5

    invoke-interface {v8}, Landroidx/appcompat/view/menu/MenuPresenter;->getId()I

    move-result v8

    move v6, v8

    .line 337
    move v8, v6

    if-lez v8, :cond_1

    .line 338
    move-object v8, v5

    invoke-interface {v8}, Landroidx/appcompat/view/menu/MenuPresenter;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v8

    move-object v7, v8

    .line 339
    move-object v8, v7

    if-eqz v8, :cond_1

    .line 340
    move-object v8, v2

    move v9, v6

    move-object v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 346
    :cond_3
    move-object v8, v1

    const-string v9, "android:menu:presenters"

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 347
    goto :goto_0
.end method

.method private dispatchSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;Landroidx/appcompat/view/menu/MenuPresenter;)Z
    .locals 9

    .prologue
    .line 306
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    move v0, v7

    .line 323
    :goto_0
    return v0

    .line 308
    :cond_0
    const/4 v7, 0x0

    move v3, v7

    .line 311
    move-object v7, v2

    if-eqz v7, :cond_1

    .line 312
    move-object v7, v2

    move-object v8, v1

    invoke-interface {v7, v8}, Landroidx/appcompat/view/menu/MenuPresenter;->onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z

    move-result v7

    move v3, v7

    .line 315
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v4, v7

    :goto_1
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    move-object v5, v7

    .line 316
    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/view/menu/MenuPresenter;

    move-object v6, v7

    .line 317
    move-object v7, v6

    if-nez v7, :cond_3

    .line 318
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    .line 322
    :cond_2
    :goto_2
    goto :goto_1

    .line 319
    :cond_3
    move v7, v3

    if-nez v7, :cond_2

    .line 320
    move-object v7, v6

    move-object v8, v1

    invoke-interface {v7, v8}, Landroidx/appcompat/view/menu/MenuPresenter;->onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z

    move-result v7

    move v3, v7

    goto :goto_2

    .line 323
    :cond_4
    move v7, v3

    move v0, v7

    goto :goto_0
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 853
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    :goto_0
    move v4, v2

    if-ltz v4, :cond_1

    .line 854
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v3, v4

    .line 855
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getOrdering()I

    move-result v4

    move v5, v1

    if-gt v4, v5, :cond_0

    .line 856
    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    .line 860
    :goto_1
    return v0

    .line 853
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 860
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method private static getOrdering(I)I
    .locals 6

    .prologue
    .line 785
    move v0, p0

    move v2, v0

    const/high16 v3, -0x10000

    and-int/2addr v2, v3

    const/16 v3, 0x10

    shr-int/lit8 v2, v2, 0x10

    move v1, v2

    .line 787
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    sget-object v3, Landroidx/appcompat/view/menu/MenuBuilder;->sCategoryToOrder:[I

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 788
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "order does not contain a valid category."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 791
    :cond_1
    sget-object v2, Landroidx/appcompat/view/menu/MenuBuilder;->sCategoryToOrder:[I

    move v3, v1

    aget v2, v2, v3

    const/16 v3, 0x10

    shl-int/lit8 v2, v2, 0x10

    move v3, v0

    const v4, 0xffff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    move v0, v2

    return v0
.end method

.method private removeItemAtInt(IZ)V
    .locals 5

    .prologue
    .line 586
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    .line 590
    move v3, v2

    if-eqz v3, :cond_2

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 591
    :cond_2
    goto :goto_0
.end method

.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 10

    .prologue
    .line 1228
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v6, v7

    .line 1230
    move-object v7, v5

    if-eqz v7, :cond_0

    .line 1231
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1234
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1235
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1254
    :goto_0
    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1255
    return-void

    .line 1237
    :cond_0
    move v7, v1

    if-lez v7, :cond_3

    .line 1238
    move-object v7, v0

    move-object v8, v6

    move v9, v1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1243
    :cond_1
    :goto_1
    move v7, v3

    if-lez v7, :cond_4

    .line 1244
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v8

    move v9, v3

    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v7, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1250
    :cond_2
    :goto_2
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    goto :goto_0

    .line 1239
    :cond_3
    move-object v7, v2

    if-eqz v7, :cond_1

    .line 1240
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1245
    :cond_4
    move-object v7, v4

    if-eqz v7, :cond_2

    .line 1246
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method private setShortcutsVisibleInner(Z)V
    .locals 5

    .prologue
    .line 818
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 819
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 821
    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 820
    invoke-static {v3, v4}, Landroidx/core/view/ViewConfigurationCompat;->shouldShowMenuShortcutsWhenKeyboardPresent(Landroid/view/ViewConfiguration;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mShortcutsVisible:Z

    .line 822
    return-void

    .line 820
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 8

    .prologue
    .line 477
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 11

    .prologue
    .line 487
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    move v10, v4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 10

    .prologue
    .line 482
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 7

    .prologue
    .line 472
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 25

    .prologue
    .line 526
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v11, v18

    .line 527
    move-object/from16 v18, v11

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    const/16 v22, 0x0

    .line 528
    invoke-virtual/range {v18 .. v22}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v18

    move-object/from16 v12, v18

    .line 529
    move-object/from16 v18, v12

    if-eqz v18, :cond_2

    move-object/from16 v18, v12

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    :goto_0
    move/from16 v13, v18

    .line 531
    move/from16 v18, v9

    const/16 v19, 0x1

    and-int/lit8 v18, v18, 0x1

    if-nez v18, :cond_0

    .line 532
    move-object/from16 v18, v2

    move/from16 v19, v3

    invoke-virtual/range {v18 .. v19}, Landroidx/appcompat/view/menu/MenuBuilder;->removeGroup(I)V

    .line 535
    :cond_0
    const/16 v18, 0x0

    move/from16 v14, v18

    :goto_1
    move/from16 v18, v14

    move/from16 v19, v13

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 536
    move-object/from16 v18, v12

    move/from16 v19, v14

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    move-object/from16 v15, v18

    .line 537
    new-instance v18, Landroid/content/Intent;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    move/from16 v20, v0

    if-gez v20, :cond_3

    move-object/from16 v20, v8

    :goto_2
    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v16, v18

    .line 539
    move-object/from16 v18, v16

    new-instance v19, Landroid/content/ComponentName;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v21, v15

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v22, v15

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v20 .. v22}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v18

    .line 542
    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, v15

    move-object/from16 v23, v11

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v18 .. v22}, Landroidx/appcompat/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v19, v15

    move-object/from16 v20, v11

    .line 543
    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v19, v16

    .line 544
    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v17, v18

    .line 545
    move-object/from16 v18, v10

    if-eqz v18, :cond_1

    move-object/from16 v18, v15

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    move/from16 v18, v0

    if-ltz v18, :cond_1

    .line 546
    move-object/from16 v18, v10

    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    move/from16 v19, v0

    move-object/from16 v20, v17

    aput-object v20, v18, v19

    .line 535
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 529
    :cond_2
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 537
    :cond_3
    move-object/from16 v20, v7

    move-object/from16 v21, v15

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    move/from16 v21, v0

    aget-object v20, v20, v21

    goto/16 :goto_2

    .line 550
    :cond_4
    move/from16 v18, v13

    move/from16 v2, v18

    return v2
.end method

.method protected addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 14

    .prologue
    .line 447
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move v7, v3

    invoke-static {v7}, Landroidx/appcompat/view/menu/MenuBuilder;->getOrdering(I)I

    move-result v7

    move v5, v7

    .line 449
    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v5

    move-object v12, v4

    move-object v13, v0

    iget v13, v13, Landroidx/appcompat/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    invoke-direct/range {v7 .. v13}, Landroidx/appcompat/view/menu/MenuBuilder;->createNewMenuItem(IIIILjava/lang/CharSequence;I)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v7

    move-object v6, v7

    .line 452
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz v7, :cond_0

    .line 454
    move-object v7, v6

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 457
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v9, v5

    invoke-static {v8, v9}, Landroidx/appcompat/view/menu/MenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result v8

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 458
    move-object v7, v0

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 460
    move-object v7, v6

    move-object v0, v7

    return-object v0
.end method

.method public addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V
    .locals 5

    .prologue
    .line 256
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 257
    return-void
.end method

.method public addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 269
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 270
    move-object v3, v1

    move-object v4, v2

    move-object v5, v0

    invoke-interface {v3, v4, v5}, Landroidx/appcompat/view/menu/MenuPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 271
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 272
    return-void
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 8

    .prologue
    .line 497
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 11

    .prologue
    .line 511
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    move v10, v4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/appcompat/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 13

    .prologue
    .line 502
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move-object v11, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v5, v7

    .line 503
    new-instance v7, Landroidx/appcompat/view/menu/SubMenuBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    move-object v10, v0

    move-object v11, v5

    invoke-direct {v8, v9, v10, v11}, Landroidx/appcompat/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)V

    move-object v6, v7

    .line 504
    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->setSubMenu(Landroidx/appcompat/view/menu/SubMenuBuilder;)V

    .line 506
    move-object v7, v6

    move-object v0, v7

    return-object v0
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 7

    .prologue
    .line 492
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public changeMenuMode()V
    .locals 3

    .prologue
    .line 847
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    if-eqz v1, :cond_0

    .line 848
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder$Callback;->onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 850
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 610
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    .line 611
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->collapseItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    move-result v1

    .line 613
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 615
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 616
    return-void
.end method

.method public clearAll()V
    .locals 3

    .prologue
    .line 598
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 599
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->clear()V

    .line 600
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->clearHeader()V

    .line 601
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 602
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 603
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 604
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z

    .line 605
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 606
    return-void
.end method

.method public clearHeader()V
    .locals 3

    .prologue
    .line 1219
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1220
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1221
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1223
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1224
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 1052
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    .line 1053
    return-void
.end method

.method public final close(Z)V
    .locals 8

    .prologue
    .line 1036
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/appcompat/view/menu/MenuBuilder;->mIsClosing:Z

    if-eqz v5, :cond_0

    .line 1048
    :goto_0
    return-void

    .line 1038
    :cond_0
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/appcompat/view/menu/MenuBuilder;->mIsClosing:Z

    .line 1039
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_1
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    move-object v3, v5

    .line 1040
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/MenuPresenter;

    move-object v4, v5

    .line 1041
    move-object v5, v4

    if-nez v5, :cond_1

    .line 1042
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 1046
    :goto_2
    goto :goto_1

    .line 1044
    :cond_1
    move-object v5, v4

    move-object v6, v0

    move v7, v1

    invoke-interface {v5, v6, v7}, Landroidx/appcompat/view/menu/MenuPresenter;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    goto :goto_2

    .line 1047
    :cond_2
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/appcompat/view/menu/MenuBuilder;->mIsClosing:Z

    .line 1048
    goto :goto_0
.end method

.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 10

    .prologue
    .line 1379
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuBuilder;->mExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v7, v1

    if-eq v6, v7, :cond_1

    :cond_0
    const/4 v6, 0x0

    move v0, v6

    .line 1397
    :goto_0
    return v0

    .line 1381
    :cond_1
    const/4 v6, 0x0

    move v2, v6

    .line 1383
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1384
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_1
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    move-object v4, v6

    .line 1385
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/MenuPresenter;

    move-object v5, v6

    .line 1386
    move-object v6, v5

    if-nez v6, :cond_3

    .line 1387
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    .line 1391
    :cond_2
    goto :goto_1

    .line 1388
    :cond_3
    move-object v6, v5

    move-object v7, v0

    move-object v8, v1

    invoke-interface {v6, v7, v8}, Landroidx/appcompat/view/menu/MenuPresenter;->collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    move-result v6

    move v9, v6

    move v6, v9

    move v7, v9

    move v2, v7

    if-eqz v6, :cond_2

    .line 1392
    :cond_4
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1394
    move v6, v2

    if-eqz v6, :cond_5

    .line 1395
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroidx/appcompat/view/menu/MenuBuilder;->mExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 1397
    :cond_5
    move v6, v2

    move v0, v6

    goto :goto_0
.end method

.method dispatchMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    .line 840
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuBuilder;->mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuBuilder;->mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroidx/appcompat/view/menu/MenuBuilder$Callback;->onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 10

    .prologue
    .line 1357
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    move v0, v6

    .line 1375
    :goto_0
    return v0

    .line 1359
    :cond_0
    const/4 v6, 0x0

    move v2, v6

    .line 1361
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1362
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_1
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    move-object v4, v6

    .line 1363
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/MenuPresenter;

    move-object v5, v6

    .line 1364
    move-object v6, v5

    if-nez v6, :cond_2

    .line 1365
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    .line 1369
    :cond_1
    goto :goto_1

    .line 1366
    :cond_2
    move-object v6, v5

    move-object v7, v0

    move-object v8, v1

    invoke-interface {v6, v7, v8}, Landroidx/appcompat/view/menu/MenuPresenter;->expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    move-result v6

    move v9, v6

    move v6, v9

    move v7, v9

    move v2, v7

    if-eqz v6, :cond_1

    .line 1370
    :cond_3
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1372
    move v6, v2

    if-eqz v6, :cond_4

    .line 1373
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroidx/appcompat/view/menu/MenuBuilder;->mExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 1375
    :cond_4
    move v6, v2

    move v0, v6

    goto :goto_0
.end method

.method public findGroupIndex(I)I
    .locals 5

    .prologue
    .line 730
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->findGroupIndex(II)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public findGroupIndex(II)I
    .locals 8

    .prologue
    .line 734
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v6

    move v3, v6

    .line 736
    move v6, v2

    if-gez v6, :cond_0

    .line 737
    const/4 v6, 0x0

    move v2, v6

    .line 740
    :cond_0
    move v6, v2

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_2

    .line 741
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v5, v6

    .line 743
    move-object v6, v5

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v6

    move v7, v1

    if-ne v6, v7, :cond_1

    .line 744
    move v6, v4

    move v0, v6

    .line 748
    :goto_1
    return v0

    .line 740
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 748
    :cond_2
    const/4 v6, -0x1

    move v0, v6

    goto :goto_1
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 8

    .prologue
    .line 699
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v6

    move v2, v6

    .line 700
    const/4 v6, 0x0

    move v3, v6

    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_2

    .line 701
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v4, v6

    .line 702
    move-object v6, v4

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v6

    move v7, v1

    if-ne v6, v7, :cond_0

    .line 703
    move-object v6, v4

    move-object v0, v6

    .line 713
    :goto_1
    return-object v0

    .line 704
    :cond_0
    move-object v6, v4

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 705
    move-object v6, v4

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v6

    move v7, v1

    invoke-interface {v6, v7}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    move-object v5, v6

    .line 707
    move-object v6, v5

    if-eqz v6, :cond_1

    .line 708
    move-object v6, v5

    move-object v0, v6

    goto :goto_1

    .line 700
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 713
    :cond_2
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method public findItemIndex(I)I
    .locals 7

    .prologue
    .line 717
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v5

    move v2, v5

    .line 719
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 720
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v4, v5

    .line 721
    move-object v5, v4

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v5

    move v6, v1

    if-ne v5, v6, :cond_0

    .line 722
    move v5, v3

    move v0, v5

    .line 726
    :goto_1
    return v0

    .line 719
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 726
    :cond_1
    const/4 v5, -0x1

    move v0, v5

    goto :goto_1
.end method

.method findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 16

    .prologue
    .line 936
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    move-object v3, v11

    .line 937
    move-object v11, v3

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 938
    move-object v11, v0

    move-object v12, v3

    move v13, v1

    move-object v14, v2

    invoke-virtual {v11, v12, v13, v14}, Landroidx/appcompat/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 940
    move-object v11, v3

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 941
    const/4 v11, 0x0

    move-object v0, v11

    .line 971
    :goto_0
    return-object v0

    .line 944
    :cond_0
    move-object v11, v2

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v11

    move v4, v11

    .line 945
    new-instance v11, Landroid/view/KeyCharacterMap$KeyData;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    move-object v5, v11

    .line 947
    move-object v11, v2

    move-object v12, v5

    invoke-virtual {v11, v12}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v11

    .line 950
    move-object v11, v3

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v6, v11

    .line 951
    move v11, v6

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 952
    move-object v11, v3

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v0, v11

    goto :goto_0

    .line 955
    :cond_1
    move-object v11, v0

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v11

    move v7, v11

    .line 958
    const/4 v11, 0x0

    move v8, v11

    :goto_1
    move v11, v8

    move v12, v6

    if-ge v11, v12, :cond_7

    .line 959
    move-object v11, v3

    move v12, v8

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v9, v11

    .line 960
    move v11, v7

    if-eqz v11, :cond_5

    move-object v11, v9

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v11

    .line 961
    :goto_2
    move v10, v11

    .line 962
    move v11, v10

    move-object v12, v5

    iget-object v12, v12, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v13, 0x0

    aget-char v12, v12, v13

    if-ne v11, v12, :cond_2

    move v11, v4

    const/4 v12, 0x2

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_4

    :cond_2
    move v11, v10

    move-object v12, v5

    iget-object v12, v12, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v13, 0x2

    aget-char v12, v12, v13

    if-ne v11, v12, :cond_3

    move v11, v4

    const/4 v12, 0x2

    and-int/lit8 v11, v11, 0x2

    if-nez v11, :cond_4

    :cond_3
    move v11, v7

    if-eqz v11, :cond_6

    move v11, v10

    const/16 v12, 0x8

    if-ne v11, v12, :cond_6

    move v11, v1

    const/16 v12, 0x43

    if-ne v11, v12, :cond_6

    .line 968
    :cond_4
    move-object v11, v9

    move-object v0, v11

    goto :goto_0

    .line 960
    :cond_5
    move-object v11, v9

    .line 961
    invoke-virtual {v11}, Landroidx/appcompat/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v11

    goto :goto_2

    .line 958
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 971
    :cond_7
    const/4 v11, 0x0

    move-object v0, v11

    goto/16 :goto_0
.end method

.method findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 888
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object v14, v0

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v14

    move v4, v14

    .line 889
    move-object v14, v3

    invoke-virtual {v14}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v14

    move v5, v14

    .line 890
    new-instance v14, Landroid/view/KeyCharacterMap$KeyData;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    invoke-direct {v15}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    move-object v6, v14

    .line 892
    move-object v14, v3

    move-object v15, v6

    invoke-virtual {v14, v15}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v14

    move v7, v14

    .line 894
    move v14, v7

    if-nez v14, :cond_0

    move v14, v2

    const/16 v15, 0x43

    if-eq v14, v15, :cond_0

    .line 920
    :goto_0
    return-void

    .line 899
    :cond_0
    move-object v14, v0

    iget-object v14, v14, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    move v8, v14

    .line 900
    const/4 v14, 0x0

    move v9, v14

    :goto_1
    move v14, v9

    move v15, v8

    if-ge v14, v15, :cond_7

    .line 901
    move-object v14, v0

    iget-object v14, v14, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v15, v9

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v10, v14

    .line 902
    move-object v14, v10

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 903
    move-object v14, v10

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v15, v1

    move/from16 v16, v2

    move-object/from16 v17, v3

    invoke-virtual/range {v14 .. v17}, Landroidx/appcompat/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 905
    :cond_1
    move v14, v4

    if-eqz v14, :cond_4

    move-object v14, v10

    .line 906
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v14

    :goto_2
    move v11, v14

    .line 907
    move v14, v4

    if-eqz v14, :cond_5

    move-object v14, v10

    .line 908
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuItemImpl;->getAlphabeticModifiers()I

    move-result v14

    :goto_3
    move v12, v14

    .line 909
    move v14, v5

    const v15, 0x1100f

    and-int/2addr v14, v15

    move v15, v12

    const v16, 0x1100f

    and-int v15, v15, v16

    if-ne v14, v15, :cond_6

    const/4 v14, 0x1

    :goto_4
    move v13, v14

    .line 911
    move v14, v13

    if-eqz v14, :cond_3

    move v14, v11

    if-eqz v14, :cond_3

    move v14, v11

    move-object v15, v6

    iget-object v15, v15, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/16 v16, 0x0

    aget-char v15, v15, v16

    if-eq v14, v15, :cond_2

    move v14, v11

    move-object v15, v6

    iget-object v15, v15, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/16 v16, 0x2

    aget-char v15, v15, v16

    if-eq v14, v15, :cond_2

    move v14, v4

    if-eqz v14, :cond_3

    move v14, v11

    const/16 v15, 0x8

    if-ne v14, v15, :cond_3

    move v14, v2

    const/16 v15, 0x43

    if-ne v14, v15, :cond_3

    :cond_2
    move-object v14, v10

    .line 916
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 917
    move-object v14, v1

    move-object v15, v10

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 900
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 906
    :cond_4
    move-object v14, v10

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v14

    goto :goto_2

    .line 908
    :cond_5
    move-object v14, v10

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuItemImpl;->getNumericModifiers()I

    move-result v14

    goto :goto_3

    .line 909
    :cond_6
    const/4 v14, 0x0

    goto :goto_4

    .line 920
    :cond_7
    goto/16 :goto_0
.end method

.method public flagActionItems()V
    .locals 8

    .prologue
    .line 1169
    move-object v0, p0

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v6

    move-object v1, v6

    .line 1171
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    if-nez v6, :cond_0

    .line 1206
    :goto_0
    return-void

    .line 1176
    :cond_0
    const/4 v6, 0x0

    move v2, v6

    .line 1177
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_1
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    move-object v4, v6

    .line 1178
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/MenuPresenter;

    move-object v5, v6

    .line 1179
    move-object v6, v5

    if-nez v6, :cond_1

    .line 1180
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    .line 1184
    :goto_2
    goto :goto_1

    .line 1182
    :cond_1
    move v6, v2

    move-object v7, v5

    invoke-interface {v7}, Landroidx/appcompat/view/menu/MenuPresenter;->flagActionItems()Z

    move-result v7

    or-int/2addr v6, v7

    move v2, v6

    goto :goto_2

    .line 1186
    :cond_2
    move v6, v2

    if-eqz v6, :cond_5

    .line 1187
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1188
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1189
    move-object v6, v1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 1190
    const/4 v6, 0x0

    move v4, v6

    :goto_3
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_4

    .line 1191
    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v5, v6

    .line 1192
    move-object v6, v5

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1193
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 1190
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1195
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_4

    .line 1205
    :cond_4
    :goto_5
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1206
    goto :goto_0

    .line 1201
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1202
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1203
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v6

    goto :goto_5
.end method

.method public getActionItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1209
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->flagActionItems()V

    .line 1210
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method protected getActionViewStatesKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 436
    move-object v0, p0

    const-string v1, "android:menu:actionviewstates"

    move-object v0, v1

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 836
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    move-object v0, v1

    return-object v0
.end method

.method public getExpandedItem()Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 2

    .prologue
    .line 1401
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v0, v1

    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1322
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1318
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 2

    .prologue
    .line 1326
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    move-object v0, v1

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 758
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    move-object v0, v2

    return-object v0
.end method

.method public getNonActionItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1214
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->flagActionItems()V

    .line 1215
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method getOptionalIconsVisible()Z
    .locals 2

    .prologue
    .line 1353
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    move v0, v1

    return v0
.end method

.method getResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 832
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    move-object v0, v1

    return-object v0
.end method

.method public getRootMenu()Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 2

    .prologue
    .line 1334
    move-object v0, p0

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public getVisibleItems()Ljava/util/ArrayList;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1124
    move-object v0, p0

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/appcompat/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    move-object v0, v4

    .line 1139
    :goto_0
    return-object v0

    .line 1127
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1129
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v4

    .line 1131
    const/4 v4, 0x0

    move v3, v4

    :goto_1
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_2

    .line 1132
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v2, v4

    .line 1133
    move-object v4, v2

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 1131
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1136
    :cond_2
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/appcompat/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1137
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1139
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    move-object v0, v4

    goto :goto_0
.end method

.method public hasVisibleItems()Z
    .locals 6

    .prologue
    .line 681
    move-object v0, p0

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/appcompat/view/menu/MenuBuilder;->mOverrideVisibleItems:Z

    if-eqz v4, :cond_0

    .line 682
    const/4 v4, 0x1

    move v0, v4

    .line 694
    :goto_0
    return v0

    .line 685
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v4

    move v1, v4

    .line 687
    const/4 v4, 0x0

    move v2, v4

    :goto_1
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_2

    .line 688
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v3, v4

    .line 689
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 690
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 687
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 694
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public isGroupDividerEnabled()Z
    .locals 2

    .prologue
    .line 520
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mGroupDividerEnabled:Z

    move v0, v1

    return v0
.end method

.method isQwertyMode()Z
    .locals 2

    .prologue
    .line 798
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mQwertyMode:Z

    move v0, v1

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 763
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isShortcutsVisible()Z
    .locals 2

    .prologue
    .line 828
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mShortcutsVisible:Z

    move v0, v1

    return v0
.end method

.method onItemActionRequestChanged(Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 4

    .prologue
    .line 1118
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1119
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1120
    return-void
.end method

.method onItemVisibleChanged(Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 4

    .prologue
    .line 1107
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1108
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1109
    return-void
.end method

.method public onItemsChanged(Z)V
    .locals 4

    .prologue
    .line 1063
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v2, :cond_2

    .line 1064
    move v2, v1

    if-eqz v2, :cond_0

    .line 1065
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1066
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1069
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->dispatchPresenterUpdate(Z)V

    .line 1076
    :cond_1
    :goto_0
    return-void

    .line 1071
    :cond_2
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 1072
    move v2, v1

    if-eqz v2, :cond_1

    .line 1073
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z

    goto :goto_0
.end method

.method public performIdentifierAction(II)Z
    .locals 6

    .prologue
    .line 977
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .locals 7

    .prologue
    .line 981
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z
    .locals 16

    .prologue
    .line 985
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v9, v1

    check-cast v9, Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v4, v9

    .line 987
    move-object v9, v4

    if-eqz v9, :cond_0

    move-object v9, v4

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_1

    .line 988
    :cond_0
    const/4 v9, 0x0

    move v0, v9

    .line 1024
    :goto_0
    return v0

    .line 991
    :cond_1
    move-object v9, v4

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/MenuItemImpl;->invoke()Z

    move-result v9

    move v5, v9

    .line 993
    move-object v9, v4

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSupportActionProvider()Landroidx/core/view/ActionProvider;

    move-result-object v9

    move-object v6, v9

    .line 994
    move-object v9, v6

    if-eqz v9, :cond_3

    move-object v9, v6

    invoke-virtual {v9}, Landroidx/core/view/ActionProvider;->hasSubMenu()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    :goto_1
    move v7, v9

    .line 995
    move-object v9, v4

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 996
    move v9, v5

    move-object v10, v4

    invoke-virtual {v10}, Landroidx/appcompat/view/menu/MenuItemImpl;->expandActionView()Z

    move-result v10

    or-int/2addr v9, v10

    move v5, v9

    .line 997
    move v9, v5

    if-eqz v9, :cond_2

    .line 998
    move-object v9, v0

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    .line 1024
    :cond_2
    :goto_2
    move v9, v5

    move v0, v9

    goto :goto_0

    .line 994
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 1000
    :cond_4
    move-object v9, v4

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v9

    if-nez v9, :cond_5

    move v9, v7

    if-eqz v9, :cond_a

    .line 1001
    :cond_5
    move v9, v3

    const/4 v10, 0x4

    and-int/lit8 v9, v9, 0x4

    if-nez v9, :cond_6

    .line 1003
    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    .line 1006
    :cond_6
    move-object v9, v4

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v9

    if-nez v9, :cond_7

    .line 1007
    move-object v9, v4

    new-instance v10, Landroidx/appcompat/view/menu/SubMenuBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    invoke-virtual {v12}, Landroidx/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object v13, v0

    move-object v14, v4

    invoke-direct {v11, v12, v13, v14}, Landroidx/appcompat/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)V

    invoke-virtual {v9, v10}, Landroidx/appcompat/view/menu/MenuItemImpl;->setSubMenu(Landroidx/appcompat/view/menu/SubMenuBuilder;)V

    .line 1010
    :cond_7
    move-object v9, v4

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/view/menu/SubMenuBuilder;

    move-object v8, v9

    .line 1011
    move v9, v7

    if-eqz v9, :cond_8

    .line 1012
    move-object v9, v6

    move-object v10, v8

    invoke-virtual {v9, v10}, Landroidx/core/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 1014
    :cond_8
    move v9, v5

    move-object v10, v0

    move-object v11, v8

    move-object v12, v2

    invoke-direct {v10, v11, v12}, Landroidx/appcompat/view/menu/MenuBuilder;->dispatchSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;Landroidx/appcompat/view/menu/MenuPresenter;)Z

    move-result v10

    or-int/2addr v9, v10

    move v5, v9

    .line 1015
    move v9, v5

    if-nez v9, :cond_9

    .line 1016
    move-object v9, v0

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    .line 1018
    :cond_9
    goto :goto_2

    .line 1019
    :cond_a
    move v9, v3

    const/4 v10, 0x1

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_2

    .line 1020
    move-object v9, v0

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    goto :goto_2
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 9

    .prologue
    .line 865
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v0

    move v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v6

    move-object v4, v6

    .line 867
    const/4 v6, 0x0

    move v5, v6

    .line 869
    move-object v6, v4

    if-eqz v6, :cond_0

    .line 870
    move-object v6, v0

    move-object v7, v4

    move v8, v3

    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v6

    move v5, v6

    .line 873
    :cond_0
    move v6, v3

    const/4 v7, 0x2

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1

    .line 874
    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    .line 877
    :cond_1
    move v6, v5

    move v0, v6

    return v0
.end method

.method public removeGroup(I)V
    .locals 8

    .prologue
    .line 560
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->findGroupIndex(I)I

    move-result v5

    move v2, v5

    .line 562
    move v5, v2

    if-ltz v5, :cond_1

    .line 563
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    sub-int/2addr v5, v6

    move v3, v5

    .line 564
    const/4 v5, 0x0

    move v4, v5

    .line 565
    :goto_0
    move v5, v4

    add-int/lit8 v4, v4, 0x1

    move v6, v3

    if-ge v5, v6, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v5

    move v6, v1

    if-ne v5, v6, :cond_0

    .line 567
    move-object v5, v0

    move v6, v2

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroidx/appcompat/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    goto :goto_0

    .line 571
    :cond_0
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 573
    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 5

    .prologue
    .line 555
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->findItemIndex(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 556
    return-void
.end method

.method public removeItemAt(I)V
    .locals 5

    .prologue
    .line 594
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 595
    return-void
.end method

.method public removeMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V
    .locals 7

    .prologue
    .line 281
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    move-object v3, v5

    .line 282
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/MenuPresenter;

    move-object v4, v5

    .line 283
    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v4

    move-object v6, v1

    if-ne v5, v6, :cond_1

    .line 284
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 286
    :cond_1
    goto :goto_0

    .line 287
    :cond_2
    return-void
.end method

.method public restoreActionViewStates(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    .line 406
    move-object v0, p0

    move-object v1, p1

    move-object v8, v1

    if-nez v8, :cond_0

    .line 433
    :goto_0
    return-void

    .line 410
    :cond_0
    move-object v8, v1

    move-object v9, v0

    .line 411
    invoke-virtual {v9}, Landroidx/appcompat/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v9

    .line 410
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v8

    move-object v2, v8

    .line 413
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v8

    move v3, v8

    .line 414
    const/4 v8, 0x0

    move v4, v8

    :goto_1
    move v8, v4

    move v9, v3

    if-ge v8, v9, :cond_3

    .line 415
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    move-object v5, v8

    .line 416
    move-object v8, v5

    invoke-interface {v8}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v8

    move-object v6, v8

    .line 417
    move-object v8, v6

    if-eqz v8, :cond_1

    move-object v8, v6

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 418
    move-object v8, v6

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 420
    :cond_1
    move-object v8, v5

    invoke-interface {v8}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 421
    move-object v8, v5

    invoke-interface {v8}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/view/menu/SubMenuBuilder;

    move-object v7, v8

    .line 422
    move-object v8, v7

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroidx/appcompat/view/menu/SubMenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 414
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 426
    :cond_3
    move-object v8, v1

    const-string v9, "android:menu:expandedactionview"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    move v4, v8

    .line 427
    move v8, v4

    if-lez v8, :cond_4

    .line 428
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    move-object v5, v8

    .line 429
    move-object v8, v5

    if-eqz v8, :cond_4

    .line 430
    move-object v8, v5

    invoke-interface {v8}, Landroid/view/MenuItem;->expandActionView()Z

    move-result v8

    .line 433
    :cond_4
    goto :goto_0
.end method

.method public restorePresenterStates(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 375
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 376
    return-void
.end method

.method public saveActionViewStates(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    .line 379
    move-object v0, p0

    move-object v1, p1

    const/4 v8, 0x0

    move-object v2, v8

    .line 381
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v8

    move v3, v8

    .line 382
    const/4 v8, 0x0

    move v4, v8

    :goto_0
    move v8, v4

    move v9, v3

    if-ge v8, v9, :cond_3

    .line 383
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    move-object v5, v8

    .line 384
    move-object v8, v5

    invoke-interface {v8}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v8

    move-object v6, v8

    .line 385
    move-object v8, v6

    if-eqz v8, :cond_1

    move-object v8, v6

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 386
    move-object v8, v2

    if-nez v8, :cond_0

    .line 387
    new-instance v8, Landroid/util/SparseArray;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    move-object v2, v8

    .line 389
    :cond_0
    move-object v8, v6

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 390
    move-object v8, v5

    invoke-interface {v8}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 391
    move-object v8, v1

    const-string v9, "android:menu:expandedactionview"

    move-object v10, v5

    invoke-interface {v10}, Landroid/view/MenuItem;->getItemId()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 394
    :cond_1
    move-object v8, v5

    invoke-interface {v8}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 395
    move-object v8, v5

    invoke-interface {v8}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/view/menu/SubMenuBuilder;

    move-object v7, v8

    .line 396
    move-object v8, v7

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroidx/appcompat/view/menu/SubMenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 382
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 400
    :cond_3
    move-object v8, v2

    if-eqz v8, :cond_4

    .line 401
    move-object v8, v1

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 403
    :cond_4
    return-void
.end method

.method public savePresenterStates(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 371
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 372
    return-void
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V
    .locals 4

    .prologue
    .line 440
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 441
    return-void
.end method

.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    .prologue
    .line 1345
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1346
    return-void
.end method

.method public setDefaultShowAsAction(I)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 4

    .prologue
    .line 245
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 246
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method setExclusiveItemChecked(Landroid/view/MenuItem;)V
    .locals 9

    .prologue
    .line 619
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-interface {v6}, Landroid/view/MenuItem;->getGroupId()I

    move-result v6

    move v2, v6

    .line 621
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 622
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 623
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_4

    .line 624
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v5, v6

    .line 625
    move-object v6, v5

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v6

    move v7, v2

    if-ne v6, v7, :cond_0

    .line 626
    move-object v6, v5

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v6

    if-nez v6, :cond_1

    .line 623
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 627
    :cond_1
    move-object v6, v5

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 630
    :cond_2
    move-object v6, v5

    move-object v7, v5

    move-object v8, v1

    if-ne v7, v8, :cond_3

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 633
    :cond_4
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 634
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 9

    .prologue
    .line 638
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v7

    .line 640
    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_1

    .line 641
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v6, v7

    .line 642
    move-object v7, v6

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v7

    move v8, v1

    if-ne v7, v8, :cond_0

    .line 643
    move-object v7, v6

    move v8, v3

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 644
    move-object v7, v6

    move v8, v2

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v7

    .line 640
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 647
    :cond_1
    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .locals 4

    .prologue
    .line 516
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mGroupDividerEnabled:Z

    .line 517
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 8

    .prologue
    .line 669
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 671
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 672
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v5, v6

    .line 673
    move-object v6, v5

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v6

    move v7, v1

    if-ne v6, v7, :cond_0

    .line 674
    move-object v6, v5

    move v7, v2

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v6

    .line 671
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 677
    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 9

    .prologue
    .line 651
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v3, v7

    .line 656
    const/4 v7, 0x0

    move v4, v7

    .line 657
    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v3

    if-ge v7, v8, :cond_1

    .line 658
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v6, v7

    .line 659
    move-object v7, v6

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v7

    move v8, v1

    if-ne v7, v8, :cond_0

    .line 660
    move-object v7, v6

    move v8, v2

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    move v4, v7

    .line 657
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 664
    :cond_1
    move v7, v4

    if-eqz v7, :cond_2

    move-object v7, v0

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 665
    :cond_2
    return-void
.end method

.method protected setHeaderIconInt(I)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 8

    .prologue
    .line 1301
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroidx/appcompat/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1302
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 8

    .prologue
    .line 1289
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroidx/appcompat/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1290
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method protected setHeaderTitleInt(I)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 8

    .prologue
    .line 1277
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroidx/appcompat/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1278
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 8

    .prologue
    .line 1265
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroidx/appcompat/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1266
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method protected setHeaderViewInt(Landroid/view/View;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 8

    .prologue
    .line 1313
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Landroidx/appcompat/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1314
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setOptionalIconsVisible(Z)V
    .locals 4

    .prologue
    .line 1349
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 1350
    return-void
.end method

.method public setOverrideVisibleItems(Z)V
    .locals 4

    .prologue
    .line 1410
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mOverrideVisibleItems:Z

    .line 1411
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 4

    .prologue
    .line 768
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mQwertyMode:Z

    .line 770
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 771
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 4

    .prologue
    .line 809
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mShortcutsVisible:Z

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 815
    :goto_0
    return-void

    .line 813
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 814
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 815
    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 753
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public startDispatchingItemsChanged()V
    .locals 3

    .prologue
    .line 1092
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 1094
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    if-eqz v1, :cond_0

    .line 1095
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 1096
    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1098
    :cond_0
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .locals 3

    .prologue
    .line 1084
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v1, :cond_0

    .line 1085
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 1086
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 1087
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z

    .line 1089
    :cond_0
    return-void
.end method
