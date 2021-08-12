.class public Lcom/ss/android/socialbase/appdownloader/b;
.super Ljava/lang/Object;
.source "AhUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/appdownloader/b$e;,
        Lcom/ss/android/socialbase/appdownloader/b$a;,
        Lcom/ss/android/socialbase/appdownloader/b$c;,
        Lcom/ss/android/socialbase/appdownloader/b$b;,
        Lcom/ss/android/socialbase/appdownloader/b$d;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/ss/android/socialbase/appdownloader/b$c;

.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ss/android/socialbase/appdownloader/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/ss/android/socialbase/appdownloader/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    const-class v0, Lcom/ss/android/socialbase/appdownloader/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/b;->a:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/b;->c:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/g/a;)I
    .registers 9

    .line 417
    nop

    .line 418
    nop

    .line 419
    nop

    .line 420
    const-string v0, "download_dir"

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/g/a;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 422
    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 423
    const-string v2, "dir_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 422
    :cond_19
    move v0, v1

    .line 426
    :goto_1a
    if-nez v0, :cond_1e

    .line 427
    const/4 p0, 0x5

    return p0

    .line 429
    :cond_1e
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v2, "get_download_info_by_list"

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v0

    .line 430
    if-nez v0, :cond_2c

    .line 436
    const/4 p0, 0x4

    return p0

    .line 440
    :cond_2c
    const-string v0, "ah_plans"

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/g/a;->e(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 441
    const/4 v2, -0x1

    if-eqz v0, :cond_9f

    .line 442
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 444
    move v4, v1

    :goto_3a
    if-ge v4, v3, :cond_9f

    .line 445
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 446
    if-eqz v5, :cond_9c

    invoke-static {v5}, Lcom/ss/android/socialbase/appdownloader/b;->d(Lorg/json/JSONObject;)Z

    move-result v6

    if-eqz v6, :cond_9c

    invoke-static {v5}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lorg/json/JSONObject;)Z

    move-result v6

    if-eqz v6, :cond_9c

    invoke-static {v5}, Lcom/ss/android/socialbase/appdownloader/b;->b(Lorg/json/JSONObject;)Z

    move-result v6

    if-eqz v6, :cond_9c

    .line 447
    const-string v6, "type"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 449
    const-string v7, "plan_a"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_90

    const-string v7, "plan_b"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_90

    const-string v7, "plan_e"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_90

    const-string v7, "plan_f"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7b

    goto :goto_90

    .line 456
    :cond_7b
    const-string v7, "plan_d"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9c

    .line 459
    invoke-static {v5}, Lcom/ss/android/socialbase/appdownloader/b;->c(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/appdownloader/a;

    move-result-object v2

    .line 460
    iget v5, v2, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    .line 461
    iget v2, v2, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    if-nez v2, :cond_8e

    .line 462
    return v1

    .line 461
    :cond_8e
    move v2, v5

    goto :goto_9c

    .line 451
    :cond_90
    :goto_90
    invoke-static {v5, p0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/g/a;)Lcom/ss/android/socialbase/appdownloader/a;

    move-result-object v2

    .line 452
    iget v5, v2, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    .line 453
    iget v2, v2, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    if-nez v2, :cond_9b

    .line 454
    return v1

    .line 456
    :cond_9b
    move v2, v5

    .line 444
    :cond_9c
    :goto_9c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 468
    :cond_9f
    return v2
.end method

.method public static a(Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/g/a;)Lcom/ss/android/socialbase/appdownloader/a;
    .registers 10

    .line 479
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/a;

    invoke-direct {v0}, Lcom/ss/android/socialbase/appdownloader/a;-><init>()V

    .line 480
    if-nez p0, :cond_8

    .line 481
    return-object v0

    .line 483
    :cond_8
    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 484
    iput-object v1, v0, Lcom/ss/android/socialbase/appdownloader/a;->a:Ljava/lang/String;

    .line 486
    const-string v2, "device_requirements"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 487
    nop

    .line 489
    :try_start_17
    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lorg/json/JSONArray;)Z

    move-result v2
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_88

    .line 501
    nop

    .line 502
    sget-object v3, Lcom/ss/android/socialbase/appdownloader/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requirements fit ? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    if-nez v2, :cond_3b

    .line 505
    const/4 p0, 0x2

    invoke-static {v0, p0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lcom/ss/android/socialbase/appdownloader/a;I)V

    .line 506
    return-object v0

    .line 508
    :cond_3b
    const-string v2, "plan_b"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_5a

    .line 510
    const-string v1, "custom"

    iput-object v1, v0, Lcom/ss/android/socialbase/appdownloader/a;->e:Ljava/lang/String;

    .line 512
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, p0, p1}, Lcom/ss/android/socialbase/appdownloader/a/d;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/g/a;)Z

    move-result p0

    .line 513
    if-eqz p0, :cond_56

    .line 514
    iput v3, v0, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    .line 515
    return-object v0

    .line 517
    :cond_56
    invoke-static {v0, v2}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lcom/ss/android/socialbase/appdownloader/a;I)V

    .line 519
    goto :goto_87

    .line 522
    :cond_5a
    const-string v1, "device_plans"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 523
    iput-object v1, v0, Lcom/ss/android/socialbase/appdownloader/a;->e:Ljava/lang/String;

    .line 524
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_87

    .line 525
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 526
    array-length v4, v1

    move v5, v3

    :goto_70
    if-ge v5, v4, :cond_87

    aget-object v6, v1, v5

    .line 527
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6, p0, p1}, Lcom/ss/android/socialbase/appdownloader/a/d;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/g/a;)Z

    move-result v6

    if-eqz v6, :cond_81

    .line 529
    iput v3, v0, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    .line 530
    return-object v0

    .line 532
    :cond_81
    invoke-static {v0, v2}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lcom/ss/android/socialbase/appdownloader/a;I)V

    .line 526
    add-int/lit8 v5, v5, 0x1

    goto :goto_70

    .line 538
    :cond_87
    :goto_87
    return-object v0

    .line 493
    :catchall_88
    move-exception p0

    .line 495
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check plan_a Config"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/ss/android/socialbase/appdownloader/a;->c:Ljava/lang/String;

    .line 496
    const/4 p0, 0x4

    invoke-static {v0, p0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lcom/ss/android/socialbase/appdownloader/a;I)V

    .line 500
    return-object v0
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/b$a;)Lcom/ss/android/socialbase/appdownloader/b$a;
    .registers 1

    .line 48
    sput-object p0, Lcom/ss/android/socialbase/appdownloader/b;->d:Lcom/ss/android/socialbase/appdownloader/b$a;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g$a;
    .registers 6

    .line 706
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 707
    return-object v1

    .line 710
    :cond_8
    :try_start_8
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 711
    if-eqz p0, :cond_26

    .line 712
    array-length v0, p0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v0, :cond_26

    aget-object v3, p0, v2

    .line 713
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 714
    invoke-static {v3}, Lcom/ss/android/socialbase/appdownloader/b;->b(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g$a;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_27

    .line 715
    if-eqz v3, :cond_23

    .line 716
    return-object v3

    .line 712
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 722
    :cond_26
    goto :goto_28

    .line 721
    :catchall_27
    move-exception p0

    .line 723
    :goto_28
    return-object v1
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    .line 1112
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1113
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x320

    if-le v0, v1, :cond_13

    .line 1114
    const/4 v0, 0x0

    const/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1116
    :cond_13
    return-object p0
.end method

.method public static a(ILorg/json/JSONObject;)V
    .registers 5

    .line 1012
    const-string v0, "show_unknown_source_on_startup"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    move p1, v0

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 1013
    :goto_c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1015
    :try_start_11
    const-string v2, "scene"

    if-eqz p1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x2

    :goto_17
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1a} :catch_1b

    .line 1018
    goto :goto_1f

    .line 1016
    :catch_1b
    move-exception p1

    .line 1017
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1019
    :goto_1f
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->N()Lcom/ss/android/socialbase/downloader/d/c;

    move-result-object p1

    const-string v0, "guide_auth_dialog_confirm"

    invoke-interface {p1, p0, v0, v1}, Lcom/ss/android/socialbase/downloader/d/c;->b(ILjava/lang/String;Lorg/json/JSONObject;)V

    .line 1020
    return-void
