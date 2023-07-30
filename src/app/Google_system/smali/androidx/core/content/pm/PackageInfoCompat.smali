.class public final Landroidx/core/content/pm/PackageInfoCompat;
.super Ljava/lang/Object;
.source "PackageInfoCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static getLongVersionCode(Landroid/content/pm/PackageInfo;)J
    .locals 3
    .param p0    # Landroid/content/pm/PackageInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 34
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 35
    move-object v1, v0

    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    move-wide v0, v1

    .line 38
    :goto_0
    return-wide v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v1, v1

    move-wide v0, v1

    goto :goto_0
.end method
