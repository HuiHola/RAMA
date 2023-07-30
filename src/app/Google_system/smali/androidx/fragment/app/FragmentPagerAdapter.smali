.class public abstract Landroidx/fragment/app/FragmentPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "FragmentPagerAdapter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FragmentPagerAdapter"


# instance fields
.field private mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

.field private final mFragmentManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 68
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/fragment/app/FragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    .line 69
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/fragment/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    .line 72
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/fragment/app/FragmentPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 73
    return-void
.end method

.method private static makeFragmentName(IJ)Ljava/lang/String;
    .locals 7

    .prologue
    .line 179
    move v0, p0

    move-wide v1, p1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android:switcher:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 6
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-nez v4, :cond_0

    .line 121
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v5

    iput-object v5, v4, Landroidx/fragment/app/FragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    .line 125
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    move-object v5, v3

    check-cast v5, Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    .line 126
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 145
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-eqz v2, :cond_0

    .line 146
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 147
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/fragment/app/FragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    .line 149
    :cond_0
    return-void
.end method

.method public abstract getItem(I)Landroidx/fragment/app/Fragment;
.end method

.method public getItemId(I)J
    .locals 4

    .prologue
    .line 175
    move-object v0, p0

    move v1, p1

    move v2, v1

    int-to-long v2, v2

    move-wide v0, v2

    return-wide v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 13
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-nez v7, :cond_0

    .line 93
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v8}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v8

    iput-object v8, v7, Landroidx/fragment/app/FragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    .line 96
    :cond_0
    move-object v7, v0

    move v8, v2

    invoke-virtual {v7, v8}, Landroidx/fragment/app/FragmentPagerAdapter;->getItemId(I)J

    move-result-wide v7

    move-wide v3, v7

    .line 99
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getId()I

    move-result v7

    move-wide v8, v3

    invoke-static {v7, v8, v9}, Landroidx/fragment/app/FragmentPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 100
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v7

    move-object v6, v7

    .line 101
    move-object v7, v6

    if-eqz v7, :cond_2

    .line 103
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v7

    .line 110
    :goto_0
    move-object v7, v6

    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    if-eq v7, v8, :cond_1

    .line 111
    move-object v7, v6

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 112
    move-object v7, v6

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 115
    :cond_1
    move-object v7, v6

    move-object v0, v7

    return-object v0

    .line 105
    :cond_2
    move-object v7, v0

    move v8, v2

    invoke-virtual {v7, v8}, Landroidx/fragment/app/FragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v7

    move-object v6, v7

    .line 107
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getId()I

    move-result v8

    move-object v9, v6

    move-object v10, v1

    .line 108
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getId()I

    move-result v10

    move-wide v11, v3

    invoke-static {v10, v11, v12}, Landroidx/fragment/app/FragmentPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v10

    .line 107
    invoke-virtual {v7, v8, v9, v10}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v7

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 153
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    check-cast v3, Landroidx/fragment/app/Fragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 158
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 7
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v3

    check-cast v5, Landroidx/fragment/app/Fragment;

    move-object v4, v5

    .line 132
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    if-eq v5, v6, :cond_1

    .line 133
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_0

    .line 134
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 135
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 137
    :cond_0
    move-object v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 138
    move-object v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 139
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroidx/fragment/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    .line 141
    :cond_1
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 7
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 83
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ViewPager with adapter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " requires a view id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_0
    return-void
.end method