.end method

.method static synthetic a(IZZ)V
    .registers 3

    .line 48
    invoke-static {p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/b;->b(IZZ)V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;ILorg/json/JSONObject;Lcom/ss/android/socialbase/appdownloader/b$b;)V
    .registers 12

    .line 1075
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/b;->d:Lcom/ss/android/socialbase/appdownloader/b$a;

    if-eqz v0, :cond_10

    .line 1076
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v0

    sget-object v1, Lcom/ss/android/socialbase/appdownloader/b;->d:Lcom/ss/android/socialbase/appdownloader/b$a;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/a/a;->b(Lcom/ss/android/socialbase/downloader/a/a$a;)V

    .line 1077
    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/b;->d:Lcom/ss/android/socialbase/appdownloader/b$a;

    .line 1079
    :cond_10
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/b$a;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ss/android/socialbase/appdownloader/b$a;-><init>(Landroid/content/Context;Landroid/content/Intent;ILorg/json/JSONObject;Lcom/ss/android/socialbase/appdownloader/b$b;)V

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/b;->d:Lcom/ss/android/socialbase/appdownloader/b$a;

    .line 1080
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object p0

    sget-object p1, Lcom/ss/android/socialbase/appdownloader/b;->d:Lcom/ss/android/socialbase/appdownloader/b$a;

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/a/a;->a(Lcom/ss/android/socialbase/downloader/a/a$a;)V

    .line 1081
    return-void
.end method

.method private static a(Lcom/ss/android/socialbase/appdownloader/a;I)V
    .registers 4

    .line 630
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 631
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    goto :goto_f

    .line 633
    :cond_d
    iput p1, p0, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    .line 635
    :goto_f
    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/appdownloader/b$c;)V
    .registers 1

    .line 1161
    sput-object p0, Lcom/ss/android/socialbase/appdownloader/b;->b:Lcom/ss/android/socialbase/appdownloader/b$c;

    .line 1162
    return-void
.end method

