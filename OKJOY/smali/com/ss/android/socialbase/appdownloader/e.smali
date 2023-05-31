.class public Lcom/ss/android/socialbase/appdownloader/e;
.super Lcom/ss/android/socialbase/downloader/notification/a;
.source "AppNotificationItem.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/res/Resources;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 46
    invoke-direct {p0, p2, p3}, Lcom/ss/android/socialbase/downloader/notification/a;-><init>(ILjava/lang/String;)V

    .line 48
    iput-object p4, p0, Lcom/ss/android/socialbase/appdownloader/e;->d:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lcom/ss/android/socialbase/appdownloader/e;->c:Ljava/lang/String;

    .line 50
    iput-object p6, p0, Lcom/ss/android/socialbase/appdownloader/e;->e:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e;->a:Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e;->b:Landroid/content/res/Resources;

    .line 53
    return-void
.end method

.method private a(I)I
    .registers 4

    .prologue
    .line 350
    const/4 v0, 0x0

    .line 351
    const/4 v1, 0x1

    if-eq p1, v1, :cond_7

    const/4 v1, 0x4

    if-ne p1, v1, :cond_c

    .line 352
    :cond_7
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f;->r()I

    move-result v0

    .line 358
    :cond_b
    :goto_b
    return v0

    .line 353
    :cond_c
    const/4 v1, 0x2

    if-ne p1, v1, :cond_14

    .line 354
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f;->s()I

    move-result v0

    goto :goto_b

    .line 355
    :cond_14
    const/4 v1, 0x3

    if-ne p1, v1, :cond_b

    .line 356
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f;->t()I

    move-result v0

    goto :goto_b
.end method

.method private a(Ljava/lang/String;II)Landroid/app/PendingIntent;
    .registers 7

    .prologue
    .line 362
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e;->a:Landroid/content/Context;

    const-class v2, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 363
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v1, "extra_click_download_ids"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    const-string v1, "extra_click_download_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 366
    const-string v1, "extra_from_notification"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 368
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e;->a:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v1, p3, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/ss/android/socialbase/downloader/e/a;Lcom/ss/android/socialbase/downloader/k/a;Lcom/ss/android/socialbase/downloader/g/c;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 321
    if-eqz p1, :cond_2b

    .line 322
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/e/a;->a()I

    move-result v2

    const/16 v3, 0x3f5

    if-eq v2, v3, :cond_14

    .line 323
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/e/a;->a()I

    move-result v2

    const/16 v3, 0x419

    if-ne v2, v3, :cond_2b

    :cond_14
    if-eqz p3, :cond_2b

    const-string v2, "application/vnd.android.package-archive"

    .line 325
    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/g/c;->ah()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const-string v2, "notification_text_opt"

    .line 326
    invoke-virtual {p2, v2, v1}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2b

    .line 321
    :goto_2a
    return v0

    :cond_2b
    move v0, v1

    .line 326
    goto :goto_2a
.end method

