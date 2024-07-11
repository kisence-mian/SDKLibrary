.class public Lcom/ss/android/socialbase/appdownloader/e/a;
.super Lcom/ss/android/socialbase/downloader/notification/a;
.source "AppNotificationItem.java"


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/content/res/Resources;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 53
    invoke-direct {p0, p2, p3}, Lcom/ss/android/socialbase/downloader/notification/a;-><init>(ILjava/lang/String;)V

    .line 55
    iput-object p4, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->e:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->d:Ljava/lang/String;

    .line 57
    iput-object p6, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->f:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->c:Landroid/content/res/Resources;

    .line 60
    return-void
.end method

.method private a(I)I
    .registers 3

    .line 569
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const-string v0, "enable_notification_ui"

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_12

    .line 570
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->h()I

    move-result p1

    return p1

    .line 572
    :cond_12
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->g()I

    move-result p1

    return p1
.end method

.method private a(II)I
    .registers 4

    .line 502
    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p2

    const-string v0, "notification_opt_2"

    invoke-virtual {p2, v0}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_12

    .line 503
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->v()I

    move-result p1

    return p1

    .line 506
    :cond_12
    const/4 p2, 0x0

    .line 507
    if-eq p1, v0, :cond_29

    const/4 v0, 0x4

    if-ne p1, v0, :cond_19

    goto :goto_29

    .line 509
    :cond_19
    const/4 v0, 0x2

    if-ne p1, v0, :cond_21

    .line 510
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->u()I

    move-result p2

    goto :goto_2d

    .line 511
    :cond_21
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2d

    .line 512
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->v()I

    move-result p2

    goto :goto_2d

    .line 508
    :cond_29
    :goto_29
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->t()I

    move-result p2

    .line 514
    :cond_2d
    :goto_2d
    return p2
.end method

