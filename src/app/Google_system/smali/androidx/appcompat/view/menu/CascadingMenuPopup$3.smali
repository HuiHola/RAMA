.class Landroidx/appcompat/view/menu/CascadingMenuPopup$3;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroidx/appcompat/widget/MenuItemHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/CascadingMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/CascadingMenuPopup;)V
    .locals 4

    .prologue
    .line 137
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup$3;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemHoverEnter(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 16
    .param p1    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 150
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/view/menu/CascadingMenuPopup$3;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v9, v9, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 153
    const/4 v9, -0x1

    move v3, v9

    .line 154
    const/4 v9, 0x0

    move v4, v9

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/view/menu/CascadingMenuPopup$3;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v9, v9, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v5, v9

    :goto_0
    move v9, v4

    move v10, v5

    if-ge v9, v10, :cond_0

    .line 155
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/view/menu/CascadingMenuPopup$3;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v10, v10, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move v11, v4

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v10, v10, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-ne v9, v10, :cond_1

    .line 156
    move v9, v4

    move v3, v9

    .line 161
    :cond_0
    move v9, v3

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 194
    :goto_1
    return-void

    .line 154
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 166
    :cond_2
    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v5, v9

    .line 167
    move v9, v5

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/view/menu/CascadingMenuPopup$3;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v10, v10, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 168
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/view/menu/CascadingMenuPopup$3;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v9, v9, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move v10, v5

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    move-object v4, v9

    .line 173
    :goto_2
    new-instance v9, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v0

    move-object v12, v4

    move-object v13, v2

    move-object v14, v1

    invoke-direct {v10, v11, v12, v13, v14}, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;-><init>(Landroidx/appcompat/view/menu/CascadingMenuPopup$3;Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuBuilder;)V

    move-object v6, v9

    .line 192
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0xc8

    add-long/2addr v9, v11

    move-wide v7, v9

    .line 193
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/view/menu/CascadingMenuPopup$3;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v9, v9, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    move-object v10, v6

    move-object v11, v1

    move-wide v12, v7

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result v9

    .line 194
    goto :goto_1

    .line 170
    :cond_3
    const/4 v9, 0x0

    move-object v4, v9

    goto :goto_2
.end method

.method public onItemHoverExit(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 5
    .param p1    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/CascadingMenuPopup$3;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v3, v3, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 144
    return-void
.end method
