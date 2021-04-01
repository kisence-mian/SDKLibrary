.class public Lcom/ss/android/socialbase/appdownloader/c;
.super Ljava/lang/Object;
.source "AppDownloadUtils.java"


# static fields
.field private static a:Landroid/app/NotificationChannel;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 720
    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/c;->a:Landroid/app/NotificationChannel;

    return-void
.end method

.method public static a()I
    .registers 1

    .prologue
    .line 256
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/d;->e()Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x4000

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static a(I)I
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 663
    if-nez p0, :cond_5

    .line 674
    :cond_4
    :goto_4
    return v0

    .line 665
    :cond_5
    const/4 v2, -0x2

    if-ne p0, v2, :cond_a

    .line 666
    const/4 v0, 0x2

    goto :goto_4

    .line 667
    :cond_a
    if-ne p0, v1, :cond_e

    .line 668
    const/4 v0, 0x4

    goto :goto_4

    .line 669
    :cond_e
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/b/f;->b(I)Z

    move-result v2

    if-eqz v2, :cond_16

    move v0, v1

    .line 670
    goto :goto_4

    .line 671
    :cond_16
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/b/f;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 672
    const/4 v0, 0x3

    goto :goto_4
.end method

.method public static a(Landroid/content/Context;IZ)I
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 107
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v2

    .line 108
    if-eqz v2, :cond_3f

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->ah()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 109
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3f

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3f

    new-instance v3, Ljava/io/File;

    .line 110
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_41

    .line 111
    :cond_3f
    const/4 v0, 0x2

    .line 117
    :goto_40
    return v0

    .line 113
    :cond_41
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v2

    const-string v3, "install_queue_enable"

    invoke-virtual {v2, v3, v1}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_58

    .line 114
    :goto_4d
    if-eqz v0, :cond_5a

    .line 115
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/i;->a()Lcom/ss/android/socialbase/appdownloader/i;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/i;->a(Landroid/content/Context;IZ)I

    move-result v0

    goto :goto_40

    :cond_58
    move v0, v1

    .line 113
    goto :goto_4d

    .line 117
    :cond_5a
    invoke-static {p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/c;->b(Landroid/content/Context;IZ)I

    move-result v0

    goto :goto_40
.end method

.method private static a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/c;Ljava/io/File;Z[I)Landroid/content/Intent;
    .registers 12
    .param p2    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 296
    .line 298
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/downloader/downloader/f;->l(I)Lcom/ss/android/socialbase/downloader/d/q;

    move-result-object v0

    .line 299
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ss/android/socialbase/appdownloader/d;->c()Ljava/lang/String;

    move-result-object v4

    .line 300
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v5

    invoke-static {v5, v0, p0, v4, p2}, Lcom/ss/android/socialbase/appdownloader/c;->a(ILcom/ss/android/socialbase/downloader/d/q;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 301
    if-nez v0, :cond_23

    move-object v0, v3

    .line 324
    :goto_22
    return-object v0

    .line 305
    :cond_23
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_33

    .line 307
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 309
    :cond_33
    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/d;->b()Lcom/ss/android/socialbase/appdownloader/c/d;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_6c

    .line 312
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v5

    invoke-interface {v0, v5, p3}, Lcom/ss/android/socialbase/appdownloader/c/d;->a(IZ)Z

    move-result v0

    .line 315
    :goto_4a
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v5

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/ss/android/socialbase/downloader/downloader/f;->i(I)Lcom/ss/android/socialbase/downloader/d/z;

    move-result-object v5

    .line 316
    if-eqz v5, :cond_6a

    .line 317
    invoke-interface {v5, p3}, Lcom/ss/android/socialbase/downloader/d/z;->a(Z)Z

    move-result v0

    move v5, v0

    .line 320
    :goto_5d
    if-eqz v5, :cond_66

    move v0, v2

    :goto_60
    aput v0, p4, v1

    .line 321
    if-eqz v5, :cond_68

    move-object v0, v3

    .line 322
    goto :goto_22

    :cond_66
    move v0, v1

    .line 320
    goto :goto_60

    :cond_68
    move-object v0, v4

    .line 324
    goto :goto_22

    :cond_6a
    move v5, v0

    goto :goto_5d

    :cond_6c
    move v0, v1

    goto :goto_4a
.end method

.method public static a(ILcom/ss/android/socialbase/downloader/d/q;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    .registers 8

    .prologue
    .line 260
    const/4 v0, 0x0

    .line 261
    if-eqz p1, :cond_1e

    .line 263
    :try_start_3
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p3, v1}, Lcom/ss/android/socialbase/downloader/d/q;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_a} :catch_3d

    move-result-object v0

    .line 276
    :cond_b
    :goto_b
    if-nez v0, :cond_1d

    .line 278
    :try_start_d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_31

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 279
    invoke-static {p2, p3, p4}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_1c} :catch_36

    move-result-object v0

    .line 287
    :cond_1d
    :goto_1d
    return-object v0

    .line 267
    :cond_1e
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/d;->d()Lcom/ss/android/socialbase/appdownloader/c/f;

    move-result-object v1

    .line 268
    if-eqz v1, :cond_b

    .line 270
    :try_start_28
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p0, p3, v2}, Lcom/ss/android/socialbase/appdownloader/c/f;->a(ILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2f} :catch_3b

    move-result-object v0

    goto :goto_b

    .line 281
    :cond_31
    :try_start_31
    invoke-static {p4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_34} :catch_36

    move-result-object v0

    goto :goto_1d

    .line 283
    :catch_36
    move-exception v1

    .line 284
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1d

    .line 271
    :catch_3b
    move-exception v1

    goto :goto_b

    .line 264
    :catch_3d
    move-exception v1

    goto :goto_b
