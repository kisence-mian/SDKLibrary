.class public Lcom/ss/android/socialbase/appdownloader/d/b;
.super Ljava/lang/Object;
.source "DefaultDownloadLaunchHandler.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/k;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/d/b;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d/b;->b:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/d/b;)Ljava/util/List;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/ss/android/socialbase/appdownloader/d/b;->a:Ljava/util/List;

    return-object p0
.end method

.method private a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZI)V
    .registers 25

    .line 155
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move/from16 v1, p4

    if-eqz v8, :cond_292

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isShowNotification()Z

    move-result v3

    if-nez v3, :cond_12

    goto/16 :goto_292

    .line 159
    :cond_12
    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRealStatus()I

    move-result v3

    .line 160
    const/4 v4, -0x5

    const-string v6, ", canShowNotification = "

    const-string v7, "LaunchResume"

    const-wide/high16 v9, 0x4028000000000000L    # 12.0

    const-wide/high16 v11, 0x4052000000000000L    # 72.0

    const-wide v13, 0x414b774000000000L    # 3600000.0

    const/4 v15, 0x0

    if-ne v3, v4, :cond_14c

    .line 161
    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "application/ttpatch"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3f

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isDownloaded()Z

    move-result v4

    if-nez v4, :cond_3a

    goto :goto_3f

    :cond_3a
    move-object v4, v6

    move-object v6, v7

    const/4 v5, 0x1

    goto/16 :goto_14f

    .line 162
    :cond_3f
    :goto_3f
    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v2

    .line 163
    const-string v3, "failed_resume_max_count"

    invoke-virtual {v2, v3, v15}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v3

    .line 166
    const-string v4, "failed_resume_max_hours"

    invoke-virtual {v2, v4, v11, v12}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;D)D

    move-result-wide v4

    .line 169
    const-string v11, "failed_resume_min_hours"

    invoke-virtual {v2, v11, v9, v10}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;D)D

    move-result-wide v9

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 174
    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getFailedResumeCount()I

    move-result v15

    if-ge v15, v3, :cond_80

    .line 175
    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getLastDownloadTime()J

    move-result-wide v17

    move-object v15, v6

    move-object/from16 v19, v7

    sub-long v6, v11, v17

    long-to-double v6, v6

    mul-double/2addr v4, v13

    cmpg-double v3, v6, v4

    if-gez v3, :cond_83

    .line 176
    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getLastFailedResumeTime()J

    move-result-wide v3

    sub-long v3, v11, v3

    long-to-double v3, v3

    mul-double/2addr v9, v13

    cmpl-double v3, v3, v9

    if-lez v3, :cond_83

    const/4 v3, 0x1

    goto :goto_84

    .line 174
    :cond_80
    move-object v15, v6

    move-object/from16 v19, v7

    .line 176
    :cond_83
    const/4 v3, 0x0

    .line 179
    :goto_84
    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result v4

    if-eqz v4, :cond_8d

    if-eqz p3, :cond_8d

    .line 180
    const/4 v3, 0x1

    .line 183
    :cond_8d
    nop

    .line 184
    if-eqz v3, :cond_10d

    .line 185
    const-string v4, "failed_resume_need_wifi"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_9b

    move v4, v5

    goto :goto_9c

    :cond_9b
    const/4 v4, 0x0

    .line 186
    :goto_9c
    const-string v6, "failed_resume_need_wait_wifi"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_a7

    const/4 v2, 0x1

    goto :goto_a8

    :cond_a7
    const/4 v2, 0x0

    .line 187
    :goto_a8
    if-nez p3, :cond_e0

    if-eqz v4, :cond_e0

    if-nez v2, :cond_b0

    const/4 v5, 0x1

    goto :goto_e1

    .line 203
    :cond_b0
    iget-object v1, v0, Lcom/ss/android/socialbase/appdownloader/d/b;->a:Ljava/util/List;

    if-nez v1, :cond_bb

    .line 204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/ss/android/socialbase/appdownloader/d/b;->a:Ljava/util/List;

    .line 206
    :cond_bb
    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    .line 207
    iget-object v2, v0, Lcom/ss/android/socialbase/appdownloader/d/b;->a:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d4

    .line 208
    iget-object v2, v0, Lcom/ss/android/socialbase/appdownloader/d/b;->a:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_d4
    const/4 v5, 0x1

    invoke-virtual {v8, v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setOnlyWifi(Z)V

    .line 211
    invoke-static {}, Lcom/ss/android/socialbase/downloader/impls/r;->a()Lcom/ss/android/socialbase/downloader/impls/r;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/ss/android/socialbase/downloader/impls/r;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    goto :goto_10d

    .line 187
    :cond_e0
    const/4 v5, 0x1

    .line 188
    :goto_e1
    invoke-static {v8, v5, v4}, Lcom/ss/android/socialbase/appdownloader/c;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZZ)V

    .line 189
    invoke-virtual {v8, v11, v12}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setLastFailedResumeTime(J)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getFailedResumeCount()I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {v8, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFailedResumeCount(I)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateSpData()V

    .line 192
    nop

    .line 194
    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result v2

    if-eqz v2, :cond_10e

    if-eqz p3, :cond_10e

    .line 195
    invoke-virtual {v8, v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setDownloadFromReserveWifi(Z)V

    .line 196
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/d;->m()Lcom/ss/android/socialbase/downloader/downloader/p;

    move-result-object v2

    .line 197
    if-eqz v2, :cond_10c

    .line 198
    const/4 v4, 0x5

    invoke-interface {v2, v8, v4, v1}, Lcom/ss/android/socialbase/downloader/downloader/p;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;II)V

    .line 200
    :cond_10c
    goto :goto_10e

    .line 214
    :cond_10d
    :goto_10d
    const/4 v5, 0x0

    :cond_10e
    :goto_10e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchResume, name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v4, v15

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", downloadResumed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v6, v19

    invoke-static {v6, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/d;->l()Lcom/ss/android/socialbase/appdownloader/c/g;

    move-result-object v1

    .line 217
    if-eqz v1, :cond_14a

    .line 218
    invoke-interface {v1, v8, v5}, Lcom/ss/android/socialbase/appdownloader/c/g;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V

    .line 220
    :cond_14a
    goto/16 :goto_291

    .line 160
    :cond_14c
    move-object v4, v6

    move-object v6, v7

    const/4 v5, 0x1

    .line 220
    :goto_14f
    const/4 v7, -0x3

    if-ne v3, v7, :cond_22c

    invoke-direct {v0, v8}, Lcom/ss/android/socialbase/appdownloader/d/b;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v7

    if-eqz v7, :cond_22c

    .line 221
    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v1

    .line 222
    invoke-static/range {p1 .. p2}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v3

    if-eqz v3, :cond_167

    .line 223
    return-void

    .line 225
    :cond_167
    const-string v3, "uninstall_resume_max_count"

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v3

    .line 228
    const-string v7, "uninstall_resume_max_hours"

    invoke-virtual {v1, v7, v11, v12}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;D)D

    move-result-wide v11

    .line 231
    const-string v7, "uninstall_resume_min_hours"

    invoke-virtual {v1, v7, v9, v10}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;D)D

    move-result-wide v9

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 236
    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUninstallResumeCount()I

    move-result v1

    if-ge v1, v3, :cond_1a5

    .line 237
    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getLastDownloadTime()J

    move-result-wide v15

    move-object/from16 v19, v6

    sub-long v5, v13, v15

    long-to-double v5, v5

    const-wide v15, 0x414b774000000000L    # 3600000.0

    mul-double/2addr v11, v15

    cmpg-double v1, v5, v11

    if-gez v1, :cond_1a7

    .line 238
    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getLastUninstallResumeTime()J

    move-result-wide v5

    sub-long v5, v13, v5

    long-to-double v5, v5

    mul-double/2addr v9, v15

    cmpl-double v1, v5, v9

    if-lez v1, :cond_1a7

    const/4 v5, 0x1

    goto :goto_1a8

    .line 236
    :cond_1a5
    move-object/from16 v19, v6

    .line 238
    :cond_1a7
    const/4 v5, 0x0

    .line 240
    :goto_1a8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uninstallResume, name = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v19

    invoke-static {v3, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    if-eqz v5, :cond_290

    .line 244
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/ss/android/socialbase/downloader/notification/b;->e(I)Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object v1

    .line 245
    if-nez v1, :cond_202

    .line 246
    new-instance v9, Lcom/ss/android/socialbase/appdownloader/e/a;

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExtra()Ljava/lang/String;

    move-result-object v7

    move-object v1, v9

    move-object/from16 v2, p1

    const/4 v10, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/ss/android/socialbase/appdownloader/e/a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/ss/android/socialbase/downloader/notification/b;->a(Lcom/ss/android/socialbase/downloader/notification/a;)V

    move-object v1, v9

    goto :goto_206

    .line 249
    :cond_202
    const/4 v10, 0x1

    invoke-virtual {v1, v8}, Lcom/ss/android/socialbase/downloader/notification/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 251
    :goto_206
    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/notification/a;->b(J)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/notification/a;->a(J)V

    .line 253
    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/ss/android/socialbase/downloader/notification/a;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;ZZ)V

    .line 255
    invoke-virtual {v8, v13, v14}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setLastUninstallResumeTime(J)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUninstallResumeCount()I

    move-result v1

    add-int/2addr v1, v10

    invoke-virtual {v8, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setUninstallResumeCount(I)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateSpData()V

    goto :goto_290

    .line 220
    :cond_22c
    move v10, v5

    .line 259
    const/4 v4, -0x2

    if-ne v3, v4, :cond_290

    .line 261
    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result v3

    if-eqz v3, :cond_28c

    .line 262
    if-eqz p3, :cond_25d

    .line 263
    invoke-static {v8, v10, v10}, Lcom/ss/android/socialbase/appdownloader/c;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZZ)V

    .line 264
    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateSpData()V

    .line 265
    invoke-virtual {v8, v10}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setDownloadFromReserveWifi(Z)V

    .line 266
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/d;->l()Lcom/ss/android/socialbase/appdownloader/c/g;

    move-result-object v2

    .line 267
    if-eqz v2, :cond_24e

    .line 268
    invoke-interface {v2, v8, v10}, Lcom/ss/android/socialbase/appdownloader/c/g;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V

    .line 270
    :cond_24e
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/d;->m()Lcom/ss/android/socialbase/downloader/downloader/p;

    move-result-object v2

    .line 271
    if-eqz v2, :cond_25c

    .line 272
    const/4 v3, 0x5

    invoke-interface {v2, v8, v3, v1}, Lcom/ss/android/socialbase/downloader/downloader/p;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;II)V

    .line 274
    :cond_25c
    goto :goto_291

    .line 276
    :cond_25d
    iget-object v1, v0, Lcom/ss/android/socialbase/appdownloader/d/b;->a:Ljava/util/List;

    if-nez v1, :cond_268

    .line 277
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/ss/android/socialbase/appdownloader/d/b;->a:Ljava/util/List;

    .line 279
    :cond_268
    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    .line 280
    iget-object v3, v0, Lcom/ss/android/socialbase/appdownloader/d/b;->a:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_281

    .line 281
    iget-object v3, v0, Lcom/ss/android/socialbase/appdownloader/d/b;->a:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_281
    invoke-static {}, Lcom/ss/android/socialbase/downloader/impls/r;->a()Lcom/ss/android/socialbase/downloader/impls/r;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/ss/android/socialbase/downloader/impls/r;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 286
    invoke-direct {v0, v8, v2}, Lcom/ss/android/socialbase/appdownloader/d/b;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Landroid/content/Context;)V

    .line 287
    goto :goto_291

    .line 289
    :cond_28c
    invoke-direct {v0, v8, v2}, Lcom/ss/android/socialbase/appdownloader/d/b;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Landroid/content/Context;)V

    goto :goto_291

    .line 259
    :cond_290
    :goto_290
    nop

    .line 292
    :goto_291
    return-void

    .line 156
    :cond_292
    :goto_292
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/d/b;Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZI)V
    .registers 5

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/appdownloader/d/b;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZI)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/d/b;Ljava/util/List;I)V
    .registers 3

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/d/b;->b(Ljava/util/List;I)V

    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Landroid/content/Context;)V
    .registers 16

    .line 295
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    .line 296
    const-string v1, "paused_resume_max_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v1

    .line 299
    const-string v3, "paused_resume_max_hours"

    const-wide/high16 v4, 0x4052000000000000L    # 72.0

    invoke-virtual {v0, v3, v4, v5}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;D)D

    move-result-wide v3

    .line 304
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getPausedResumeCount()I

    move-result v0

    .line 305
    const/4 v5, 0x1

    if-ge v0, v1, :cond_34

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getLastDownloadTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-double v6, v6

    const-wide v8, 0x414b774000000000L    # 3600000.0

    mul-double/2addr v3, v8

    cmpg-double v1, v6, v3

    if-gez v1, :cond_34

    move v1, v5

    goto :goto_35

    :cond_34
    move v1, v2

    .line 307
    :goto_35
    if-eqz v1, :cond_88

    .line 308
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/ss/android/socialbase/downloader/notification/b;->e(I)Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object v1

    .line 309
    if-nez v1, :cond_68

    .line 310
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/e/a;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v8

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExtra()Ljava/lang/String;

    move-result-object v12

    move-object v6, v1

    move-object v7, p2

    invoke-direct/range {v6 .. v12}, Lcom/ss/android/socialbase/appdownloader/e/a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/ss/android/socialbase/downloader/notification/b;->a(Lcom/ss/android/socialbase/downloader/notification/a;)V

    goto :goto_6b

    .line 313
    :cond_68
    invoke-virtual {v1, p1}, Lcom/ss/android/socialbase/downloader/notification/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 315
    :goto_6b
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/ss/android/socialbase/downloader/notification/a;->b(J)V

    .line 316
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/ss/android/socialbase/downloader/notification/a;->a(J)V

    .line 317
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p2

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3, v2, v2}, Lcom/ss/android/socialbase/downloader/notification/a;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;ZZ)V

    .line 319
    add-int/2addr v0, v5

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setPausedResumeCount(I)V

    .line 320
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateSpData()V

    .line 322
    :cond_88
    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 5

    .line 325
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    .line 326
    const-string v1, "uninstall_can_not_resume_for_force_task"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 327
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/ss/android/socialbase/downloader/i/e;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZLjava/lang/String;)Z

    move-result p1

    return p1

    .line 329
    :cond_1a
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isDownloaded()Z

    move-result p1

    return p1