.method private b(Lcom/ss/android/socialbase/downloader/e/a;Z)Landroid/app/Notification;
    .registers 20

    .prologue
    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e;->e()I

    move-result v4

    .line 80
    invoke-static {v4}, Lcom/ss/android/socialbase/appdownloader/c;->a(I)I

    move-result v6

    .line 81
    if-nez v6, :cond_c

    .line 82
    const/4 v2, 0x0

    .line 317
    :goto_b
    return-object v2

    .line 85
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e;->k()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e;->f()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e;->a()I

    move-result v8

    .line 89
    invoke-static {v8}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v9

    .line 92
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_38

    const-string v2, "set_notification_group"

    const/4 v3, 0x0

    .line 93
    invoke-virtual {v9, v2, v3}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_38

    .line 94
    const-string v2, "com.ss.android.socialbase.APP_DOWNLOADER"

    invoke-virtual {v7, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 95
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 98
    :cond_38
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/ss/android/socialbase/appdownloader/e;->a(I)I

    move-result v5

    .line 99
    if-nez v5, :cond_42

    .line 100
    const/4 v2, 0x0

    goto :goto_b

    .line 102
    :cond_42
    invoke-virtual {v7, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 104
    const/4 v3, 0x1

    .line 106
    const/4 v2, 0x1

    if-eq v6, v2, :cond_4f

    const/4 v2, 0x4

    if-eq v6, v2, :cond_4f

    const/4 v2, 0x2

    if-ne v6, v2, :cond_1ad

    .line 107
    :cond_4f
    const-string v2, "android.ss.intent.action.DOWNLOAD_DELETE"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v8}, Lcom/ss/android/socialbase/appdownloader/e;->a(Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 108
    const/4 v2, 0x1

    if-eq v6, v2, :cond_60

    const/4 v2, 0x4

    if-ne v6, v2, :cond_1aa

    :cond_60
    const/4 v2, 0x1

    :goto_61
    invoke-virtual {v7, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 109
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 137
    :cond_68
    :goto_68
    const/4 v2, 0x0

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e;->b()J

    move-result-wide v10

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e;->c()J

    move-result-wide v12

    .line 141
    const/4 v4, 0x1

    if-eq v6, v4, :cond_77

    const/4 v4, 0x4

    if-ne v6, v4, :cond_82

    .line 142
    :cond_77
    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-lez v2, :cond_1f9

    .line 143
    const-wide/16 v14, 0x64

    mul-long/2addr v10, v14

    div-long/2addr v10, v12

    long-to-int v2, v10

    .line 149
    :cond_82
    :goto_82
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e;->d()Ljava/lang/String;

    move-result-object v4

    .line 150
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9a

    .line 151
    const-string v4, "appdownloader_download_unknown_title"

    invoke-static {v4}, Lcom/ss/android/socialbase/appdownloader/k;->b(Ljava/lang/String;)I

    move-result v4

    .line 152
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ss/android/socialbase/appdownloader/e;->b:Landroid/content/res/Resources;

    invoke-virtual {v10, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 155
    :cond_9a
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e;->j()Landroid/widget/RemoteViews;

    move-result-object v10

    .line 157
    new-instance v11, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ss/android/socialbase/appdownloader/e;->a:Landroid/content/Context;

    const-class v13, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;

    invoke-direct {v11, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    const-string v12, "android.ss.intent.action.DOWNLOAD_CLICK"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v12, "notification_name"

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e;->d()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string v12, "extra_click_download_ids"

    invoke-virtual {v11, v12, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    const-string v12, "extra_click_download_type"

    invoke-virtual {v11, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f;->j()I

    move-result v12

    .line 164
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ss/android/socialbase/appdownloader/e;->a:Landroid/content/Context;

    const/high16 v14, 0x8000000

    invoke-static {v13, v8, v11, v14}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v10, v12, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 166
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f;->l()I

    move-result v11

    .line 167
    invoke-virtual {v10, v11, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 169
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f;->g()I

    move-result v4

    .line 170
    const/16 v11, 0x64

    move/from16 v0, p2

    invoke-virtual {v10, v4, v11, v2, v0}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 172
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f;->k()I

    move-result v2

    .line 173
    invoke-virtual {v10, v2, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 174
    const-string v5, ""

    .line 175
    const-string v4, ""

    .line 176
    const-string v2, ""

    .line 177
    const/4 v11, 0x1

    if-eq v6, v11, :cond_f7

    const/4 v11, 0x4

    if-ne v6, v11, :cond_20a

    .line 178
    :cond_f7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/ss/android/socialbase/appdownloader/c;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/ss/android/socialbase/appdownloader/c;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 182
    const/4 v2, 0x1

    if-ne v6, v2, :cond_1fc

    .line 183
    const-string v2, "appdownloader_notification_downloading"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/k;->b(Ljava/lang/String;)I

    move-result v2

    .line 188
    :goto_127
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ss/android/socialbase/appdownloader/e;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 190
    const-string v2, "appdownloader_notification_download_pause"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/k;->b(Ljava/lang/String;)I

    move-result v2

    .line 191
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ss/android/socialbase/appdownloader/e;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f;->g()I

    move-result v6

    .line 194
    const/4 v8, 0x0

    invoke-virtual {v10, v6, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 196
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f;->h()I

    move-result v6

    .line 197
    const/16 v8, 0x8

    invoke-virtual {v10, v6, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 199
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f;->i()I

    move-result v6

    .line 200
    const/4 v8, 0x0

    invoke-virtual {v10, v6, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 202
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f;->j()I

    move-result v6

    .line 203
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ss/android/socialbase/appdownloader/e;->e:Ljava/lang/String;

    invoke-static {v8}, Lcom/ss/android/socialbase/appdownloader/c;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_204

    .line 204
    const/16 v8, 0x8

    invoke-virtual {v10, v6, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 291
    :cond_171
    :goto_171
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f;->m()I

    move-result v6

    .line 292
    invoke-virtual {v10, v6, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 294
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f;->o()I

    move-result v6

    .line 295
    invoke-virtual {v10, v6, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 297
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f;->n()I

    move-result v6

    .line 298
    invoke-virtual {v10, v6, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 300
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f;->p()I

    move-result v5

    .line 301
    invoke-virtual {v10, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 303
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f;->j()I

    move-result v4

    .line 304
    invoke-virtual {v10, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 306
    invoke-virtual {v7}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 307
    if-eqz v3, :cond_3fe

    .line 308
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 309
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/ss/android/socialbase/appdownloader/e;->a(Z)V

    .line 314
    :goto_1a6
    iput-object v10, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto/16 :goto_b

    .line 108
    :cond_1aa
    const/4 v2, 0x0

    goto/16 :goto_61

    .line 110
    :cond_1ad
    const/4 v2, 0x3

    if-ne v6, v2, :cond_68

    .line 111
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 112
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 115
    const/4 v2, -0x1

    if-eq v4, v2, :cond_1be

    const/4 v2, -0x4

    if-ne v4, v2, :cond_1d6

    .line 116
    :cond_1be
    const-string v2, "android.ss.intent.action.DOWNLOAD_DELETE"

    .line 132
    :cond_1c0
    :goto_1c0
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v8}, Lcom/ss/android/socialbase/appdownloader/e;->a(Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 133
    const-string v2, "android.ss.intent.action.DOWNLOAD_HIDE"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v8}, Lcom/ss/android/socialbase/appdownloader/e;->a(Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_68

    .line 118
    :cond_1d6
    const-string v2, "android.ss.intent.action.DOWNLOAD_OPEN"

    .line 119
    const/4 v10, -0x3

    if-ne v4, v10, :cond_1c0

    .line 120
    const-string v4, "notification_click_install_auto_cancel"

    const/4 v10, 0x1

    invoke-virtual {v9, v4, v10}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1c0

    .line 121
    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e;->h()I

    move-result v4

    if-lez v4, :cond_1f4

    .line 123
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 124
    const/4 v3, 0x0

    goto :goto_1c0

    .line 126
    :cond_1f4
    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1c0

    .line 145
    :cond_1f9
    const/4 v2, 0x0

    goto/16 :goto_82

    .line 185
    :cond_1fc
    const-string v2, "appdownloader_notification_prepare"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/k;->b(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_127

    .line 206
    :cond_204
    const/4 v8, 0x0

    invoke-virtual {v10, v6, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_171

    .line 208
    :cond_20a
    const/4 v11, 0x2

    if-ne v6, v11, :cond_28d

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/ss/android/socialbase/appdownloader/c;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/ss/android/socialbase/appdownloader/c;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 212
    const-string v2, "appdownloader_notification_download_pause"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/k;->b(Ljava/lang/String;)I

    move-result v2

    .line 213
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ss/android/socialbase/appdownloader/e;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 215
    const-string v2, "appdownloader_notification_download_resume"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/k;->b(Ljava/lang/String;)I

    move-result v2

    .line 216
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ss/android/socialbase/appdownloader/e;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f;->g()I

    move-result v6

    .line 219
    const/16 v8, 0x8

    invoke-virtual {v10, v6, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 221
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f;->h()I

    move-result v6

    .line 222
    const/16 v8, 0x8

    invoke-virtual {v10, v6, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 224
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f;->i()I

    move-result v6

    .line 225
    const/4 v8, 0x0

    invoke-virtual {v10, v6, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 227
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f;->j()I

    move-result v6

    .line 228
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ss/android/socialbase/appdownloader/e;->e:Ljava/lang/String;

    invoke-static {v8}, Lcom/ss/android/socialbase/appdownloader/c;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_287

    .line 229
    const/16 v8, 0x8

    invoke-virtual {v10, v6, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_171

    .line 231
    :cond_287
    const/4 v8, 0x0

    invoke-virtual {v10, v6, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_171

    .line 233
    :cond_28d
    const/4 v11, 0x3

    if-ne v6, v11, :cond_171

    .line 234
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/ss/android/socialbase/downloader/downloader/f;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v6

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e;->e()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2aa

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e;->e()I

    move-result v11

    const/4 v12, -0x4

    if-ne v11, v12, :cond_351

    .line 236
    :cond_2aa
    const-string v5, ""

    .line 238
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f;->n()I

    move-result v2

    .line 239
    const/16 v4, 0x8

    invoke-virtual {v10, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 240
    if-eqz p1, :cond_30d

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/e/a;->a()I

    move-result v2

    const/16 v4, 0x3ee

    if-ne v2, v4, :cond_30d

    .line 241
    const-string v2, "appdownloader_notification_download_space_failed"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/k;->b(Ljava/lang/String;)I

    move-result v2

    .line 242
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ss/android/socialbase/appdownloader/e;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 253
    :goto_2d1
    const-string v4, "appdownloader_notification_download_restart"

    invoke-static {v4}, Lcom/ss/android/socialbase/appdownloader/k;->b(Ljava/lang/String;)I

    move-result v4

    .line 254
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ss/android/socialbase/appdownloader/e;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v16, v4

    move-object v4, v2

    move-object/from16 v2, v16

    .line 278
    :cond_2e8
    :goto_2e8
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f;->g()I

    move-result v6

    .line 279
    const/16 v8, 0x8

    invoke-virtual {v10, v6, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 281
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f;->h()I

    move-result v6

    .line 282
    const/4 v8, 0x0

    invoke-virtual {v10, v6, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 284
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f;->i()I

    move-result v6

    .line 285
    const/16 v8, 0x8

    invoke-virtual {v10, v6, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 287
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f;->j()I

    move-result v6

    .line 288
    const/16 v8, 0x8

    invoke-virtual {v10, v6, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_171

    .line 243
    :cond_30d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v6}, Lcom/ss/android/socialbase/appdownloader/e;->a(Lcom/ss/android/socialbase/downloader/e/a;Lcom/ss/android/socialbase/downloader/k/a;Lcom/ss/android/socialbase/downloader/g/c;)Z

    move-result v2

    if-eqz v2, :cond_33e

    .line 244
    if-eqz v6, :cond_335

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/g/c;->x()Z

    move-result v2

    if-eqz v2, :cond_335

    const/4 v2, 0x1

    .line 245
    :goto_320
    if-eqz v2, :cond_337

    const-string v2, "appdownloader_notification_download_waiting_wifi"

    .line 246
    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/k;->b(Ljava/lang/String;)I

    move-result v2

    .line 248
    :goto_328
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ss/android/socialbase/appdownloader/e;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2d1

    .line 244
    :cond_335
    const/4 v2, 0x0

    goto :goto_320

    .line 246
    :cond_337
    const-string v2, "appdownloader_notification_download_waiting_net"

    .line 247
    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/k;->b(Ljava/lang/String;)I

    move-result v2

    goto :goto_328

    .line 250
    :cond_33e
    const-string v2, "appdownloader_notification_download_failed"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/k;->b(Ljava/lang/String;)I

    move-result v2

    .line 251
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ss/android/socialbase/appdownloader/e;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2d1

    .line 255
    :cond_351
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e;->e()I

    move-result v9

    const/4 v11, -0x3

    if-ne v9, v11, :cond_2e8

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/ss/android/socialbase/appdownloader/c;->a(J)Ljava/lang/String;

    move-result-object v5

    .line 258
    if-eqz v6, :cond_3e7

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/g/c;->ah()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3e7

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/g/c;->ah()Ljava/lang/String;

    move-result-object v2

    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e7

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ss/android/socialbase/appdownloader/e;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ss/android/socialbase/appdownloader/e;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ss/android/socialbase/appdownloader/e;->c:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "url: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/g/c;->j()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", backupUrl: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/g/c;->K()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v4, v8, v6}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d5

    .line 260
    const-string v2, "appdownloader_notification_download_complete_open"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/k;->b(Ljava/lang/String;)I

    move-result v2

    .line 272
    :cond_3b5
    :goto_3b5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ss/android/socialbase/appdownloader/e;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 274
    const-string v2, "appdownloader_notification_download_install"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/k;->b(Ljava/lang/String;)I

    move-result v2

    .line 275
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ss/android/socialbase/appdownloader/e;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2e8

    .line 262
    :cond_3d5
    const-string v2, "appdownloader_notification_download_complete_with_install"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/k;->b(Ljava/lang/String;)I

    move-result v2

    .line 263
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ss/android/socialbase/appdownloader/e;->b:Landroid/content/res/Resources;

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_3b5

    .line 266
    :cond_3e7
    const-string v2, "appdownloader_notification_download_complete_without_install"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/k;->b(Ljava/lang/String;)I

    move-result v2

    .line 267
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/ss/android/socialbase/downloader/downloader/c;->l(I)Lcom/ss/android/socialbase/downloader/d/ac;

    move-result-object v4

    .line 268
    if-eqz v4, :cond_3b5

    .line 269
    const-string v2, "appdownloader_notification_download_complete_open"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/k;->b(Ljava/lang/String;)I

    move-result v2

    goto :goto_3b5

    .line 311
    :cond_3fe
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/ss/android/socialbase/appdownloader/e;->a(Z)V

    goto/16 :goto_1a6
.end method

.method private j()Landroid/widget/RemoteViews;
    .registers 6

    .prologue
    .line 330
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f;->a()I

    move-result v0

    .line 331
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/e;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 332
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-le v0, v2, :cond_34

    .line 334
    :try_start_15
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/c;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 335
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f;->f()I

    move-result v0

    .line 336
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f;->q()I

    move-result v2

    .line 338
    const-string v3, "setBackgroundColor"

    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/e;->a:Landroid/content/Context;

    .line 339
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 338
    invoke-virtual {v1, v0, v3, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_34} :catch_35

    .line 345
    :cond_34
    :goto_34
    return-object v1

    .line 341
    :catch_35
    move-exception v0

    goto :goto_34
.end method

.method private k()Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 4

    .prologue
    .line 374
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/d;->g()Ljava/lang/String;

    move-result-object v0

    .line 375
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_16

    .line 376
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 393
    :goto_15
    return-object v0

    .line 378
    :cond_16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 379
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 382
    :goto_23
    :try_start_23
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/d;->i()Lcom/ss/android/socialbase/appdownloader/c/l;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 384
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/d;->i()Lcom/ss/android/socialbase/appdownloader/c/l;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/e;->a:Landroid/content/Context;

    invoke-interface {v0, v2, v1}, Lcom/ss/android/socialbase/appdownloader/c/l;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    goto :goto_15

    .line 386
    :cond_3c
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/e;->a:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/NoSuchMethodError; {:try_start_23 .. :try_end_43} :catch_44

    goto :goto_15

    .line 388
    :catch_44
    move-exception v0

    .line 389
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_15

    :cond_4d
    move-object v1, v0

    goto :goto_23
.end method


# virtual methods
.method protected a(Lcom/ss/android/socialbase/downloader/e/a;Z)V
    .registers 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e;->a:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 74
    :goto_4
    return-void

    .line 68
    :cond_5
    :try_start_5
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/e;->b(Lcom/ss/android/socialbase/downloader/e/a;Z)Landroid/app/Notification;

    move-result-object v0

    .line 69
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/appdownloader/e;->a(Landroid/app/Notification;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_d

    goto :goto_4

    .line 70
    :catch_d
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 3

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/ss/android/socialbase/downloader/notification/a;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 58
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e;->d:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e;->c:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->y()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e;->e:Ljava/lang/String;

    .line 61
    return-void
.end method
