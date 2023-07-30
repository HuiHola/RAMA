.class final Landroidx/core/app/JobIntentService$JobWorkEnqueuer;
.super Landroidx/core/app/JobIntentService$WorkEnqueuer;
.source "JobIntentService.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JobWorkEnqueuer"
.end annotation


# instance fields
.field private final mJobInfo:Landroid/app/job/JobInfo;

.field private final mJobScheduler:Landroid/app/job/JobScheduler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 10

    .prologue
    .line 332
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroidx/core/app/JobIntentService$WorkEnqueuer;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 333
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->ensureJobId(I)V

    .line 334
    new-instance v5, Landroid/app/job/JobInfo$Builder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {v6, v7, v8}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    move-object v4, v5

    .line 335
    move-object v5, v0

    move-object v6, v4

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v6

    iput-object v6, v5, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->mJobInfo:Landroid/app/job/JobInfo;

    .line 336
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "jobscheduler"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/job/JobScheduler;

    iput-object v6, v5, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 338
    return-void
.end method


# virtual methods
.method enqueueWork(Landroid/content/Intent;)V
    .locals 8

    .prologue
    .line 343
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->mJobScheduler:Landroid/app/job/JobScheduler;

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->mJobInfo:Landroid/app/job/JobInfo;

    new-instance v4, Landroid/app/job/JobWorkItem;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Landroid/app/job/JobWorkItem;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/job/JobScheduler;->enqueue(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I

    move-result v2

    .line 344
    return-void
.end method
