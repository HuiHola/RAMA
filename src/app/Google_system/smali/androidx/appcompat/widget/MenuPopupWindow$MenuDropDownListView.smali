.class public Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;
.super Landroidx/appcompat/widget/DropDownListView;
.source "MenuPopupWindow.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/MenuPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuDropDownListView"
.end annotation


# instance fields
.field final mAdvanceKey:I

.field private mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

.field private mHoveredMenuItem:Landroid/view/MenuItem;

.field final mRetreatKey:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 8

    .prologue
    .line 138
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Landroidx/appcompat/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    .line 140
    move-object v5, v1

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v3, v5

    .line 141
    move-object v5, v3

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    move-object v4, v5

    .line 142
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_0

    const/4 v5, 0x1

    move-object v6, v4

    .line 143
    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 144
    move-object v5, v0

    const/16 v6, 0x15

    iput v6, v5, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    .line 145
    move-object v5, v0

    const/16 v6, 0x16

    iput v6, v5, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    .line 150
    :goto_0
    return-void

    .line 147
    :cond_0
    move-object v5, v0

    const/16 v6, 0x16

    iput v6, v5, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    .line 148
    move-object v5, v0

    const/16 v6, 0x15

    iput v6, v5, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    goto :goto_0
.end method


# virtual methods
.method public clearSelection()V
    .locals 3

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, v0

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->setSelection(I)V

    .line 158
    return-void
.end method

.method public bridge synthetic hasFocus()Z
    .locals 2

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/widget/DropDownListView;->hasFocus()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public bridge synthetic hasWindowFocus()Z
    .locals 2

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/widget/DropDownListView;->hasWindowFocus()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public bridge synthetic isFocused()Z
    .locals 2

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/widget/DropDownListView;->isFocused()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public bridge synthetic isInTouchMode()Z
    .locals 2

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/widget/DropDownListView;->isInTouchMode()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public bridge synthetic lookForSelectablePosition(IZ)I
    .locals 6

    .prologue
    .line 129
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroidx/appcompat/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public bridge synthetic measureHeightOfChildrenCompat(IIIII)I
    .locals 12

    .prologue
    .line 129
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-super/range {v6 .. v11}, Landroidx/appcompat/widget/DropDownListView;->measureHeightOfChildrenCompat(IIIII)I

    move-result v6

    move v0, v6

    return v0
.end method

.method public bridge synthetic onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 6

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroidx/appcompat/widget/DropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    .line 184
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

    if-eqz v8, :cond_2

    .line 188
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    move-object v4, v8

    .line 189
    move-object v8, v4

    instance-of v8, v8, Landroid/widget/HeaderViewListAdapter;

    if-eqz v8, :cond_3

    .line 190
    move-object v8, v4

    check-cast v8, Landroid/widget/HeaderViewListAdapter;

    move-object v5, v8

    .line 191
    move-object v8, v5

    invoke-virtual {v8}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v8

    move v2, v8

    .line 192
    move-object v8, v5

    invoke-virtual {v8}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/view/menu/MenuAdapter;

    move-object v3, v8

    .line 199
    :goto_0
    const/4 v8, 0x0

    move-object v5, v8

    .line 200
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/16 v9, 0xa

    if-eq v8, v9, :cond_0

    .line 201
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    move-object v10, v1

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v8, v9, v10}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->pointToPosition(II)I

    move-result v8

    move v6, v8

    .line 202
    move v8, v6

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 203
    move v8, v6

    move v9, v2

    sub-int/2addr v8, v9

    move v7, v8

    .line 204
    move v8, v7

    if-ltz v8, :cond_0

    move v8, v7

    move-object v9, v3

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/MenuAdapter;->getCount()I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 205
    move-object v8, v3

    move v9, v7

    invoke-virtual {v8, v9}, Landroidx/appcompat/view/menu/MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v8

    move-object v5, v8

    .line 210
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Landroid/view/MenuItem;

    move-object v6, v8

    .line 211
    move-object v8, v6

    move-object v9, v5

    if-eq v8, v9, :cond_2

    .line 212
    move-object v8, v3

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuAdapter;->getAdapterMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v8

    move-object v7, v8

    .line 213
    move-object v8, v6

    if-eqz v8, :cond_1

    .line 214
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

    move-object v9, v7

    move-object v10, v6

    invoke-interface {v8, v9, v10}, Landroidx/appcompat/widget/MenuItemHoverListener;->onItemHoverExit(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    .line 217
    :cond_1
    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Landroid/view/MenuItem;

    .line 219
    move-object v8, v5

    if-eqz v8, :cond_2

    .line 220
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

    move-object v9, v7

    move-object v10, v5

    invoke-interface {v8, v9, v10}, Landroidx/appcompat/widget/MenuItemHoverListener;->onItemHoverEnter(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    .line 225
    :cond_2
    move-object v8, v0

    move-object v9, v1

    invoke-super {v8, v9}, Landroidx/appcompat/widget/DropDownListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    move v0, v8

    return v0

    .line 194
    :cond_3
    const/4 v8, 0x0

    move v2, v8

    .line 195
    move-object v8, v4

    check-cast v8, Landroidx/appcompat/view/menu/MenuAdapter;

    move-object v3, v8

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9

    .prologue
    .line 162
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/ListMenuItemView;

    move-object v3, v4

    .line 163
    move-object v4, v3

    if-eqz v4, :cond_1

    move v4, v1

    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    if-ne v4, v5, :cond_1

    .line 164
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ListMenuItemView;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ListMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    move-object v4, v0

    move-object v5, v3

    move-object v6, v0

    .line 167
    invoke-virtual {v6}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedItemPosition()I

    move-result v6

    move-object v7, v0

    .line 168
    invoke-virtual {v7}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedItemId()J

    move-result-wide v7

    .line 165
    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v4

    .line 170
    :cond_0
    const/4 v4, 0x1

    move v0, v4

    .line 178
    :goto_0
    return v0

    .line 171
    :cond_1
    move-object v4, v3

    if-eqz v4, :cond_2

    move v4, v1

    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    if-ne v4, v5, :cond_2

    .line 172
    move-object v4, v0

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->setSelection(I)V

    .line 175
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/MenuAdapter;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuAdapter;->getAdapterMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    .line 176
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 178
    :cond_2
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroidx/appcompat/widget/DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/DropDownListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public setHoverListener(Landroidx/appcompat/widget/MenuItemHoverListener;)V
    .locals 4

    .prologue
    .line 153
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

    .line 154
    return-void
.end method

.method public bridge synthetic setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