.method public static a()Z
    .registers 2

    .line 990
    sget v0, Lcom/ss/android/socialbase/appdownloader/b$e;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 4

    .line 933
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 934
    return v0

    .line 937
    :cond_4
    :try_start_4
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/c;->b()Z

    move-result v1

    const/16 v2, 0x1a

    if-eqz v1, :cond_15

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v2, :cond_15

    .line 938
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/b;->d(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 939
    :cond_15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_26

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v1, v2, :cond_26

    .line 940
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/b;->e(Landroid/content/Context;)Z

    move-result p0
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_27

    return p0

    .line 943
    :cond_26
    return v0

    .line 945
    :catchall_27
    move-exception p0

    .line 946
    return v0
.end method

.method static synthetic a(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 2

    .line 48
    invoke-static {p0, p1}, Lcom/ss/android/socialbase/appdownloader/b;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;ILorg/json/JSONObject;)Z
    .registers 7

    .line 894
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/c;->b()Z

    move-result v1

    const/16 v2, 0x1a

    if-eqz v1, :cond_30

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v2, :cond_30

    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/b;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 895
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/a/f;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/appdownloader/a/f;-><init>(Landroid/content/Context;)V

    .line 896
    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/a/f;->a()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 897
    new-instance v2, Lcom/ss/android/socialbase/appdownloader/b$1;

    invoke-direct {v2}, Lcom/ss/android/socialbase/appdownloader/b$1;-><init>()V

    invoke-static {p0, p1, p2, p3, v2}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;Landroid/content/Intent;ILorg/json/JSONObject;Lcom/ss/android/socialbase/appdownloader/b$b;)V

    .line 903
    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/a/f;->b()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/socialbase/appdownloader/b;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0

    .line 906
    :cond_2f
    goto :goto_5f

    :cond_30
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_61

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v1, v2, :cond_61

    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/b;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_61

    .line 907
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/a/b;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/appdownloader/a/b;-><init>(Landroid/content/Context;)V

    .line 908
    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/a/b;->a()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 909
    new-instance v2, Lcom/ss/android/socialbase/appdownloader/b$2;

    invoke-direct {v2}, Lcom/ss/android/socialbase/appdownloader/b$2;-><init>()V

    invoke-static {p0, p1, p2, p3, v2}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;Landroid/content/Intent;ILorg/json/JSONObject;Lcom/ss/android/socialbase/appdownloader/b$b;)V

    .line 915
    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/a/b;->b()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/socialbase/appdownloader/b;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0
    :try_end_5d
    .catchall {:try_start_1 .. :try_end_5d} :catchall_62

    return p0

    .line 917
    :cond_5e
    nop

    .line 923
    :goto_5f
    nop

    .line 924
    return v0

    .line 919
    :cond_61
    return v0

    .line 921
    :catchall_62
    move-exception p0

    .line 922
    return v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Lorg/json/JSONObject;ILcom/ss/android/socialbase/appdownloader/a;)Z
    .registers 14

    .line 838
    const/4 v0, 0x0

    if-eqz p0, :cond_a4

    if-nez p2, :cond_7

    goto/16 :goto_a4

    .line 841
    :cond_7
    const-string v1, "jump_interval"

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 842
    cmp-long v1, v4, v2

    if-gtz v1, :cond_14

    .line 843
    return v0

    .line 845
    :cond_14
    const-string v1, "sp_ah_config"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 846
    const-string v6, "last_jump_unknown_source_time"

    invoke-interface {v1, v6, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 848
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    const-wide/32 v2, 0xea60

    div-long/2addr v7, v2

    .line 849
    cmp-long v2, v7, v4

    if-gez v2, :cond_2e

    .line 850
    return v0

    .line 852
    :cond_2e
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_a3

    .line 853
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v6, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 854
    const-string v1, "show_unknown_source_dialog"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4e

    move v1, v2

    goto :goto_4f

    :cond_4e
    move v1, v0

    .line 855
    :goto_4f
    if-eqz v1, :cond_99

    .line 856
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 857
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 858
    const-string v3, "intent"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 859
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "config"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 860
    const-string p1, "id"

    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 862
    :try_start_70
    invoke-static {p0, v1, v0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;Landroid/content/Intent;Z)Z

    move-result p0

    .line 863
    if-eqz p0, :cond_79

    .line 864
    invoke-static {p3, p2}, Lcom/ss/android/socialbase/appdownloader/b;->d(ILorg/json/JSONObject;)V
    :try_end_79
    .catchall {:try_start_70 .. :try_end_79} :catchall_7a

    .line 866
    :cond_79
    return v2

    .line 867
    :catchall_7a
    move-exception p0

    .line 868
    if-eqz p4, :cond_98

    .line 869
    iput v2, p4, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    .line 870
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "tryShowUnknownSourceDialog"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p4, Lcom/ss/android/socialbase/appdownloader/a;->c:Ljava/lang/String;

    .line 872
    :cond_98
    return v0

    .line 875
    :cond_99
    invoke-static {p0, p1, p3, p2}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;Landroid/content/Intent;ILorg/json/JSONObject;)Z

    move-result p0

    if-eqz p0, :cond_a2

    .line 876
    invoke-static {p3, p2}, Lcom/ss/android/socialbase/appdownloader/b;->c(ILorg/json/JSONObject;)V

    .line 878
    :cond_a2
    return v2

    .line 883
    :cond_a3
    return v0

    .line 839
    :cond_a4
    :goto_a4
    return v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Z)Z
    .registers 6

    .line 1088
    const/4 v0, 0x0

    if-eqz p0, :cond_1c

    if-nez p1, :cond_6

    goto :goto_1c

    .line 1091
    :cond_6
    const-string v1, "start_only_for_android"

    const/4 v2, 0x1

    if-eqz p2, :cond_15

    .line 1095
    :try_start_b
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1096
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_12

    .line 1097
    return v2

    .line 1098
    :catchall_12
    move-exception p0

    .line 1102
    nop

    .line 1108
    return v0

    .line 1104
    :cond_15
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1105
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1106
    return v2

    .line 1089
    :cond_1c
    :goto_1c
    return v0
.end method

