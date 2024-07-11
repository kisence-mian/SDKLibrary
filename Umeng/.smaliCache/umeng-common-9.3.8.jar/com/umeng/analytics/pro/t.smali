.class public Lcom/umeng/analytics/pro/t;
.super Ljava/lang/Object;
.source "SessionTracker.java"

# interfaces
.implements Lcom/umeng/analytics/pro/x$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/t$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "session_start_time"

.field public static final b:Ljava/lang/String; = "session_end_time"

.field public static final c:Ljava/lang/String; = "session_id"

.field public static final d:Ljava/lang/String; = "pre_session_id"

.field public static final e:Ljava/lang/String; = "a_start_time"

.field public static final f:Ljava/lang/String; = "a_end_time"

.field public static final g:Ljava/lang/String; = "fg_count"

.field private static h:Ljava/lang/String;

.field private static i:Landroid/content/Context;

.field private static j:Z

.field private static k:J

.field private static l:Z

.field private static m:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/analytics/pro/t;->h:Ljava/lang/String;

    .line 51
    sput-object v0, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/analytics/pro/t;->j:Z

    .line 54
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/umeng/analytics/pro/t;->k:J

    .line 57
    const/4 v2, 0x1

    sput-boolean v2, Lcom/umeng/analytics/pro/t;->l:Z

    .line 61
    sput-wide v0, Lcom/umeng/analytics/pro/t;->m:J

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {}, Lcom/umeng/analytics/pro/x;->a()Lcom/umeng/analytics/pro/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/pro/x;->a(Lcom/umeng/analytics/pro/x$a;)V

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/t$1;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Lcom/umeng/analytics/pro/t;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)J
    .registers 4

    .line 85
    nop

    .line 87
    const-wide/16 v0, 0x0

    :try_start_3
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v2, "fg_count"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_e

    .line 90
    goto :goto_f

    .line 88
    :catchall_e
    move-exception p0

    .line 91
    :goto_f
    return-wide v0
.end method