.method private a(Ljava/lang/String;II)Landroid/app/PendingIntent;
    .registers 7

    .line 518
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    const-class v2, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 519
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    const-string p1, "extra_click_download_ids"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 521
    const-string p1, "extra_click_download_type"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 522
    const-string p1, "extra_from_notification"

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 524
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    const/high16 p2, 0x8000000

    invoke-static {p1, p3, v0, p2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/ss/android/socialbase/downloader/exception/BaseException;Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 8

    .line 474
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    .line 475
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v2

    const/16 v3, 0x3f5

    if-eq v2, v3, :cond_14

    .line 476
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result p1

    const/16 v2, 0x419

    if-ne p1, v2, :cond_2b

    :cond_14
    if-eqz p3, :cond_2b

    .line 478
    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object p1

    const-string p3, "application/vnd.android.package-archive"

    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 479
    const-string p1, "notification_text_opt"

    invoke-virtual {p2, p1, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v1

    .line 474
    :goto_2c
    return v0
.end method

.method private b(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)Landroid/app/Notification;
    .registers 32

    .line 86
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e/a;->e()I

    move-result v2

    .line 87
    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/c;->a(I)I

    move-result v3

    .line 88
    if-nez v3, :cond_10

    .line 89
    const/4 v1, 0x0

    return-object v1

    .line 92
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e/a;->k()Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e/a;->f()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e/a;->a()I

    move-result v5

    .line 96
    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v6

    .line 99
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-lt v7, v8, :cond_3b

    .line 100
    const-string v7, "set_notification_group"

    invoke-virtual {v6, v7, v10}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_3b

    .line 101
    const-string v7, "com.ss.android.socialbase.APP_DOWNLOADER"

    invoke-virtual {v4, v7}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 102
    invoke-virtual {v4, v10}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 105
    :cond_3b
    invoke-direct {v0, v3, v5}, Lcom/ss/android/socialbase/appdownloader/e/a;->a(II)I

    move-result v7

    .line 106
    if-eqz v7, :cond_44

    .line 107
    invoke-virtual {v4, v7}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 110
    :cond_44
    nop

    .line 112
    const/4 v11, -0x4

    const/4 v12, 0x3

    const-string v13, "android.ss.intent.action.DOWNLOAD_CLICK_CONTENT"

    const/4 v14, 0x4

    const/4 v15, -0x1

    const/4 v8, 0x2

    if-eq v3, v9, :cond_97

    if-eq v3, v14, :cond_97

    if-ne v3, v8, :cond_53

    goto :goto_97

    .line 116
    :cond_53
    if-ne v3, v12, :cond_ac

    .line 117
    invoke-virtual {v4, v10}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 118
    invoke-virtual {v4, v9}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 121
    const-string v17, "android.ss.intent.action.DOWNLOAD_OPEN"

    if-eq v2, v15, :cond_85

    if-ne v2, v11, :cond_62

    goto :goto_85

    .line 124
    :cond_62
    nop

    .line 125
    const/4 v13, -0x3

    if-ne v2, v13, :cond_81

    .line 126
    const-string v2, "notification_click_install_auto_cancel"

    invoke-virtual {v6, v2, v9}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_81

    .line 127
    invoke-virtual {v4, v10}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e/a;->h()I

    move-result v2

    if-lez v2, :cond_7e

    .line 129
    invoke-virtual {v4, v10}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 130
    move v2, v10

    move-object/from16 v13, v17

    goto :goto_86

    .line 132
    :cond_7e
    invoke-virtual {v4, v9}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 138
    :cond_81
    move v2, v9

    move-object/from16 v13, v17

    goto :goto_86

    .line 122
    :cond_85
    :goto_85
    move v2, v9

    .line 138
    :goto_86
    invoke-direct {v0, v13, v3, v5}, Lcom/ss/android/socialbase/appdownloader/e/a;->a(Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 139
    const-string v13, "android.ss.intent.action.DOWNLOAD_HIDE"

    invoke-direct {v0, v13, v3, v5}, Lcom/ss/android/socialbase/appdownloader/e/a;->a(Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_ad

    .line 113
    :cond_97
    :goto_97
    invoke-direct {v0, v13, v3, v5}, Lcom/ss/android/socialbase/appdownloader/e/a;->a(Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 114
    if-eq v3, v9, :cond_a5

    if-ne v3, v14, :cond_a3

    goto :goto_a5

    :cond_a3
    move v2, v10

    goto :goto_a6

    :cond_a5
    :goto_a5
    move v2, v9

    :goto_a6
    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 115
    invoke-virtual {v4, v10}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 143
    :cond_ac
    move v2, v9

    :goto_ad
    nop

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e/a;->b()J

    move-result-wide v17

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e/a;->c()J

    move-result-wide v19

    .line 147
    const-wide/16 v21, 0x0

    cmp-long v13, v19, v21

    if-lez v13, :cond_c4

    .line 148
    const-wide/16 v21, 0x64

    mul-long v17, v17, v21

    div-long v11, v17, v19

    long-to-int v11, v11

    goto :goto_c5

    .line 150
    :cond_c4
    move v11, v10

    .line 153
    :goto_c5
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e/a;->d()Ljava/lang/String;

    move-result-object v12

    .line 154
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_db

    .line 155
    const-string v12, "tt_appdownloader_download_unknown_title"

    invoke-static {v12}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v12

    .line 156
    iget-object v13, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->c:Landroid/content/res/Resources;

    invoke-virtual {v13, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 159
    :cond_db
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e/a;->j()Landroid/widget/RemoteViews;

    move-result-object v13

    .line 161
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->k()I

    move-result v8

    .line 162
    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v14

    const-string v10, "notification_opt_2"

    invoke-virtual {v14, v10}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v14

    if-eq v14, v9, :cond_f8

    .line 164
    const-string v14, "android.ss.intent.action.DOWNLOAD_CLICK_BTN"

    invoke-direct {v0, v14, v3, v5}, Lcom/ss/android/socialbase/appdownloader/e/a;->a(Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-virtual {v13, v8, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 166
    :cond_f8
    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v14

    const-string v15, "enable_notification_ui"

    invoke-virtual {v14, v15}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v14

    move/from16 v23, v2

    const-string v2, "setBackgroundResource"

    if-lt v14, v9, :cond_113

    .line 167
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->s()I

    move-result v14

    .line 168
    invoke-virtual {v13, v8, v2, v14}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 169
    const/4 v14, -0x1

    invoke-virtual {v13, v8, v14}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 172
    :cond_113
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->m()I

    move-result v8

    .line 173
    invoke-virtual {v13, v8, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 175
    invoke-direct {v0, v5}, Lcom/ss/android/socialbase/appdownloader/e/a;->a(I)I

    move-result v8

    .line 176
    const/4 v12, 0x0

    invoke-virtual {v13, v8, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 177
    const/16 v12, 0x64

    move/from16 v14, p2

    invoke-virtual {v13, v8, v12, v11, v14}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 179
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->l()I

    move-result v8

    .line 180
    if-eqz v7, :cond_132

    .line 181
    invoke-virtual {v13, v8, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 183
    :cond_132
    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v7

    invoke-virtual {v7, v15}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v7

    if-lt v7, v9, :cond_157

    .line 184
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e/c;->a()Lcom/ss/android/socialbase/appdownloader/e/c;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/ss/android/socialbase/appdownloader/e/c;->a(I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 185
    if-eqz v7, :cond_150

    .line 187
    const-string v2, "setBackgroundColor"

    const/4 v12, 0x0

    invoke-virtual {v13, v8, v2, v12}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 188
    invoke-virtual {v13, v8, v7}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_157

    .line 191
    :cond_150
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->s()I

    move-result v7

    .line 192
    invoke-virtual {v13, v8, v2, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 195
    :cond_157
    :goto_157
    nop

    .line 196
    nop

    .line 197
    nop

    .line 198
    const-string v2, ""

    const-string v7, "/"

    const/16 v8, 0x8

    if-eq v3, v9, :cond_4e5

    const/4 v12, 0x4

    if-ne v3, v12, :cond_167

    goto/16 :goto_4e5

    .line 237
    :cond_167
    const-string v12, "tt_appdownloader_notification_download_resume"

    const/4 v14, 0x2

    if-ne v3, v14, :cond_265

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e/a;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/appdownloader/c;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e/a;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/appdownloader/c;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    const-string v2, "tt_appdownloader_notification_pausing"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v2

    .line 242
    iget-object v3, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-static {v12}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v3

    .line 245
    iget-object v12, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 247
    invoke-virtual {v6, v10}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v12

    if-ne v12, v9, :cond_200

    .line 248
    const/16 v12, 0x46

    const-string v14, "noti_progress_show_th"

    invoke-virtual {v6, v14, v12}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v12

    if-lt v11, v12, :cond_1d6

    .line 250
    invoke-direct {v0, v5}, Lcom/ss/android/socialbase/appdownloader/e/a;->a(I)I

    move-result v5

    .line 251
    const/4 v11, 0x0

    invoke-virtual {v13, v5, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 253
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->j()I

    move-result v5

    .line 254
    invoke-virtual {v13, v5, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 256
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->i()I

    move-result v5

    .line 257
    invoke-virtual {v13, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_221

    .line 259
    :cond_1d6
    invoke-direct {v0, v5}, Lcom/ss/android/socialbase/appdownloader/e/a;->a(I)I

    move-result v2

    .line 260
    invoke-virtual {v13, v2, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 262
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->j()I

    move-result v2

    .line 263
    invoke-virtual {v13, v2, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 265
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->i()I

    move-result v2

    .line 266
    const/4 v5, 0x0

    invoke-virtual {v13, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 268
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->o()I

    move-result v2

    .line 269
    invoke-virtual {v13, v2, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 271
    const-string v2, "tt_appdownloader_notification_download_continue"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v2

    .line 272
    iget-object v5, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->c:Landroid/content/res/Resources;

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_221

    .line 275
    :cond_200
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->j()I

    move-result v11

    .line 276
    const/4 v12, 0x0

    invoke-virtual {v13, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 278
    invoke-direct {v0, v5}, Lcom/ss/android/socialbase/appdownloader/e/a;->a(I)I

    move-result v5

    .line 279
    invoke-virtual {v6, v15}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v11

    const/4 v14, 0x2

    if-lt v11, v14, :cond_217

    .line 281
    invoke-virtual {v13, v5, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_21a

    .line 283
    :cond_217
    invoke-virtual {v13, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 286
    :goto_21a
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->i()I

    move-result v5

    .line 287
    invoke-virtual {v13, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 290
    :goto_221
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->k()I

    move-result v5

    .line 291
    iget-object v11, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->f:Ljava/lang/String;

    invoke-static {v11}, Lcom/ss/android/socialbase/appdownloader/c;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_231

    .line 292
    invoke-virtual {v13, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_261

    .line 294
    :cond_231
    const/4 v11, 0x0

    invoke-virtual {v13, v5, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 295
    invoke-virtual {v6, v15}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v5

    const/4 v12, 0x2

    if-lt v5, v12, :cond_261

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e/a;->b()J

    move-result-wide v14

    invoke-static {v14, v15, v11}, Lcom/ss/android/socialbase/appdownloader/c;->a(JZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e/a;->c()J

    move-result-wide v14

    invoke-static {v14, v15, v11}, Lcom/ss/android/socialbase/appdownloader/c;->a(JZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 300
    :cond_261
    :goto_261
    move-object v8, v2

    move-object v2, v1

    goto/16 :goto_57d

    :cond_265
    const/4 v11, 0x3

    if-ne v3, v11, :cond_4e1

    .line 301
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v3

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e/a;->e()I

    move-result v11

    const/4 v14, -0x1

    if-eq v11, v14, :cond_32b

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e/a;->e()I

    move-result v11

    const/4 v14, -0x4

    if-ne v11, v14, :cond_284

    goto/16 :goto_32b

    .line 352
    :cond_284
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e/a;->e()I

    move-result v11

    const/4 v12, -0x3

    if-ne v11, v12, :cond_327

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e/a;->c()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/ss/android/socialbase/appdownloader/c;->a(J)Ljava/lang/String;

    move-result-object v11

    .line 354
    nop

    .line 355
    nop

    .line 356
    if-eqz v3, :cond_2d6

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2d6

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v12

    const-string v14, "application/vnd.android.package-archive"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2d6

    .line 357
    const-string v12, "fix_ui_thread_parser_apk_file"

    invoke-virtual {v6, v12, v9}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;Z)Z

    move-result v12

    .line 358
    xor-int/2addr v12, v9

    iget-object v14, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-static {v14, v3, v12}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)Z

    move-result v12

    if-eqz v12, :cond_2c9

    .line 360
    const-string v12, "tt_appdownloader_notification_install_finished_open"

    invoke-static {v12}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v12

    .line 361
    const-string v14, "tt_appdownloader_notification_download_open"

    invoke-static {v14}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v14

    goto :goto_2d5

    .line 364
    :cond_2c9
    const-string v12, "tt_appdownloader_notification_download_complete_with_install"

    invoke-static {v12}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v12

    .line 365
    const-string v14, "tt_appdownloader_notification_download_install"

    invoke-static {v14}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v14

    .line 367
    :goto_2d5
    goto :goto_2ef

    .line 369
    :cond_2d6
    const-string v12, "tt_appdownloader_notification_download_complete_without_install"

    invoke-static {v12}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v12

    .line 370
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v14

    invoke-virtual {v14, v5}, Lcom/ss/android/socialbase/downloader/downloader/c;->m(I)Lcom/ss/android/socialbase/downloader/depend/ah;

    move-result-object v14

    .line 371
    if-eqz v14, :cond_2ee

    .line 372
    const-string v12, "tt_appdownloader_notification_download_complete_open"

    invoke-static {v12}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v12

    const/4 v14, 0x0

    goto :goto_2ef

    .line 371
    :cond_2ee
    const/4 v14, 0x0

    .line 375
    :goto_2ef
    iget-object v8, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->c:Landroid/content/res/Resources;

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 376
    invoke-virtual {v4, v8}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 377
    if-eqz v14, :cond_300

    .line 378
    iget-object v2, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->c:Landroid/content/res/Resources;

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 381
    :cond_300
    invoke-virtual {v6, v10}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v12

    if-ne v12, v9, :cond_317

    .line 382
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->k()I

    move-result v12

    .line 383
    invoke-virtual {v13, v12, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 385
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->o()I

    move-result v12

    .line 386
    const/16 v14, 0x8

    invoke-virtual {v13, v12, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_320

    .line 388
    :cond_317
    const/16 v14, 0x8

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->k()I

    move-result v12

    .line 389
    invoke-virtual {v13, v12, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 393
    :goto_320
    move-object/from16 v28, v11

    move-object v11, v2

    move-object/from16 v2, v28

    goto/16 :goto_45a

    .line 352
    :cond_327
    move-object v8, v2

    move-object v11, v8

    goto/16 :goto_45a

    .line 303
    :cond_32b
    :goto_32b
    nop

    .line 305
    invoke-virtual {v6, v15}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v8

    const/4 v11, 0x2

    if-lt v8, v11, :cond_36b

    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e/a;->e()I

    move-result v8

    const/4 v11, -0x1

    if-ne v8, v11, :cond_36b

    .line 307
    invoke-static/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/i/e;->h(Ljava/lang/Throwable;)Z

    move-result v8

    if-nez v8, :cond_346

    invoke-static/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/i/e;->g(Ljava/lang/Throwable;)Z

    move-result v8

    if-eqz v8, :cond_36b

    .line 308
    :cond_346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e/a;->b()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/ss/android/socialbase/appdownloader/c;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e/a;->c()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/ss/android/socialbase/appdownloader/c;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 312
    :cond_36b
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->o()I

    move-result v8

    .line 313
    const/16 v11, 0x8

    invoke-virtual {v13, v8, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 314
    if-eqz v1, :cond_38f

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v8

    const/16 v11, 0x3ee

    if-ne v8, v11, :cond_38f

    .line 315
    const-string v8, "tt_appdownloader_notification_download_space_failed"

    invoke-static {v8}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v8

    .line 316
    iget-object v11, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 317
    goto :goto_3cb

    :cond_38f
    invoke-direct {v0, v1, v6, v3}, Lcom/ss/android/socialbase/appdownloader/e/a;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v8

    if-eqz v8, :cond_3bb

    .line 318
    if-eqz v3, :cond_39f

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isOnlyWifi()Z

    move-result v8

    if-eqz v8, :cond_39f

    move v8, v9

    goto :goto_3a0

    :cond_39f
    const/4 v8, 0x0

    .line 319
    :goto_3a0
    if-eqz v8, :cond_3a9

    .line 320
    const-string v8, "tt_appdownloader_notification_download_waiting_wifi"

    invoke-static {v8}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v8

    goto :goto_3b0

    :cond_3a9
    nop

    .line 321
    const-string v8, "tt_appdownloader_notification_download_waiting_net"

    invoke-static {v8}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v8

    .line 322
    :goto_3b0
    iget-object v11, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 323
    goto :goto_3cb

    .line 324
    :cond_3bb
    const-string v8, "tt_appdownloader_notification_download_failed"

    invoke-static {v8}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v8

    .line 325
    iget-object v11, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 327
    :goto_3cb
    const-string v11, "tt_appdownloader_notification_download_restart"

    invoke-static {v11}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v11

    .line 328
    iget-object v14, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 330
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->k()I

    move-result v14

    .line 331
    const/16 v9, 0x8

    invoke-virtual {v13, v14, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 334
    invoke-virtual {v6, v15}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v9

    const/4 v14, 0x2

    if-lt v9, v14, :cond_459

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e/a;->e()I

    move-result v9

    const/4 v14, -0x1

    if-ne v9, v14, :cond_459

    .line 336
    invoke-static/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/i/e;->h(Ljava/lang/Throwable;)Z

    move-result v9

    if-eqz v9, :cond_42e

    .line 338
    invoke-static {v1, v3}, Lcom/ss/android/socialbase/downloader/i/e;->b(Lcom/ss/android/socialbase/downloader/exception/BaseException;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v8

    if-eqz v8, :cond_41d

    .line 339
    const-string v8, "tt_appdownloader_notification_no_wifi_and_in_net"

    invoke-static {v8}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v8

    .line 340
    iget-object v9, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 341
    invoke-static {v12}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v9

    .line 342
    iget-object v11, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_459

    .line 344
    :cond_41d
    const-string v8, "tt_appdownloader_notification_no_internet_error"

    invoke-static {v8}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v8

    .line 345
    iget-object v9, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_459

    .line 347
    :cond_42e
    invoke-static/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/i/e;->g(Ljava/lang/Throwable;)Z

    move-result v9

    if-eqz v9, :cond_459

    .line 348
    const-string v8, "tt_appdownloader_notification_insufficient_space_error"

    invoke-static {v8}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v8

    .line 349
    iget-object v9, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/4 v12, 0x1

    new-array v14, v12, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e/a;->c()J

    move-result-wide v24

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e/a;->b()J

    move-result-wide v26

    sub-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Lcom/ss/android/socialbase/appdownloader/c;->b(J)Ljava/lang/String;

    move-result-object v12

    const/16 v17, 0x0

    aput-object v12, v14, v17

    invoke-virtual {v9, v8, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 352
    :cond_459
    :goto_459
    nop

    .line 393
    :goto_45a
    invoke-direct {v0, v5}, Lcom/ss/android/socialbase/appdownloader/e/a;->a(I)I

    move-result v9

    .line 394
    const/16 v12, 0x8

    invoke-virtual {v13, v9, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 396
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->i()I

    move-result v9

    .line 397
    const/4 v14, 0x0

    invoke-virtual {v13, v9, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 399
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->j()I

    move-result v9

    .line 400
    invoke-virtual {v13, v9, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 403
    invoke-virtual {v6, v15}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v9

    const/4 v12, 0x2

    if-lt v9, v12, :cond_4de

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e/a;->e()I

    move-result v9

    const/4 v12, -0x1

    if-ne v9, v12, :cond_4de

    .line 405
    invoke-static/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/i/e;->h(Ljava/lang/Throwable;)Z

    move-result v9

    if-nez v9, :cond_48c

    invoke-static/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/i/e;->g(Ljava/lang/Throwable;)Z

    move-result v9

    if-eqz v9, :cond_4de

    .line 406
    :cond_48c
    invoke-direct {v0, v5}, Lcom/ss/android/socialbase/appdownloader/e/a;->a(I)I

    move-result v5

    .line 407
    const/4 v9, 0x0

    invoke-virtual {v13, v5, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 409
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->i()I

    move-result v5

    .line 410
    const/16 v12, 0x8

    invoke-virtual {v13, v5, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 412
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->j()I

    move-result v5

    .line 413
    invoke-virtual {v13, v5, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 415
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->k()I

    move-result v5

    .line 418
    invoke-static {v1, v3}, Lcom/ss/android/socialbase/downloader/i/e;->b(Lcom/ss/android/socialbase/downloader/exception/BaseException;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v1

    if-eqz v1, :cond_4d9

    .line 419
    invoke-virtual {v13, v5, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e/a;->b()J

    move-result-wide v2

    invoke-static {v2, v3, v9}, Lcom/ss/android/socialbase/appdownloader/c;->a(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 421
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e/a;->c()J

    move-result-wide v2

    invoke-static {v2, v3, v9}, Lcom/ss/android/socialbase/appdownloader/c;->a(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v11

    goto/16 :goto_57d

    .line 423
    :cond_4d9
    const/16 v1, 0x8

    invoke-virtual {v13, v5, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 428
    :cond_4de
    move-object v3, v11

    goto/16 :goto_57d

    .line 300
    :cond_4e1
    move-object v3, v2

    move-object v8, v3

    goto/16 :goto_57d

    .line 199
    :cond_4e5
    :goto_4e5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e/a;->b()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/ss/android/socialbase/appdownloader/c;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e/a;->c()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/ss/android/socialbase/appdownloader/c;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 202
    const/4 v1, 0x1

    if-ne v3, v1, :cond_523

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e/a;->e()I

    move-result v1

    const/16 v3, 0xb

    if-ne v1, v3, :cond_51c

    .line 204
    const-string v1, "tt_appdownloader_notification_waiting_download_complete_handler"

    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v1

    goto :goto_529

    .line 206
    :cond_51c
    const-string v1, "tt_appdownloader_notification_downloading"

    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v1

    goto :goto_529

    .line 209
    :cond_523
    const-string v1, "tt_appdownloader_notification_prepare"

    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v1

    .line 212
    :goto_529
    iget-object v3, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 214
    const-string v3, "tt_appdownloader_notification_download_pause"

    invoke-static {v3}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v3

    .line 215
    iget-object v7, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-direct {v0, v5}, Lcom/ss/android/socialbase/appdownloader/e/a;->a(I)I

    move-result v5

    .line 218
    const/4 v7, 0x0

    invoke-virtual {v13, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 220
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->i()I

    move-result v5

    .line 221
    const/16 v8, 0x8

    invoke-virtual {v13, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 223
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->j()I

    move-result v5

    .line 224
    invoke-virtual {v13, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 226
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->k()I

    move-result v5

    .line 227
    iget-object v8, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->f:Ljava/lang/String;

    invoke-static {v8}, Lcom/ss/android/socialbase/appdownloader/c;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_56d

    .line 228
    const/16 v8, 0x8

    invoke-virtual {v13, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_572

    .line 230
    :cond_56d
    const/16 v8, 0x8

    invoke-virtual {v13, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 234
    :goto_572
    invoke-virtual {v6, v15}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v7

    const/4 v9, 0x2

    if-lt v7, v9, :cond_57c

    .line 235
    invoke-virtual {v13, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 237
    :cond_57c
    move-object v8, v1

    .line 428
    :goto_57d
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->n()I

    move-result v1

    .line 429
    invoke-virtual {v13, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 431
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->p()I

    move-result v1

    .line 432
    invoke-virtual {v13, v1, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 434
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->o()I

    move-result v1

    .line 435
    invoke-virtual {v13, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 437
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->q()I

    move-result v1

    .line 438
    invoke-virtual {v13, v1, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 440
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->k()I

    move-result v1

    .line 441
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5a9

    .line 443
    const/16 v2, 0x8

    invoke-virtual {v13, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_5ac

    .line 445
    :cond_5a9
    invoke-virtual {v13, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 448
    :goto_5ac
    invoke-virtual {v6, v10}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5c9

    .line 449
    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 450
    const-string v1, "notification_ongoing"

    const/4 v3, 0x0

    invoke-virtual {v6, v1, v3}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_5c4

    .line 451
    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 452
    const/4 v2, 0x1

    goto :goto_5cb

    .line 454
    :cond_5c4
    invoke-virtual {v4, v3}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 455
    const/4 v2, 0x0

    goto :goto_5cb

    .line 448
    :cond_5c9
    move/from16 v2, v23

    .line 459
    :goto_5cb
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 460
    if-eqz v2, :cond_5dc

    .line 461
    iget v2, v1, Landroid/app/Notification;->flags:I

    const/4 v3, 0x2

    or-int/2addr v2, v3

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 462
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/appdownloader/e/a;->a(Z)V

    goto :goto_5e0

    .line 464
    :cond_5dc
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/appdownloader/e/a;->a(Z)V

    .line 467
    :goto_5e0
    iput-object v13, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 470
    return-object v1
.end method

.method private j()Landroid/widget/RemoteViews;
    .registers 6

    .line 483
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->a()I

    move-result v0

    .line 484
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 485
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-le v0, v2, :cond_36

    .line 487
    :try_start_15
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 488
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->f()I

    move-result v0

    .line 489
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->r()I

    move-result v2

    .line 491
    const-string v3, "setBackgroundColor"

    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    .line 492
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 491
    invoke-virtual {v1, v0, v3, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V
    :try_end_34
    .catchall {:try_start_15 .. :try_end_34} :catchall_35

    .line 496
    :cond_34
    goto :goto_36

    .line 494
    :catchall_35
    move-exception v0

    .line 498
    :cond_36
    :goto_36
    return-object v1
.end method

.method private k()Landroidx/core/app/NotificationCompat$Builder;
    .registers 4

    .line 530
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/d;->i()Ljava/lang/String;

    move-result-object v0

    .line 531
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_16

    .line 532
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_4c

    .line 534
    :cond_16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 535
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 538
    :cond_22
    :try_start_22
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/d;->k()Lcom/ss/android/socialbase/appdownloader/c/m;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 540
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/d;->k()Lcom/ss/android/socialbase/appdownloader/c/m;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-interface {v1, v2, v0}, Lcom/ss/android/socialbase/appdownloader/c/m;->a(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    goto :goto_43

    .line 542
    :cond_3b
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/NoSuchMethodError; {:try_start_22 .. :try_end_42} :catch_44

    move-object v0, v1

    .line 546
    :goto_43
    goto :goto_4c

    .line 544
    :catch_44
    move-exception v0

    .line 545
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 549
    :goto_4c
    return-object v0
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 73
    return-void

    .line 75
    :cond_5
    :try_start_5
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/e/a;->b(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)Landroid/app/Notification;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->a:Landroid/app/Notification;

    .line 76
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->a:Landroid/app/Notification;

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/appdownloader/e/a;->a(Landroid/app/Notification;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_11

    .line 79
    goto :goto_15

    .line 77
    :catch_11
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    :goto_15
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 64
    invoke-super {p0, p1}, Lcom/ss/android/socialbase/downloader/notification/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 65
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->e:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->d:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExtra()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->f:Ljava/lang/String;

    .line 68
    return-void
.end method
