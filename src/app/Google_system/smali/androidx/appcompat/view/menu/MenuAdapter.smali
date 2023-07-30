.class public Landroidx/appcompat/view/menu/MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuAdapter.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private mExpandedIndex:I

.field private mForceShowIcon:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItemLayoutRes:I

.field private final mOverflowOnly:Z


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/LayoutInflater;ZI)V
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    invoke-direct {v5}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/appcompat/view/menu/MenuAdapter;->mExpandedIndex:I

    .line 45
    move-object v5, v0

    move v6, v3

    iput-boolean v6, v5, Landroidx/appcompat/view/menu/MenuAdapter;->mOverflowOnly:Z

    .line 46
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroidx/appcompat/view/menu/MenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 47
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 48
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroidx/appcompat/view/menu/MenuAdapter;->mItemLayoutRes:I

    .line 49
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuAdapter;->findExpandedIndex()V

    .line 50
    return-void
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 8

    .prologue
    .line 114
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->getExpandedItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v6

    move-object v1, v6

    .line 115
    move-object v6, v1

    if-eqz v6, :cond_1

    .line 116
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v6

    move-object v2, v6

    .line 117
    move-object v6, v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 118
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 119
    move-object v6, v2

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v5, v6

    .line 120
    move-object v6, v5

    move-object v7, v1

    if-ne v6, v7, :cond_0

    .line 121
    move-object v6, v0

    move v7, v4

    iput v7, v6, Landroidx/appcompat/view/menu/MenuAdapter;->mExpandedIndex:I

    .line 127
    :goto_1
    return-void

    .line 118
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 126
    :cond_1
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroidx/appcompat/view/menu/MenuAdapter;->mExpandedIndex:I

    .line 127
    goto :goto_1
.end method

.method public getAdapterMenu()Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v0, v1

    return-object v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/view/menu/MenuAdapter;->mOverflowOnly:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 63
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v2

    :goto_0
    move-object v1, v2

    .line 64
    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/view/menu/MenuAdapter;->mExpandedIndex:I

    if-gez v2, :cond_1

    .line 65
    move-object v2, v1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v0, v2

    .line 67
    :goto_1
    return v0

    .line 63
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    .line 67
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_1
.end method

.method public getForceShowIcon()Z
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/view/menu/MenuAdapter;->mForceShowIcon:Z

    move v0, v1

    return v0
.end method

.method public getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 5

    .prologue
    .line 76
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/view/menu/MenuAdapter;->mOverflowOnly:Z

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 77
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v3

    :goto_0
    move-object v2, v3

    .line 78
    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/view/menu/MenuAdapter;->mExpandedIndex:I

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/view/menu/MenuAdapter;->mExpandedIndex:I

    if-lt v3, v4, :cond_0

    .line 79
    add-int/lit8 v1, v1, 0x1

    .line 81
    :cond_0
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v0, v3

    return-object v0

    .line 77
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 32
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4

    .prologue
    .line 88
    move-object v0, p0

    move v1, p1

    move v2, v1

    int-to-long v2, v2

    move-wide v0, v2

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    .line 93
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, v2

    if-nez v7, :cond_0

    .line 94
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/view/menu/MenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/view/menu/MenuAdapter;->mItemLayoutRes:I

    move-object v9, v3

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    move-object v2, v7

    .line 97
    :cond_0
    move-object v7, v0

    move v8, v1

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v7

    move v4, v7

    .line 98
    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_2

    move-object v7, v0

    move v8, v1

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    .line 99
    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v7

    :goto_0
    move v5, v7

    .line 101
    move-object v7, v2

    check-cast v7, Landroidx/appcompat/view/menu/ListMenuItemView;

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 102
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuBuilder;->isGroupDividerEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v4

    move v9, v5

    if-eq v8, v9, :cond_3

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/ListMenuItemView;->setGroupDividerEnabled(Z)V

    .line 105
    move-object v7, v2

    check-cast v7, Landroidx/appcompat/view/menu/MenuView$ItemView;

    move-object v6, v7

    .line 106
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/appcompat/view/menu/MenuAdapter;->mForceShowIcon:Z

    if-eqz v7, :cond_1

    .line 107
    move-object v7, v2

    check-cast v7, Landroidx/appcompat/view/menu/ListMenuItemView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 109
    :cond_1
    move-object v7, v6

    move-object v8, v0

    move v9, v1

    invoke-virtual {v8, v9}, Landroidx/appcompat/view/menu/MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroidx/appcompat/view/menu/MenuView$ItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    .line 110
    move-object v7, v2

    move-object v0, v7

    return-object v0

    .line 99
    :cond_2
    move v7, v4

    goto :goto_0

    .line 102
    :cond_3
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuAdapter;->findExpandedIndex()V

    .line 132
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 133
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/MenuAdapter;->mForceShowIcon:Z

    .line 58
    return-void
.end method
