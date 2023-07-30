.class Lcom/mycompany/payload/MainActivity$100000001$100000000;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/payload/MainActivity$100000001;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/mycompany/payload/MainActivity$100000001;

.field private final val$sp:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/mycompany/payload/MainActivity$100000001;Landroid/widget/Spinner;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/mycompany/payload/MainActivity$100000001$100000000;->this$0:Lcom/mycompany/payload/MainActivity$100000001;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/mycompany/payload/MainActivity$100000001$100000000;->val$sp:Landroid/widget/Spinner;

    return-void
.end method

.method static access$0(Lcom/mycompany/payload/MainActivity$100000001$100000000;)Lcom/mycompany/payload/MainActivity$100000001;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/mycompany/payload/MainActivity$100000001$100000000;->this$0:Lcom/mycompany/payload/MainActivity$100000001;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    move-object v8, v0

    iget-object v8, v8, Lcom/mycompany/payload/MainActivity$100000001$100000000;->val$sp:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->performClick()Z

    move-result v8

    .line 67
    move-object v8, v0

    iget-object v8, v8, Lcom/mycompany/payload/MainActivity$100000001$100000000;->this$0:Lcom/mycompany/payload/MainActivity$100000001;

    invoke-static {v8}, Lcom/mycompany/payload/MainActivity$100000001;->access$0(Lcom/mycompany/payload/MainActivity$100000001;)Lcom/mycompany/payload/MainActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mycompany/payload/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v8

    move-object v2, v8

    .line 70
    new-instance v8, Landroid/widget/ArrayAdapter;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    iget-object v10, v10, Lcom/mycompany/payload/MainActivity$100000001$100000000;->this$0:Lcom/mycompany/payload/MainActivity$100000001;

    invoke-static {v10}, Lcom/mycompany/payload/MainActivity$100000001;->access$0(Lcom/mycompany/payload/MainActivity$100000001;)Lcom/mycompany/payload/MainActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mycompany/payload/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x109000a

    invoke-direct {v9, v10, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    move-object v3, v8

    .line 72
    move-object v8, v2

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v8

    .line 75
    :goto_0
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    return-void

    .line 72
    :cond_0
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    move-object v6, v8

    .line 74
    move-object v8, v3

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Scanning "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 75
    move-object v8, v0

    iget-object v8, v8, Lcom/mycompany/payload/MainActivity$100000001$100000000;->val$sp:Landroid/widget/Spinner;

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0
.end method
