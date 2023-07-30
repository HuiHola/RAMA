.class public Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnPageChangeListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 321
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 335
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 325
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .prologue
    .line 330
    return-void
.end method
