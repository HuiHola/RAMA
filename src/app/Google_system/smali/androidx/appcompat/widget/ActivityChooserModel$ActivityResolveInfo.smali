.class public final Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityResolveInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final resolveInfo:Landroid/content/pm/ResolveInfo;

.field public weight:F


# direct methods
.method public constructor <init>(Landroid/content/pm/ResolveInfo;)V
    .locals 4

    .prologue
    .line 869
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 870
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 871
    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;)I
    .locals 4

    .prologue
    .line 898
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    sub-int/2addr v2, v3

    move v0, v2

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 852
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->compareTo(Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 880
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 881
    const/4 v3, 0x1

    move v0, v3

    .line 893
    :goto_0
    return v0

    .line 883
    :cond_0
    move-object v3, v1

    if-nez v3, :cond_1

    .line 884
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 886
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 887
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 889
    :cond_2
    move-object v3, v1

    check-cast v3, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;

    move-object v2, v3

    .line 890
    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    move-object v4, v2

    iget v4, v4, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 891
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 893
    :cond_3
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 875
    move-object v0, p0

    const/16 v1, 0x1f

    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 903
    move-object v0, p0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 904
    move-object v2, v1

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 905
    move-object v2, v1

    const-string v3, "resolveInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 906
    move-object v2, v1

    const-string v3, "; weight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/math/BigDecimal;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    float-to-double v5, v5

    invoke-direct {v4, v5, v6}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 907
    move-object v2, v1

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 908
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
