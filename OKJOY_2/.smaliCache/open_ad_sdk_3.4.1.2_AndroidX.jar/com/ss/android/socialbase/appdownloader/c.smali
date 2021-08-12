.class public Lcom/ss/android/socialbase/appdownloader/c;
.super Ljava/lang/Object;
.source "AppDownloadUtils.java"


# static fields
.field private static a:I

.field private static b:Landroid/app/NotificationChannel;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 843
    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/c;->b:Landroid/app/NotificationChannel;

    return-void
.end method

.method public static a()I
    .registers 1

    .line 374
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/d;->f()Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x4000

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public static a(I)I
    .registers 4

    .line 786
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 787
    return v0

    .line 788
    :cond_4
    const/4 v1, -0x2

    if-ne p0, v1, :cond_9

    .line 789
    const/4 p0, 0x2

    return p0

    .line 790
    :cond_9
    const/4 v1, 0x1

    if-ne p0, v1, :cond_e

    .line 791
    const/4 p0, 0x4

    return p0

    .line 792
    :cond_e
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/constants/DownloadStatus;->isDownloading(I)Z

    move-result v2

    if-nez v2, :cond_22

    const/16 v2, 0xb

    if-ne p0, v2, :cond_19

    goto :goto_22

    .line 794
    :cond_19
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/constants/DownloadStatus;->isDownloadOver(I)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 795
    const/4 p0, 0x3

    return p0

    .line 797
    :cond_21
    return v0

    .line 793
    :cond_22
    :goto_22
    return v1
.end method

.method public static a(Landroid/content/Context;F)I
    .registers 2

    .line 941
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 942
    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static a(Landroid/content/Context;IZ)I
    .registers 6

    .line 159
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/d;->g()Lcom/ss/android/socialbase/appdownloader/c/j;

    move-result-object v0

    .line 160
    if-nez v0, :cond_f

    .line 161
    invoke-static {p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/c;->d(Landroid/content/Context;IZ)I

    move-result p0

    return p0

    .line 163
    :cond_f
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    .line 164
    const/4 v2, 0x1

    sput v2, Lcom/ss/android/socialbase/appdownloader/c;->a:I

    .line 165
    new-instance v2, Lcom/ss/android/socialbase/appdownloader/c$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/c$1;-><init>(Landroid/content/Context;IZ)V

    invoke-interface {v0, v1, v2}, Lcom/ss/android/socialbase/appdownloader/c/j;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/appdownloader/c/i;)V

    .line 172
    sget p0, Lcom/ss/android/socialbase/appdownloader/c;->a:I

    return p0
.end method

