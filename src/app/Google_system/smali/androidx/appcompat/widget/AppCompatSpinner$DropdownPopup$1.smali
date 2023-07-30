.class Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;-><init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

.field final synthetic val$this$0:Landroidx/appcompat/widget/AppCompatSpinner;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;Landroidx/appcompat/widget/AppCompatSpinner;)V
    .locals 5

    .prologue
    .line 729
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;->this$1:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;->val$this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 732
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;->this$1:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/AppCompatSpinner;->setSelection(I)V

    .line 733
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;->this$1:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v6}, Landroidx/appcompat/widget/AppCompatSpinner;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 734
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;->this$1:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    move-object v7, v2

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;->this$1:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    iget-object v9, v9, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    move v10, v3

    .line 735
    invoke-interface {v9, v10}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v9

    invoke-virtual {v6, v7, v8, v9, v10}, Landroidx/appcompat/widget/AppCompatSpinner;->performItemClick(Landroid/view/View;IJ)Z

    move-result v6

    .line 737
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;->this$1:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v6}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->dismiss()V

    .line 738
    return-void
.end method
