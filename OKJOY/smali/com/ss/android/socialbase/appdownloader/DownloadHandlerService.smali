.class public Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;
.super Landroid/app/Service;
.source "DownloadHandlerService.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-class v0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;IZ)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 273
    .line 274
    if-eqz p3, :cond_22

    .line 275
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/downloader/downloader/c;->l(I)Lcom/ss/android/socialbase/downloader/d/ac;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_22

    .line 279
    :try_start_d
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/ss/android/socialbase/downloader/downloader/f;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v2

    .line 280
    if-eqz v2, :cond_22

    .line 281
    invoke-interface {v0, v2}, Lcom/ss/android/socialbase/downloader/d/ac;->b(Lcom/ss/android/socialbase/downloader/g/c;)Z
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_1a} :catch_1e

    move-result v0

    .line 289
    :goto_1b
    if-eqz v0, :cond_24

    .line 295
    :cond_1d
    :goto_1d
    return-void

    .line 283
    :catch_1e
    move-exception v0

    .line 284
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_22
    move v0, v1

    goto :goto_1b

    .line 292
    :cond_24
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;IZ)I

    move-result v0

    if-nez v0, :cond_1d

    .line 293
    const-string v0, "Open Fail!"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1d
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 205
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 207
    :try_start_6
    const-string v3, "extra_click_download_ids"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 208
    const-string v4, "extra_from_notification"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 210
    const-string v5, "android.ss.intent.action.DOWNLOAD_DELETE"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 214
    if-eqz v4, :cond_3c

    .line 215
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/ss/android/socialbase/downloader/downloader/c;->l(I)Lcom/ss/android/socialbase/downloader/d/ac;

    move-result-object v1

    .line 216
    if-nez v1, :cond_2c

    .line 217
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Lcom/ss/android/socialbase/downloader/d/ac;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2b} :catch_5f

    move-result-object v1

    .line 219
    :cond_2c
    if-eqz v1, :cond_3c

    .line 221
    :try_start_2e
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/f;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v2

    .line 222
    if-eqz v2, :cond_3c

    .line 223
    invoke-interface {v1, v2}, Lcom/ss/android/socialbase/downloader/d/ac;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_3b} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3b} :catch_5f

    move-result v0

    .line 231
    :cond_3c
    :goto_3c
    if-nez v0, :cond_59

    .line 232
    :try_start_3e
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    const-string v1, "extra_click_download_ids"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 234
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 235
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 236
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ss/android/socialbase/downloader/notification/b;->a(I)V

    .line 267
    :cond_59
    :goto_59
    return-void

    .line 225
    :catch_5a
    move-exception v1

    .line 226
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_5e} :catch_5f

    goto :goto_3c

    .line 264
    :catch_5f
    move-exception v0

    .line 265
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_59

    .line 238
    :cond_64
    :try_start_64
    const-string v5, "android.ss.intent.action.DOWNLOAD_OPEN"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bb

    .line 239
    invoke-direct {p0, p1, v3, v4}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a(Landroid/content/Context;IZ)V

    .line 240
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/d;->b()Lcom/ss/android/socialbase/appdownloader/c/d;

    move-result-object v2

    .line 241
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/ss/android/socialbase/downloader/downloader/f;->i(I)Lcom/ss/android/socialbase/downloader/d/z;

    move-result-object v4

    .line 243
    if-nez v2, :cond_83

    if-eqz v4, :cond_90

    .line 244
    :cond_83
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/ss/android/socialbase/downloader/downloader/f;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v4

    .line 245
    if-eqz v4, :cond_90

    .line 246
    invoke-direct {p0, v2, v4}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a(Lcom/ss/android/socialbase/appdownloader/c/d;Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 250
    :cond_90
    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v2

    const-string v4, "notification_click_install_auto_cancel"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_cb

    .line 251
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/notification/b;->e(I)Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object v2

    .line 252
    if-eqz v2, :cond_cb

    .line 253
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/notification/a;->g()V

    .line 254
    const/4 v1, -0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v1, v4, v5, v6}, Lcom/ss/android/socialbase/downloader/notification/a;->a(ILcom/ss/android/socialbase/downloader/e/a;ZZ)V

    .line 258
    :goto_b1
    if-eqz v0, :cond_59

    .line 259
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ss/android/socialbase/downloader/notification/b;->a(I)V

    goto :goto_59

    .line 261
    :cond_bb
    const-string v0, "android.ss.intent.action.DOWNLOAD_HIDE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 262
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ss/android/socialbase/downloader/notification/b;->a(I)V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_ca} :catch_5f

    goto :goto_59

    :cond_cb
    move v0, v1

    goto :goto_b1
.end method

