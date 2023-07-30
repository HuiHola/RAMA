.class public final Landroidx/core/app/AlarmManagerCompat;
.super Ljava/lang/Object;
.source "AlarmManagerCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 229
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 230
    return-void
.end method

.method public static setAlarmClock(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 12
    .param p0    # Landroid/app/AlarmManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object/from16 v4, p4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_0

    .line 60
    move-object v5, v0

    new-instance v6, Landroid/app/AlarmManager$AlarmClockInfo;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-wide v8, v1

    move-object v10, v3

    invoke-direct {v7, v8, v9, v10}, Landroid/app/AlarmManager$AlarmClockInfo;-><init>(JLandroid/app/PendingIntent;)V

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/app/AlarmManager;->setAlarmClock(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    move-wide v7, v1

    move-object v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/core/app/AlarmManagerCompat;->setExact(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static setAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    .locals 10
    .param p0    # Landroid/app/AlarmManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 117
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_0

    .line 118
    move-object v5, v0

    move v6, v1

    move-wide v7, v2

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    move-object v5, v0

    move v6, v1

    move-wide v7, v2

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static setExact(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    .locals 10
    .param p0    # Landroid/app/AlarmManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 162
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_0

    .line 163
    move-object v5, v0

    move v6, v1

    move-wide v7, v2

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    move-object v5, v0

    move v6, v1

    move-wide v7, v2

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static setExactAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    .locals 10
    .param p0    # Landroid/app/AlarmManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 222
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_0

    .line 223
    move-object v5, v0

    move v6, v1

    move-wide v7, v2

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    move-object v5, v0

    move v6, v1

    move-wide v7, v2

    move-object v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/core/app/AlarmManagerCompat;->setExact(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