.end method

.method public static a(J)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v1, 0x5

    const/4 v0, 0x0

    .line 87
    new-array v2, v1, [J

    fill-array-data v2, :array_56

    .line 88
    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "TB"

    aput-object v1, v3, v0

    const/4 v1, 0x1

    const-string v4, "GB"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, "MB"

    aput-object v4, v3, v1

    const/4 v1, 0x3

    const-string v4, "KB"

    aput-object v4, v3, v1

    const/4 v1, 0x4

    const-string v4, "B"

    aput-object v4, v3, v1

    .line 89
    const-wide/16 v4, 0x1

    cmp-long v1, p0, v4

    if-gez v1, :cond_40

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_3f
    return-object v0

    .line 91
    :cond_40
    const/4 v1, 0x0

    .line 92
    :goto_41
    array-length v4, v2

    if-ge v0, v4, :cond_54

    .line 93
    aget-wide v4, v2, v0

    .line 94
    cmp-long v6, p0, v4

    if-ltz v6, :cond_51

    .line 95
    aget-object v0, v3, v0

    invoke-static {p0, p1, v4, v5, v0}, Lcom/ss/android/socialbase/appdownloader/c;->a(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    .line 92
    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_54
    move-object v0, v1

    goto :goto_3f

    .line 87
    :array_56
    .array-data 8
        0x10000000000L
        0x40000000
        0x100000
        0x400
        0x1
    .end array-data
.end method

.method private static a(JJLjava/lang/String;)Ljava/lang/String;
    .registers 11

    .prologue
    .line 81
    const-wide/16 v0, 0x1

    cmp-long v0, p2, v0

    if-lez v0, :cond_2c

    long-to-double v0, p0

    long-to-double v2, p2

    div-double/2addr v0, v2

    .line 83
    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#.##"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 81
    :cond_2c
    long-to-double v0, p0

    goto :goto_9
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 560
    invoke-static {p0, v0, v0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/k/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/k/a;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 564
    if-nez p0, :cond_5

    .line 565
    const-string v0, ""

    .line 612
    :goto_4
    return-object v0

    .line 569
    :cond_5
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/d;->f()Ljava/io/File;

    move-result-object v0

    .line 570
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 572
    :cond_1b
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/c;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 575
    :cond_1f
    if-nez v0, :cond_29

    .line 576
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to get storage directory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_29
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 578
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_75

    .line 579
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " already exists and is not a directory"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 583
    :cond_52
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_75

    .line 584
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 585
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 588
    :cond_75
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 590
    if-eqz p2, :cond_e0

    .line 591
    const-string v0, "anti_hijack_dir"

    invoke-virtual {p2, v0}, Lcom/ss/android/socialbase/downloader/k/a;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 592
    if-eqz v0, :cond_e0

    .line 593
    const-string v2, "dir_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 594
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e0

    .line 595
    const-string v2, "%s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d3

    .line 596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 604
    :goto_a8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xff

    if-le v2, v3, :cond_ba

    .line 605
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit16 v2, v2, -0xff

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 607
    :cond_ba
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 599
    :cond_d3
    const/4 v2, 0x1

    :try_start_d4
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_dc
    .catch Ljava/lang/Throwable; {:try_start_d4 .. :try_end_dc} :catch_de

    move-result-object v0

    goto :goto_a8

    .line 600
    :catch_de
    move-exception v2

    goto :goto_a8

    :cond_e0
    move-object v0, v1

    goto/16 :goto_4
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6

    .prologue
    .line 529
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 530
    const-string p1, ""

    .line 556
    :cond_8
    :goto_8
    return-object p1

    .line 532
    :cond_9
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 534
    if-eqz p3, :cond_48

    .line 536
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 537
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 538
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 554
    :cond_23
    :goto_23
    invoke-static {p2}, Lcom/ss/android/socialbase/appdownloader/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, ".apk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 540
    :cond_45
    const-string p1, "default.apk"

    goto :goto_23

    .line 544
    :cond_48
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 545
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 546
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 549
    const-string p1, "default.apk"

    goto :goto_23

    :cond_5b
    move-object p1, v0

    goto :goto_23
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/ss/android/socialbase/appdownloader/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/io/File;)Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 220
    const-string v2, "AppDownloadUtils"

    const-string v3, "start try silent install on miui"

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v2

    .line 222
    const-string v3, "back_miui_silent_install"

    invoke-virtual {v2, v3, v1}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1d

    .line 223
    const-string v1, "AppDownloadUtils"

    const-string v2, "back_miui_silent_install = 1"

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :goto_1c
    return v0

    .line 226
    :cond_1d
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/i;->j()Z

    move-result v2

    if-nez v2, :cond_31

    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/i;->k()Z

    move-result v2

    if-nez v2, :cond_31

    .line 227
    const-string v1, "AppDownloadUtils"

    const-string v2, "neither miui10 nor miui11"

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 230
    :cond_31
    const-string v2, "com.miui.securitycore"

    const-string v3, "com.miui.enterprise.service.EntInstallService"

    invoke-static {p0, v2, v3}, Lcom/ss/android/socialbase/downloader/m/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 231
    const-string v2, "AppDownloadUtils"

    const-string v3, "EntInstallService exists"

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 233
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.miui.securitycore"

    const-string v5, "com.miui.enterprise.service.EntInstallService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 234
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 235
    const-string v4, "userId"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    const-string v4, "flag"

    const/16 v5, 0x100

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    const-string v4, "apkPath"

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v4, "installerPkg"

    const-string v5, "com.miui.securitycore"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 241
    :try_start_77
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 242
    const-string v2, "AppDownloadUtils"

    const-string v3, "start EntInstallService"

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_81} :catch_83

    move v0, v1

    .line 243
    goto :goto_1c

    .line 244
    :catch_83
    move-exception v1

    .line 245
    const-string v2, "AppDownloadUtils"

    const-string v3, "start EntInstallService error"

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c

    .line 250
    :cond_8f
    const-string v1, "AppDownloadUtils"

    const-string v2, "EntInstallService does not exist"

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public static a(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 411
    if-nez p1, :cond_4

    .line 430
    :cond_3
    :goto_3
    return v0

    .line 414
    :cond_4
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 415
    iget v2, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 418
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->a()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_13} :catch_1c

    move-result-object v1

    .line 422
    :goto_14
    if-eqz v1, :cond_3

    .line 425
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 426
    if-gt v2, v1, :cond_3

    .line 427
    const/4 v0, 0x1

    goto :goto_3

    .line 419
    :catch_1c
    move-exception v1

    .line 420
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public static a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/c;Landroid/content/pm/PackageInfo;)Z
    .registers 10

    .prologue
    const/16 v2, 0x8

    const/4 v6, 0x1

    .line 195
    if-eqz p2, :cond_5d

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 196
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/d;->b()Lcom/ss/android/socialbase/appdownloader/c/d;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_32

    .line 198
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->z()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v5, ""

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/appdownloader/c/d;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-interface {v0}, Lcom/ss/android/socialbase/appdownloader/c/d;->a()Z

    move-result v0

    if-eqz v0, :cond_32

    move v0, v6

    .line 213
    :goto_31
    return v0

    .line 203
    :cond_32
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->i(I)Lcom/ss/android/socialbase/downloader/d/z;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_5d

    .line 205
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v0, v2, p1, v1, v3}, Lcom/ss/android/socialbase/downloader/d/z;->a(ILcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/d;->a()Lcom/ss/android/socialbase/appdownloader/c/c;

    move-result-object v0

    .line 208
    instance-of v1, v0, Lcom/ss/android/socialbase/appdownloader/c/a;

    if-eqz v1, :cond_5d

    check-cast v0, Lcom/ss/android/socialbase/appdownloader/c/a;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/c/a;->c()Z

    move-result v0

    if-eqz v0, :cond_5d

    move v0, v6

    .line 209
    goto :goto_31

    .line 213
    :cond_5d
    const/4 v0, 0x0

    goto :goto_31
.end method

.method public static a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;)Z
    .registers 13

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 343
    .line 344
    if-nez p0, :cond_6

    .line 404
    :cond_5
    :goto_5
    return v0

    .line 348
    :cond_6
    :try_start_6
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_81

    .line 350
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 351
    const-string v5, "AppDownloadUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPackageNameEqualsWithApk fileName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " apkFileSize\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " fileUrl\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->a()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 353
    if-eqz v3, :cond_5

    .line 356
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 357
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 360
    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6d} :catch_c8

    .line 363
    :try_start_6d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->a()I

    move-result v5

    invoke-virtual {v4, p2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_78
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6d .. :try_end_78} :catch_d0
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_78} :catch_c8

    move-result-object v2

    .line 367
    :goto_79
    if-eqz v2, :cond_5

    .line 370
    :try_start_7b
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 371
    if-ne v3, v2, :cond_5

    move v0, v1

    .line 372
    goto :goto_5

    .line 376
    :cond_81
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v3

    const-string v4, "install_callback_error"

    invoke-virtual {v3, v4}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 377
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->bg()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "extra_apk_package_name"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 378
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->bg()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "extra_apk_version_code"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 379
    if-eqz v3, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 382
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_b0} :catch_c8

    move-result v3

    if-eqz v3, :cond_5

    .line 387
    :try_start_b3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->a()I

    move-result v5

    invoke-virtual {v3, p2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_be
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b3 .. :try_end_be} :catch_ce
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_be} :catch_c8

    move-result-object v2

    .line 391
    :goto_bf
    if-eqz v2, :cond_5

    .line 394
    :try_start_c1
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c3} :catch_c8

    .line 395
    if-ne v4, v2, :cond_5

    move v0, v1

    .line 396
    goto/16 :goto_5

    .line 401
    :catch_c8
    move-exception v1

    .line 402
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 388
    :catch_ce
    move-exception v3

    goto :goto_bf

    .line 364
    :catch_d0
    move-exception v4

    goto :goto_79
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13

    .prologue
    const/4 v6, 0x0

    .line 450
    if-eqz p0, :cond_f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_f
    move v0, v6

    .line 517
    :goto_10
    return v0

    .line 455
    :cond_11
    :try_start_11
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1e

    move v0, v6

    .line 457
    goto :goto_10

    .line 460
    :cond_1e
    const-string v0, "AppDownloadUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isApkInstalled apkFileSize\uff1afileName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " apkFileSize"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const/4 v0, 0x0

    .line 463
    const/high16 v2, 0x10000000

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v2

    if-eqz v2, :cond_a7

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_a7

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_59} :catch_100

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_a7

    .line 467
    :try_start_5d
    const-string v2, "sigbus_test1"

    const-string v3, "before getpackageinfo"

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/appdownloader/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/e/a/e;->a(Ljava/io/File;)Landroid/content/pm/PackageInfo;
    :try_end_67
    .catch Ljava/lang/RuntimeException; {:try_start_5d .. :try_end_67} :catch_94
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_67} :catch_100

    move-result-object v0

    .line 469
    :try_start_68
    const-string v2, "sigbus_test2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "success: packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", versionCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/appdownloader/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8e
    .catch Ljava/lang/RuntimeException; {:try_start_68 .. :try_end_8e} :catch_107
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_8e} :catch_100

    .line 513
    :goto_8e
    :try_start_8e
    invoke-static {p0, v0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    goto/16 :goto_10

    .line 470
    :catch_94
    move-exception v2

    move-object v7, v0

    .line 471
    :goto_96
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    new-instance v0, Lcom/ss/android/socialbase/appdownloader/c$1;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/socialbase/appdownloader/c$1;-><init>(Ljava/io/File;Ljava/lang/RuntimeException;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    move-object v0, v7

    .line 498
    goto :goto_8e

    .line 501
    :cond_a7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sigbus:\n\turl: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\tmd5: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 503
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/m/b;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\tfileName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 504
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\tfileLength: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 505
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 507
    const-string v2, "sigbus_test6"

    invoke-static {v2, v0}, Lcom/ss/android/socialbase/appdownloader/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 510
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_fe
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_fe} :catch_100

    move-result-object v0

    goto :goto_8e

    .line 514
    :catch_100
    move-exception v0

    .line 515
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v6

    .line 517
    goto/16 :goto_10

    .line 470
    :catch_107
    move-exception v2

    move-object v7, v0

    goto :goto_96
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 328
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 339
    :cond_8
    :goto_8
    return v0

    .line 331
    :cond_9
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->z()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move v0, v1

    .line 332
    goto :goto_8

    .line 335
    :cond_1f
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 336
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p0, p1}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v0, v1

    .line 337
    goto :goto_8
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 621
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 631
    :cond_7
    :goto_7
    return v0

    .line 624
    :cond_8
    :try_start_8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 625
    if-eqz v1, :cond_7

    const-string v2, "bind_app"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_15} :catch_1a

    move-result v1

    if-eqz v1, :cond_7

    .line 626
    const/4 v0, 0x1

    goto :goto_7

    .line 628
    :catch_1a
    move-exception v1

    .line 629
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7
.end method

