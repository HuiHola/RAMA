.class Landroidx/core/app/NotificationCompatBuilder;
.super Ljava/lang/Object;
.source "NotificationCompatBuilder.java"

# interfaces
.implements Landroidx/core/app/NotificationBuilderWithBuilderAccessor;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mActionExtrasList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mBigContentView:Landroid/widget/RemoteViews;

.field private final mBuilder:Landroid/app/Notification$Builder;

.field private final mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

.field private mContentView:Landroid/widget/RemoteViews;

.field private final mExtras:Landroid/os/Bundle;

.field private mGroupAlertBehavior:I

.field private mHeadsUpContentView:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 12

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 54
    move-object v6, v0

    new-instance v7, Ljava/util/ArrayList;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Landroidx/core/app/NotificationCompatBuilder;->mActionExtrasList:Ljava/util/List;

    .line 56
    move-object v6, v0

    new-instance v7, Landroid/os/Bundle;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v7, v6, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    .line 63
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    .line 64
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v6, v7, :cond_1

    .line 65
    move-object v6, v0

    new-instance v7, Landroid/app/Notification$Builder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    move-object v10, v1

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v7, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 69
    :goto_0
    move-object v6, v1

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v2, v6

    .line 70
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v7, v2

    iget-wide v7, v7, Landroid/app/Notification;->when:J

    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, v2

    iget v7, v7, Landroid/app/Notification;->icon:I

    move-object v8, v2

    iget v8, v8, Landroid/app/Notification;->iconLevel:I

    .line 71
    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, v2

    iget-object v7, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 72
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, v2

    iget-object v7, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object v8, v1

    iget-object v8, v8, Landroidx/core/app/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 73
    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, v2

    iget-object v7, v7, Landroid/app/Notification;->vibrate:[J

    .line 74
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, v2

    iget v7, v7, Landroid/app/Notification;->ledARGB:I

    move-object v8, v2

    iget v8, v8, Landroid/app/Notification;->ledOnMS:I

    move-object v9, v2

    iget v9, v9, Landroid/app/Notification;->ledOffMS:I

    .line 75
    invoke-virtual {v6, v7, v8, v9}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, v2

    iget v7, v7, Landroid/app/Notification;->flags:I

    const/4 v8, 0x2

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    .line 76
    :goto_1
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, v2

    iget v7, v7, Landroid/app/Notification;->flags:I

    const/16 v8, 0x8

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    .line 77
    :goto_2
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, v2

    iget v7, v7, Landroid/app/Notification;->flags:I

    const/16 v8, 0x10

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    .line 78
    :goto_3
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, v2

    iget v7, v7, Landroid/app/Notification;->defaults:I

    .line 79
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 80
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 81
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 82
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 83
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, v2

    iget-object v7, v7, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 84
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    move-object v8, v2

    iget v8, v8, Landroid/app/Notification;->flags:I

    const/16 v9, 0x80

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    .line 85
    :goto_4
    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 87
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, v1

    iget v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    .line 88
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, v1

    iget v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mProgressMax:I

    move-object v8, v1

    iget v8, v8, Landroidx/core/app/NotificationCompat$Builder;->mProgress:I

    move-object v9, v1

    iget-boolean v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mProgressIndeterminate:Z

    .line 89
    invoke-virtual {v6, v7, v8, v9}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 90
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ge v6, v7, :cond_0

    .line 91
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v7, v2

    iget-object v7, v7, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object v8, v2

    iget v8, v8, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 93
    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_b

    .line 94
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v7, v1

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, v1

    iget-boolean v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mUseChronometer:Z

    .line 95
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, v1

    iget v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    .line 96
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 98
    move-object v6, v1

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_5
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/app/NotificationCompat$Action;

    move-object v4, v6

    .line 99
    move-object v6, v0

    move-object v7, v4

    invoke-direct {v6, v7}, Landroidx/core/app/NotificationCompatBuilder;->addAction(Landroidx/core/app/NotificationCompat$Action;)V

    .line 100
    goto :goto_5

    .line 67
    :cond_1
    move-object v6, v0

    new-instance v7, Landroid/app/Notification$Builder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v7, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 75
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 76
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 77
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 84
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 102
    :cond_6
    move-object v6, v1

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    if-eqz v6, :cond_7

    .line 103
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    move-object v7, v1

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 105
    :cond_7
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x14

    if-ge v6, v7, :cond_a

    .line 106
    move-object v6, v1

    iget-boolean v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    if-eqz v6, :cond_8

    .line 107
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    const-string v7, "android.support.localOnly"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    :cond_8
    move-object v6, v1

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    if-eqz v6, :cond_9

    .line 110
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    const-string v7, "android.support.groupKey"

    move-object v8, v1

    iget-object v8, v8, Landroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    move-object v6, v1

    iget-boolean v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mGroupSummary:Z

    if-eqz v6, :cond_e

    .line 112
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    const-string v7, "android.support.isGroupSummary"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 118
    :cond_9
    :goto_6
    move-object v6, v1

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    if-eqz v6, :cond_a

    .line 119
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    const-string v7, "android.support.sortKey"

    move-object v8, v1

    iget-object v8, v8, Landroidx/core/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_a
    move-object v6, v0

    move-object v7, v1

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v7, v6, Landroidx/core/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    .line 124
    move-object v6, v0

    move-object v7, v1

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    iput-object v7, v6, Landroidx/core/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    .line 126
    :cond_b
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v6, v7, :cond_c

    .line 127
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v7, v1

    iget-boolean v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 129
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ge v6, v7, :cond_c

    .line 130
    move-object v6, v1

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    if-eqz v6, :cond_c

    move-object v6, v1

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    .line 131
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    const-string v7, "android.people"

    move-object v8, v1

    iget-object v8, v8, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    .line 132
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 131
    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 136
    :cond_c
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x14

    if-lt v6, v7, :cond_d

    .line 137
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v7, v1

    iget-boolean v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    .line 138
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, v1

    iget-boolean v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mGroupSummary:Z

    .line 139
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    .line 140
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 142
    move-object v6, v0

    move-object v7, v1

    iget v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mGroupAlertBehavior:I

    iput v7, v6, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 144
    :cond_d
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_12

    .line 145
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v7, v1

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, v1

    iget v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 146
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, v1

    iget v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    .line 147
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mPublicVersion:Landroid/app/Notification;

    .line 148
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, v2

    iget-object v7, v7, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object v8, v2

    iget-object v8, v8, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 149
    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 151
    move-object v6, v1

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_7
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v4, v6

    .line 152
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 153
    goto :goto_7

    .line 114
    :cond_e
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    const-string v7, "android.support.useSideChannel"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_6

    .line 154
    :cond_f
    move-object v6, v0

    move-object v7, v1

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    iput-object v7, v6, Landroidx/core/app/NotificationCompatBuilder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 156
    move-object v6, v1

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_12

    .line 159
    move-object v6, v1

    .line 160
    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "android.car.EXTENSIONS"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    move-object v3, v6

    .line 161
    move-object v6, v3

    if-nez v6, :cond_10

    .line 162
    new-instance v6, Landroid/os/Bundle;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    move-object v3, v6

    .line 164
    :cond_10
    new-instance v6, Landroid/os/Bundle;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    move-object v4, v6

    .line 165
    const/4 v6, 0x0

    move v5, v6

    :goto_8
    move v6, v5

    move-object v7, v1

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_11

    .line 166
    move-object v6, v4

    move v7, v5

    .line 167
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v1

    iget-object v8, v8, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    move v9, v5

    .line 169
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/core/app/NotificationCompat$Action;

    .line 168
    invoke-static {v8}, Landroidx/core/app/NotificationCompatJellybean;->getBundleForAction(Landroidx/core/app/NotificationCompat$Action;)Landroid/os/Bundle;

    move-result-object v8

    .line 166
    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 165
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 171
    :cond_11
    move-object v6, v3

    const-string v7, "invisible_actions"

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 173
    move-object v6, v1

    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "android.car.EXTENSIONS"

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 175
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    const-string v7, "android.car.EXTENSIONS"

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 179
    :cond_12
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_15

    .line 180
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v7, v1

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mRemoteInputHistory:[Ljava/lang/CharSequence;

    .line 181
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 182
    move-object v6, v1

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_13

    .line 183
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v7, v1

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 185
    :cond_13
    move-object v6, v1

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_14

    .line 186
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v7, v1

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 188
    :cond_14
    move-object v6, v1

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_15

    .line 189
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v7, v1

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 192
    :cond_15
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v6, v7, :cond_17

    .line 193
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v7, v1

    iget v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mBadgeIcon:I

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mShortcutId:Ljava/lang/String;

    .line 194
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, v1

    iget-wide v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mTimeout:J

    .line 195
    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, v1

    iget v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mGroupAlertBehavior:I

    .line 196
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 197
    move-object v6, v1

    iget-boolean v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mColorizedSet:Z

    if-eqz v6, :cond_16

    .line 198
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v7, v1

    iget-boolean v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mColorized:Z

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 201
    :cond_16
    move-object v6, v1

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 202
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v7, 0x0

    .line 203
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 204
    invoke-virtual {v6, v7, v8, v9}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v7, 0x0

    .line 205
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 208
    :cond_17
    return-void
.end method

.method private addAction(Landroidx/core/app/NotificationCompat$Action;)V
    .locals 13

    .prologue
    .line 255
    move-object v0, p0

    move-object v1, p1

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x14

    if-lt v7, v8, :cond_5

    .line 256
    new-instance v7, Landroid/app/Notification$Action$Builder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    .line 257
    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$Action;->getIcon()I

    move-result v9

    move-object v10, v1

    invoke-virtual {v10}, Landroidx/core/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v11}, Landroidx/core/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    move-object v2, v7

    .line 258
    move-object v7, v1

    invoke-virtual {v7}, Landroidx/core/app/NotificationCompat$Action;->getRemoteInputs()[Landroidx/core/app/RemoteInput;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 259
    move-object v7, v1

    .line 260
    invoke-virtual {v7}, Landroidx/core/app/NotificationCompat$Action;->getRemoteInputs()[Landroidx/core/app/RemoteInput;

    move-result-object v7

    .line 259
    invoke-static {v7}, Landroidx/core/app/RemoteInput;->fromCompat([Landroidx/core/app/RemoteInput;)[Landroid/app/RemoteInput;

    move-result-object v7

    move-object v3, v7

    move-object v7, v3

    array-length v7, v7

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_0

    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 261
    move-object v7, v2

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    move-result-object v7

    .line 259
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 265
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 266
    new-instance v7, Landroid/os/Bundle;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v3, v7

    .line 270
    :goto_1
    move-object v7, v3

    const-string v8, "android.support.allowGeneratedReplies"

    move-object v9, v1

    .line 271
    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v9

    .line 270
    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 272
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-lt v7, v8, :cond_1

    .line 273
    move-object v7, v2

    move-object v8, v1

    invoke-virtual {v8}, Landroidx/core/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    move-result-object v7

    .line 276
    :cond_1
    move-object v7, v3

    const-string v8, "android.support.action.semanticAction"

    move-object v9, v1

    .line 277
    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$Action;->getSemanticAction()I

    move-result v9

    .line 276
    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 278
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1c

    if-lt v7, v8, :cond_2

    .line 279
    move-object v7, v2

    move-object v8, v1

    invoke-virtual {v8}, Landroidx/core/app/NotificationCompat$Action;->getSemanticAction()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Action$Builder;->setSemanticAction(I)Landroid/app/Notification$Action$Builder;

    move-result-object v7

    .line 282
    :cond_2
    move-object v7, v3

    const-string v8, "android.support.action.showsUserInterface"

    move-object v9, v1

    .line 283
    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$Action;->getShowsUserInterface()Z

    move-result v9

    .line 282
    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 284
    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    move-result-object v7

    .line 285
    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v8, v2

    invoke-virtual {v8}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 290
    :cond_3
    :goto_2
    return-void

    .line 268
    :cond_4
    new-instance v7, Landroid/os/Bundle;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    move-object v3, v7

    goto :goto_1

    .line 286
    :cond_5
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_3

    .line 287
    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationCompatBuilder;->mActionExtrasList:Ljava/util/List;

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v9, v1

    .line 288
    invoke-static {v8, v9}, Landroidx/core/app/NotificationCompatJellybean;->writeActionAndGetExtras(Landroid/app/Notification$Builder;Landroidx/core/app/NotificationCompat$Action;)Landroid/os/Bundle;

    move-result-object v8

    .line 287
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_2
.end method

.method private removeSoundAndVibration(Landroid/app/Notification;)V
    .locals 6

    .prologue
    .line 418
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 419
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/app/Notification;->vibrate:[J

    .line 420
    move-object v2, v1

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/app/Notification;->defaults:I

    const/4 v4, -0x2

    and-int/lit8 v3, v3, -0x2

    iput v3, v2, Landroid/app/Notification;->defaults:I

    .line 421
    move-object v2, v1

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/app/Notification;->defaults:I

    const/4 v4, -0x3

    and-int/lit8 v3, v3, -0x3

    iput v3, v2, Landroid/app/Notification;->defaults:I

    .line 422
    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .locals 7

    .prologue
    .line 216
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v5, v5, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    move-object v1, v5

    .line 217
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 218
    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Style;->apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V

    .line 221
    :cond_0
    move-object v5, v1

    if-eqz v5, :cond_5

    move-object v5, v1

    move-object v6, v0

    .line 222
    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Style;->makeContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    move-result-object v5

    :goto_0
    move-object v2, v5

    .line 224
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/app/NotificationCompatBuilder;->buildInternal()Landroid/app/Notification;

    move-result-object v5

    move-object v3, v5

    .line 225
    move-object v5, v2

    if-eqz v5, :cond_6

    .line 226
    move-object v5, v3

    move-object v6, v2

    iput-object v6, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 230
    :cond_1
    :goto_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_2

    move-object v5, v1

    if-eqz v5, :cond_2

    .line 231
    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Style;->makeBigContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    move-result-object v5

    move-object v4, v5

    .line 232
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 233
    move-object v5, v3

    move-object v6, v4

    iput-object v6, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 236
    :cond_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_3

    move-object v5, v1

    if-eqz v5, :cond_3

    .line 237
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v5, v5, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    move-object v6, v0

    .line 238
    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Style;->makeHeadsUpContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    move-result-object v5

    move-object v4, v5

    .line 239
    move-object v5, v4

    if-eqz v5, :cond_3

    .line 240
    move-object v5, v3

    move-object v6, v4

    iput-object v6, v5, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 244
    :cond_3
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_4

    move-object v5, v1

    if-eqz v5, :cond_4

    .line 245
    move-object v5, v3

    invoke-static {v5}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v5

    move-object v4, v5

    .line 246
    move-object v5, v4

    if-eqz v5, :cond_4

    .line 247
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Style;->addCompatExtras(Landroid/os/Bundle;)V

    .line 251
    :cond_4
    move-object v5, v3

    move-object v0, v5

    return-object v0

    .line 222
    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    .line 227
    :cond_6
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v5, v5, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_1

    .line 228
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v6, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_1
.end method

.method protected buildInternal()Landroid/app/Notification;
    .locals 10

    .prologue
    .line 293
    move-object v0, p0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v6, v7, :cond_0

    .line 294
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    move-object v0, v6

    .line 413
    :goto_0
    return-object v0

    .line 295
    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_3

    .line 296
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    move-object v1, v6

    .line 298
    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-eqz v6, :cond_2

    .line 300
    move-object v6, v1

    invoke-virtual {v6}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    move-object v6, v1

    iget v6, v6, Landroid/app/Notification;->flags:I

    const/16 v7, 0x200

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_1

    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 303
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Landroidx/core/app/NotificationCompatBuilder;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 306
    :cond_1
    move-object v6, v1

    invoke-virtual {v6}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    move-object v6, v1

    iget v6, v6, Landroid/app/Notification;->flags:I

    const/16 v7, 0x200

    and-int/lit16 v6, v6, 0x200

    if-nez v6, :cond_2

    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 309
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Landroidx/core/app/NotificationCompatBuilder;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 313
    :cond_2
    move-object v6, v1

    move-object v0, v6

    goto :goto_0

    .line 314
    :cond_3
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_9

    .line 315
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 316
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    move-object v1, v6

    .line 317
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_4

    .line 318
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v7, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 320
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_5

    .line 321
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    iput-object v7, v6, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 323
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_6

    .line 324
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationCompatBuilder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    iput-object v7, v6, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 327
    :cond_6
    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-eqz v6, :cond_8

    .line 329
    move-object v6, v1

    invoke-virtual {v6}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    move-object v6, v1

    iget v6, v6, Landroid/app/Notification;->flags:I

    const/16 v7, 0x200

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_7

    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    .line 332
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Landroidx/core/app/NotificationCompatBuilder;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 335
    :cond_7
    move-object v6, v1

    invoke-virtual {v6}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    move-object v6, v1

    iget v6, v6, Landroid/app/Notification;->flags:I

    const/16 v7, 0x200

    and-int/lit16 v6, v6, 0x200

    if-nez v6, :cond_8

    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    .line 338
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Landroidx/core/app/NotificationCompatBuilder;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 341
    :cond_8
    move-object v6, v1

    move-object v0, v6

    goto/16 :goto_0

    .line 342
    :cond_9
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x14

    if-lt v6, v7, :cond_e

    .line 343
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 344
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    move-object v1, v6

    .line 345
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_a

    .line 346
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v7, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 348
    :cond_a
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_b

    .line 349
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    iput-object v7, v6, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 352
    :cond_b
    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-eqz v6, :cond_d

    .line 354
    move-object v6, v1

    invoke-virtual {v6}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    move-object v6, v1

    iget v6, v6, Landroid/app/Notification;->flags:I

    const/16 v7, 0x200

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_c

    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_c

    .line 357
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Landroidx/core/app/NotificationCompatBuilder;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 360
    :cond_c
    move-object v6, v1

    invoke-virtual {v6}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d

    move-object v6, v1

    iget v6, v6, Landroid/app/Notification;->flags:I

    const/16 v7, 0x200

    and-int/lit16 v6, v6, 0x200

    if-nez v6, :cond_d

    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_d

    .line 363
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Landroidx/core/app/NotificationCompatBuilder;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 367
    :cond_d
    move-object v6, v1

    move-object v0, v6

    goto/16 :goto_0

    .line 368
    :cond_e
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v6, v7, :cond_12

    .line 369
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mActionExtrasList:Ljava/util/List;

    .line 370
    invoke-static {v6}, Landroidx/core/app/NotificationCompatJellybean;->buildActionExtrasMap(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v6

    move-object v1, v6

    .line 371
    move-object v6, v1

    if-eqz v6, :cond_f

    .line 373
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    const-string v7, "android.support.actionExtras"

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 376
    :cond_f
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 377
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    move-object v2, v6

    .line 378
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_10

    .line 379
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v7, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 381
    :cond_10
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_11

    .line 382
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    iput-object v7, v6, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 384
    :cond_11
    move-object v6, v2

    move-object v0, v6

    goto/16 :goto_0

    .line 385
    :cond_12
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_18

    .line 386
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    move-object v1, v6

    .line 389
    move-object v6, v1

    invoke-static {v6}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v6

    move-object v2, v6

    .line 390
    new-instance v6, Landroid/os/Bundle;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    invoke-direct {v7, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v3, v6

    .line 391
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_1
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v5, v6

    .line 392
    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 393
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 395
    :cond_13
    goto :goto_1

    .line 396
    :cond_14
    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 397
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mActionExtrasList:Ljava/util/List;

    .line 398
    invoke-static {v6}, Landroidx/core/app/NotificationCompatJellybean;->buildActionExtrasMap(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v6

    move-object v4, v6

    .line 399
    move-object v6, v4

    if-eqz v6, :cond_15

    .line 401
    move-object v6, v1

    invoke-static {v6}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "android.support.actionExtras"

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 404
    :cond_15
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_16

    .line 405
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v7, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 407
    :cond_16
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_17

    .line 408
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    iput-object v7, v6, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 410
    :cond_17
    move-object v6, v1

    move-object v0, v6

    goto/16 :goto_0

    .line 413
    :cond_18
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v6

    move-object v0, v6

    goto/16 :goto_0
.end method

.method public getBuilder()Landroid/app/Notification$Builder;
    .locals 2

    .prologue
    .line 212
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v0, v1

    return-object v0
.end method
