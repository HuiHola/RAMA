.class public final Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoricalRecord"
.end annotation


# instance fields
.field public final activity:Landroid/content/ComponentName;

.field public final time:J

.field public final weight:F


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;JF)V
    .locals 8

    .prologue
    .line 793
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 794
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    .line 795
    move-object v5, v0

    move-wide v6, v2

    iput-wide v6, v5, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->time:J

    .line 796
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    .line 797
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JF)V
    .locals 10

    .prologue
    .line 783
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    move-wide v7, v2

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 784
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 811
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 812
    const/4 v3, 0x1

    move v0, v3

    .line 834
    :goto_0
    return v0

    .line 814
    :cond_0
    move-object v3, v1

    if-nez v3, :cond_1

    .line 815
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 817
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 818
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 820
    :cond_2
    move-object v3, v1

    check-cast v3, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;

    move-object v2, v3

    .line 821
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    if-nez v3, :cond_3

    .line 822
    move-object v3, v2

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    if-eqz v3, :cond_4

    .line 823
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 825
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    move-object v4, v2

    iget-object v4, v4, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 826
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 828
    :cond_4
    move-object v3, v0

    iget-wide v3, v3, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->time:J

    move-object v5, v2

    iget-wide v5, v5, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->time:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    .line 829
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 831
    :cond_5
    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    move-object v4, v2

    iget v4, v4, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_6

    .line 832
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 834
    :cond_6
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    .line 801
    move-object v0, p0

    const/16 v3, 0x1f

    move v1, v3

    .line 802
    const/4 v3, 0x1

    move v2, v3

    .line 803
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    add-int/2addr v3, v4

    move v2, v3

    .line 804
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v0

    iget-wide v4, v4, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->time:J

    move-object v6, v0

    iget-wide v6, v6, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->time:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v3, v4

    move v2, v3

    .line 805
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    add-int/2addr v3, v4

    move v2, v3

    .line 806
    move v3, v2

    move v0, v3

    return v0

    .line 803
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->hashCode()I

    move-result v4

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 839
    move-object v0, p0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 840
    move-object v2, v1

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 841
    move-object v2, v1

    const-string v3, "; activity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 842
    move-object v2, v1

    const-string v3, "; time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-wide v3, v3, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->time:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 843
    move-object v2, v1

    const-string v3, "; weight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/math/BigDecimal;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    float-to-double v5, v5

    invoke-direct {v4, v5, v6}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 844
    move-object v2, v1

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 845
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
