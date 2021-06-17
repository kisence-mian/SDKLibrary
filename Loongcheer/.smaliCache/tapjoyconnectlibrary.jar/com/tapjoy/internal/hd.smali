.class public final Lcom/tapjoy/internal/hd;
.super Lcom/tapjoy/internal/o;
.source "SourceFile"


# static fields
.field private static c:Lcom/tapjoy/internal/hd;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 89
    new-instance v0, Lcom/tapjoy/internal/hd$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/hd$1;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tapjoy/internal/o;-><init>(Landroid/content/Context;Lcom/tapjoy/internal/q;)V

    .line 165
    return-void
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)I
    .registers 6

    .line 499
    const/4 v0, 0x0

    if-eqz p0, :cond_39

    .line 500
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 501
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_25

    .line 502
    move-object v1, p0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 504
    :try_start_12
    const-string v2, "drawable"

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_20
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_20} :catch_24

    if-eqz p2, :cond_23

    .line 505
    return v1

    .line 509
    :cond_23
    goto :goto_25

    .line 507
    :catch_24
    move-exception p2

    .line 511
    :cond_25
    :goto_25
    if-eqz p0, :cond_39

    .line 512
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p1, p0, v0

    .line 7055
    sget-boolean p1, Lcom/tapjoy/internal/gy;->a:Z

    if-eqz p1, :cond_39

    .line 7056
    nop

    .line 7157
    const/4 p1, 0x4

    const-string p2, "Tapjoy"

    const-string v1, "meta-data of {} invalid"

    invoke-static {p1, p2, v1, p0}, Lcom/tapjoy/internal/w;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 515
    :cond_39
    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/app/Notification;
    .registers 13
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 392
    nop

    .line 393
    nop

    .line 2475
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tapjoy/TapjoyReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2476
    const-string v1, "com.tapjoy.PUSH_CLICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2477
    const-string v1, "com.tapjoy.PUSH_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2478
    if-eqz p6, :cond_1e

    .line 2479
    const-string p1, "com.tapjoy.PUSH_PAYLOAD"

    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2481
    :cond_1e
    if-eqz p7, :cond_25

    .line 2482
    const-string p1, "com.tapjoy.PUSH_PLACEMENT"

    invoke-virtual {v0, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2485
    :cond_25
    const/high16 p1, 0x8000000

    .line 2488
    sget p6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p7, 0x13

    if-ne p6, p7, :cond_2f

    .line 2489
    const/high16 p1, 0x10000000

    .line 2492
    :cond_2f
    nop

    .line 2493
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p6

    invoke-static {p6, p8, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 393
    nop

    .line 394
    const/4 p6, 0x0

    if-nez p1, :cond_3d

    .line 396
    return-object p6

    .line 399
    :cond_3d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p7

    .line 400
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p8

    .line 403
    const/16 v0, 0x80

    :try_start_47
    invoke-virtual {p7, p8, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p8
    :try_end_4b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_47 .. :try_end_4b} :catch_118

    .line 407
    nop

    .line 410
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_57

    .line 411
    invoke-virtual {p7, p8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_5d

    .line 413
    :cond_57
    if-eqz p4, :cond_5d

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    .line 415
    :cond_5d
    :goto_5d
    if-eqz p4, :cond_63

    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p3

    .line 418
    :cond_63
    nop

    .line 420
    iget-object p4, p8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string p7, "com.tapjoy.notification.icon"

    invoke-static {p4, p7, p0}, Lcom/tapjoy/internal/hd;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)I

    move-result p4

    .line 421
    if-nez p4, :cond_78

    .line 422
    iget p4, p8, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz p4, :cond_75

    iget p4, p8, Landroid/content/pm/ApplicationInfo;->icon:I

    goto :goto_78

    :cond_75
    const p4, 0x1080093

    .line 425
    :cond_78
    :goto_78
    iget-object p7, p8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.tapjoy.notification.icon.large"

    invoke-static {p7, v0, p0}, Lcom/tapjoy/internal/hd;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)I

    move-result p7

    .line 426
    if-eqz p7, :cond_8b

    .line 427
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p7

    goto :goto_8c

    .line 426
    :cond_8b
    move-object p7, p6

    .line 430
    :goto_8c
    const-string v0, "tapjoy"

    if-nez p9, :cond_9c

    iget-object v1, p8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_9c

    .line 431
    iget-object p8, p8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string p9, "com.tapjoy.notification.default_channel_id"

    invoke-virtual {p8, p9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p9

    .line 436
    :cond_9c
    nop

    .line 2519
    sget p8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p8, v1, :cond_c3

    .line 2523
    const-string p6, "notification"

    invoke-virtual {p0, p6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/app/NotificationManager;

    .line 2527
    if-eqz p9, :cond_b6

    invoke-virtual {p6, p9}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p8

    if-nez p8, :cond_b4

    goto :goto_b6

    .line 2534
    :cond_b4
    move-object p6, p9

    goto :goto_c4

    .line 2528
    :cond_b6
    :goto_b6
    new-instance p8, Landroid/app/NotificationChannel;

    const/4 p9, 0x3

    const-string v1, "Tapjoy"

    invoke-direct {p8, v0, v1, p9}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 2529
    invoke-virtual {p6, p8}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 2531
    move-object p6, v0

    goto :goto_c4

    .line 2537
    :cond_c3
    nop

    .line 436
    :goto_c4
    nop

    .line 438
    nop

    .line 3445
    new-instance p8, Lcom/tapjoy/internal/jk$c;

    invoke-direct {p8, p0, p6}, Lcom/tapjoy/internal/jk$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3446
    nop

    .line 3773
    iget-object p0, p8, Lcom/tapjoy/internal/jk$c;->M:Landroid/app/Notification;

    iput p4, p0, Landroid/app/Notification;->icon:I

    .line 3774
    nop

    .line 3446
    nop

    .line 3447
    invoke-virtual {p8, p2}, Lcom/tapjoy/internal/jk$c;->c(Ljava/lang/CharSequence;)Lcom/tapjoy/internal/jk$c;

    move-result-object p0

    .line 3448
    invoke-virtual {p0, p2}, Lcom/tapjoy/internal/jk$c;->a(Ljava/lang/CharSequence;)Lcom/tapjoy/internal/jk$c;

    move-result-object p0

    .line 3449
    invoke-virtual {p0, p3}, Lcom/tapjoy/internal/jk$c;->b(Ljava/lang/CharSequence;)Lcom/tapjoy/internal/jk$c;

    move-result-object p0

    .line 3450
    nop

    .line 3888
    iput-object p1, p0, Lcom/tapjoy/internal/jk$c;->e:Landroid/app/PendingIntent;

    .line 3889
    nop

    .line 4135
    iget-object p1, p0, Lcom/tapjoy/internal/jk$c;->M:Landroid/app/Notification;

    iget p4, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 p4, p4, 0x10

    iput p4, p1, Landroid/app/Notification;->flags:I

    .line 4089
    nop

    .line 4159
    const/4 p1, 0x0

    iput p1, p0, Lcom/tapjoy/internal/jk$c;->k:I

    .line 4160
    nop

    .line 3452
    new-instance p1, Lcom/tapjoy/internal/jk$b;

    invoke-direct {p1}, Lcom/tapjoy/internal/jk$b;-><init>()V

    .line 3454
    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/jk$b;->a(Ljava/lang/CharSequence;)Lcom/tapjoy/internal/jk$b;

    move-result-object p1

    .line 3455
    invoke-virtual {p1, p3}, Lcom/tapjoy/internal/jk$b;->b(Ljava/lang/CharSequence;)Lcom/tapjoy/internal/jk$b;

    move-result-object p1

    .line 3453
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/jk$c;->a(Lcom/tapjoy/internal/jk$d;)Lcom/tapjoy/internal/jk$c;

    move-result-object p0

    .line 3456
    if-eqz p5, :cond_108

    .line 3457
    nop

    .line 5126
    iget-object p1, p0, Lcom/tapjoy/internal/jk$c;->M:Landroid/app/Notification;

    const/4 p2, 0x1

    iput p2, p1, Landroid/app/Notification;->defaults:I

    .line 3459
    :cond_108
    if-eqz p7, :cond_10d

    .line 3460
    nop

    .line 5954
    iput-object p7, p0, Lcom/tapjoy/internal/jk$c;->h:Landroid/graphics/Bitmap;

    .line 3462
    :cond_10d
    nop

    .line 6505
    new-instance p1, Lcom/tapjoy/internal/jl;

    invoke-direct {p1, p0}, Lcom/tapjoy/internal/jl;-><init>(Lcom/tapjoy/internal/jk$c;)V

    invoke-virtual {p1}, Lcom/tapjoy/internal/jl;->b()Landroid/app/Notification;

    move-result-object p0

    .line 438
    return-object p0

    .line 404
    :catch_118
    move-exception p0

    .line 406
    return-object p6
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tapjoy/internal/hd;
    .registers 3

    const-class v0, Lcom/tapjoy/internal/hd;

    monitor-enter v0

    .line 45
    :try_start_3
    sget-object v1, Lcom/tapjoy/internal/hd;->c:Lcom/tapjoy/internal/hd;

    if-nez v1, :cond_e

    .line 46
    new-instance v1, Lcom/tapjoy/internal/hd;

    invoke-direct {v1, p0}, Lcom/tapjoy/internal/hd;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tapjoy/internal/hd;->c:Lcom/tapjoy/internal/hd;

    .line 48
    :cond_e
    sget-object p0, Lcom/tapjoy/internal/hd;->c:Lcom/tapjoy/internal/hd;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    .line 44
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/content/Context;ILandroid/app/Notification;)V
    .registers 4

    .line 466
    nop

    .line 467
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 468
    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 469
    return-void
.end method

.method public static a(Ljava/lang/Object;)Z
    .registers 2

    .line 295
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Ljava/lang/Object;)I
    .registers 2

    .line 299
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_b

    .line 300
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    .line 301
    :cond_b
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 303
    :try_start_f
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_15} :catch_16

    return p0

    .line 304
    :catch_16
    move-exception p0

    .line 308
    :cond_17
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    .line 371
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 372
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 187
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 188
    invoke-static {p1}, Lcom/tapjoy/internal/hb;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hb;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/hb;->a(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    .line 193
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 194
    invoke-virtual {p0}, Lcom/tapjoy/internal/hd;->a()Z

    .line 195
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 18

    .line 199
    move-object/from16 v10, p1

    move-object/from16 v0, p2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const/4 v11, 0x1

    aput-object v3, v1, v11

    .line 200
    const-string v1, "fiverocks"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 201
    if-eqz v12, :cond_c7

    .line 202
    invoke-static/range {p1 .. p1}, Lcom/tapjoy/internal/he;->a(Landroid/content/Context;)Lcom/tapjoy/internal/he;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/he;->f()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 203
    invoke-static/range {p1 .. p1}, Lcom/tapjoy/internal/hb;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hb;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/tapjoy/internal/hb;->b(Ljava/lang/String;)V

    .line 204
    return v11

    .line 207
    :cond_2b
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    const-string v3, "message"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 209
    if-eqz v3, :cond_c6

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 211
    const-string v4, "rich"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 212
    const-string v5, "sound"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 213
    const-string v6, "payload"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 215
    const-string v7, "always"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 216
    const-string v8, "true"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_68

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_66

    goto :goto_68

    :cond_66
    const/4 v7, 0x0

    goto :goto_69

    :cond_68
    :goto_68
    const/4 v7, 0x1

    .line 218
    :goto_69
    const-string v9, "repeatable"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 219
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_80

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7e

    goto :goto_80

    :cond_7e
    const/4 v13, 0x0

    goto :goto_81

    :cond_80
    :goto_80
    const/4 v13, 0x1

    .line 221
    :goto_81
    const-string v2, "placement"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 223
    const-string v2, "nid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/internal/hd;->b(Ljava/lang/Object;)I

    move-result v14

    .line 225
    const-string v2, "channel_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 227
    if-nez v7, :cond_a3

    invoke-static/range {p1 .. p1}, Lcom/tapjoy/internal/hb;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/hb;->e()Z

    move-result v0

    if-nez v0, :cond_c6

    .line 228
    :cond_a3
    nop

    .line 229
    invoke-static {v1}, Lcom/tapjoy/internal/js;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-static {v4}, Lcom/tapjoy/internal/hd;->a(Ljava/lang/Object;)Z

    move-result v4

    .line 231
    invoke-static {v5}, Lcom/tapjoy/internal/hd;->a(Ljava/lang/Object;)Z

    move-result v5

    .line 228
    move-object/from16 v0, p1

    move-object v1, v12

    move-object v7, v8

    move v8, v14

    invoke-static/range {v0 .. v9}, Lcom/tapjoy/internal/hd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    .line 236
    invoke-static/range {p1 .. p1}, Lcom/tapjoy/internal/hb;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hb;

    move-result-object v1

    invoke-virtual {v1, v10, v12, v13}, Lcom/tapjoy/internal/hb;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 237
    invoke-static {v10, v14, v0}, Lcom/tapjoy/internal/hd;->a(Landroid/content/Context;ILandroid/app/Notification;)V

    .line 241
    :cond_c6
    return v11

    .line 243
    :cond_c7
    return v2
.end method

.method public final b(Ljava/lang/String;)Z
    .registers 5

    .line 376
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 377
    return v0
.end method

.method public final c(Ljava/lang/String;)Z
    .registers 4

    .line 382
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 383
    return v1
.end method

.method final d(Ljava/lang/String;)V
    .registers 4

    .line 168
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_11

    .line 169
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-super {p0, v0}, Lcom/tapjoy/internal/o;->a([Ljava/lang/String;)V

    .line 173
    :cond_11
    return-void
.end method