.method private static a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Landroid/content/Intent;Lorg/json/JSONObject;Z)Z
    .registers 14

    .line 105
    const/4 v0, 0x0

    if-eqz p3, :cond_148

    if-nez p1, :cond_7

    goto/16 :goto_148

    .line 108
    :cond_7
    nop

    .line 109
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/a;

    invoke-direct {v1}, Lcom/ss/android/socialbase/appdownloader/a;-><init>()V

    .line 110
    const-string v2, "type"

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_147

    .line 112
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v3

    .line 116
    iput-object v2, v1, Lcom/ss/android/socialbase/appdownloader/a;->a:Ljava/lang/String;

    .line 117
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x4

    const-string v6, "plan_f"

    const/4 v7, -0x1

    const/4 v8, 0x1

    packed-switch v4, :pswitch_data_14a

    :cond_2b
    goto :goto_70

    :pswitch_2c
    const-string v4, "plan_g"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const/4 v4, 0x5

    goto :goto_71

    :pswitch_36
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const/4 v4, 0x2

    goto :goto_71

    :pswitch_3e
    const-string v4, "plan_e"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    move v4, v8

    goto :goto_71

    :pswitch_48
    const-string v4, "plan_d"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    move v4, v5

    goto :goto_71

    :pswitch_52
    const-string v4, "plan_c"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const/4 v4, 0x6

    goto :goto_71

    :pswitch_5c
    const-string v4, "plan_b"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const/4 v4, 0x3

    goto :goto_71

    :pswitch_66
    const-string v4, "plan_a"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    move v4, v0

    goto :goto_71

    :goto_70
    move v4, v7

    :goto_71
    packed-switch v4, :pswitch_data_15c

    goto/16 :goto_131

    .line 193
    :pswitch_76
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_82

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/c;->b()Z

    move-result v2

    if-eqz v2, :cond_131

    .line 194
    :cond_82
    const-string v2, "enable_for_all"

    invoke-virtual {p3, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_8c

    move v2, v8

    goto :goto_8d

    :cond_8c
    move v2, v0

    .line 195
    :goto_8d
    if-nez v2, :cond_91

    if-eqz p4, :cond_131

    .line 196
    :cond_91
    const-string p4, "show_unknown_source_on_startup"

    invoke-virtual {p3, p4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p4

    if-ne p4, v8, :cond_9a

    goto :goto_9b

    :cond_9a
    move v8, v0

    .line 197
    :goto_9b
    if-nez v8, :cond_131

    .line 198
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p4

    invoke-static {p0, p2, p3, p4, v1}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;Landroid/content/Intent;Lorg/json/JSONObject;ILcom/ss/android/socialbase/appdownloader/a;)Z

    move-result p0

    move v0, p0

    goto/16 :goto_131

    .line 184
    :pswitch_a8
    invoke-static {p3, v3}, Lcom/ss/android/socialbase/appdownloader/b;->b(Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/g/a;)Lcom/ss/android/socialbase/appdownloader/a;

    move-result-object p2

    .line 185
    iget p4, p2, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    if-eqz p4, :cond_b4

    .line 186
    nop

    .line 187
    move-object v1, p2

    goto/16 :goto_131

    .line 189
    :cond_b4
    invoke-static {p0, p1, p3, v1, v3}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lorg/json/JSONObject;Lcom/ss/android/socialbase/appdownloader/a;Lcom/ss/android/socialbase/downloader/g/a;)Z

    move-result p0

    .line 190
    move v0, p0

    goto/16 :goto_131

    .line 164
    :pswitch_bb
    invoke-static {p3}, Lcom/ss/android/socialbase/appdownloader/b;->c(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/appdownloader/a;

    move-result-object p3

    .line 165
    iget p4, p3, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    if-eqz p4, :cond_c7

    .line 166
    nop

    .line 167
    move-object v1, p3

    goto/16 :goto_131

    .line 171
    :cond_c7
    :try_start_c7
    invoke-static {p0, p2}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;Landroid/content/Intent;)I

    .line 173
    iput v0, v1, Lcom/ss/android/socialbase/appdownloader/a;->b:I
    :try_end_cc
    .catchall {:try_start_c7 .. :try_end_cc} :catchall_d0

    .line 174
    nop

    .line 180
    move v0, v8

    goto/16 :goto_131

    .line 175
    :catchall_d0
    move-exception p0

    .line 177
    iput v5, v1, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    .line 178
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/ss/android/socialbase/appdownloader/a;->c:Ljava/lang/String;

    .line 179
    nop

    .line 181
    goto :goto_131

    .line 147
    :pswitch_db
    invoke-static {p3, v3}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/g/a;)Lcom/ss/android/socialbase/appdownloader/a;

    move-result-object p2

    .line 148
    iget p4, p2, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    if-eqz p4, :cond_e6

    .line 149
    nop

    .line 150
    move-object v1, p2

    goto :goto_131

    .line 152
    :cond_e6
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isSavePathRedirected()Z

    move-result p2

    if-nez p2, :cond_f3

    .line 158
    invoke-virtual {p1, v7}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getAntiHijackErrorCode(I)I

    move-result p0

    iput p0, v1, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    .line 159
    goto :goto_131

    .line 161
    :cond_f3
    invoke-static {p0, p1, p3, v1}, Lcom/ss/android/socialbase/appdownloader/b;->b(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lorg/json/JSONObject;Lcom/ss/android/socialbase/appdownloader/a;)Z

    move-result p0

    .line 162
    move v0, p0

    goto :goto_131

    .line 121
    :pswitch_f9
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isSavePathRedirected()Z

    move-result p2

    if-nez p2, :cond_106

    .line 127
    invoke-virtual {p1, v7}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getAntiHijackErrorCode(I)I

    move-result p0

    iput p0, v1, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    .line 128
    goto :goto_131

    .line 133
    :cond_106
    :pswitch_106
    invoke-static {p3, v3}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/g/a;)Lcom/ss/android/socialbase/appdownloader/a;

    move-result-object p2

    .line 134
    iget p4, p2, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    if-eqz p4, :cond_111

    .line 135
    nop

    .line 136
    move-object v1, p2

    goto :goto_131

    .line 139
    :cond_111
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12c

    const-string p2, "file_content_uri"

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getDBJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_12c

    .line 140
    const/16 p0, 0xa

    invoke-virtual {p1, p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getAntiHijackErrorCode(I)I

    move-result p0

    iput p0, v1, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    .line 141
    goto :goto_131

    .line 143
    :cond_12c
    invoke-static {p0, p1, p3, v1}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lorg/json/JSONObject;Lcom/ss/android/socialbase/appdownloader/a;)Z

    move-result p0

    .line 144
    move v0, p0

    .line 204
    :cond_131
    :goto_131
    if-eqz v0, :cond_140

    .line 206
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempCacheData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/a;->a()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ah_attempt"

    invoke-virtual {p0, p3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_140
    sget-object p0, Lcom/ss/android/socialbase/appdownloader/b;->b:Lcom/ss/android/socialbase/appdownloader/b$c;

    if-eqz p0, :cond_147

    .line 209
    invoke-interface {p0, p1, v1}, Lcom/ss/android/socialbase/appdownloader/b$c;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/appdownloader/a;)V

    .line 215
    :cond_147
    return v0

    .line 106
    :cond_148
    :goto_148
    return v0

    nop

    :pswitch_data_14a
    .packed-switch -0x3ac18f35
        :pswitch_66
        :pswitch_5c
        :pswitch_52
        :pswitch_48
        :pswitch_3e
        :pswitch_36
        :pswitch_2c
    .end packed-switch

    :pswitch_data_15c
    .packed-switch 0x0
        :pswitch_f9
        :pswitch_f9
        :pswitch_106
        :pswitch_db
        :pswitch_bb
        :pswitch_a8
        :pswitch_76
    .end packed-switch