.method public static a(Landroid/content/Context;IZLcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/io/File;)I
    .registers 10

    .line 230
    invoke-virtual {p4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    .line 231
    nop

    .line 233
    :try_start_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod 555 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 235
    invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_14 .. :try_end_33} :catchall_3b

    .line 236
    :try_start_33
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_39

    .line 240
    if-eqz v0, :cond_4d

    .line 241
    goto :goto_42

    .line 237
    :catchall_39
    move-exception v2

    goto :goto_3d

    :catchall_3b
    move-exception v2

    move-object v0, v1

    .line 238
    :goto_3d
    :try_start_3d
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_46

    .line 240
    if-eqz v0, :cond_4d

    .line 241
    :goto_42
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    goto :goto_4d

    .line 240
    :catchall_46
    move-exception p0

    if-eqz v0, :cond_4c

    .line 241
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_4c
    throw p0

    .line 245
    :cond_4d
    :goto_4d
    nop

    .line 246
    nop

    .line 248
    :try_start_4f
    invoke-static {p3, p4}, Lcom/ss/android/socialbase/appdownloader/c;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/io/File;)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_5f

    .line 249
    if-eqz v0, :cond_5d

    .line 250
    :try_start_55
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFilePackageName(Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_55 .. :try_end_5a} :catchall_5b

    goto :goto_5d

    .line 252
    :catchall_5b
    move-exception v2

    goto :goto_61

    .line 254
    :cond_5d
    :goto_5d
    move-object v2, v1

    goto :goto_62

    .line 252
    :catchall_5f
    move-exception v2

    move-object v0, v1

    .line 253
    :goto_61
    nop

    .line 255
    :goto_62
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/socialbase/appdownloader/d;->c()Lcom/ss/android/socialbase/appdownloader/c/h;

    move-result-object v3

    if-eqz v3, :cond_92

    .line 256
    if-nez v0, :cond_85

    .line 257
    new-instance v1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v3, 0x7d1

    invoke-direct {v1, v3, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    .line 258
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/d;->c()Lcom/ss/android/socialbase/appdownloader/c/h;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v3

    invoke-interface {v2, p3, v1, v3}, Lcom/ss/android/socialbase/appdownloader/c/h;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    .line 259
    goto :goto_92

    .line 260
    :cond_85
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/d;->c()Lcom/ss/android/socialbase/appdownloader/c/h;

    move-result-object v2

    const/16 v3, 0xb

    invoke-interface {v2, p3, v1, v3}, Lcom/ss/android/socialbase/appdownloader/c/h;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    .line 264
    :cond_92
    :goto_92
    invoke-static {p0, p3, v0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Landroid/content/pm/PackageInfo;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_9a

    .line 265
    return v2

    .line 267
    :cond_9a
    if-eqz v0, :cond_c6

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v1

    const-string v3, "install_callback_error"

    invoke-virtual {v1, v3}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 268
    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempCacheData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "extra_apk_package_name"

    invoke-virtual {v1, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempCacheData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "extra_apk_version_code"

    invoke-virtual {v1, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_c6
    nop

    .line 272
    const/4 v1, 0x1

    new-array v3, v1, [I

    .line 273
    invoke-static {p0, p3, v0}, Lcom/ss/android/socialbase/appdownloader/c;->b(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_db

    .line 275
    iget-object p1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 276
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 277
    goto :goto_f5

    .line 279
    :cond_db
    if-nez p2, :cond_f1

    invoke-static {p0, p1, p4}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;ILjava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_f1

    .line 281
    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempCacheData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "extra_silent_install_succeed"

    invoke-virtual {p0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    return v1

    .line 284
    :cond_f1
    invoke-static {p0, p3, p4, p2, v3}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/io/File;Z[I)Landroid/content/Intent;

    move-result-object p1

    .line 286
    :goto_f5
    const/4 p4, 0x0

    if-nez p1, :cond_ff

    .line 287
    aget p0, v3, p4

    if-ne p0, v1, :cond_fd

    goto :goto_fe

    :cond_fd
    move v2, p4

    :goto_fe
    return v2

    .line 289
    :cond_ff
    const/high16 v0, 0x10000000

    .line 290
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 292
    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getLinkMode()I

    move-result v0

    if-lez v0, :cond_11f

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v2, "app_install_return_result"

    invoke-virtual {v0, v2, p4}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_11f

    .line 293
    const-string v0, "android.intent.extra.RETURN_RESULT"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 295
    :cond_11f
    aget p4, v3, p4

    if-nez p4, :cond_12a

    .line 296
    invoke-static {p0, p3, p1, p2}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Landroid/content/Intent;Z)Z

    move-result p2

    .line 297
    if-eqz p2, :cond_12a

    .line 298
    return v1

    .line 301
    :cond_12a
    invoke-static {p0, p1}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)I
    .registers 4

    .line 306
    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/d;->n()Lcom/ss/android/socialbase/downloader/depend/af;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 307
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/d;->n()Lcom/ss/android/socialbase/downloader/depend/af;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/ss/android/socialbase/downloader/depend/af;->a(Landroid/content/Intent;)Z

    move-result v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1b

    if-eqz v1, :cond_1a

    .line 308
    return v0

    .line 311
    :cond_1a
    goto :goto_1c

    .line 310
    :catchall_1b
    move-exception v1

    .line 313
    :goto_1c
    :try_start_1c
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    .line 314
    return v0

    .line 315
    :catchall_20
    move-exception p0

    .line 316
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/io/File;Z[I)Landroid/content/Intent;
    .registers 9

    .line 414
    nop

    .line 415
    nop

    .line 416
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadFileUriProvider(I)Lcom/ss/android/socialbase/downloader/depend/t;

    move-result-object v0

    .line 417
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/d;->d()Ljava/lang/String;

    move-result-object v1

    .line 418
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-static {v2, v0, p0, v1, p2}, Lcom/ss/android/socialbase/appdownloader/c;->a(ILcom/ss/android/socialbase/downloader/depend/t;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 419
    const/4 v0, 0x0

    if-nez p2, :cond_22

    .line 420
    return-object v0

    .line 423
    :cond_22
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 424
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_33

    .line 425
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 427
    :cond_33
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ss/android/socialbase/appdownloader/d;->b()Lcom/ss/android/socialbase/appdownloader/c/d;

    move-result-object p2

    .line 429
    const/4 v2, 0x0

    if-eqz p2, :cond_4c

    .line 430
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    invoke-interface {p2, v3, p3}, Lcom/ss/android/socialbase/appdownloader/c/d;->a(IZ)Z

    move-result p2

    goto :goto_4d

    .line 429
    :cond_4c
    move p2, v2

    .line 433
    :goto_4d
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadNotificationEventListener(I)Lcom/ss/android/socialbase/downloader/depend/ab;

    move-result-object p0

    .line 434
    if-eqz p0, :cond_5f

    .line 435
    invoke-interface {p0, p3}, Lcom/ss/android/socialbase/downloader/depend/ab;->a(Z)Z

    move-result p2

    .line 438
    :cond_5f
    aput p2, p4, v2

    .line 439
    if-eqz p2, :cond_64

    .line 440
    return-object v0

    .line 442
    :cond_64
    return-object v1
.end method

.method public static a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 6

    .line 659
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_49

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_49

    .line 662
    :cond_e
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1a

    .line 664
    return-object v0

    .line 666
    :cond_1a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isApkInstalled apkFileSize\uff1afileName:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " apkFileSize"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AppDownloadUtils"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-static {p1, p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/io/File;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0

    .line 660
    :cond_49
    :goto_49
    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/io/File;)Landroid/content/pm/PackageInfo;
    .registers 4

    .line 927
    if-nez p0, :cond_f

    .line 928
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object p0

    .line 929
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->a()I

    move-result v0

    .line 928
    invoke-static {p0, p1, v0}, Lcom/ss/android/socialbase/appdownloader/f/a/e;->a(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0

    .line 931
    :cond_f
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 932
    if-nez v0, :cond_24

    .line 933
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    .line 934
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->a()I

    move-result v1

    .line 933
    invoke-static {v0, p1, v1}, Lcom/ss/android/socialbase/appdownloader/f/a/e;->a(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 935
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setPackageInfo(Landroid/content/pm/PackageInfo;)V

    .line 937
    :cond_24
    return-object v0
.end method

.method public static a(ILcom/ss/android/socialbase/downloader/depend/t;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    .registers 6

    .line 378
    nop

    .line 379
    if-eqz p1, :cond_e

    .line 381
    :try_start_3
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p3, p0}, Lcom/ss/android/socialbase/downloader/depend/t;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_c

    .line 383
    goto :goto_23

    .line 382
    :catchall_c
    move-exception p0

    .line 383
    goto :goto_22

    .line 385
    :cond_e
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/appdownloader/d;->e()Lcom/ss/android/socialbase/appdownloader/c/f;

    move-result-object p1

    .line 386
    if-eqz p1, :cond_22

    .line 388
    :try_start_18
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, p3, v0}, Lcom/ss/android/socialbase/appdownloader/c/f;->a(ILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_21

    .line 390
    goto :goto_23

    .line 389
    :catchall_21
    move-exception p0

    .line 394
    :cond_22
    :goto_22
    const/4 p0, 0x0

    :goto_23
    if-nez p0, :cond_3f

    .line 396
    :try_start_25
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_36

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_36

    .line 397
    invoke-static {p2, p3, p4}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_3a

    .line 399
    :cond_36
    invoke-static {p4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0
    :try_end_3a
    .catchall {:try_start_25 .. :try_end_3a} :catchall_3b

    .line 403
    :goto_3a
    goto :goto_3f

    .line 401
    :catchall_3b
    move-exception p1

    .line 402
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 405
    :cond_3f
    :goto_3f
    return-object p0
.end method

.method public static a(J)Ljava/lang/String;
    .registers 3

    .line 102
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/ss/android/socialbase/appdownloader/c;->a(JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(JJLjava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 124
    const-wide/16 v0, 0x1

    cmp-long v0, p2, v0

    long-to-double p0, p0

    if-lez v0, :cond_9

    long-to-double p2, p2

    div-double/2addr p0, p2

    .line 126
    :cond_9
    const-string p2, "MB"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 127
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p3, Ljava/text/DecimalFormat;

    const-string v0, "#"

    invoke-direct {p3, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 129
    :cond_2e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p3, Ljava/text/DecimalFormat;

    const-string v0, "#.##"

    invoke-direct {p3, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(JJLjava/lang/String;Z)Ljava/lang/String;
    .registers 8

    .line 91
    const-wide/16 v0, 0x1

    cmp-long v0, p2, v0

    long-to-double p0, p0

    if-lez v0, :cond_9

    long-to-double p2, p2

    div-double/2addr p0, p2

    .line 94
    :cond_9
    const-string p2, " "

    if-nez p5, :cond_3f

    const-string p3, "GB"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3f

    const-string p3, "TB"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1e

    goto :goto_3f

    .line 97
    :cond_1e
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p5, Ljava/text/DecimalFormat;

    const-string v0, "#"

    invoke-direct {p5, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 95
    :cond_3f
    :goto_3f
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p5, Ljava/text/DecimalFormat;

    const-string v0, "#.##"

    invoke-direct {p5, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(JZ)Ljava/lang/String;
    .registers 14

    .line 106
    const/4 v0, 0x5

    new-array v1, v0, [J

    fill-array-data v1, :array_48

    .line 107
    const-string v2, "TB"

    const-string v3, "GB"

    const-string v4, "MB"

    const-string v5, "KB"

    const-string v6, "B"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    .line 108
    const-wide/16 v3, 0x1

    cmp-long v3, p0, v3

    if-gez v3, :cond_31

    .line 109
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "0 "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 p1, 0x4

    aget-object p1, v2, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 110
    :cond_31
    const/4 v3, 0x0

    .line 111
    const/4 v4, 0x0

    :goto_33
    if-ge v4, v0, :cond_47

    .line 112
    aget-wide v7, v1, v4

    .line 113
    cmp-long v5, p0, v7

    if-ltz v5, :cond_44

    .line 114
    aget-object v9, v2, v4

    move-wide v5, p0

    move v10, p2

    invoke-static/range {v5 .. v10}, Lcom/ss/android/socialbase/appdownloader/c;->a(JJLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 115
    goto :goto_47

    .line 111
    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 118
    :cond_47
    :goto_47
    return-object v3

    :array_48
    .array-data 8
        0x10000000000L
        0x40000000
        0x100000
        0x400
        0x1
    .end array-data
.end method

.method public static a(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/g/a;)Ljava/lang/String;
    .registers 4

    .line 722
    nop

    .line 724
    if-eqz p1, :cond_63

    .line 725
    const-string v0, "download_dir"

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 726
    if-eqz p1, :cond_63

    .line 727
    const-string v0, "dir_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 728
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_24

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 730
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 732
    :cond_24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 733
    const-string v0, "%s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object p1, p0

    goto :goto_51

    .line 737
    :cond_45
    :try_start_45
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_50

    .line 739
    move-object p1, p0

    goto :goto_51

    .line 738
    :catchall_50
    move-exception p0

    .line 742
    :goto_51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0xff

    if-le p0, v0, :cond_65

    .line 743
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_65

    .line 748
    :cond_63
    const-string p1, ""

    :cond_65
    :goto_65
    return-object p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    .line 676
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 677
    const-string p0, ""

    return-object p0

    .line 679
    :cond_9
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 681
    const-string v0, "default.apk"

    if-eqz p3, :cond_29

    .line 682
    nop

    .line 683
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3d

    .line 684
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_27

    .line 685
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    goto :goto_3d

    .line 687
    :cond_27
    move-object p1, v0

    goto :goto_3d

    .line 691
    :cond_29
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    .line 692
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3c

    .line 693
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3a

    .line 694
    goto :goto_3d

    .line 696
    :cond_3a
    move-object p1, v0

    goto :goto_3d

    .line 692
    :cond_3c
    move-object p1, p0

    .line 701
    :cond_3d
    :goto_3d
    invoke-static {p2}, Lcom/ss/android/socialbase/appdownloader/c;->c(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5c

    const-string p0, ".apk"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5c

    .line 702
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 703
    :cond_5c
    return-object p1
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 2

    .line 918
    if-eqz p0, :cond_11

    :try_start_2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_11

    .line 919
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_11

    .line 921
    :catch_c
    move-exception p0

    .line 922
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12

    .line 923
    :cond_11
    :goto_11
    nop

    .line 924
    :goto_12
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZI)V
    .registers 3

    .line 66
    invoke-static {p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/c;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZI)V

    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZZ)V
    .registers 6

    .line 870
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/f;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/appdownloader/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 871
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/f;->a(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object v0

    .line 872
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/f;->b(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object v0

    .line 873
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/f;->c(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object v0

    .line 874
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isShowNotification()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/f;->a(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object v0

    .line 875
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isAutoInstallWithoutNotification()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/f;->b(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object v0

    .line 876
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isOnlyWifi()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_41

    if-eqz p2, :cond_3f

    goto :goto_41

    :cond_3f
    const/4 p2, 0x0

    goto :goto_42

    :cond_41
    :goto_41
    move p2, v2

    :goto_42
    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/appdownloader/f;->c(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p2

    .line 877
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ss/android/socialbase/appdownloader/f;->d(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p2

    .line 878
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ss/android/socialbase/appdownloader/f;->e(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p2

    .line 879
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExtraHeaders()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ss/android/socialbase/appdownloader/f;->a(Ljava/util/List;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p2

    .line 880
    invoke-virtual {p2, v2}, Lcom/ss/android/socialbase/appdownloader/f;->e(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p2

    .line 881
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRetryCount()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ss/android/socialbase/appdownloader/f;->b(I)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p2

    .line 882
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getBackUpUrlRetryCount()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ss/android/socialbase/appdownloader/f;->c(I)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p2

    .line 883
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getBackUpUrls()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ss/android/socialbase/appdownloader/f;->b(Ljava/util/List;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p2

    .line 884
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMinProgressTimeMsInterval()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ss/android/socialbase/appdownloader/f;->d(I)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p2

    .line 885
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMaxProgressCount()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ss/android/socialbase/appdownloader/f;->e(I)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p2

    .line 886
    invoke-virtual {p2, p1}, Lcom/ss/android/socialbase/appdownloader/f;->f(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 887
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedHttpsToHttpRetry()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->d(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 888
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->f(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 889
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMd5()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->g(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 890
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExpectFileLength()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/socialbase/appdownloader/f;->a(J)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 891
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedDefaultHttpServiceBackUp()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->i(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 892
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedReuseFirstConnection()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->j(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 893
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedIndependentProcess()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->l(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 894
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getEnqueueType()Lcom/ss/android/socialbase/downloader/constants/f;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->a(Lcom/ss/android/socialbase/downloader/constants/f;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 895
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isForce()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->n(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 896
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isHeadConnectionAvailable()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->m(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 897
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedRetryDelay()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->g(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 898
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRetryDelayTimeArray()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->h(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 899
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getDownloadSettingString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ss/android/socialbase/appdownloader/c;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 900
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getIconUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->j(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 901
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExecutorGroup()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/ss/android/socialbase/appdownloader/f;->f(I)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p0

    .line 902
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/appdownloader/f;)I

    .line 903
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 7

    .line 811
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-le v0, v2, :cond_51

    if-nez p0, :cond_a

    goto :goto_51

    .line 815
    :cond_a
    const/4 v0, 0x0

    .line 817
    :try_start_b
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->b()I

    move-result v2

    .line 818
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 819
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->c()I

    move-result v3

    .line 820
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->d()I

    move-result v4

    .line 822
    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v3, v5, v1

    const/4 v3, 0x1

    aput v4, v5, v3

    .line 823
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->e()I

    move-result v4

    .line 824
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 825
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0
    :try_end_33
    .catchall {:try_start_b .. :try_end_33} :catchall_46

    .line 826
    if-ne v2, p0, :cond_40

    .line 827
    nop

    .line 833
    if-eqz v0, :cond_3e

    .line 834
    :try_start_38
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_3e

    .line 836
    :catchall_3c
    move-exception p0

    goto :goto_3f

    .line 838
    :cond_3e
    :goto_3e
    nop

    .line 827
    :goto_3f
    return v3

    .line 833
    :cond_40
    if-eqz v0, :cond_4f

    .line 834
    :try_start_42
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_4f

    .line 829
    :catchall_46
    move-exception p0

    .line 833
    if-eqz v0, :cond_4f

    .line 834
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_4d

    goto :goto_4f

    .line 836
    :catchall_4d
    move-exception p0

    .line 839
    goto :goto_50

    .line 838
    :cond_4f
    :goto_4f
    nop

    .line 840
    :goto_50
    return v1

    .line 813
    :cond_51
    :goto_51
    return v1
.end method

.method public static a(Landroid/content/Context;ILjava/io/File;)Z
    .registers 9

    .line 346
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    .line 347
    const-string v0, "back_miui_silent_install"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x0

    if-ne p1, v1, :cond_f

    .line 348
    return v0

    .line 350
    :cond_f
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/c;->k()Z

    move-result p1

    if-nez p1, :cond_1c

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/c;->l()Z

    move-result p1

    if-nez p1, :cond_1c

    .line 351
    return v0

    .line 353
    :cond_1c
    const-string p1, "com.miui.securitycore"

    const-string v2, "com.miui.enterprise.service.EntInstallService"

    invoke-static {p0, p1, v2}, Lcom/ss/android/socialbase/downloader/i/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 354
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 355
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 356
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 357
    const-string v4, "userId"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 358
    const/16 v4, 0x100

    const-string v5, "flag"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 359
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    const-string v4, "apkPath"

    invoke-virtual {v2, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string p2, "installerPkg"

    invoke-virtual {v2, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 363
    :try_start_55
    invoke-virtual {p0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_59

    .line 364
    return v1

    .line 365
    :catch_59
    move-exception p0

    .line 366
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 367
    return v0

    .line 370
    :cond_5e
    return v0
.end method

.method public static a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 3

    .line 562
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Landroid/content/pm/PackageInfo;)Z
    .registers 11

    .line 321
    if-eqz p2, :cond_5e

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 322
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/d;->b()Lcom/ss/android/socialbase/appdownloader/c/d;

    move-result-object v0

    .line 323
    const/4 v7, 0x1

    if-eqz v0, :cond_32

    .line 324
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    const/16 v3, 0x8

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v6, ""

    move-object v1, v0

    invoke-interface/range {v1 .. v6}, Lcom/ss/android/socialbase/appdownloader/c/d;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-interface {v0}, Lcom/ss/android/socialbase/appdownloader/c/d;->a()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 326
    return v7

    .line 329
    :cond_32
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadNotificationEventListener(I)Lcom/ss/android/socialbase/downloader/depend/ab;

    move-result-object p0

    .line 330
    if-eqz p0, :cond_5e

    .line 331
    const/16 v0, 0x8

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, ""

    invoke-interface {p0, v0, p1, p2, v1}, Lcom/ss/android/socialbase/downloader/depend/ab;->a(ILcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/d;->a()Lcom/ss/android/socialbase/appdownloader/c/c;

    move-result-object p0

    .line 334
    instance-of p1, p0, Lcom/ss/android/socialbase/appdownloader/c/a;

    if-eqz p1, :cond_5e

    check-cast p0, Lcom/ss/android/socialbase/appdownloader/c/a;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/c/a;->c()Z

    move-result p0

    if-eqz p0, :cond_5e

    .line 335
    return v7

    .line 339
    :cond_5e
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Landroid/content/pm/PackageInfo;Z)Z
    .registers 7

    .line 533
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 534
    return v0

    .line 536
    :cond_4
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 537
    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 538
    if-eqz p1, :cond_d

    .line 539
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setAppVersionCode(I)V

    .line 543
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->a()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_19} :catch_1a

    .line 546
    goto :goto_1c

    .line 544
    :catch_1a
    move-exception p0

    .line 545
    const/4 p0, 0x0

    .line 547
    :goto_1c
    if-nez p0, :cond_1f

    .line 548
    return v0

    .line 550
    :cond_1f
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 551
    const/4 v1, 0x1

    if-eqz p3, :cond_28

    .line 552
    if-ge p2, p0, :cond_27

    move v0, v1

    :cond_27
    return v0

    .line 554
    :cond_28
    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const-string p3, "install_with_same_version_code"

    invoke-virtual {p1, p3, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_3e

    .line 555
    if-ge p2, p0, :cond_3d

    move v0, v1

    :cond_3d
    return v0

    .line 557
    :cond_3e
    if-gt p2, p0, :cond_41

    move v0, v1

    :cond_41
    return v0
.end method

.method public static a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)Z
    .registers 11

    .line 461
    nop

    .line 462
    const/4 v0, 0x0

    if-nez p0, :cond_5

    .line 463
    return v0

    .line 466
    :cond_5
    :try_start_5
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_7d

    .line 468
    const-string v2, "AppDownloadUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPackageNameEqualsWithApk fileName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " apkFileSize\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " fileUrl\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-static {p1, v1}, Lcom/ss/android/socialbase/appdownloader/c;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/io/File;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 470
    if-nez p1, :cond_59

    .line 471
    return v0

    .line 473
    :cond_59
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 474
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 475
    return v0

    .line 477
    :cond_62
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_64} :catch_d4

    .line 478
    nop

    .line 480
    :try_start_65
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->a()I

    move-result v1

    invoke-virtual {p0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_71
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_65 .. :try_end_71} :catch_72
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_71} :catch_d4

    .line 483
    goto :goto_74

    .line 481
    :catch_72
    move-exception p0

    .line 482
    nop

    .line 484
    :goto_74
    if-nez v4, :cond_77

    .line 485
    goto :goto_7c

    .line 487
    :cond_77
    :try_start_77
    iget p0, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 488
    if-ne p1, p0, :cond_7c

    .line 489
    move v0, v3

    .line 492
    :cond_7c
    :goto_7c
    goto :goto_d3

    .line 493
    :cond_7d
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v1

    const-string v2, "install_callback_error"

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 494
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempCacheData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    const-string v2, "extra_apk_package_name"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 495
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempCacheData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    const-string v2, "extra_apk_version_code"

    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/Object;I)I

    move-result p1

    .line 496
    if-eqz v1, :cond_d2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b2

    goto :goto_d2

    .line 499
    :cond_b2
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_b6} :catch_d4

    if-nez v1, :cond_b9

    .line 500
    return v0

    .line 502
    :cond_b9
    nop

    .line 504
    :try_start_ba
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->a()I

    move-result v1

    invoke-virtual {p0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_c6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ba .. :try_end_c6} :catch_c7
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_c6} :catch_d4

    .line 507
    goto :goto_c9

    .line 505
    :catch_c7
    move-exception p0

    .line 506
    nop

    .line 508
    :goto_c9
    if-nez v4, :cond_cc

    .line 509
    goto :goto_d3

    .line 511
    :cond_cc
    :try_start_cc
    iget p0, v4, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_ce} :catch_d4

    .line 512
    if-ne p1, p0, :cond_d3

    .line 513
    move v0, v3

    goto :goto_d3

    .line 497
    :cond_d2
    :goto_d2
    return v0

    .line 520
    :cond_d3
    :goto_d3
    goto :goto_d8

    .line 518
    :catch_d4
    move-exception p0

    .line 519
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 521
    :goto_d8
    return v0
.end method

.method public static a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)Z
    .registers 7

    .line 566
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 567
    return v0

    .line 569
    :cond_4
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 570
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getAppVersionCode()I

    move-result v2

    .line 571
    if-gtz v2, :cond_16

    if-nez p2, :cond_11

    goto :goto_16

    .line 587
    :cond_11
    invoke-static {p0, p1}, Lcom/ss/android/socialbase/appdownloader/c;->c(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p0

    return p0

    .line 573
    :cond_16
    :goto_16
    const/4 p2, 0x0

    .line 575
    :try_start_17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->a()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_23} :catch_24

    .line 577
    goto :goto_25

    .line 576
    :catch_24
    move-exception p0

    .line 578
    :goto_25
    if-nez p2, :cond_28

    .line 579
    return v0

    .line 581
    :cond_28
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p0

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    const-string p1, "install_with_same_version_code"

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_3f

    .line 582
    iget p0, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v2, p0, :cond_3e

    move v0, p1

    :cond_3e
    return v0

    .line 584
    :cond_3f
    iget p0, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-gt v2, p0, :cond_44

    move v0, p1

    :cond_44
    return v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)Z
    .registers 5

    .line 446
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 447
    return v1

    .line 449
    :cond_8
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 450
    return v2

    .line 453
    :cond_1e
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 454
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_33

    .line 455
    return v2

    .line 457
    :cond_33
    return v1
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 3

    .line 758
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 759
    return v1

    .line 761
    :cond_8
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 762
    const-string p0, "bind_app"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_13} :catch_18

    if-eqz p0, :cond_17

    .line 763
    const/4 p0, 0x1

    return p0

    .line 767
    :cond_17
    goto :goto_1c

    .line 765
    :catch_18
    move-exception p0

    .line 766
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 768
    :goto_1c
    return v1
.end method

.method static synthetic b(I)I
    .registers 1

    .line 66
    sput p0, Lcom/ss/android/socialbase/appdownloader/c;->a:I

    return p0
.end method

.method public static b(Landroid/content/Context;IZ)I
    .registers 10

    .line 194
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v5

    .line 195
    if-eqz v5, :cond_4c

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 196
    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    new-instance v6, Ljava/io/File;

    .line 197
    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3e

    goto :goto_4c

    .line 201
    :cond_3e
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/c$2;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/ss/android/socialbase/appdownloader/c$2;-><init>(Landroid/content/Context;IZLcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/io/File;)V

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Ljava/lang/Runnable;)V

    .line 208
    const/4 p0, 0x1

    return p0

    .line 198
    :cond_4c
    :goto_4c
    const/4 p0, 0x2

    invoke-static {v5, p2, p0}, Lcom/ss/android/socialbase/appdownloader/c;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZI)V

    .line 199
    return p0
.end method

.method public static b(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)I
    .registers 5

    .line 608
    const/4 v0, 0x0

    if-eqz p0, :cond_38

    if-eqz p1, :cond_38

    .line 609
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_38

    .line 612
    :cond_1a
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getAppVersionCode()I

    move-result v1

    .line 613
    if-lez v1, :cond_21

    .line 614
    return v1

    .line 617
    :cond_21
    :try_start_21
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v1, v2}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 618
    if-eqz p0, :cond_35

    .line 619
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 620
    invoke-virtual {p1, p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setAppVersionCode(I)V
    :try_end_34
    .catchall {:try_start_21 .. :try_end_34} :catchall_36

    .line 621
    return p0

    .line 626
    :cond_35
    goto :goto_37

    .line 624
    :catchall_36
    move-exception p0

    .line 627
    :goto_37
    return v0

    .line 610
    :cond_38
    :goto_38
    return v0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .line 711
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(J)Ljava/lang/String;
    .registers 10

    .line 138
    const/4 v0, 0x5

    new-array v1, v0, [J

    fill-array-data v1, :array_46

    .line 139
    const-string v2, "TB"

    const-string v3, "GB"

    const-string v4, "MB"

    const-string v5, "KB"

    const-string v6, "B"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    .line 140
    const-wide/16 v3, 0x1

    cmp-long v3, p0, v3

    if-gez v3, :cond_31

    .line 141
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "0 "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 p1, 0x4

    aget-object p1, v2, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 142
    :cond_31
    const/4 v3, 0x0

    .line 143
    const/4 v4, 0x0

    :goto_33
    if-ge v4, v0, :cond_45

    .line 144
    aget-wide v5, v1, v4

    .line 145
    cmp-long v7, p0, v5

    if-ltz v7, :cond_42

    .line 146
    aget-object v0, v2, v4

    invoke-static {p0, p1, v5, v6, v0}, Lcom/ss/android/socialbase/appdownloader/c;->a(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 147
    goto :goto_45

    .line 143
    :cond_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 150
    :cond_45
    :goto_45
    return-object v3

    :array_46
    .array-data 8
        0x10000000000L
        0x40000000
        0x100000
        0x400
        0x1
    .end array-data
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 848
    const-string v0, "111111"

    :try_start_2
    sget-object v1, Lcom/ss/android/socialbase/appdownloader/c;->b:Landroid/app/NotificationChannel;

    if-nez v1, :cond_27

    .line 849
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "channel_appdownloader"

    const/4 v3, 0x3

    invoke-direct {v1, v0, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    sput-object v1, Lcom/ss/android/socialbase/appdownloader/c;->b:Landroid/app/NotificationChannel;

    .line 850
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 851
    sget-object v1, Lcom/ss/android/socialbase/appdownloader/c;->b:Landroid/app/NotificationChannel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 852
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 853
    sget-object v1, Lcom/ss/android/socialbase/appdownloader/c;->b:Landroid/app/NotificationChannel;

    invoke-virtual {p0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_28

    .line 857
    :cond_27
    goto :goto_2c

    .line 855
    :catchall_28
    move-exception p0

    .line 856
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 859
    :goto_2c
    return-object v0
.end method

.method private static b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZI)V
    .registers 5

    .line 214
    if-nez p0, :cond_3

    .line 215
    return-void

    .line 217
    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 219
    :try_start_8
    const-string v1, "by_user"

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x2

    :goto_f
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 220
    const-string p1, "view_result"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 221
    const-string p1, "real_package_name"

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getFilePackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_20} :catch_21

    .line 224
    goto :goto_25

    .line 222
    :catch_21
    move-exception p1

    .line 223
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    :goto_25
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->N()Lcom/ss/android/socialbase/downloader/d/c;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p0

    const-string p2, "install_view_result"

    invoke-interface {p1, p0, p2, v0}, Lcom/ss/android/socialbase/downloader/d/c;->a(ILjava/lang/String;Lorg/json/JSONObject;)V

    .line 226
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Landroid/content/pm/PackageInfo;)Z
    .registers 4

    .line 525
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Landroid/content/pm/PackageInfo;Z)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 4

    .line 772
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 773
    return v1

    .line 775
    :cond_8
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 776
    const-string p0, "bind_app"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const/4 v2, 0x1

    if-nez p0, :cond_20

    const-string p0, "auto_install_with_notification"

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_1c} :catch_21

    if-nez p0, :cond_1f

    goto :goto_20

    .line 781
    :cond_1f
    goto :goto_25

    .line 777
    :cond_20
    :goto_20
    return v2

    .line 779
    :catch_21
    move-exception p0

    .line 780
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 782
    :goto_25
    return v1
.end method

.method static synthetic c(Landroid/content/Context;IZ)I
    .registers 3

    .line 66
    invoke-static {p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/c;->d(Landroid/content/Context;IZ)I

    move-result p0

    return p0
.end method

.method public static c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 863
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 864
    const-string v1, "application/vnd.android.package-archive"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    const-string v1, "application/ttpatch"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    return-object v0
.end method

.method public static c(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 4

    .line 631
    if-eqz p0, :cond_2a

    if-eqz p1, :cond_2a

    .line 632
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_2a

    .line 635
    :cond_19
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 636
    invoke-static {p0, p1, v0}, Lcom/ss/android/socialbase/appdownloader/c;->b(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Landroid/content/pm/PackageInfo;)Z

    move-result p0

    return p0

    .line 633
    :cond_2a
    :goto_2a
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 2

    .line 803
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private static d(Landroid/content/Context;IZ)I
    .registers 7

    .line 177
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "notification_opt_2"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 178
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/notification/b;->f(I)V

    .line 181
    :cond_14
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/h;->a()Lcom/ss/android/socialbase/appdownloader/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/h;->b()Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    .line 184
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v2, "install_queue_enable"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2d

    goto :goto_2e

    :cond_2d
    move v1, v3

    .line 185
    :goto_2e
    if-eqz v1, :cond_39

    .line 186
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/h;->a()Lcom/ss/android/socialbase/appdownloader/h;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/h;->a(Landroid/content/Context;IZ)I

    move-result p0

    return p0

    .line 188
    :cond_39
    invoke-static {p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/c;->b(Landroid/content/Context;IZ)I

    move-result p0

    return p0
.end method

.method private static d(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 2

    .line 906
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 908
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_c

    return-object v0

    .line 909
    :catchall_c
    move-exception p0

    .line 913
    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method
