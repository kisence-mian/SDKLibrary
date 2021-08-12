.class public Lcom/ss/android/downloadlib/activity/TTDelegateActivity;
.super Landroid/app/Activity;
.source "TTDelegateActivity.java"

# interfaces
.implements Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;


# static fields
.field private static d:Lcom/ss/android/downloadlib/guide/install/a;


# instance fields
.field protected a:Landroid/content/Intent;

.field private b:Z

.field private c:Lcom/ss/android/downloadad/a/b/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    return-void
.end method

.method public static a(J)V
    .registers 5

    .line 162
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 164
    const-string v1, "type"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    const-string v1, "app_info_id"

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 166
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 167
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 169
    :cond_29
    return-void
.end method

.method public static a(Lcom/ss/android/downloadad/a/b/a;)V
    .registers 4

    .line 142
    invoke-static {p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->c(Lcom/ss/android/downloadad/a/b/a;)Landroid/content/Intent;

    move-result-object v0

    .line 143
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 144
    const-string v1, "type"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    invoke-interface {p0}, Lcom/ss/android/downloadad/a/b/a;->b()J

    move-result-wide v1

    const-string p0, "model_id"

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 146
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 147
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 149
    :cond_25
    return-void
.end method

.method private static a(Lcom/ss/android/downloadad/a/b/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 189
    invoke-static {p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->c(Lcom/ss/android/downloadad/a/b/a;)Landroid/content/Intent;

    move-result-object v0

    .line 190
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 191
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_19

    .line 193
    const-string p1, "positive_button_text"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    :cond_19
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 197
    const-string p1, "negative_button_text"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    :cond_24
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2f

    .line 201
    const-string p1, "message_text"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    :cond_2f
    invoke-interface {p0}, Lcom/ss/android/downloadad/a/b/a;->b()J

    move-result-wide p0

    const-string p2, "model_id"

    invoke-virtual {v0, p2, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 205
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_45

    .line 206
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 208
    :cond_45
    return-void
.end method

.method public static a(Lcom/ss/android/downloadad/a/b/a;Lcom/ss/android/downloadlib/guide/install/a;)V
    .registers 4

    .line 152
    invoke-static {p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->c(Lcom/ss/android/downloadad/a/b/a;)Landroid/content/Intent;

    move-result-object p0

    .line 153
    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 154
    const-string v0, "type"

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    sput-object p1, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->d:Lcom/ss/android/downloadlib/guide/install/a;

    .line 156
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 157
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 159
    :cond_1f
    return-void
.end method

.method public static a(Lcom/ss/android/downloadad/a/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 181
    const/16 v0, 0x8

    invoke-static {p0, v0, p1, p2, p3}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a(Lcom/ss/android/downloadad/a/b/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    .line 421
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 422
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    .line 423
    return-void

    .line 426
    :cond_a
    :try_start_a
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 427
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 429
    const-string v0, "open_url"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const/high16 p1, 0x10000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 431
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const-string v0, "fix_app_link_flag"

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 432
    const/high16 p1, 0x4000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 434
    :cond_33
    const-string p1, "start_only_for_android"

    const/4 v0, 0x1

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 435
    invoke-virtual {p0, v1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3c} :catch_3f
    .catchall {:try_start_a .. :try_end_3c} :catchall_3d

    goto :goto_43

    .line 439
    :catchall_3d
    move-exception p1

    goto :goto_48

    .line 436
    :catch_3f
    move-exception p1

    .line 437
    :try_start_40
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_3d

    .line 439
    :goto_43
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    .line 440
    nop

    .line 441
    return-void

    .line 439
    :goto_48
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V
    .registers 4

    .line 115
    invoke-static {p1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->c(Lcom/ss/android/downloadad/a/b/a;)Landroid/content/Intent;

    move-result-object p1

    .line 116
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    const-string v0, "type"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    const-string v0, "open_url"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 120
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 122
    :cond_21
    return-void
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    .line 104
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 106
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    const-string v1, "permission_id_key"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string p0, "permission_content_key"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 110
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 112
    :cond_2d
    return-void
.end method

.method private b()V
    .registers 4

    .line 224
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 226
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 227
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 228
    return-void
.end method

.method private b(J)V
    .registers 9

    .line 357
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/m;->a()Lcom/ss/android/downloadlib/addownload/a/c;

    move-result-object v0

    if-nez v0, :cond_7

    .line 358
    return-void

    .line 360
    :cond_7
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->d(J)Lcom/ss/android/downloadad/a/b/b;

    move-result-object p1

    .line 361
    if-eqz p1, :cond_81

    .line 363
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p2

    .line 364
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 367
    :try_start_26
    const-string v1, "time_after_click"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->S()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    const-string v1, "click_download_size"

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->T()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 369
    if-eqz p2, :cond_73

    .line 370
    const-string v1, "download_length"

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 371
    const-string v1, "download_percent"

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v4

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 372
    const-string v1, "download_apk_size"

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_73} :catch_74

    .line 377
    :cond_73
    goto :goto_78

    .line 375
    :catch_74
    move-exception p2

    .line 376
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 378
    :goto_78
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p2

    const-string v1, "pause_reserve_wifi_dialog_show"

    invoke-virtual {p2, v1, v0, p1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 380
    :cond_81
    new-instance p2, Lcom/ss/android/downloadlib/addownload/a/d$a;

    invoke-direct {p2, p0}, Lcom/ss/android/downloadlib/addownload/a/d$a;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 381
    invoke-virtual {p2, v0}, Lcom/ss/android/downloadlib/addownload/a/d$a;->a(Z)Lcom/ss/android/downloadlib/addownload/a/d$a;

    move-result-object p2

    .line 382
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/m;->a()Lcom/ss/android/downloadlib/addownload/a/c;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ss/android/downloadlib/addownload/a/d$a;->a(Lcom/ss/android/downloadlib/addownload/a/c;)Lcom/ss/android/downloadlib/addownload/a/d$a;

    move-result-object p2

    .line 383
    invoke-virtual {p2}, Lcom/ss/android/downloadlib/addownload/a/d$a;->a()Lcom/ss/android/downloadlib/addownload/a/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ss/android/downloadlib/addownload/a/d;->show()V

    .line 384
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->b:Z

    .line 385
    iput-object p1, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->c:Lcom/ss/android/downloadad/a/b/b;

    .line 386
    return-void
.end method

.method public static b(Lcom/ss/android/downloadad/a/b/a;)V
    .registers 3

    .line 177
    const/4 v0, 0x5

    const-string v1, ""

    invoke-static {p0, v0, v1, v1, v1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a(Lcom/ss/android/downloadad/a/b/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public static b(Lcom/ss/android/downloadad/a/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 185
    const/4 v0, 0x7

    invoke-static {p0, v0, p1, p2, p3}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a(Lcom/ss/android/downloadad/a/b/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    .line 449
    invoke-static {p0, p1}, Lcom/ss/android/downloadlib/h/k;->f(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 450
    if-nez p1, :cond_a

    .line 451
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    .line 452
    return-void

    .line 455
    :cond_a
    const/high16 v0, 0x10000000

    :try_start_c
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 456
    const-string v0, "start_only_for_android"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 457
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_1b
    .catchall {:try_start_c .. :try_end_18} :catchall_19

    goto :goto_1f

    .line 461
    :catchall_19
    move-exception p1

    goto :goto_24

    .line 458
    :catch_1b
    move-exception p1

    .line 459
    :try_start_1c
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_19

    .line 461
    :goto_1f
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    .line 462
    nop

    .line 463
    return-void

    .line 461
    :goto_24
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    throw p1
.end method

.method public static b(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V
    .registers 4

    .line 132
    invoke-static {p1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->c(Lcom/ss/android/downloadad/a/b/a;)Landroid/content/Intent;

    move-result-object p1

    .line 133
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 134
    const-string v0, "type"

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    const-string v0, "package_name"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 137
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 139
    :cond_22
    return-void
.end method

.method private b(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    .line 389
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    if-eqz p2, :cond_28

    array-length v0, p2

    if-gtz v0, :cond_c

    goto :goto_28

    .line 393
    :cond_c
    new-instance v0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$1;-><init>(Lcom/ss/android/downloadlib/activity/TTDelegateActivity;Ljava/lang/String;)V

    .line 409
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_24

    .line 411
    :try_start_17
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->f()Lcom/ss/android/a/a/a/h;

    move-result-object p1

    invoke-interface {p1, p0, p2, v0}, Lcom/ss/android/a/a/a/h;->a(Landroid/app/Activity;[Ljava/lang/String;Lcom/ss/android/a/a/a/q;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_23

    .line 412
    :catch_1f
    move-exception p1

    .line 413
    invoke-interface {v0}, Lcom/ss/android/a/a/a/q;->a()V

    .line 414
    :goto_23
    goto :goto_27

    .line 416
    :cond_24
    invoke-interface {v0}, Lcom/ss/android/a/a/a/q;->a()V

    .line 418
    :goto_27
    return-void

    .line 390
    :cond_28
    :goto_28
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    .line 391
    return-void
.end method

.method private static c(Lcom/ss/android/downloadad/a/b/a;)Landroid/content/Intent;
    .registers 3

    .line 172
    new-instance p0, Landroid/content/Intent;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;

    invoke-direct {p0, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object p0
.end method

.method private c()V
    .registers 9

    .line 312
    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v1, "model_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 313
    iget-object v2, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v3, "message_text"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 314
    iget-object v3, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v4, "positive_button_text"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 315
    iget-object v4, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v5, "negative_button_text"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 316
    iget-object v5, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v6, "type"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 318
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Lcom/ss/android/downloadlib/addownload/b/f;->d(J)Lcom/ss/android/downloadad/a/b/b;

    move-result-object v0

    .line 319
    nop

    .line 321
    new-instance v1, Lcom/ss/android/downloadlib/addownload/a/d$a;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/addownload/a/d$a;-><init>(Landroid/app/Activity;)V

    .line 322
    invoke-virtual {v1, v7}, Lcom/ss/android/downloadlib/addownload/a/d$a;->a(Z)Lcom/ss/android/downloadlib/addownload/a/d$a;

    move-result-object v1

    .line 323
    invoke-virtual {v1, v2}, Lcom/ss/android/downloadlib/addownload/a/d$a;->a(Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/a/d$a;

    move-result-object v1

    .line 324
    invoke-virtual {v1, v3}, Lcom/ss/android/downloadlib/addownload/a/d$a;->b(Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/a/d$a;

    move-result-object v1

    .line 325
    invoke-virtual {v1, v4}, Lcom/ss/android/downloadlib/addownload/a/d$a;->c(Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/a/d$a;

    move-result-object v1

    .line 326
    const/4 v2, 0x7

    if-ne v5, v2, :cond_64

    .line 327
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/b;->a()Lcom/ss/android/downloadlib/addownload/a/c;

    move-result-object v2

    if-nez v2, :cond_53

    .line 328
    return-void

    .line 330
    :cond_53
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/b;->a()Lcom/ss/android/downloadlib/addownload/a/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadlib/addownload/a/d$a;->a(Lcom/ss/android/downloadlib/addownload/a/c;)Lcom/ss/android/downloadlib/addownload/a/d$a;

    .line 331
    invoke-virtual {v1}, Lcom/ss/android/downloadlib/addownload/a/d$a;->a()Lcom/ss/android/downloadlib/addownload/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/downloadlib/addownload/a/d;->show()V

    .line 332
    const-string v1, "download_percent"

    goto :goto_82

    .line 333
    :cond_64
    const/16 v2, 0x8

    if-ne v5, v2, :cond_80

    .line 334
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/a;->a()Lcom/ss/android/downloadlib/addownload/a/c;

    move-result-object v2

    if-nez v2, :cond_6f

    .line 335
    return-void

    .line 337
    :cond_6f
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/a;->a()Lcom/ss/android/downloadlib/addownload/a/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadlib/addownload/a/d$a;->a(Lcom/ss/android/downloadlib/addownload/a/c;)Lcom/ss/android/downloadlib/addownload/a/d$a;

    .line 338
    invoke-virtual {v1}, Lcom/ss/android/downloadlib/addownload/a/d$a;->a()Lcom/ss/android/downloadlib/addownload/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/downloadlib/addownload/a/d;->show()V

    .line 339
    const-string v1, "apk_size"

    goto :goto_82

    .line 333
    :cond_80
    const-string v1, ""

    .line 341
    :goto_82
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ac

    .line 342
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->b:Z

    .line 343
    iput-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->c:Lcom/ss/android/downloadad/a/b/b;

    .line 344
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 346
    :try_start_92
    const-string v3, "pause_optimise_type"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 347
    const-string v1, "pause_optimise_action"

    const-string v3, "show_dialog"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9e
    .catch Lorg/json/JSONException; {:try_start_92 .. :try_end_9e} :catch_9f

    .line 350
    goto :goto_a3

    .line 348
    :catch_9f
    move-exception v1

    .line 349
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 351
    :goto_a3
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v1

    const-string v3, "pause_optimise"

    invoke-virtual {v1, v3, v2, v0}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 353
    :cond_ac
    return-void
.end method

.method private c(J)V
    .registers 7

    .line 466
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->d(J)Lcom/ss/android/downloadad/a/b/b;

    move-result-object p1

    .line 467
    if-nez p1, :cond_11

    .line 468
    invoke-static {}, Lcom/ss/android/downloadlib/h/k;->b()V

    .line 469
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    .line 470
    return-void

    .line 472
    :cond_11
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->d()Lcom/ss/android/a/a/a/k;

    move-result-object p2

    new-instance v0, Lcom/ss/android/a/a/c/c$a;

    invoke-direct {v0, p0}, Lcom/ss/android/a/a/c/c$a;-><init>(Landroid/content/Context;)V

    .line 473
    const-string v1, "\u5df2\u5b89\u88c5\u5b8c\u6210"

    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/c/c$a;->a(Ljava/lang/String;)Lcom/ss/android/a/a/c/c$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 475
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->M()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_30

    const-string v2, "\u521a\u521a\u4e0b\u8f7d\u7684\u5e94\u7528"

    goto :goto_34

    :cond_30
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->M()Ljava/lang/String;

    move-result-object v2

    :goto_34
    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 474
    const-string v2, "%1$s\u5df2\u5b89\u88c5\u5b8c\u6210\uff0c\u662f\u5426\u7acb\u5373\u6253\u5f00\uff1f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/c/c$a;->b(Ljava/lang/String;)Lcom/ss/android/a/a/c/c$a;

    move-result-object v0

    .line 476
    const-string v1, "\u6253\u5f00"

    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/c/c$a;->c(Ljava/lang/String;)Lcom/ss/android/a/a/c/c$a;

    move-result-object v0

    .line 477
    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/c/c$a;->d(Ljava/lang/String;)Lcom/ss/android/a/a/c/c$a;

    move-result-object v0

    .line 478
    invoke-virtual {v0, v3}, Lcom/ss/android/a/a/c/c$a;->a(Z)Lcom/ss/android/a/a/c/c$a;

    move-result-object v0

    .line 479
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ss/android/downloadlib/h/k;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/c/c$a;->a(Landroid/graphics/drawable/Drawable;)Lcom/ss/android/a/a/c/c$a;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;-><init>(Lcom/ss/android/downloadlib/activity/TTDelegateActivity;Lcom/ss/android/downloadad/a/b/b;)V

    .line 480
    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/c/c$a;->a(Lcom/ss/android/a/a/c/c$b;)Lcom/ss/android/a/a/c/c$a;

    move-result-object v0

    const/4 v1, 0x2

    .line 500
    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/c/c$a;->a(I)Lcom/ss/android/a/a/c/c$a;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Lcom/ss/android/a/a/c/c$a;->a()Lcom/ss/android/a/a/c/c;

    move-result-object v0

    .line 472
    invoke-interface {p2, v0}, Lcom/ss/android/a/a/a/k;->b(Lcom/ss/android/a/a/c/c;)Landroid/app/Dialog;

    .line 502
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p2

    const-string v0, "market_openapp_window_show"

    invoke-virtual {p2, v0, p1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    .line 503
    return-void
.end method

.method private d(J)V
    .registers 4

    .line 506
    new-instance v0, Lcom/ss/android/downloadlib/addownload/compliance/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/ss/android/downloadlib/addownload/compliance/a;-><init>(Landroid/app/Activity;J)V

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/compliance/a;->show()V

    .line 507
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 5

    .line 260
    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    if-nez v0, :cond_6

    goto/16 :goto_76

    .line 263
    :cond_6
    const/4 v1, 0x0

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 264
    const-string v1, "model_id"

    const-wide/16 v2, 0x0

    packed-switch v0, :pswitch_data_78

    .line 303
    :pswitch_14
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    goto :goto_73

    .line 299
    :pswitch_18
    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v1, "package_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-direct {p0, v0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->b(Ljava/lang/String;)V

    .line 301
    goto :goto_73

    .line 295
    :pswitch_24
    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v1, "app_info_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 296
    invoke-direct {p0, v0, v1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->d(J)V

    .line 297
    goto :goto_73

    .line 289
    :pswitch_30
    sget-object v0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->d:Lcom/ss/android/downloadlib/guide/install/a;

    if-eqz v0, :cond_37

    .line 290
    invoke-interface {v0}, Lcom/ss/android/downloadlib/guide/install/a;->a()V

    .line 292
    :cond_37
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    .line 293
    goto :goto_73

    .line 285
    :pswitch_3b
    invoke-direct {p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->c()V

    .line 286
    goto :goto_73

    .line 279
    :pswitch_3f
    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 280
    invoke-direct {p0, v0, v1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->b(J)V

    .line 281
    goto :goto_73

    .line 275
    :pswitch_49
    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 276
    invoke-direct {p0, v0, v1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->c(J)V

    .line 277
    goto :goto_73

    .line 271
    :pswitch_53
    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v1, "open_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-direct {p0, v0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a(Ljava/lang/String;)V

    .line 273
    goto :goto_73

    .line 266
    :pswitch_5f
    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v1, "permission_id_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v2, "permission_content_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-direct {p0, v0, v1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 269
    nop

    .line 306
    :goto_73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    .line 309
    :goto_76
    return-void

    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_53
        :pswitch_14
        :pswitch_49
        :pswitch_3f
        :pswitch_14
        :pswitch_3b
        :pswitch_3b
        :pswitch_30
        :pswitch_24
        :pswitch_18
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 212
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 213
    invoke-direct {p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->b()V

    .line 214
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    .line 215
    invoke-static {p0}, Lcom/ss/android/downloadlib/addownload/k;->b(Landroid/content/Context;)V

    .line 216
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a()V

    .line 217
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2

    .line 232
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 233
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->setIntent(Landroid/content/Intent;)V

    .line 234
    iput-object p1, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    .line 235
    invoke-static {p0}, Lcom/ss/android/downloadlib/addownload/k;->b(Landroid/content/Context;)V

    .line 236
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a()V

    .line 237
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .line 241
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 242
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->f()Lcom/ss/android/a/a/a/h;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/ss/android/a/a/a/h;->a(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    .line 243
    return-void
.end method

.method protected onStop()V
    .registers 6

    .line 247
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 249
    iget-boolean v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->b:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->c:Lcom/ss/android/downloadad/a/b/b;

    if-eqz v0, :cond_31

    .line 250
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/downloadlib/g;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/g;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->c:Lcom/ss/android/downloadad/a/b/b;

    invoke-virtual {v1}, Lcom/ss/android/downloadad/a/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/g;->a(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-ltz v0, :cond_31

    .line 252
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_31

    .line 253
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->finish()V

    .line 257
    :cond_31
    return-void
.end method