.end method

.method protected static a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Landroid/content/Intent;Z)Z
    .registers 10

    .line 80
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "ah_plans"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->e(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 81
    nop

    .line 82
    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    .line 83
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 84
    move v3, v1

    :goto_17
    if-ge v3, v2, :cond_3d

    .line 85
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 86
    if-eqz v4, :cond_3a

    invoke-static {v4}, Lcom/ss/android/socialbase/appdownloader/b;->d(Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-static {v4}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-static {v4}, Lcom/ss/android/socialbase/appdownloader/b;->b(Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 88
    invoke-static {p0, p1, p2, v4, p3}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Landroid/content/Intent;Lorg/json/JSONObject;Z)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 90
    nop

    .line 91
    const/4 v1, 0x1

    goto :goto_3d

    .line 84
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 96
    :cond_3d
    :goto_3d
    return v1
.end method

.method private static a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lorg/json/JSONObject;Lcom/ss/android/socialbase/appdownloader/a;)Z
    .registers 15

    .line 306
    const/4 v0, 0x0

    if-eqz p0, :cond_9d

    if-nez p2, :cond_7

    goto/16 :goto_9d

    .line 309
    :cond_7
    const-string v1, "device_plans"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 310
    iput-object v1, p3, Lcom/ss/android/socialbase/appdownloader/a;->e:Ljava/lang/String;

    .line 312
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9c

    .line 313
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 314
    nop

    .line 315
    nop

    .line 317
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v2

    .line 318
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 319
    return v0

    .line 321
    :cond_28
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    const/4 v4, 0x0

    .line 324
    nop

    .line 325
    array-length v5, v1

    move v6, v0

    :goto_36
    const/4 v7, 0x1

    if-ge v6, v5, :cond_8d

    aget-object v8, v1, v6

    .line 326
    invoke-static {p0, v8, p2, p1}, Lcom/ss/android/socialbase/appdownloader/a/d;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/appdownloader/a/a;

    move-result-object v9

    .line 327
    if-eqz v9, :cond_85

    .line 328
    invoke-virtual {v9}, Lcom/ss/android/socialbase/appdownloader/a/a;->b()Landroid/content/Intent;

    move-result-object v9

    .line 333
    if-eqz v9, :cond_78

    .line 335
    invoke-static {v3, p1, p2}, Lcom/ss/android/socialbase/appdownloader/b;->a(Ljava/io/File;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lorg/json/JSONObject;)Z

    move-result v10

    if-eqz v10, :cond_6a

    .line 341
    :try_start_4d
    invoke-static {p0, v9, v0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;Landroid/content/Intent;Z)Z
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_54

    .line 342
    nop

    .line 343
    nop

    .line 344
    move-object v4, v8

    goto :goto_8e

    .line 345
    :catchall_54
    move-exception v9

    .line 349
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " startActivity failed : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v9}, Lcom/ss/android/socialbase/appdownloader/b;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-static {p3, v7}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lcom/ss/android/socialbase/appdownloader/a;I)V

    .line 351
    goto :goto_85

    .line 353
    :cond_6a
    const/4 v7, 0x6

    invoke-static {p3, v7}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lcom/ss/android/socialbase/appdownloader/a;I)V

    .line 354
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " createDescFile failed! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_85

    .line 357
    :cond_78
    const/4 v7, 0x3

    invoke-static {p3, v7}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lcom/ss/android/socialbase/appdownloader/a;I)V

    .line 358
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " resolveActivity failed! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    :cond_85
    :goto_85
    const-string v7, "  "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    :cond_8d
    move v7, v0

    .line 363
    :goto_8e
    if-nez v7, :cond_97

    .line 364
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p3, Lcom/ss/android/socialbase/appdownloader/a;->c:Ljava/lang/String;

    goto :goto_9b

    .line 366
    :cond_97
    iput-object v4, p3, Lcom/ss/android/socialbase/appdownloader/a;->d:Ljava/lang/String;

    .line 367
    iput v0, p3, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    .line 369
    :goto_9b
    return v7

    .line 371
    :cond_9c
    return v0

    .line 307
    :cond_9d
    :goto_9d
    return v0
.end method