.method private a(Lcom/ss/android/socialbase/appdownloader/c/d;Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 6

    .prologue
    .line 164
    if-nez p2, :cond_3

    .line 199
    :cond_2
    :goto_2
    return-void

    .line 166
    :cond_3
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->i(I)Lcom/ss/android/socialbase/downloader/d/z;

    move-result-object v0

    .line 167
    if-nez p1, :cond_13

    if-eqz v0, :cond_2

    .line 169
    :cond_13
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 170
    new-instance v2, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$2;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$2;-><init>(Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/appdownloader/c/d;Lcom/ss/android/socialbase/downloader/d/z;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method private a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/appdownloader/c/d;Lcom/ss/android/socialbase/downloader/d/z;)V
    .registers 13

    .prologue
    const/4 v3, 0x6

    const/4 v8, 0x5

    .line 303
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v2

    .line 304
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    packed-switch v0, :pswitch_data_62

    .line 337
    :cond_d
    :goto_d
    :pswitch_d
    return-void

    .line 307
    :pswitch_e
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->e(I)V

    goto :goto_d

    .line 310
    :pswitch_16
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->c(I)V

    .line 311
    if-eqz p2, :cond_2d

    .line 312
    const-string v4, ""

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v5

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->aw()J

    move-result-wide v6

    move-object v1, p2

    invoke-interface/range {v1 .. v7}, Lcom/ss/android/socialbase/appdownloader/c/d;->a(IILjava/lang/String;IJ)V

    .line 313
    :cond_2d
    if-eqz p3, :cond_d

    .line 314
    const-string v0, ""

    const-string v1, ""

    invoke-interface {p3, v3, p1, v0, v1}, Lcom/ss/android/socialbase/downloader/d/z;->a(ILcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 322
    :pswitch_37
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(I)V

    .line 323
    if-eqz p2, :cond_4f

    .line 324
    const-string v4, ""

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v5

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->aw()J

    move-result-wide v6

    move-object v1, p2

    move v3, v8

    invoke-interface/range {v1 .. v7}, Lcom/ss/android/socialbase/appdownloader/c/d;->a(IILjava/lang/String;IJ)V

    .line 325
    :cond_4f
    if-eqz p3, :cond_d

    .line 326
    const-string v0, ""

    const-string v1, ""

    invoke-interface {p3, v8, p1, v0, v1}, Lcom/ss/android/socialbase/downloader/d/z;->a(ILcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 330
    :pswitch_59
    const/4 v0, 0x1

    invoke-static {p0, v2, v0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;IZ)I

    .line 331
    invoke-direct {p0, p2, p1}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a(Lcom/ss/android/socialbase/appdownloader/c/d;Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_d

    .line 304
    nop

    :pswitch_data_62
    .packed-switch -0x4
        :pswitch_e
        :pswitch_59
        :pswitch_16
        :pswitch_e
        :pswitch_d
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
    .end packed-switch
.end method

.method private a(Landroid/content/Intent;)Z
    .registers 14

    .prologue
    const/4 v11, 0x6

    const/4 v3, 0x5

    const/4 v10, -0x3

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 59
    if-nez p1, :cond_8

    .line 160
    :cond_7
    :goto_7
    return v0

    .line 61
    :cond_8
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 62
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 66
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/d;->b()Lcom/ss/android/socialbase/appdownloader/c/d;

    move-result-object v1

    .line 68
    const-string v2, "extra_click_download_ids"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 69
    const-string v6, "extra_click_download_type"

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 71
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->i(I)Lcom/ss/android/socialbase/downloader/d/z;

    move-result-object v8

    .line 73
    const-string v7, "android.ss.intent.action.DOWNLOAD_OPEN"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_46

    const-string v7, "android.ss.intent.action.DOWNLOAD_DELETE"

    .line 74
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_46

    const-string v7, "android.ss.intent.action.DOWNLOAD_HIDE"

    .line 75
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_79

    .line 76
    :cond_46
    invoke-direct {p0, p0, p1}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 77
    const-string v3, "android.ss.intent.action.DOWNLOAD_DELETE"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 78
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v9

    .line 79
    if-eqz v9, :cond_7

    .line 80
    invoke-virtual {v9}, Lcom/ss/android/socialbase/downloader/g/c;->P()V

    .line 82
    if-eqz v1, :cond_6e

    .line 83
    const/4 v3, 0x7

    const-string v4, ""

    invoke-virtual {v9}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v5

    invoke-virtual {v9}, Lcom/ss/android/socialbase/downloader/g/c;->aw()J

    move-result-wide v6

    invoke-interface/range {v1 .. v7}, Lcom/ss/android/socialbase/appdownloader/c/d;->a(IILjava/lang/String;IJ)V

    .line 86
    :cond_6e
    if-eqz v8, :cond_7

    .line 87
    const/4 v1, 0x7

    const-string v2, ""

    const-string v3, ""

    invoke-interface {v8, v1, v9, v2, v3}, Lcom/ss/android/socialbase/downloader/d/z;->a(ILcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 92
    :cond_79
    const-string v7, "android.ss.intent.action.DOWNLOAD_CLICK"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_125

    .line 94
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v9

    .line 95
    if-eqz v9, :cond_7

    .line 99
    invoke-virtual {v9}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v5

    .line 100
    if-eqz v5, :cond_7

    .line 104
    if-eq v6, v4, :cond_96

    const/4 v7, 0x4

    if-ne v6, v7, :cond_da

    .line 105
    :cond_96
    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/b/f;->b(I)Z

    move-result v6

    if-eqz v6, :cond_d1

    .line 106
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(I)V

    .line 107
    if-eqz v1, :cond_b2

    .line 108
    const-string v4, ""

    invoke-virtual {v9}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v5

    invoke-virtual {v9}, Lcom/ss/android/socialbase/downloader/g/c;->aw()J

    move-result-wide v6

    invoke-interface/range {v1 .. v7}, Lcom/ss/android/socialbase/appdownloader/c/d;->a(IILjava/lang/String;IJ)V

    .line 109
    :cond_b2
    if-eqz v8, :cond_bb

    .line 110
    const-string v1, ""

    const-string v4, ""

    invoke-interface {v8, v3, v9, v1, v4}, Lcom/ss/android/socialbase/downloader/d/z;->a(ILcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_bb
    :goto_bb
    invoke-virtual {v9}, Lcom/ss/android/socialbase/downloader/g/c;->aB()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 139
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/notification/b;->a(I)V

    .line 140
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/notification/b;->f(I)V

    goto/16 :goto_7

    .line 112
    :cond_d1
    if-ne v5, v10, :cond_bb

    .line 113
    invoke-static {p0, v2, v4}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;IZ)I

    .line 114
    invoke-direct {p0, v1, v9}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a(Lcom/ss/android/socialbase/appdownloader/c/d;Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_bb

    .line 116
    :cond_da
    const/4 v3, 0x2

    if-ne v6, v3, :cond_107

    .line 117
    if-ne v5, v10, :cond_e6

    .line 118
    invoke-static {p0, v2, v4}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;IZ)I

    .line 119
    invoke-direct {p0, v1, v9}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a(Lcom/ss/android/socialbase/appdownloader/c/d;Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_bb

    .line 121
    :cond_e6
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->c(I)V

    .line 122
    if-eqz v1, :cond_fd

    .line 123
    const-string v4, ""

    invoke-virtual {v9}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v5

    invoke-virtual {v9}, Lcom/ss/android/socialbase/downloader/g/c;->aw()J

    move-result-wide v6

    move v3, v11

    invoke-interface/range {v1 .. v7}, Lcom/ss/android/socialbase/appdownloader/c/d;->a(IILjava/lang/String;IJ)V

    .line 124
    :cond_fd
    if-eqz v8, :cond_bb

    .line 125
    const-string v1, ""

    const-string v3, ""

    invoke-interface {v8, v11, v9, v1, v3}, Lcom/ss/android/socialbase/downloader/d/z;->a(ILcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bb

    .line 128
    :cond_107
    const/4 v3, 0x3

    if-ne v6, v3, :cond_121

    .line 129
    const/4 v3, -0x1

    if-eq v5, v3, :cond_110

    const/4 v3, -0x4

    if-ne v5, v3, :cond_118

    .line 130
    :cond_110
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->e(I)V

    goto :goto_bb

    .line 131
    :cond_118
    if-ne v5, v10, :cond_bb

    .line 132
    invoke-static {p0, v2, v4}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;IZ)I

    .line 133
    invoke-direct {p0, v1, v9}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a(Lcom/ss/android/socialbase/appdownloader/c/d;Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_bb

    .line 136
    :cond_121
    invoke-direct {p0, v9, v1, v8}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/appdownloader/c/d;Lcom/ss/android/socialbase/downloader/d/z;)V

    goto :goto_bb

    .line 142
    :cond_125
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_135

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    .line 143
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 144
    :cond_135
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 145
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$1;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$1;-><init>(Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    move v0, v4

    .line 158
    goto/16 :goto_7
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .prologue
    .line 299
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 44
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 50
    invoke-static {}, Lcom/ss/android/socialbase/downloader/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 51
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a:Ljava/lang/String;

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_10
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a(Landroid/content/Intent;)Z

    .line 54
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->stopSelf()V

    .line 55
    const/4 v0, 0x2

    return v0
.end method
