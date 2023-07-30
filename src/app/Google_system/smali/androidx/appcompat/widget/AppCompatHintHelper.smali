.class Landroidx/appcompat/widget/AppCompatHintHelper;
.super Ljava/lang/Object;
.source "AppCompatHintHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method static onCreateInputConnection(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;
    .locals 6

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    if-eqz v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    if-nez v4, :cond_0

    .line 31
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v3, v4

    .line 32
    :goto_0
    move-object v4, v3

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_0

    .line 33
    move-object v4, v3

    instance-of v4, v4, Landroidx/appcompat/widget/WithHint;

    if-eqz v4, :cond_1

    .line 34
    move-object v4, v1

    move-object v5, v3

    check-cast v5, Landroidx/appcompat/widget/WithHint;

    invoke-interface {v5}, Landroidx/appcompat/widget/WithHint;->getHint()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 40
    :cond_0
    move-object v4, v0

    move-object v0, v4

    return-object v0

    .line 37
    :cond_1
    move-object v4, v3

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v3, v4

    goto :goto_0
.end method