.method private static a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lorg/json/JSONObject;Lcom/ss/android/socialbase/appdownloader/a;Lcom/ss/android/socialbase/downloader/g/a;)Z
    .registers 7

    .line 222
    const-string p4, "type"

    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 223
    iput-object p4, p3, Lcom/ss/android/socialbase/appdownloader/a;->a:Ljava/lang/String;

    .line 226
    const-string v0, "vbi"

    invoke-static {p0, v0, p2, p1}, Lcom/ss/android/socialbase/appdownloader/a/d;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/appdownloader/a/a;

    move-result-object p1

    .line 227
    invoke-virtual {p1}, Lcom/ss/android/socialbase/appdownloader/a/a;->b()Landroid/content/Intent;

    move-result-object p1

    .line 228
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_19
    invoke-static {p0, p1}, Lcom/ss/android/socialbase/appdownloader/b;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_1e

    .line 238
    goto :goto_34

    .line 231
    :catchall_1e
    move-exception p0

    .line 235
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, " startActivity failed : "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-static {p3, v1}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lcom/ss/android/socialbase/appdownloader/a;I)V

    .line 237
    move p0, v0

    .line 239
    :goto_34
    if-nez p0, :cond_3d

    .line 240
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p3, Lcom/ss/android/socialbase/appdownloader/a;->c:Ljava/lang/String;

    goto :goto_3f

    .line 242
    :cond_3d
    iput v0, p3, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    .line 244
    :goto_3f
    return v1
.end method

.method private static a(Ljava/io/File;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lorg/json/JSONObject;)Z
    .registers 5

    .line 800
    const/4 p2, 0x0

    if-nez p0, :cond_4

    .line 801
    return p2

    .line 803
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 804
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const-string v0, "download_dir"

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 805
    nop

    .line 806
    nop

    .line 807
    const/4 v0, 0x0

    if-eqz p1, :cond_22

    .line 808
    const-string v1, "ins_desc"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_23

    .line 807
    :cond_22
    move-object p1, v0

    .line 810
    :goto_23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 811
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 812
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 817
    :cond_4b
    if-eqz v0, :cond_59

    .line 818
    :try_start_4d
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-eqz p0, :cond_59

    .line 819
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_56} :catch_57

    goto :goto_59

    .line 822
    :catch_57
    move-exception p0

    .line 826
    return p2

    .line 827
    :cond_59
    :goto_59
    nop

    .line 828
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Lorg/json/JSONArray;)Z
    .registers 13

    .line 644
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 646
    return v0

    .line 648
    :cond_4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 649
    nop

    .line 653
    if-nez v1, :cond_c

    .line 655
    return v0

    .line 657
    :cond_c
    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    :goto_f
    if-ge v2, v1, :cond_61

    .line 658
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 659
    if-eqz v4, :cond_5e

    .line 660
    const-string v5, "package_names"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 661
    const-string v6, "version_allow"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 662
    const-string v7, "version_block"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 664
    const-string v8, "allow_version_range"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 666
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 667
    return v0

    .line 669
    :cond_36
    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 670
    array-length v8, v5

    move v9, v0

    :goto_3e
    if-ge v9, v8, :cond_5e

    aget-object v10, v5, v9

    .line 671
    const-string v11, "market"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4e

    .line 672
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/c;->i()Ljava/lang/String;

    move-result-object v10

    .line 674
    :cond_4e
    invoke-static {v10}, Lcom/ss/android/socialbase/appdownloader/b;->b(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g$a;

    move-result-object v10

    .line 675
    if-eqz v10, :cond_5b

    .line 676
    invoke-static {v6, v7, v4, v10}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Lcom/ss/android/socialbase/appdownloader/g$a;)Z

    move-result v3

    .line 677
    if-nez v3, :cond_5b

    .line 678
    return v0

    .line 670
    :cond_5b
    add-int/lit8 v9, v9, 0x1

    goto :goto_3e

    .line 657
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 684
    :cond_61
    return v3
.end method

.method private static a(Lorg/json/JSONArray;Ljava/lang/String;)Z
    .registers 6

    .line 780
    const/4 v0, 0x0

    if-eqz p0, :cond_21

    if-nez p1, :cond_6

    goto :goto_21

    .line 783
    :cond_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 784
    move v2, v0

    :goto_b
    if-ge v2, v1, :cond_20

    .line 785
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 786
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 787
    const/4 p0, 0x1

    return p0

    .line 784
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 790
    :cond_20
    return v0

    .line 781
    :cond_21
    :goto_21
    return v0
.end method