.end method

.method static synthetic b(Lcom/ss/android/socialbase/appdownloader/d/b;)Landroid/content/BroadcastReceiver;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/ss/android/socialbase/appdownloader/d/b;->b:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method private b(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;I)V"
        }
    .end annotation

    .line 81
    if-eqz p1, :cond_62

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_62

    .line 84
    :cond_9
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/d;->l()Lcom/ss/android/socialbase/appdownloader/c/g;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_16

    .line 86
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/appdownloader/c/g;->a(Ljava/util/List;)V

    .line 89
    :cond_16
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    .line 90
    if-nez v0, :cond_1d

    .line 91
    return-void

    .line 93
    :cond_1d
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->b(Landroid/content/Context;)Z

    move-result v1

    .line 95
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 96
    invoke-direct {p0, v0, v2, v1, p2}, Lcom/ss/android/socialbase/appdownloader/d/b;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZI)V

    .line 97
    goto :goto_25

    .line 99
    :cond_35
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d/b;->a:Ljava/util/List;

    if-eqz p1, :cond_61

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_61

    .line 100
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d/b;->b:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_61

    .line 101
    new-instance p1, Lcom/ss/android/socialbase/appdownloader/d/b$2;

    invoke-direct {p1, p0}, Lcom/ss/android/socialbase/appdownloader/d/b$2;-><init>(Lcom/ss/android/socialbase/appdownloader/d/b;)V

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d/b;->b:Landroid/content/BroadcastReceiver;

    .line 143
    :try_start_4a
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 144
    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object p2, p0, Lcom/ss/android/socialbase/appdownloader/d/b;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_59
    .catchall {:try_start_4a .. :try_end_59} :catchall_5a

    .line 149
    goto :goto_61

    .line 146
    :catchall_5a
    move-exception p1

    .line 147
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 148
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d/b;->b:Landroid/content/BroadcastReceiver;

    .line 152
    :cond_61
    :goto_61
    return-void

    .line 82
    :cond_62
    :goto_62
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;I)V"
        }
    .end annotation

    .line 63
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->d()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 64
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 65
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/d/b$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/d/b$1;-><init>(Lcom/ss/android/socialbase/appdownloader/d/b;Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 75
    goto :goto_16

    .line 76
    :cond_13
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/d/b;->b(Ljava/util/List;I)V

    .line 78
    :goto_16
    return-void
.end method