.method public static a()Lcom/umeng/analytics/pro/t;
    .registers 1

    .line 73
    invoke-static {}, Lcom/umeng/analytics/pro/t$a;->a()Lcom/umeng/analytics/pro/t;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;JJJ)V
    .registers 15

    .line 570
    sget-object v0, Lcom/umeng/analytics/pro/t;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 571
    invoke-static {}, Lcom/umeng/analytics/pro/x;->a()Lcom/umeng/analytics/pro/x;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/x;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/t;->h:Ljava/lang/String;

    .line 573
    :cond_14
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9f

    sget-object v0, Lcom/umeng/analytics/pro/t;->h:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto/16 :goto_9f

    .line 578
    :cond_24
    :try_start_24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 580
    const-string v1, "__f"

    invoke-virtual {v0, v1, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 583
    const-string p5, "__g"

    invoke-virtual {v0, p5, p7, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 585
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p5

    invoke-virtual {p5}, Lcom/umeng/analytics/b;->b()Lorg/json/JSONObject;

    move-result-object p5

    .line 586
    if-eqz p5, :cond_48

    invoke-virtual {p5}, Lorg/json/JSONObject;->length()I

    move-result p6

    if-lez p6, :cond_48

    .line 587
    const-string p6, "__sp"

    invoke-virtual {v0, p6, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 590
    :cond_48
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p5

    invoke-virtual {p5}, Lcom/umeng/analytics/b;->c()Lorg/json/JSONObject;

    move-result-object p5

    .line 591
    if-eqz p5, :cond_5d

    invoke-virtual {p5}, Lorg/json/JSONObject;->length()I

    move-result p6

    if-lez p6, :cond_5d

    .line 592
    const-string p6, "__pp"

    invoke-virtual {v0, p6, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 594
    :cond_5d
    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p5

    sget-object p6, Lcom/umeng/analytics/pro/t;->h:Ljava/lang/String;

    sget-object v1, Lcom/umeng/analytics/pro/h$a;->d:Lcom/umeng/analytics/pro/h$a;

    invoke-virtual {p5, p6, v0, v1}, Lcom/umeng/analytics/pro/h;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/h$a;)Z
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_68} :catch_69

    goto :goto_6a

    .line 596
    :catch_69
    move-exception p5

    :goto_6a
    nop

    .line 600
    :try_start_6b
    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5}, Lorg/json/JSONObject;-><init>()V

    .line 601
    const-string p6, "__e"

    invoke-virtual {p5, p6, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 602
    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p3

    sget-object p4, Lcom/umeng/analytics/pro/h$a;->c:Lcom/umeng/analytics/pro/h$a;

    invoke-virtual {p3, p2, p5, p4}, Lcom/umeng/analytics/pro/h;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/h$a;)Z

    .line 603
    const-string p3, "header_foreground_count"

    invoke-static {p3}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_9b

    .line 606
    sput-wide p7, Lcom/umeng/analytics/pro/t;->m:J

    .line 607
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/t;->d(Landroid/content/Context;)V

    .line 608
    sget-object v0, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    const/16 v1, 0x2015

    .line 609
    invoke-static {v0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 608
    invoke-static/range {v0 .. v5}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEventEx(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;J)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_99} :catch_9a

    goto :goto_9b

    .line 613
    :catch_9a
    move-exception p1

    :cond_9b
    :goto_9b
    nop

    .line 615
    sput-object p2, Lcom/umeng/analytics/pro/t;->h:Ljava/lang/String;

    .line 616
    return-void

    .line 574
    :cond_9f
    :goto_9f
    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .registers 14

    .line 619
    sget-object v0, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 620
    if-nez v0, :cond_9

    .line 621
    return-void

    .line 627
    :cond_9
    const-string v1, "session_end_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 630
    :try_start_11
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 631
    const-string v5, "__ii"

    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 632
    const-string v5, "__e"

    invoke-virtual {v4, v5, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 633
    const-string p2, "__f"

    invoke-virtual {v4, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 635
    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->getLocation()[D

    move-result-object p2

    .line 636
    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_4e

    .line 637
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 638
    const-string v5, "lat"

    aget-wide v6, p2, p3

    invoke-virtual {v1, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 639
    const-string v5, "lng"

    aget-wide v6, p2, v0

    invoke-virtual {v1, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 640
    const-string p2, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, p2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 641
    const-string p2, "__d"

    invoke-virtual {v4, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 644
    :cond_4e
    const-string p2, "android.net.TrafficStats"

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 645
    const-string v1, "getUidRxBytes"

    new-array v5, v0, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, p3

    invoke-virtual {p2, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 646
    const-string v5, "getUidTxBytes"

    new-array v6, v0, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, p3

    invoke-virtual {p2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 647
    sget-object v5, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 648
    const/4 v6, -0x1

    if-ne v5, v6, :cond_78

    .line 649
    return-void

    .line 651
    :cond_78
    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, p3

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 652
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p3

    invoke-virtual {p2, v7, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 653
    cmp-long v0, v8, v2

    if-lez v0, :cond_ba

    cmp-long v0, p2, v2

    if-gtz v0, :cond_a6

    goto :goto_ba

    .line 656
    :cond_a6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 657
    const-string v1, "download_traffic"

    invoke-virtual {v0, v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 658
    const-string v1, "upload_traffic"

    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 659
    const-string p2, "__c"

    invoke-virtual {v4, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 662
    :cond_ba
    :goto_ba
    sget-object p2, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p2

    sget-object p3, Lcom/umeng/analytics/pro/h$a;->e:Lcom/umeng/analytics/pro/h$a;

    invoke-virtual {p2, p1, v4, p3}, Lcom/umeng/analytics/pro/h;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/h$a;)Z

    .line 663
    sget-object p1, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/u;->a(Landroid/content/Context;)V

    .line 664
    sget-object p1, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->c(Landroid/content/Context;)V
    :try_end_cf
    .catchall {:try_start_11 .. :try_end_cf} :catchall_d0

    goto :goto_d1

    .line 666
    :catchall_d0
    move-exception p1

    :goto_d1
    nop

    .line 667
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 6

    .line 95
    sget-object p0, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 96
    if-eqz p0, :cond_1f

    .line 97
    const-wide/16 v0, 0x0

    const-string v2, "fg_count"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 99
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 100
    if-eqz p0, :cond_1f

    .line 101
    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    :cond_1f
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .registers 5

    .line 78
    :try_start_0
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 79
    const-string v0, "fg_count"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 80
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    goto :goto_14

    .line 81
    :catchall_13
    move-exception p1

    :goto_14
    nop

    .line 82
    return-void
.end method

.method private e(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 383
    sget-object v0, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 384
    if-eqz p1, :cond_c

    .line 385
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    .line 393
    :cond_c
    invoke-static {}, Lcom/umeng/analytics/pro/x;->a()Lcom/umeng/analytics/pro/x;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/x;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 397
    :try_start_16
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/t;->f(Landroid/content/Context;)V

    .line 399
    sget-object p1, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/n;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/n;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/umeng/analytics/pro/n;->d(Ljava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_24

    goto :goto_25

    .line 401
    :catchall_24
    move-exception p1

    :goto_25
    nop

    .line 403
    return-object v0
.end method

.method private f(Landroid/content/Context;)V
    .registers 3

    .line 413
    invoke-static {p1}, Lcom/umeng/analytics/pro/n;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/n;->b(Landroid/content/Context;)V

    .line 415
    invoke-static {p1}, Lcom/umeng/analytics/pro/n;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/n;->d()V

    .line 416
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;JZ)Ljava/lang/String;
    .registers 8

    .line 317
    invoke-static {}, Lcom/umeng/analytics/pro/x;->a()Lcom/umeng/analytics/pro/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/x;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>> onInstantSessionInternal: current session id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MobclickRT"

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 320
    const/4 p1, 0x0

    return-object p1

    .line 323
    :cond_28
    :try_start_28
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 324
    const-string v2, "__e"

    invoke-virtual {v1, v2, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 326
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/b;->b()Lorg/json/JSONObject;

    move-result-object p2

    .line 327
    if-eqz p2, :cond_47

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p3

    if-lez p3, :cond_47

    .line 328
    const-string p3, "__sp"

    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    :cond_47
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/b;->c()Lorg/json/JSONObject;

    move-result-object p2

    .line 332
    if-eqz p2, :cond_5c

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p3

    if-lez p3, :cond_5c

    .line 333
    const-string p3, "__pp"

    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    :cond_5c
    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p2

    sget-object p3, Lcom/umeng/analytics/pro/h$a;->f:Lcom/umeng/analytics/pro/h$a;

    invoke-virtual {p2, v0, v1, p3}, Lcom/umeng/analytics/pro/h;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/h$a;)Z

    .line 340
    invoke-static {p1}, Lcom/umeng/analytics/pro/n;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/n;

    move-result-object p1

    invoke-virtual {p1, v1, p4}, Lcom/umeng/analytics/pro/n;->a(Ljava/lang/Object;Z)V
    :try_end_6c
    .catchall {:try_start_28 .. :try_end_6c} :catchall_6d

    goto :goto_6e

    .line 341
    :catchall_6d
    move-exception p1

    :goto_6e
    nop

    .line 343
    return-object v0
.end method

.method public a(Landroid/content/Context;J)V
    .registers 5

    .line 109
    sget-object p1, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 110
    if-eqz p1, :cond_16

    .line 111
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 112
    if-eqz p1, :cond_16

    .line 113
    const-string v0, "session_start_time"

    invoke-interface {p1, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 117
    :cond_16
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 15

    .line 123
    const-string v0, ""

    const-string v1, "versionname"

    :try_start_4
    sget-object v2, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    if-nez v2, :cond_10

    .line 124
    if-eqz p1, :cond_10

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    .line 128
    :cond_10
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 129
    sget-object p2, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 130
    if-nez p2, :cond_1f

    .line 131
    return-void

    .line 133
    :cond_1f
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 134
    if-nez v4, :cond_26

    .line 135
    return-void

    .line 138
    :cond_26
    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 139
    sget-object v6, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 141
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_17e

    const-string v8, "MobclickRT"

    const-string v9, "versioncode"

    const/4 v10, 0x0

    if-eqz v7, :cond_4e

    .line 143
    :try_start_3b
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v9, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 144
    invoke-interface {v4, v1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 145
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_ca

    .line 146
    :cond_4e
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ca

    .line 147
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--->>> onStartSessionInternal: upgrade version: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "-> "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-interface {p2, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 150
    const-string v8, "pre_date"

    invoke-interface {p2, v8, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 151
    const-string v11, "pre_version"

    invoke-interface {p2, v11, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 152
    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 155
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v4, v9, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 156
    invoke-interface {v4, v1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 158
    const-string p1, "vers_date"

    invoke-interface {v4, p1, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    const-string p1, "vers_pre_version"

    invoke-interface {v4, p1, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 160
    const-string p1, "cur_version"

    invoke-interface {v4, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 176
    const-string p1, "vers_code"

    invoke-interface {v4, p1, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 177
    const-string p1, "vers_name"

    invoke-interface {v4, p1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 182
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 184
    sget-boolean p1, Lcom/umeng/analytics/pro/t;->l:Z

    if-eqz p1, :cond_b8

    .line 185
    sput-boolean v10, Lcom/umeng/analytics/pro/t;->l:Z

    .line 188
    :cond_b8
    sget-boolean p1, Lcom/umeng/analytics/pro/t;->j:Z

    if-eqz p1, :cond_c9

    .line 189
    sput-boolean v10, Lcom/umeng/analytics/pro/t;->j:Z

    .line 193
    sget-object p1, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v2, v3, p2}, Lcom/umeng/analytics/pro/t;->b(Landroid/content/Context;JZ)Z

    .line 194
    sget-object p1, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-virtual {p0, p1, v2, v3}, Lcom/umeng/analytics/pro/t;->b(Landroid/content/Context;J)V

    .line 197
    :cond_c9
    return-void

    .line 200
    :cond_ca
    :goto_ca
    sget-boolean v0, Lcom/umeng/analytics/pro/t;->j:Z

    if-eqz v0, :cond_10d

    .line 201
    sput-boolean v10, Lcom/umeng/analytics/pro/t;->j:Z

    .line 202
    sget-boolean p2, Lcom/umeng/analytics/pro/t;->l:Z

    if-eqz p2, :cond_d6

    .line 203
    sput-boolean v10, Lcom/umeng/analytics/pro/t;->l:Z

    .line 205
    :cond_d6
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/t;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/pro/t;->h:Ljava/lang/String;

    .line 206
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u521b\u5efa\u65b0\u4f1a\u8bdd: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p2, Lcom/umeng/analytics/pro/t;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 207
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mSessionChanged flag has been set, Start new session: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p2, Lcom/umeng/analytics/pro/t;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17f

    .line 209
    :cond_10d
    const-string v0, "session_id"

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/umeng/analytics/pro/t;->h:Ljava/lang/String;

    .line 210
    const-string p2, "a_start_time"

    invoke-interface {v4, p2, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 211
    const-string p2, "a_end_time"

    const-wide/16 v0, 0x0

    invoke-interface {v4, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 212
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 213
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5ef6\u7eed\u4e0a\u4e00\u4e2a\u4f1a\u8bdd: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v0, Lcom/umeng/analytics/pro/t;->h:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 214
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Extend current session: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v0, Lcom/umeng/analytics/pro/t;->h:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v8, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    sget-boolean p2, Lcom/umeng/analytics/pro/t;->l:Z

    if-eqz p2, :cond_171

    .line 216
    sput-boolean v10, Lcom/umeng/analytics/pro/t;->l:Z

    .line 217
    const-string p2, "header_foreground_count"

    invoke-static {p2}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_171

    .line 219
    sget-object v0, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    const/16 v1, 0x2015

    .line 220
    invoke-static {v0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 219
    invoke-static/range {v0 .. v5}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEventEx(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;J)V

    .line 226
    :cond_171
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/t;->f(Landroid/content/Context;)V

    .line 228
    sget-object p1, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/n;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/n;

    move-result-object p1

    invoke-virtual {p1, v10}, Lcom/umeng/analytics/pro/n;->a(Z)V
    :try_end_17d
    .catchall {:try_start_3b .. :try_end_17d} :catchall_17e

    goto :goto_17f

    .line 230
    :catchall_17e
    move-exception p1

    :goto_17f
    nop

    .line 231
    return-void
.end method

.method public a(Ljava/lang/String;JJJ)V
    .registers 8

    .line 561
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_7

    .line 562
    return-void

    .line 564
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/analytics/pro/t;->a(Ljava/lang/String;J)V

    .line 565
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JJJ)V
    .registers 18

    .line 548
    sget-object v1, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/umeng/analytics/pro/t;->a(Landroid/content/Context;Ljava/lang/String;JJJ)V

    .line 549
    const-string v0, "MobclickRT"

    const-string v1, "saveSessionToDB: complete"

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->SUB_PROCESS_EVENT:Z

    if-eqz v0, :cond_2a

    .line 552
    sget-object v0, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    const v1, 0x9051

    .line 554
    invoke-static {v0}, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 552
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 556
    :cond_2a
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 526
    sget-object v0, Lcom/umeng/analytics/pro/t;->h:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;J)V
    .registers 4

    .line 511
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 512
    if-nez p1, :cond_7

    .line 513
    return-void

    .line 520
    :cond_7
    :try_start_7
    sget-object p1, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/n;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/n;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/pro/n;->c(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    goto :goto_13

    .line 521
    :catchall_12
    move-exception p1

    :goto_13
    nop

    .line 522
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 10

    .line 240
    const-string v0, "MobclickRT"

    :try_start_2
    sget-object v1, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    if-nez v1, :cond_c

    .line 241
    invoke-static {p1}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    .line 245
    :cond_c
    if-nez p2, :cond_13

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    goto :goto_19

    .line 248
    :cond_13
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 251
    :goto_19
    sget-object v1, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 252
    if-nez v1, :cond_22

    .line 253
    return-void

    .line 256
    :cond_22
    const-string v2, "a_end_time"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/umeng/analytics/pro/t;->k:J

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------>>> lastActivityEndTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/umeng/analytics/pro/t;->k:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v2, "versionname"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 259
    sget-object v3, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 260
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 261
    if-nez v1, :cond_59

    .line 262
    return-void

    .line 265
    :cond_59
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_5d
    .catchall {:try_start_2 .. :try_end_5d} :catchall_cd

    const-string v5, "session_start_time"

    const/4 v6, 0x1

    if-nez v4, :cond_a5

    :try_start_62
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a5

    .line 266
    const-string v2, "--->>> requestNewInstantSessionIf: version upgrade"

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-interface {v1, v5, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 273
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 276
    sget-object v1, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/n;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/n;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v6}, Lcom/umeng/analytics/pro/n;->a(Ljava/lang/Object;Z)V

    .line 278
    invoke-static {}, Lcom/umeng/analytics/pro/x;->a()Lcom/umeng/analytics/pro/x;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/umeng/analytics/pro/x;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->>> force generate new session: session id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    sput-boolean v6, Lcom/umeng/analytics/pro/t;->j:Z

    .line 281
    sget-object v0, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-virtual {p0, v0, p1, p2, v6}, Lcom/umeng/analytics/pro/t;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    .line 282
    return-void

    .line 286
    :cond_a5
    invoke-static {}, Lcom/umeng/analytics/pro/x;->a()Lcom/umeng/analytics/pro/x;

    move-result-object v2

    sget-object v3, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/pro/x;->e(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c5

    .line 288
    const-string v2, "--->>> More then 30 sec from last session."

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    sput-boolean v6, Lcom/umeng/analytics/pro/t;->j:Z

    .line 292
    invoke-interface {v1, v5, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 293
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 295
    sget-object v0, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-virtual {p0, v0, p1, p2, v3}, Lcom/umeng/analytics/pro/t;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    goto :goto_cc

    .line 297
    :cond_c5
    const-string p1, "--->>> less then 30 sec from last session, do nothing."

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    sput-boolean v3, Lcom/umeng/analytics/pro/t;->j:Z
    :try_end_cc
    .catchall {:try_start_62 .. :try_end_cc} :catchall_cd

    .line 303
    :goto_cc
    goto :goto_ce

    .line 301
    :catchall_cd
    move-exception p1

    .line 305
    :goto_ce
    return-void
.end method

.method public b(Landroid/content/Context;JZ)Z
    .registers 15

    .line 426
    nop

    .line 429
    const/4 v0, 0x0

    :try_start_2
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 430
    if-nez v1, :cond_9

    .line 431
    return v0

    .line 434
    :cond_9
    invoke-static {}, Lcom/umeng/analytics/pro/x;->a()Lcom/umeng/analytics/pro/x;

    move-result-object v2

    sget-object v3, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/pro/x;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 436
    if-nez v2, :cond_16

    .line 437
    return v0

    .line 440
    :cond_16
    const-string v3, "a_start_time"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 441
    const-string v3, "a_end_time"

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_f9

    .line 442
    nop

    .line 444
    cmp-long v1, v6, v4

    if-lez v1, :cond_fa

    cmp-long v1, v8, v4

    if-nez v1, :cond_fa

    .line 445
    const/4 v0, 0x1

    .line 446
    const-string v1, "MobclickRT"

    if-eqz p4, :cond_73

    .line 449
    :try_start_32
    sget-wide v6, Lcom/umeng/analytics/pro/t;->k:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_50

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "------>>> lastActivityEndTime = 0, In-app upgrade, use currentTime: = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v6, p2

    goto :goto_69

    .line 452
    :cond_50
    nop

    .line 453
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "------>>> lastActivityEndTime != 0, app upgrade, use lastActivityEndTime: = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v8, Lcom/umeng/analytics/pro/t;->k:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :goto_69
    sget-object v3, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p0, v3, v8}, Lcom/umeng/analytics/pro/t;->c(Landroid/content/Context;Ljava/lang/Object;)V

    goto :goto_7d

    .line 458
    :cond_73
    sget-object v3, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/umeng/analytics/pro/t;->c(Landroid/content/Context;Ljava/lang/Object;)V
    :try_end_7c
    .catchall {:try_start_32 .. :try_end_7c} :catchall_f9

    move-wide v6, p2

    .line 463
    :goto_7d
    :try_start_7d
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_82
    .catchall {:try_start_7d .. :try_end_82} :catchall_f7

    .line 465
    const-string v8, "__f"

    if-eqz p4, :cond_8a

    .line 467
    :try_start_86
    invoke-virtual {v3, v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_8d

    .line 470
    :cond_8a
    invoke-virtual {v3, v8, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 473
    :goto_8d
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/b;->b()Lorg/json/JSONObject;

    move-result-object p2

    .line 474
    if-eqz p2, :cond_a2

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p3

    if-lez p3, :cond_a2

    .line 475
    const-string p3, "__sp"

    invoke-virtual {v3, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 478
    :cond_a2
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/b;->c()Lorg/json/JSONObject;

    move-result-object p2

    .line 479
    if-eqz p2, :cond_b7

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p3

    if-lez p3, :cond_b7

    .line 480
    const-string p3, "__pp"

    invoke-virtual {v3, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 483
    :cond_b7
    const-string p2, "header_foreground_count"

    invoke-static {p2}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result p2
    :try_end_bd
    .catchall {:try_start_86 .. :try_end_bd} :catchall_f7

    const-string p3, "__g"

    if-eqz p2, :cond_e1

    .line 484
    :try_start_c1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "--->>>*** foregroundCount = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-wide v6, Lcom/umeng/analytics/pro/t;->m:J

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    sget-wide v6, Lcom/umeng/analytics/pro/t;->m:J

    invoke-virtual {v3, p3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 486
    sput-wide v4, Lcom/umeng/analytics/pro/t;->m:J

    goto :goto_e4

    .line 488
    :cond_e1
    invoke-virtual {v3, p3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 491
    :goto_e4
    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p1

    sget-object p2, Lcom/umeng/analytics/pro/h$a;->d:Lcom/umeng/analytics/pro/h$a;

    invoke-virtual {p1, v2, v3, p2}, Lcom/umeng/analytics/pro/h;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/h$a;)Z

    .line 494
    sget-object p1, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/n;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/n;->e()V
    :try_end_f6
    .catchall {:try_start_c1 .. :try_end_f6} :catchall_f7

    goto :goto_f8

    .line 496
    :catchall_f7
    move-exception p1

    :goto_f8
    goto :goto_fa

    .line 501
    :catchall_f9
    move-exception p1

    :cond_fa
    :goto_fa
    nop

    .line 502
    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 542
    sget-object v0, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/t;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 532
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/t;->h:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 533
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "session_id"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    return-object p1

    .line 535
    :catchall_10
    move-exception p1

    :cond_11
    nop

    .line 537
    sget-object p1, Lcom/umeng/analytics/pro/t;->h:Ljava/lang/String;

    return-object p1
.end method

.method public c(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 9

    .line 348
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 349
    if-eqz p1, :cond_c

    .line 350
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    .line 353
    :cond_c
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 354
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 355
    if-nez p1, :cond_19

    .line 356
    return-void

    .line 359
    :cond_19
    const-string p2, "a_start_time"

    const-wide/16 v2, 0x0

    invoke-interface {p1, p2, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 361
    cmp-long p2, v4, v2

    if-nez p2, :cond_2b

    .line 362
    const-string p1, "onPause called before onResume"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    goto :goto_56

    .line 365
    :cond_2b
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 367
    const-string p2, "MobclickRT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->>> onEndSessionInternal: write activity end time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string p2, "a_end_time"

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 369
    const-string p2, "session_end_time"

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 371
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_54
    .catchall {:try_start_0 .. :try_end_54} :catchall_55

    goto :goto_56

    .line 373
    :catchall_55
    move-exception p1

    :goto_56
    nop

    .line 374
    return-void
.end method