.method private static a(Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Lcom/ss/android/socialbase/appdownloader/g$a;)Z
    .registers 8

    .line 738
    invoke-virtual {p3}, Lcom/ss/android/socialbase/appdownloader/g$a;->g()Ljava/lang/String;

    move-result-object v0

    .line 739
    invoke-virtual {p3}, Lcom/ss/android/socialbase/appdownloader/g$a;->f()I

    move-result p3

    .line 740
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 746
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_4c

    .line 748
    :try_start_27
    const-string p0, "[-,]"

    invoke-virtual {p2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 749
    move p1, v2

    :goto_2e
    array-length p2, p0

    if-ge p1, p2, :cond_4b

    .line 750
    aget-object p2, p0, p1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 751
    add-int/lit8 v0, p1, 0x1

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3f} :catch_47

    .line 752
    if-lt p3, p2, :cond_44

    if-gt p3, v0, :cond_44

    .line 753
    return v3

    .line 749
    :cond_44
    add-int/lit8 p1, p1, 0x2

    goto :goto_2e

    .line 756
    :catch_47
    move-exception p0

    .line 757
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 758
    :cond_4b
    goto :goto_6a

    .line 759
    :cond_4c
    if-eqz p0, :cond_5b

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_5b

    .line 761
    invoke-static {p0, v0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6a

    .line 762
    return v3

    .line 764
    :cond_5b
    if-eqz p1, :cond_6a

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_6a

    .line 766
    invoke-static {p1, v0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6a

    .line 767
    return v3

    .line 770
    :cond_6a
    :goto_6a
    return v2
.end method

.method public static a(Lorg/json/JSONObject;)Z
    .registers 4

    .line 278
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 279
    return v0

    .line 281
    :cond_4
    const/4 v1, -0x1

    const-string v2, "min_os_api"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    .line 282
    if-gez p0, :cond_e

    .line 284
    return v0

    .line 286
    :cond_e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 287
    if-lt v1, p0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public static b(Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/g/a;)Lcom/ss/android/socialbase/appdownloader/a;
    .registers 5

    .line 546
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/a;

    invoke-direct {v0}, Lcom/ss/android/socialbase/appdownloader/a;-><init>()V

    .line 547
    if-nez p0, :cond_8

    .line 548
    return-object v0

    .line 550
    :cond_8
    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 551
    iput-object v1, v0, Lcom/ss/android/socialbase/appdownloader/a;->a:Ljava/lang/String;

    .line 553
    const-string v1, "device_requirements"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 554
    nop

    .line 556
    :try_start_17
    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lorg/json/JSONArray;)Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_3a

    .line 562
    nop

    .line 563
    if-nez v1, :cond_23

    .line 565
    const/4 p0, 0x2

    invoke-static {v0, p0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lcom/ss/android/socialbase/appdownloader/a;I)V

    .line 566
    return-object v0

    .line 569
    :cond_23
    const-string v1, "vbi"

    iput-object v1, v0, Lcom/ss/android/socialbase/appdownloader/a;->e:Ljava/lang/String;

    .line 570
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, p0, p1}, Lcom/ss/android/socialbase/appdownloader/a/d;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/g/a;)Z

    move-result p0

    if-eqz p0, :cond_35

    .line 572
    const/4 p0, 0x0

    iput p0, v0, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    goto :goto_39

    .line 574
    :cond_35
    const/4 p0, 0x3

    invoke-static {v0, p0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lcom/ss/android/socialbase/appdownloader/a;I)V

    .line 576
    :goto_39
    return-object v0

    .line 557
    :catchall_3a
    move-exception p0

    .line 559
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check plan_g Config"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/ss/android/socialbase/appdownloader/a;->c:Ljava/lang/String;

    .line 560
    const/4 p0, 0x4

    invoke-static {v0, p0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lcom/ss/android/socialbase/appdownloader/a;I)V

    .line 561
    return-object v0
.end method

.method private static b(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g$a;
    .registers 4

    .line 688
    nop

    .line 689
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 691
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/socialbase/appdownloader/g$a;

    .line 692
    if-eqz p0, :cond_13

    .line 693
    move-object v2, p0

    .line 695
    :cond_13
    goto :goto_1e

    .line 696
    :cond_14
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/g;->b(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g$a;

    move-result-object v1

    .line 697
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    if-eqz v1, :cond_1e

    .line 699
    move-object v2, v1

    .line 702
    :cond_1e
    :goto_1e
    return-object v2
.end method

.method public static b(ILorg/json/JSONObject;)V
    .registers 5

    .line 1027
    const-string v0, "show_unknown_source_on_startup"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    move p1, v0

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 1028
    :goto_c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1030
    :try_start_11
    const-string v2, "scene"

    if-eqz p1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x2

    :goto_17
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1a} :catch_1b

    .line 1033
    goto :goto_1f

    .line 1031
    :catch_1b
    move-exception p1

    .line 1032
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1034
    :goto_1f
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->N()Lcom/ss/android/socialbase/downloader/d/c;

    move-result-object p1

    const-string v0, "guide_auth_dialog_cancel"

    invoke-interface {p1, p0, v0, v1}, Lcom/ss/android/socialbase/downloader/d/c;->b(ILjava/lang/String;Lorg/json/JSONObject;)V

    .line 1035
    return-void
.end method

.method private static b(IZZ)V
    .registers 7

    .line 1057
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1059
    :try_start_5
    const-string v1, "scene"

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz p1, :cond_d

    move p1, v2

    goto :goto_e

    :cond_d
    move p1, v3

    :goto_e
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1060
    const-string p1, "result_code"

    if-eqz p2, :cond_16

    goto :goto_17

    :cond_16
    move v2, v3

    :goto_17
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1a} :catch_1b

    .line 1063
    goto :goto_1f

    .line 1061
    :catch_1b
    move-exception p1

    .line 1062
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1064
    :goto_1f
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->N()Lcom/ss/android/socialbase/downloader/d/c;

    move-result-object p1

    const-string p2, "guide_auth_result"

    invoke-interface {p1, p0, p2, v0}, Lcom/ss/android/socialbase/downloader/d/c;->b(ILjava/lang/String;Lorg/json/JSONObject;)V

    .line 1065
    return-void
.end method

