.class public Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;
.super Landroid/app/Service;
.source "DownloadHandlerService.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    const-class v0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;IZ)V
    .registers 5

    .line 239
    nop

    .line 240
    const/4 v0, 0x0

    if-eqz p2, :cond_23

    .line 241
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->m(I)Lcom/ss/android/socialbase/downloader/depend/ah;

    move-result-object p2

    .line 243
    if-eqz p2, :cond_23

    .line 245
    :try_start_e
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    .line 246
    if-eqz v1, :cond_1d

    .line 247
    invoke-interface {p2, v1}, Lcom/ss/android/socialbase/downloader/depend/ah;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p2
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1f

    goto :goto_1e

    .line 246
    :cond_1d
    move p2, v0

    .line 251
    :goto_1e
    goto :goto_24

    .line 249
    :catchall_1f
    move-exception p2

    .line 250
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 255
    :cond_23
    move p2, v0

    :goto_24
    if-eqz p2, :cond_27

    .line 256
    return-void

    .line 258
    :cond_27
    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;IZ)I

    move-result p1

    if-nez p1, :cond_37

    .line 259
    const-string p1, "Open Fail!"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 261
    :cond_37
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/ss/android/socialbase/appdownloader/c/d;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 5

    .line 147
    if-nez p2, :cond_3

    .line 148
    return-void

    .line 149
    :cond_3
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p0

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadNotificationEventListener(I)Lcom/ss/android/socialbase/downloader/depend/ab;

    move-result-object p0

    .line 150
    if-nez p1, :cond_14

    if-nez p0, :cond_14

    .line 151
    return-void

    .line 152
    :cond_14
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 153
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$2;

    invoke-direct {v1, p2, p1, p0}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$2;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/appdownloader/c/d;Lcom/ss/android/socialbase/downloader/depend/ab;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 181
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 2

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->b(Landroid/content/Context;)Z

    move-result p0

    .line 141
    if-eqz p0, :cond_13

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result p0

    if-eqz p0, :cond_13

    .line 142
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->stopPauseReserveOnWifi()V

    .line 144
    :cond_13
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/appdownloader/c/d;Lcom/ss/android/socialbase/downloader/depend/ab;)V
    .registers 12

    .line 269
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    .line 270
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/c;->m(I)Lcom/ss/android/socialbase/downloader/depend/ah;

    move-result-object v0

    .line 271
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    if-eqz v0, :cond_27

    .line 272
    invoke-static {p0, p1}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 274
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/ah;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 275
    return-void

    .line 278
    :cond_27
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    const-string v7, ""

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_d8

    :pswitch_32
    goto/16 :goto_d7

    .line 306
    :pswitch_34
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->pause(I)V

    .line 307
    invoke-static {p0, p1}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 308
    if-eqz p2, :cond_4f

    .line 309
    const/4 v2, 0x5

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v4

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getDownloadTime()J

    move-result-wide v5

    const-string v3, ""

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/ss/android/socialbase/appdownloader/c/d;->a(IILjava/lang/String;IJ)V

    .line 310
    :cond_4f
    if-eqz p3, :cond_d7

    .line 311
    const/4 p0, 0x5

    invoke-interface {p3, p0, p1, v7, v7}, Lcom/ss/android/socialbase/downloader/depend/ab;->a(ILcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d7

    .line 289
    :pswitch_57
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/c;->e(I)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 290
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->resume(I)V

    goto :goto_6c

    .line 293
    :cond_69
    invoke-static {p1, v3, v2}, Lcom/ss/android/socialbase/appdownloader/c;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZZ)V

    .line 295
    :goto_6c
    if-eqz p2, :cond_7d

    .line 296
    const/4 v2, 0x6

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v4

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getDownloadTime()J

    move-result-wide v5

    const-string v3, ""

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/ss/android/socialbase/appdownloader/c/d;->a(IILjava/lang/String;IJ)V

    .line 297
    :cond_7d
    if-eqz p3, :cond_d7

    .line 298
    const/4 p0, 0x6

    invoke-interface {p3, p0, p1, v7, v7}, Lcom/ss/android/socialbase/downloader/depend/ab;->a(ILcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d7

    .line 315
    :pswitch_84
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v1, v3}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a(Landroid/content/Context;IZ)V

    .line 316
    invoke-static {p0, p2, p1}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a(Landroid/content/Context;Lcom/ss/android/socialbase/appdownloader/c/d;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 318
    nop

    .line 319
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    const-string p1, "notification_click_install_auto_cancel"

    invoke-virtual {p0, p1, v3}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_ae

    .line 320
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/notification/b;->e(I)Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object p0

    .line 321
    if-eqz p0, :cond_ae

    .line 322
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/notification/a;->g()V

    .line 323
    const/4 p1, -0x3

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/ss/android/socialbase/downloader/notification/a;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;ZZ)V

    .line 324
    goto :goto_af

    .line 327
    :cond_ae
    move v2, v3

    :goto_af
    if-eqz v2, :cond_d7

    .line 328
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/notification/b;->a(I)V

    goto :goto_d7

    .line 282
    :pswitch_b9
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p2

    const-string p3, "enable_notification_ui"

    invoke-virtual {p2, p3}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result p2

    const/4 p3, 0x2

    if-lt p2, p3, :cond_cf

    .line 283
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isOnlyWifi()Z

    move-result p2

    if-eqz p2, :cond_cf

    .line 284
    invoke-virtual {p1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setOnlyWifi(Z)V

    .line 286
    :cond_cf
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->restart(I)V

    .line 287
    nop

    .line 335
    :cond_d7
    :goto_d7
    return-void

    :pswitch_data_d8
    .packed-switch -0x4
        :pswitch_b9
        :pswitch_84
        :pswitch_57
        :pswitch_b9
        :pswitch_32
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
    .end packed-switch
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/appdownloader/c/d;Lcom/ss/android/socialbase/downloader/depend/ab;)V
    .registers 11

    .line 184
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    .line 186
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/c;->m(I)Lcom/ss/android/socialbase/downloader/depend/ah;

    move-result-object v0

    .line 188
    nop

    .line 190
    if-eqz v0, :cond_18

    .line 192
    :try_start_f
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/ah;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_14

    .line 195
    goto :goto_19

    .line 193
    :catchall_14
    move-exception v0

    .line 194
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 198
    :cond_18
    const/4 v0, 0x0

    :goto_19
    if-nez v0, :cond_52

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    const-string v2, "extra_click_download_ids"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->startActivity(Landroid/content/Intent;)V

    .line 203
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/notification/b;->a(I)V

    .line 205
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateDownloadTime()V

    .line 207
    if-eqz p2, :cond_4a

    .line 208
    const/4 v2, 0x7

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v4

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getDownloadTime()J

    move-result-wide v5

    const-string v3, ""

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/ss/android/socialbase/appdownloader/c/d;->a(IILjava/lang/String;IJ)V

    .line 210
    :cond_4a
    if-eqz p3, :cond_52

    .line 211
    const/4 p2, 0x7

    const-string v0, ""

    invoke-interface {p3, p2, p1, v0, v0}, Lcom/ss/android/socialbase/downloader/depend/ab;->a(ILcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_52
    return-void
.end method

.method private a(Landroid/content/Intent;)Z
    .registers 9

    .line 61
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 62
    return v0

    .line 63
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 65
    return v0

    .line 69
    :cond_f
    const-string v2, "extra_click_download_ids"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 70
    const-string v3, "extra_click_download_type"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 72
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/socialbase/appdownloader/d;->b()Lcom/ss/android/socialbase/appdownloader/c/d;

    move-result-object v3

    .line 73
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadNotificationEventListener(I)Lcom/ss/android/socialbase/downloader/depend/ab;

    move-result-object v4

    .line 75
    const-string v5, "extra_from_notification"

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 76
    const/4 v5, 0x1

    if-eqz p1, :cond_46

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const-string v6, "notification_opt_2"

    invoke-virtual {p1, v6}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v5, :cond_46

    .line 78
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/ss/android/socialbase/downloader/notification/b;->f(I)V

    .line 81
    :cond_46
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 82
    if-nez p1, :cond_51

    .line 83
    return v0

    .line 86
    :cond_51
    const-string v6, "android.ss.intent.action.DOWNLOAD_CLICK_CONTENT"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 88
    invoke-direct {p0, p1, v3, v4}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/appdownloader/c/d;Lcom/ss/android/socialbase/downloader/depend/ab;)V

    goto/16 :goto_e3

    .line 89
    :cond_5e
    const-string v6, "android.ss.intent.action.DOWNLOAD_OPEN"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 91
    invoke-static {p0, p1, v3, v4}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/appdownloader/c/d;Lcom/ss/android/socialbase/downloader/depend/ab;)V

    goto/16 :goto_e3

    .line 92
    :cond_6b
    const-string v6, "android.ss.intent.action.DOWNLOAD_CLICK_BTN"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b6

    .line 94
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v1

    .line 95
    if-nez v1, :cond_7a

    .line 96
    return v0

    .line 99
    :cond_7a
    invoke-static {p0, p1, v3, v4}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/appdownloader/c/d;Lcom/ss/android/socialbase/downloader/depend/ab;)V

    .line 101
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isDownloadOverStatus()Z

    move-result v1

    if-eqz v1, :cond_b5

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v1

    const-string v3, "no_hide_notification"

    invoke-virtual {v1, v3, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_b5

    .line 103
    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v1

    const-string v3, "enable_notification_ui"

    invoke-virtual {v1, v3}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_a4

    .line 104
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_a4

    goto :goto_a5

    :cond_a4
    move v5, v0

    .line 105
    :goto_a5
    if-nez v5, :cond_b5

    .line 106
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/ss/android/socialbase/downloader/notification/b;->a(I)V

    .line 107
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/ss/android/socialbase/downloader/notification/b;->f(I)V

    .line 110
    :cond_b5
    goto :goto_e3

    :cond_b6
    const-string v6, "android.ss.intent.action.DOWNLOAD_DELETE"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c2

    .line 111
    invoke-direct {p0, p1, v3, v4}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/appdownloader/c/d;Lcom/ss/android/socialbase/downloader/depend/ab;)V

    goto :goto_e3

    .line 112
    :cond_c2
    const-string p1, "android.ss.intent.action.DOWNLOAD_HIDE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d2

    .line 113
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/ss/android/socialbase/downloader/notification/b;->a(I)V

    goto :goto_e3

    .line 114
    :cond_d2
    const-string p1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e4

    .line 115
    const-string p1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e3

    goto :goto_e4

    .line 133
    :cond_e3
    :goto_e3
    return v0

    .line 117
    :cond_e4
    :goto_e4
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 118
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$1;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$1;-><init>(Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 131
    return v5
.end method

.method private b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/appdownloader/c/d;Lcom/ss/android/socialbase/downloader/depend/ab;)V
    .registers 11

    .line 217
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    .line 219
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 220
    const-string v2, "extra_click_download_ids"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 221
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 222
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->startActivity(Landroid/content/Intent;)V

    .line 223
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/notification/b;->a(I)V

    .line 225
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateDownloadTime()V

    .line 227
    if-eqz p2, :cond_33

    .line 228
    const/4 v2, 0x7

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v4

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getDownloadTime()J

    move-result-wide v5

    const-string v3, ""

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/ss/android/socialbase/appdownloader/c/d;->a(IILjava/lang/String;IJ)V

    .line 230
    :cond_33
    if-eqz p3, :cond_3b

    .line 231
    const/4 p2, 0x7

    const-string v0, ""

    invoke-interface {p3, p2, p1, v0, v0}, Lcom/ss/android/socialbase/downloader/depend/ab;->a(ILcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_3b
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 265
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 1

    .line 45
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 46
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    .line 51
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 52
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/a;->a()Z

    move-result p2

    if-eqz p2, :cond_10

    .line 53
    sget-object p2, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a:Ljava/lang/String;

    const-string p3, "onStartCommand"

    invoke-static {p2, p3}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_10
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a(Landroid/content/Intent;)Z

    .line 56
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->stopSelf()V

    .line 57
    const/4 p1, 0x2

    return p1
.end method