.method public static b(Landroid/content/Context;IZ)I
    .registers 12

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 122
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v6

    .line 124
    if-eqz v6, :cond_41

    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/g/c;->ah()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 125
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_41

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_41

    new-instance v7, Ljava/io/File;

    .line 126
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_42

    .line 190
    :cond_41
    :goto_41
    return v1

    .line 130
    :cond_42
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 133
    :try_start_54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chmod 555 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 134
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    .line 135
    invoke-virtual {v5, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_72} :catch_d5
    .catchall {:try_start_54 .. :try_end_72} :catchall_e0

    move-result-object v5

    .line 136
    :try_start_73
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_76} :catch_125
    .catchall {:try_start_73 .. :try_end_76} :catchall_123

    .line 140
    if-eqz v5, :cond_7b

    .line 141
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    .line 145
    :cond_7b
    :goto_7b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 149
    :try_start_7f
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->a()I

    move-result v8

    invoke-virtual {v4, v5, v8}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_8a} :catch_120

    move-result-object v0

    .line 153
    :goto_8b
    invoke-static {p0, v6, v0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/c;Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-nez v4, :cond_41

    .line 156
    if-eqz v0, :cond_b9

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v4

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v4

    const-string v5, "install_callback_error"

    invoke-virtual {v4, v5}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 157
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/g/c;->bg()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "extra_apk_package_name"

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/g/c;->bg()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "extra_apk_version_code"

    iget v8, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    :cond_b9
    new-array v4, v3, [I

    .line 162
    invoke-static {p0, v0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z

    move-result v5

    if-eqz v5, :cond_e9

    .line 164
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 175
    :goto_cb
    if-nez v0, :cond_104

    .line 176
    aget v0, v4, v2

    if-ne v0, v3, :cond_102

    move v0, v1

    :goto_d2
    move v1, v0

    goto/16 :goto_41

    .line 137
    :catch_d5
    move-exception v4

    move-object v5, v0

    .line 138
    :goto_d7
    :try_start_d7
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_da
    .catchall {:try_start_d7 .. :try_end_da} :catchall_123

    .line 140
    if-eqz v5, :cond_7b

    .line 141
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    goto :goto_7b

    .line 140
    :catchall_e0
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    :goto_e3
    if-eqz v5, :cond_e8

    .line 141
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    :cond_e8
    throw v0

    .line 168
    :cond_e9
    if-nez p2, :cond_fd

    invoke-static {p0, p1, v7}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;ILjava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 170
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/g/c;->bg()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_silent_install_succeed"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move v1, v3

    .line 171
    goto/16 :goto_41

    .line 173
    :cond_fd
    invoke-static {p0, v6, v7, p2, v4}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/c;Ljava/io/File;Z[I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_cb

    :cond_102
    move v0, v2

    .line 176
    goto :goto_d2

    .line 178
    :cond_104
    const/high16 v1, 0x10000000

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 180
    aget v1, v4, v2

    if-nez v1, :cond_116

    .line 181
    invoke-static {p0, v6, v0, p2}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/c;Landroid/content/Intent;Z)Z

    move-result v1

    .line 182
    if-eqz v1, :cond_116

    move v1, v3

    .line 183
    goto/16 :goto_41

    .line 187
    :cond_116
    :try_start_116
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_119
    .catch Ljava/lang/Throwable; {:try_start_116 .. :try_end_119} :catch_11c

    move v1, v3

    .line 188
    goto/16 :goto_41

    .line 189
    :catch_11c
    move-exception v0

    move v1, v2

    .line 190
    goto/16 :goto_41

    .line 150
    :catch_120
    move-exception v4

    goto/16 :goto_8b

    .line 140
    :catchall_123
    move-exception v0

    goto :goto_e3

    .line 137
    :catch_125
    move-exception v4

    goto :goto_d7
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 434
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->D()Lcom/ss/android/socialbase/downloader/h/b;

    move-result-object v0

    .line 435
    if-nez v0, :cond_7

    .line 447
    :goto_6
    return-void

    .line 439
    :cond_7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 441
    :try_start_c
    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_11} :catch_15

    .line 446
    :goto_11
    invoke-interface {v0, p0, v1}, Lcom/ss/android/socialbase/downloader/h/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_6

    .line 442
    :catch_15
    move-exception v2

    goto :goto_11
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 688
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-le v2, v3, :cond_a

    if-nez p0, :cond_c

    :cond_a
    move v0, v1

    .line 717
    :cond_b
    :goto_b
    return v0

    .line 692
    :cond_c
    const/4 v2, 0x0

    .line 694
    :try_start_d
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f;->b()I

    move-result v3

    .line 695
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 696
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f;->c()I

    move-result v4

    .line 697
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f;->d()I

    move-result v5

    .line 699
    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v4, v6, v7

    const/4 v4, 0x1

    aput v5, v6, v4

    .line 700
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f;->e()I

    move-result v4

    .line 701
    invoke-virtual {p0, v4, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_31} :catch_49
    .catchall {:try_start_d .. :try_end_31} :catchall_53

    move-result-object v2

    .line 702
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_34
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_37} :catch_5e
    .catchall {:try_start_34 .. :try_end_37} :catchall_53

    move-result v4

    .line 703
    if-ne v3, v4, :cond_42

    .line 710
    if-eqz v2, :cond_b

    .line 711
    :try_start_3c
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_b

    .line 713
    :catch_40
    move-exception v1

    goto :goto_b

    .line 710
    :cond_42
    if-eqz v2, :cond_47

    .line 711
    :try_start_44
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_47} :catch_5a

    :cond_47
    :goto_47
    move v0, v1

    .line 717
    goto :goto_b

    .line 706
    :catch_49
    move-exception v0

    move-object v0, v2

    .line 710
    :goto_4b
    if-eqz v0, :cond_47

    .line 711
    :try_start_4d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_47

    .line 713
    :catch_51
    move-exception v0

    goto :goto_47

    .line 709
    :catchall_53
    move-exception v0

    .line 710
    if-eqz v2, :cond_59

    .line 711
    :try_start_56
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_59} :catch_5c

    .line 715
    :cond_59
    :goto_59
    throw v0

    .line 713
    :catch_5a
    move-exception v0

    goto :goto_47

    :catch_5c
    move-exception v1

    goto :goto_59

    .line 706
    :catch_5e
    move-exception v0

    move-object v0, v2

    goto :goto_4b
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 635
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 645
    :cond_8
    :goto_8
    return v0

    .line 638
    :cond_9
    :try_start_9
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 639
    if-eqz v2, :cond_8

    const-string v3, "bind_app"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_22

    const-string v3, "auto_install_with_notification"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_1f} :catch_24

    move-result v2

    if-nez v2, :cond_8

    :cond_22
    move v0, v1

    .line 640
    goto :goto_8

    .line 642
    :catch_24
    move-exception v1

    .line 643
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_8
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 725
    :try_start_0
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/c;->a:Landroid/app/NotificationChannel;

    if-nez v0, :cond_2a

    .line 726
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "111111"

    const-string v2, "channel_appdownloader"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/c;->a:Landroid/app/NotificationChannel;

    .line 727
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/c;->a:Landroid/app/NotificationChannel;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 728
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/c;->a:Landroid/app/NotificationChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 729
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 730
    sget-object v1, Lcom/ss/android/socialbase/appdownloader/c;->a:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2a} :catch_2d

    .line 736
    :cond_2a
    :goto_2a
    const-string v0, "111111"

    return-object v0

    .line 732
    :catch_2d
    move-exception v0

    .line 733
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2a
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 649
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 659
    :cond_7
    :goto_7
    return v0

    .line 652
    :cond_8
    :try_start_8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 653
    if-eqz v1, :cond_7

    const-string v2, "auto_install_without_notification"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_15} :catch_1a

    move-result v1

    if-eqz v1, :cond_7

    .line 654
    const/4 v0, 0x1

    goto :goto_7

    .line 656
    :catch_1a
    move-exception v1

    .line 657
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7
.end method

.method public static d(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    .prologue
    .line 740
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 744
    :try_start_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_7} :catch_17
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_4 .. :try_end_7} :catch_1b

    move-result-object v0

    .line 751
    :goto_8
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 752
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 756
    :goto_16
    return-object v0

    .line 745
    :catch_17
    move-exception v0

    .line 746
    const-string v0, ""

    goto :goto_8

    .line 747
    :catch_1b
    move-exception v0

    .line 748
    const-string v0, ""

    goto :goto_8

    .line 754
    :cond_1f
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    goto :goto_16
.end method

.method public static d(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 680
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