.method static synthetic b(Landroid/content/Context;)Z
    .registers 1

    .line 48
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/b;->d(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static b(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 3

    .line 1084
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;Landroid/content/Intent;Z)Z

    move-result p0

    return p0
.end method

.method private static b(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lorg/json/JSONObject;Lcom/ss/android/socialbase/appdownloader/a;)Z
    .registers 8

    .line 381
    const/4 v0, 0x0

    if-eqz p0, :cond_49

    if-nez p2, :cond_6

    goto :goto_49

    .line 384
    :cond_6
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v1

    .line 385
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 386
    return v0

    .line 388
    :cond_11
    const-string v2, "custom"

    iput-object v2, p3, Lcom/ss/android/socialbase/appdownloader/a;->d:Ljava/lang/String;

    .line 389
    invoke-static {p0, v2, p2, p1}, Lcom/ss/android/socialbase/appdownloader/a/d;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/appdownloader/a/a;

    move-result-object v2

    .line 390
    if-eqz v2, :cond_45

    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/a/a;->a()Z

    move-result v3

    if-nez v3, :cond_22

    goto :goto_45

    .line 394
    :cond_22
    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/a/a;->b()Landroid/content/Intent;

    move-result-object v2

    .line 395
    if-nez v2, :cond_29

    .line 396
    return v0

    .line 398
    :cond_29
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 399
    invoke-static {v3, p1, p2}, Lcom/ss/android/socialbase/appdownloader/b;->a(Ljava/io/File;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 400
    invoke-static {p0, v2}, Lcom/ss/android/socialbase/appdownloader/b;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_3e

    .line 401
    iput v0, p3, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    .line 402
    return p1

    .line 404
    :cond_3e
    iput p1, p3, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    goto :goto_44

    .line 407
    :cond_41
    const/4 p0, 0x6

    iput p0, p3, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    .line 409
    :goto_44
    return v0

    .line 391
    :cond_45
    :goto_45
    const/4 p0, 0x3

    iput p0, p3, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    .line 392
    return v0

    .line 382
    :cond_49
    :goto_49
    return v0
.end method

.method public static b(Lorg/json/JSONObject;)Z
    .registers 3

    .line 291
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 292
    return v0

    .line 294
    :cond_4
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->a()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 295
    return v0

    .line 297
    :cond_b
    const-string v1, "scy_mode"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public static c(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/appdownloader/a;
    .registers 4

    .line 585
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/a;

    invoke-direct {v0}, Lcom/ss/android/socialbase/appdownloader/a;-><init>()V

    .line 586
    if-nez p0, :cond_8

    .line 587
    return-object v0

    .line 589
    :cond_8
    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 590
    iput-object v1, v0, Lcom/ss/android/socialbase/appdownloader/a;->a:Ljava/lang/String;

    .line 592
    const-string v1, "device_requirements"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 593
    nop

    .line 595
    :try_start_17
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lorg/json/JSONArray;)Z

    move-result p0
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_27

    .line 607
    nop

    .line 611
    if-nez p0, :cond_23

    .line 613
    const/4 p0, 0x2

    invoke-static {v0, p0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lcom/ss/android/socialbase/appdownloader/a;I)V

    .line 614
    return-object v0

    .line 617
    :cond_23
    const/4 p0, 0x0

    iput p0, v0, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    .line 618
    return-object v0

    .line 599
    :catchall_27
    move-exception p0

    .line 601
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check plan_d Config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/ss/android/socialbase/appdownloader/a;->c:Ljava/lang/String;

    .line 602
    const/4 p0, 0x4

    invoke-static {v0, p0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lcom/ss/android/socialbase/appdownloader/a;I)V

    .line 606
    return-object v0
.end method

.method public static c(ILorg/json/JSONObject;)V
    .registers 5

    .line 1042
    const-string v0, "show_unknown_source_on_startup"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    move p1, v0

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 1043
    :goto_c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1045
    :try_start_11
    const-string v2, "scene"

    if-eqz p1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x2

    :goto_17
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1a} :catch_1b

    .line 1048
    goto :goto_1f

    .line 1046
    :catch_1b
    move-exception p1

    .line 1047
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1049
    :goto_1f
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->N()Lcom/ss/android/socialbase/downloader/d/c;

    move-result-object p1

    const-string v0, "guide_auth_open_setting"

    invoke-interface {p1, p0, v0, v1}, Lcom/ss/android/socialbase/downloader/d/c;->b(ILjava/lang/String;Lorg/json/JSONObject;)V

    .line 1050
    return-void
.end method

.method static synthetic c(Landroid/content/Context;)Z
    .registers 1

    .line 48
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/b;->e(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static d(ILorg/json/JSONObject;)V
    .registers 5

    .line 998
    const-string v0, "show_unknown_source_on_startup"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    move p1, v0

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 999
    :goto_c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1001
    :try_start_11
    const-string v2, "scene"

    if-eqz p1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x2

    :goto_17
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1a} :catch_1b

    .line 1004
    goto :goto_1f

    .line 1002
    :catch_1b
    move-exception p1

    .line 1003
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1005
    :goto_1f
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->N()Lcom/ss/android/socialbase/downloader/d/c;

    move-result-object p1

    const-string v0, "guide_auth_dialog_show"

    invoke-interface {p1, p0, v0, v1}, Lcom/ss/android/socialbase/downloader/d/c;->b(ILjava/lang/String;Lorg/json/JSONObject;)V

    .line 1006
    return-void
.end method

.method private static d(Landroid/content/Context;)Z
    .registers 3

    .line 956
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 957
    return v0

    .line 960
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "install_non_market_apps"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    if-lez p0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0

    .line 961
    :catchall_13
    move-exception p0

    .line 962
    return v0
.end method

.method private static d(Lorg/json/JSONObject;)Z
    .registers 5

    .line 252
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 253
    return v0

    .line 255
    :cond_4
    const-string v1, "device_rom"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 256
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 258
    return v0

    .line 260
    :cond_11
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/c;->g()Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1d

    .line 263
    return v3

    .line 265
    :cond_1d
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 266
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 268
    return v0

    .line 270
    :cond_2c
    return v3
.end method

.method private static e(Landroid/content/Context;)Z
    .registers 2

    .line 973
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 974
    return v0

    .line 977
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result p0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_d

    return p0

    .line 978
    :catchall_d
    move-exception p0

    .line 979
    return v0
.end method
