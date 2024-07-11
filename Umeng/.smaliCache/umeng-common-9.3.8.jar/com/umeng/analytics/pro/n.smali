.class public Lcom/umeng/analytics/pro/n;
.super Ljava/lang/Object;
.source "CoreProtocolImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/n$c;,
        Lcom/umeng/analytics/pro/n$a;,
        Lcom/umeng/analytics/pro/n$d;,
        Lcom/umeng/analytics/pro/n$b;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context; = null

.field private static final l:Ljava/lang/String; = "first_activate_time"

.field private static final m:Ljava/lang/String; = "ana_is_f"

.field private static final n:Ljava/lang/String; = "thtstart"

.field private static final o:Ljava/lang/String; = "dstk_last_time"

.field private static final p:Ljava/lang/String; = "dstk_cnt"

.field private static final q:Ljava/lang/String; = "gkvc"

.field private static final r:Ljava/lang/String; = "ekvc"

.field private static final t:Ljava/lang/String; = "-1"

.field private static final x:Ljava/lang/String; = "com.umeng.umcrash.UMCrashUtils"

.field private static y:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static z:Ljava/lang/reflect/Method;


# instance fields
.field private b:Lcom/umeng/analytics/pro/n$c;

.field private c:Landroid/content/SharedPreferences;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Lorg/json/JSONArray;

.field private final h:I

.field private i:I

.field private j:I

.field private k:J

.field private final s:J

.field private u:Z

.field private v:Z

.field private w:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    .line 107
    sput-object v0, Lcom/umeng/analytics/pro/n;->y:Ljava/lang/Class;

    .line 108
    sput-object v0, Lcom/umeng/analytics/pro/n;->z:Ljava/lang/reflect/Method;

    .line 111
    invoke-static {}, Lcom/umeng/analytics/pro/n;->h()V

    .line 112
    return-void
.end method

.method private constructor <init>()V
    .registers 6

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/n;->b:Lcom/umeng/analytics/pro/n$c;

    .line 71
    iput-object v0, p0, Lcom/umeng/analytics/pro/n;->c:Landroid/content/SharedPreferences;

    .line 72
    iput-object v0, p0, Lcom/umeng/analytics/pro/n;->d:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/umeng/analytics/pro/n;->e:Ljava/lang/String;

    .line 78
    const/16 v0, 0xa

    iput v0, p0, Lcom/umeng/analytics/pro/n;->f:I

    .line 80
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/n;->g:Lorg/json/JSONArray;

    .line 81
    const/16 v0, 0x1388

    iput v0, p0, Lcom/umeng/analytics/pro/n;->h:I

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/analytics/pro/n;->i:I

    .line 83
    iput v0, p0, Lcom/umeng/analytics/pro/n;->j:I

    .line 84
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/umeng/analytics/pro/n;->k:J

    .line 93
    const-wide/32 v3, 0x1b77400

    iput-wide v3, p0, Lcom/umeng/analytics/pro/n;->s:J

    .line 97
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/n;->u:Z

    .line 98
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/n;->v:Z

    .line 102
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/umeng/analytics/pro/n;->w:Ljava/lang/Object;

    .line 144
    :try_start_34
    sget-object v3, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 145
    const-string v4, "thtstart"

    invoke-interface {v3, v4, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/umeng/analytics/pro/n;->k:J

    .line 146
    const-string v1, "gkvc"

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/umeng/analytics/pro/n;->i:I

    .line 147
    const-string v1, "ekvc"

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/umeng/analytics/pro/n;->j:I

    .line 148
    new-instance v0, Lcom/umeng/analytics/pro/n$c;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/n$c;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/n;->b:Lcom/umeng/analytics/pro/n$c;
    :try_end_59
    .catchall {:try_start_34 .. :try_end_59} :catchall_5a

    goto :goto_5b

    .line 150
    :catchall_5a
    move-exception v0

    :goto_5b
    nop

    .line 151
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/n$1;)V
    .registers 2

    .line 64
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/pro/n;
    .registers 2

    .line 158
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 159
    if-eqz p0, :cond_c

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    .line 163
    :cond_c
    invoke-static {}, Lcom/umeng/analytics/pro/n$b;->a()Lcom/umeng/analytics/pro/n;

    move-result-object p0

    return-object p0
.end method

.method private a(Lorg/json/JSONObject;J)Lorg/json/JSONObject;
    .registers 9

    .line 920
    const-string v0, "header"

    :try_start_2
    invoke-static {p1}, Lcom/umeng/analytics/pro/p;->a(Lorg/json/JSONObject;)J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-lez v3, :cond_22

    .line 921
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 923
    const-string v2, "eof"

    invoke-static {p1}, Lcom/umeng/analytics/pro/p;->a(Lorg/json/JSONObject;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 924
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 927
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0, p2, p3, p1}, Lcom/umeng/analytics/pro/p;->a(Landroid/content/Context;JLorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_21

    goto :goto_22

    .line 930
    :catchall_21
    move-exception p2

    :cond_22
    :goto_22
    nop

    .line 931
    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 200
    sget-object v0, Lcom/umeng/analytics/pro/n;->y:Ljava/lang/Class;

    if-eqz v0, :cond_1d

    sget-object v1, Lcom/umeng/analytics/pro/n;->z:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1d

    .line 202
    const/4 v2, 0x2

    :try_start_9
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    .line 205
    goto :goto_1d

    .line 203
    :catchall_15
    move-exception p1

    .line 204
    const-string p1, "MobclickRT"

    const-string p2, "--->>> reflect call setPuidAndProvider method of crash lib failed."

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_1d
    :goto_1d
    return-void
.end method

.method private a(JI)Z
    .registers 8

    .line 1452
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_1e

    .line 1457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1458
    sub-long/2addr v1, p1

    const-wide/32 p1, 0x1b77400

    cmp-long v3, v1, p1

    if-lez v3, :cond_17

    .line 1459
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->o()V

    .line 1460
    return v0

    .line 1462
    :cond_17
    const/16 p1, 0x1388

    if-ge p3, p1, :cond_1c

    .line 1463
    return v0

    .line 1465
    :cond_1c
    const/4 p1, 0x0

    return p1

    .line 1469
    :cond_1e
    return v0
.end method

.method private a(Lorg/json/JSONArray;)Z
    .registers 10

    .line 583
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 584
    nop

    .line 585
    nop

    .line 586
    nop

    .line 587
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "$$_onUMengEnterForeground"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "$$_onUMengEnterBackground"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v5, "$$_onUMengEnterForegroundInitError"

    aput-object v5, v1, v2

    .line 588
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 589
    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_1f
    if-ge v2, v0, :cond_3b

    .line 591
    :try_start_21
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 593
    if-eqz v6, :cond_37

    .line 594
    const-string v7, "id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 595
    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_36

    if-eqz v6, :cond_37

    .line 596
    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    .line 599
    :catchall_36
    move-exception v6

    :cond_37
    :goto_37
    nop

    .line 589
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 601
    :cond_3b
    if-lt v5, v0, :cond_3e

    .line 603
    return v4

    .line 605
    :cond_3e
    return v3
.end method

.method private a(Lorg/json/JSONObject;)Z
    .registers 9

    .line 617
    const-string v0, "ekv"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 618
    nop

    .line 619
    nop

    .line 620
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 621
    const/4 v1, 0x0

    if-eqz p1, :cond_40

    .line 623
    nop

    .line 624
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_12
    if-ge v2, v0, :cond_3c

    .line 626
    :try_start_14
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 627
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 628
    :goto_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_38

    .line 629
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 630
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 631
    if-eqz v6, :cond_36

    .line 632
    invoke-direct {p0, v6}, Lcom/umeng/analytics/pro/n;->a(Lorg/json/JSONArray;)Z

    move-result v6
    :try_end_32
    .catchall {:try_start_14 .. :try_end_32} :catchall_37

    if-eqz v6, :cond_36

    .line 633
    add-int/lit8 v3, v3, 0x1

    .line 636
    :cond_36
    goto :goto_1c

    .line 638
    :catchall_37
    move-exception v4

    :cond_38
    nop

    .line 624
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 640
    :cond_3c
    if-lt v3, v0, :cond_40

    .line 641
    const/4 p1, 0x1

    return p1

    .line 644
    :cond_40
    return v1
.end method

.method private b(Lorg/json/JSONObject;J)Lorg/json/JSONObject;
    .registers 7

    .line 943
    :try_start_0
    invoke-static {p1}, Lcom/umeng/analytics/pro/p;->a(Lorg/json/JSONObject;)J

    move-result-wide v0

    cmp-long v2, v0, p2

    if-lez v2, :cond_26

    .line 945
    const/4 p1, 0x0

    .line 946
    sget-object p2, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Lcom/umeng/analytics/pro/h;->a(ZZ)V

    .line 947
    sget-object p2, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/h;->b()V

    .line 948
    const-string p2, "MobclickRT"

    const-string p3, "--->>> Instant session packet overload !!! "

    invoke-static {p2, p3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    goto :goto_26

    .line 950
    :catchall_25
    move-exception p2

    :cond_26
    :goto_26
    nop

    .line 951
    return-object p1
.end method

.method private b(Lorg/json/JSONObject;)V
    .registers 6

    .line 788
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/h;->c()Z

    move-result v0

    if-nez v0, :cond_58

    .line 789
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/h;->f()Lorg/json/JSONObject;

    move-result-object v0

    .line 790
    if-eqz v0, :cond_58

    .line 791
    const-string v1, "__av"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 792
    const-string v2, "__vc"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 795
    :try_start_2c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_57

    const-string v3, "app_version"

    if-eqz v2, :cond_3e

    .line 796
    :try_start_34
    sget-object v1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_41

    .line 798
    :cond_3e
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 801
    :goto_41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_45
    .catchall {:try_start_34 .. :try_end_45} :catchall_57

    const-string v2, "version_code"

    if-eqz v1, :cond_53

    .line 802
    :try_start_49
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_56

    .line 804
    :cond_53
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_56
    .catchall {:try_start_49 .. :try_end_56} :catchall_57

    .line 809
    :goto_56
    goto :goto_58

    .line 807
    :catchall_57
    move-exception p1

    .line 812
    :cond_58
    :goto_58
    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .registers 7

    .line 966
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/h;->e()Z

    move-result v0

    const-string v1, "version_code"

    const-string v2, "app_version"

    if-nez v0, :cond_51

    .line 967
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/h;->g()Lorg/json/JSONObject;

    move-result-object v0

    .line 968
    if-eqz v0, :cond_50

    .line 969
    const-string v3, "__av"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 970
    const-string v4, "__vc"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 972
    :try_start_28
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 973
    sget-object v3, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3b

    .line 975
    :cond_38
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 978
    :goto_3b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 979
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4e

    .line 981
    :cond_4b
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4e
    .catchall {:try_start_28 .. :try_end_4e} :catchall_4f

    .line 986
    :goto_4e
    goto :goto_50

    .line 984
    :catchall_4f
    move-exception p1

    .line 988
    :cond_50
    :goto_50
    goto :goto_65

    .line 991
    :cond_51
    :try_start_51
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 992
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_63
    .catchall {:try_start_51 .. :try_end_63} :catchall_64

    .line 995
    goto :goto_65

    .line 993
    :catchall_64
    move-exception p1

    .line 997
    :goto_65
    return-void
.end method

.method private c(Z)Z
    .registers 5

    .line 1560
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->s()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1562
    const/4 p1, 0x1

    return p1

    .line 1564
    :cond_8
    iget-object v0, p0, Lcom/umeng/analytics/pro/n;->b:Lcom/umeng/analytics/pro/n$c;

    if-nez v0, :cond_13

    .line 1565
    new-instance v0, Lcom/umeng/analytics/pro/n$c;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/n$c;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/n;->b:Lcom/umeng/analytics/pro/n$c;

    .line 1568
    :cond_13
    iget-object v0, p0, Lcom/umeng/analytics/pro/n;->b:Lcom/umeng/analytics/pro/n$c;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/n$c;->a()V

    .line 1570
    iget-object v0, p0, Lcom/umeng/analytics/pro/n;->b:Lcom/umeng/analytics/pro/n$c;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/n$c;->c()Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object v0

    .line 1572
    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;->shouldSendMessage(Z)Z

    move-result p1

    .line 1574
    if-eqz p1, :cond_6a

    .line 1575
    instance-of v1, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    if-nez v1, :cond_30

    instance-of v1, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;

    if-nez v1, :cond_30

    instance-of v1, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    if-eqz v1, :cond_39

    .line 1579
    :cond_30
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->p()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1580
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/n;->d()V

    .line 1584
    :cond_39
    instance-of v1, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    if-eqz v1, :cond_46

    .line 1585
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->p()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1586
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/n;->d()V

    .line 1590
    :cond_46
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 1591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6570\u636e\u53d1\u9001\u7b56\u7565 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 1596
    :cond_6a
    return p1
.end method

.method private d(Lorg/json/JSONObject;)V
    .registers 22

    .line 1855
    move-object/from16 v0, p1

    const-string v1, "autopages"

    const-string v2, "version_code"

    const-string v3, "analytics"

    const-string v4, "channel"

    const-string v5, "appkey"

    const-string v6, "device_model"

    const-string v7, "active_user"

    const-string v8, "device_id"

    const-string v9, "activate_msg"

    const-string v10, "sdk_version"

    const-string v11, "sessions"

    const-string v12, "error"

    const-string v13, "gkv"

    const-string v14, "header"

    const-string v15, "ekv"

    move-object/from16 v16, v4

    const-string v4, "dplus"

    if-nez v0, :cond_27

    return-void

    .line 1857
    :cond_27
    :try_start_27
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->length()I

    move-result v17

    if-gtz v17, :cond_2e

    return-void

    .line 1858
    :cond_2e
    move-object/from16 v17, v5

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1860
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_175

    .line 1861
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1862
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_74

    .line 1863
    move-object/from16 v18, v2

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1864
    invoke-virtual {v5, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1865
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_76

    .line 1866
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u4e8b\u4ef6:"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 1867
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    goto :goto_76

    .line 1862
    :cond_74
    move-object/from16 v18, v2

    .line 1870
    :cond_76
    :goto_76
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 1871
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1872
    invoke-virtual {v5, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1873
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_a8

    .line 1874
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u6e38\u620f\u4e8b\u4ef6:"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 1875
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1878
    :cond_a8
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_da

    .line 1879
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1880
    invoke-virtual {v5, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1881
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_da

    .line 1882
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u9519\u8bef:"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 1883
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1886
    :cond_da
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_135

    .line 1887
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1889
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 1890
    nop

    .line 1891
    const/4 v13, 0x0

    :goto_eb
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v13, v15, :cond_10c

    .line 1892
    invoke-virtual {v2, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 1893
    if-eqz v15, :cond_109

    invoke-virtual {v15}, Lorg/json/JSONObject;->length()I

    move-result v19

    if-lez v19, :cond_109

    .line 1894
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_106

    .line 1895
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1897
    :cond_106
    invoke-virtual {v12, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1891
    :cond_109
    add-int/lit8 v13, v13, 0x1

    goto :goto_eb

    .line 1900
    :cond_10c
    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1901
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_135

    .line 1902
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4f1a\u8bdd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 1903
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v5, v1

    .line 1906
    :cond_135
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_142

    .line 1907
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1908
    invoke-virtual {v5, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1910
    :cond_142
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_177

    .line 1911
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1912
    invoke-virtual {v5, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1913
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_177

    .line 1914
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8d26\u53f7:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 1915
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    goto :goto_177

    .line 1860
    :cond_175
    move-object/from16 v18, v2

    .line 1920
    :cond_177
    :goto_177
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_184

    .line 1921
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1922
    invoke-virtual {v5, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1925
    :cond_184
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_217

    .line 1926
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_217

    .line 1927
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1928
    if-eqz v0, :cond_217

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_217

    .line 1929
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a9

    .line 1930
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1932
    :cond_1a9
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b6

    .line 1933
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1935
    :cond_1b6
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c3

    .line 1936
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1938
    :cond_1c3
    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d4

    .line 1939
    const-string v2, "version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1941
    :cond_1d4
    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e3

    .line 1942
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1944
    :cond_1e3
    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f2

    .line 1945
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1947
    :cond_1f2
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_217

    .line 1948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u57fa\u7840\u4fe1\u606f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 1949
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1954
    :cond_217
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I
    :try_end_21a
    .catchall {:try_start_27 .. :try_end_21a} :catchall_21b

    .line 1960
    goto :goto_21f

    .line 1958
    :catchall_21b
    move-exception v0

    .line 1959
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    .line 1961
    :goto_21f
    return-void
.end method

.method private d(Z)Z
    .registers 4

    .line 2294
    iget-object v0, p0, Lcom/umeng/analytics/pro/n;->b:Lcom/umeng/analytics/pro/n$c;

    if-nez v0, :cond_b

    .line 2295
    new-instance v0, Lcom/umeng/analytics/pro/n$c;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/n$c;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/n;->b:Lcom/umeng/analytics/pro/n$c;

    .line 2298
    :cond_b
    iget-object v0, p0, Lcom/umeng/analytics/pro/n;->b:Lcom/umeng/analytics/pro/n$c;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/n$c;->c()Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object v0

    .line 2299
    instance-of v1, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    if-eqz v1, :cond_24

    .line 2300
    if-eqz p1, :cond_1e

    .line 2301
    check-cast v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;->shouldSendMessageByInstant()Z

    move-result p1

    return p1

    .line 2303
    :cond_1e
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;->shouldSendMessage(Z)Z

    move-result p1

    return p1

    .line 2306
    :cond_24
    const/4 p1, 0x1

    return p1
.end method

.method private e(Ljava/lang/Object;)V
    .registers 7

    .line 1410
    const-string v0, "__t"

    :try_start_2
    check-cast p1, Lorg/json/JSONObject;

    .line 1411
    const/16 v1, 0x802

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_1e

    .line 1412
    iget-wide v0, p0, Lcom/umeng/analytics/pro/n;->k:J

    iget v2, p0, Lcom/umeng/analytics/pro/n;->i:I

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/analytics/pro/n;->a(JI)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1413
    return-void

    .line 1415
    :cond_17
    iget v0, p0, Lcom/umeng/analytics/pro/n;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/analytics/pro/n;->i:I

    goto :goto_37

    .line 1416
    :cond_1e
    const/16 v1, 0x801

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_37

    .line 1417
    iget-wide v0, p0, Lcom/umeng/analytics/pro/n;->k:J

    iget v2, p0, Lcom/umeng/analytics/pro/n;->j:I

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/analytics/pro/n;->a(JI)Z

    move-result v0

    if-nez v0, :cond_31

    .line 1418
    return-void

    .line 1420
    :cond_31
    iget v0, p0, Lcom/umeng/analytics/pro/n;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/analytics/pro/n;->j:I

    .line 1423
    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/umeng/analytics/pro/n;->g:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    iget v1, p0, Lcom/umeng/analytics/pro/n;->f:I

    if-lt v0, v1, :cond_5a

    .line 1424
    const-string v0, "MobclickRT"

    const-string v1, "--->>>*** \u8d85\u8fc710\u4e2a\u4e8b\u4ef6\uff0c\u4e8b\u4ef6\u843d\u5e93\u3002"

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/pro/n;->g:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/h;->a(Lorg/json/JSONArray;)V

    .line 1426
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/n;->g:Lorg/json/JSONArray;

    .line 1428
    :cond_5a
    iget-wide v0, p0, Lcom/umeng/analytics/pro/n;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_68

    .line 1429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/pro/n;->k:J

    .line 1431
    :cond_68
    iget-object v0, p0, Lcom/umeng/analytics/pro/n;->g:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_6d
    .catchall {:try_start_2 .. :try_end_6d} :catchall_6e

    .line 1434
    goto :goto_72

    .line 1432
    :catchall_6e
    move-exception p1

    .line 1433
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    .line 1435
    :goto_72
    return-void
.end method

.method private e(Lorg/json/JSONObject;)V
    .registers 19

    .line 1965
    move-object/from16 v0, p1

    const-string v1, "version_code"

    const-string v2, "analytics"

    const-string v3, "channel"

    const-string v4, "appkey"

    const-string v5, "device_model"

    const-string v6, "device_id"

    const-string v7, "sdk_version"

    const-string v8, "active_user"

    const-string v9, "sessions"

    const-string v10, "header"

    if-nez v0, :cond_19

    return-void

    .line 1967
    :cond_19
    :try_start_19
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->length()I

    move-result v11

    if-gtz v11, :cond_20

    return-void

    .line 1968
    :cond_20
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 1970
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b3

    .line 1971
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1973
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_81

    .line 1974
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 1976
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 1977
    nop

    .line 1978
    const/4 v14, 0x0

    :goto_40
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_58

    .line 1979
    invoke-virtual {v12, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 1980
    if-eqz v15, :cond_55

    invoke-virtual {v15}, Lorg/json/JSONObject;->length()I

    move-result v16

    if-lez v16, :cond_55

    .line 1981
    invoke-virtual {v13, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1978
    :cond_55
    add-int/lit8 v14, v14, 0x1

    goto :goto_40

    .line 1984
    :cond_58
    invoke-virtual {v11, v9, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1985
    invoke-virtual {v11}, Lorg/json/JSONObject;->length()I

    move-result v9

    if-lez v9, :cond_81

    .line 1986
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u672c\u6b21\u542f\u52a8\u4f1a\u8bdd:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 1987
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    move-object v11, v9

    .line 1991
    :cond_81
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b3

    .line 1992
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1993
    invoke-virtual {v11, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1994
    invoke-virtual {v11}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_b3

    .line 1995
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u672c\u6b21\u542f\u52a8\u8d26\u53f7:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 1996
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 2002
    :cond_b3
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_140

    .line 2003
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_140

    .line 2004
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2005
    if-eqz v0, :cond_140

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_140

    .line 2006
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 2007
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2009
    :cond_d8
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 2010
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2012
    :cond_e5
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f2

    .line 2013
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2015
    :cond_f2
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_101

    .line 2016
    const-string v2, "version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v11, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2018
    :cond_101
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10e

    .line 2019
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2021
    :cond_10e
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11b

    .line 2022
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2025
    :cond_11b
    invoke-virtual {v11}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_140

    .line 2026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u672c\u6b21\u542f\u52a8\u57fa\u7840\u4fe1\u606f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 2027
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 2032
    :cond_140
    invoke-virtual {v11}, Lorg/json/JSONObject;->length()I
    :try_end_143
    .catchall {:try_start_19 .. :try_end_143} :catchall_144

    .line 2038
    goto :goto_148

    .line 2036
    :catchall_144
    move-exception v0

    .line 2037
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    .line 2039
    :goto_148
    return-void
.end method

.method private f(Ljava/lang/Object;)V
    .registers 9

    .line 2436
    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    .line 2437
    if-eqz p1, :cond_83

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_c

    goto/16 :goto_83

    .line 2438
    :cond_c
    const-string v0, "ts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 2440
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/n;->b(Landroid/content/Context;)V

    .line 2441
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/n;->d()V

    .line 2444
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    .line 2445
    if-eqz p1, :cond_82

    const/4 v2, 0x0

    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_82

    const/4 v3, 0x1

    aget-object p1, p1, v3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_82

    .line 2447
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object p1

    sget-object v4, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {p1, v4, v0, v1}, Lcom/umeng/analytics/pro/t;->a(Landroid/content/Context;J)V

    .line 2449
    invoke-static {}, Lcom/umeng/analytics/pro/x;->a()Lcom/umeng/analytics/pro/x;

    move-result-object p1

    sget-object v4, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {p1, v4}, Lcom/umeng/analytics/pro/x;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 2450
    const-string v4, "MobclickRT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--->>> onProfileSignIn: force generate new session: session id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2452
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object p1

    sget-object v4, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {p1, v4, v0, v1, v2}, Lcom/umeng/analytics/pro/t;->b(Landroid/content/Context;JZ)Z

    move-result p1

    .line 2453
    sget-object v2, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/c;->b(Landroid/content/Context;)V

    .line 2455
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object v2

    sget-object v4, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {v2, v4, v0, v1, v3}, Lcom/umeng/analytics/pro/t;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    .line 2457
    if-eqz p1, :cond_82

    .line 2458
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object p1

    sget-object v2, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {p1, v2, v0, v1}, Lcom/umeng/analytics/pro/t;->b(Landroid/content/Context;J)V
    :try_end_82
    .catchall {:try_start_0 .. :try_end_82} :catchall_84

    .line 2465
    :cond_82
    goto :goto_8e

    .line 2437
    :cond_83
    :goto_83
    return-void

    .line 2461
    :catchall_84
    move-exception p1

    .line 2462
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v0, :cond_8e

    .line 2463
    const-string v0, " Excepthon  in  onProfileSignOff"

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2466
    :cond_8e
    :goto_8e
    return-void
.end method

.method private f(Lorg/json/JSONObject;)V
    .registers 7

    .line 2119
    :try_start_0
    const-string v0, "header"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2120
    const-string v1, "eof"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_a6

    const/4 v1, 0x0

    const-string v2, "sessions"

    const-string v3, "analytics"

    const-string v4, "content"

    if-eqz v0, :cond_70

    .line 2122
    :try_start_15
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2123
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2127
    :cond_1f
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_23} :catch_a6

    const-string v4, "MobclickRT"

    if-eqz v0, :cond_55

    .line 2132
    :try_start_27
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2134
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 2135
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 2136
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 2137
    if-eqz p1, :cond_55

    .line 2138
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 2143
    const-string v0, "--->>> removeAllInstantData: really delete instant session data"

    invoke-static {v4, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/h;->b(Ljava/lang/String;)V

    .line 2149
    :cond_55
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/h;->b()V

    .line 2152
    const-string p1, "--->>> removeAllInstantData: send INSTANT_SESSION_START_CONTINUE event because OVERSIZE."

    invoke-static {v4, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2153
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    const/16 v0, 0x1101

    .line 2154
    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v1

    const/4 v2, 0x0

    .line 2153
    invoke-static {p1, v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    goto :goto_a5

    .line 2158
    :cond_70
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 2159
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2162
    :cond_7a
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 2163
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2164
    if-eqz p1, :cond_9c

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_9c

    .line 2166
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9c

    .line 2167
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/umeng/analytics/pro/h;->a(ZZ)V

    .line 2172
    :cond_9c
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/h;->b()V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_a5} :catch_a6

    .line 2175
    :goto_a5
    goto :goto_a7

    .line 2174
    :catch_a6
    move-exception p1

    .line 2176
    :goto_a7
    return-void
.end method

.method static synthetic g()Landroid/content/Context;
    .registers 1

    .line 64
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    return-object v0
.end method

.method private g(Ljava/lang/Object;)V
    .registers 10

    .line 2471
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/n;->b(Landroid/content/Context;)V

    .line 2472
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/n;->d()V

    .line 2474
    check-cast p1, Lorg/json/JSONObject;

    .line 2475
    if-eqz p1, :cond_8f

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_14

    goto/16 :goto_8f

    .line 2476
    :cond_14
    const-string v0, "provider"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2477
    const-string v1, "uid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2478
    const-string v2, "ts"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2480
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    .line 2481
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_40

    aget-object v6, p1, v5

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    aget-object p1, p1, v4

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8e

    .line 2483
    :cond_40
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object p1

    sget-object v6, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {p1, v6, v2, v3}, Lcom/umeng/analytics/pro/t;->a(Landroid/content/Context;J)V

    .line 2485
    invoke-static {}, Lcom/umeng/analytics/pro/x;->a()Lcom/umeng/analytics/pro/x;

    move-result-object p1

    sget-object v6, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {p1, v6}, Lcom/umeng/analytics/pro/x;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 2487
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object v6

    sget-object v7, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {v6, v7, v2, v3, v5}, Lcom/umeng/analytics/pro/t;->b(Landroid/content/Context;JZ)Z

    move-result v5

    .line 2489
    sget-object v6, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v6, v0, v1}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2492
    const-string v0, "MobclickRT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--->>> onProfileSignIn: force generate new session: session id = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2494
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object p1

    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/umeng/analytics/pro/t;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    .line 2495
    if-eqz v5, :cond_8e

    .line 2496
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object p1

    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {p1, v0, v2, v3}, Lcom/umeng/analytics/pro/t;->b(Landroid/content/Context;J)V
    :try_end_8e
    .catchall {:try_start_0 .. :try_end_8e} :catchall_90

    .line 2502
    :cond_8e
    goto :goto_91

    .line 2475
    :cond_8f
    :goto_8f
    return-void

    .line 2500
    :catchall_90
    move-exception p1

    .line 2503
    :goto_91
    return-void
.end method

.method private g(Lorg/json/JSONObject;)V
    .registers 8

    .line 2187
    :try_start_0
    const-string v0, "header"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2188
    const-string v1, "eof"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_bc

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "sessions"

    const-string v4, "analytics"

    const-string v5, "content"

    if-eqz v0, :cond_5d

    .line 2190
    :try_start_16
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2191
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2195
    :cond_20
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 2200
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2202
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 2204
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/h;->i()V

    .line 2205
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/h;->h()V

    .line 2206
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcom/umeng/analytics/pro/h;->b(ZZ)V

    .line 2207
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/h;->a()V

    goto :goto_5c

    .line 2210
    :cond_55
    const-string p1, "MobclickRT"

    const-string v0, "--->>> Error, Should not go to this branch."

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    :goto_5c
    goto :goto_bb

    .line 2215
    :cond_5d
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 2216
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2219
    :cond_67
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 2220
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2221
    if-eqz p1, :cond_b2

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_b2

    .line 2223
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 2224
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/umeng/analytics/pro/h;->b(ZZ)V

    .line 2226
    :cond_88
    const-string v0, "ekv"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_98

    const-string v0, "gkv"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 2227
    :cond_98
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/h;->h()V

    .line 2230
    :cond_a1
    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b2

    .line 2231
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/h;->i()V

    .line 2236
    :cond_b2
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/h;->a()V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_bb} :catch_bc

    .line 2239
    :cond_bb
    :goto_bb
    goto :goto_bd

    .line 2238
    :catch_bc
    move-exception p1

    .line 2240
    :goto_bd
    return-void
.end method

.method private static h()V
    .registers 5

    .line 116
    :try_start_0
    const-string v0, "com.umeng.umcrash.UMCrashUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_21

    .line 118
    sput-object v0, Lcom/umeng/analytics/pro/n;->y:Ljava/lang/Class;

    .line 119
    const-string v1, "setPuidAndProvider"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_21

    .line 121
    sput-object v0, Lcom/umeng/analytics/pro/n;->z:Ljava/lang/reflect/Method;
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    .line 126
    :cond_21
    goto :goto_23

    .line 125
    :catchall_22
    move-exception v0

    .line 128
    :goto_23
    return-void
.end method

.method private h(Ljava/lang/Object;)V
    .registers 5

    .line 2507
    const-string v0, "__ii"

    :try_start_2
    move-object v1, p1

    check-cast v1, Lorg/json/JSONObject;

    .line 2508
    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_2e

    .line 2509
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 2510
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2511
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 2512
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 2513
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, v2, p1, v1}, Lcom/umeng/analytics/pro/h;->a(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_2f

    .line 2518
    :cond_2e
    goto :goto_30

    .line 2517
    :catchall_2f
    move-exception p1

    .line 2519
    :goto_30
    return-void
.end method

.method private i()V
    .registers 6

    .line 505
    const-string v0, "exception"

    sget-object v1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->maxDataSpace(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/umeng/analytics/pro/n;->b(J)Lorg/json/JSONObject;

    move-result-object v1

    .line 507
    if-eqz v1, :cond_6c

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_16

    goto :goto_6c

    .line 509
    :cond_16
    const-string v2, "header"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 510
    const-string v3, "content"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 512
    sget-object v3, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    if-eqz v3, :cond_6b

    if-eqz v2, :cond_6b

    if-eqz v1, :cond_6b

    .line 514
    const-string v3, "MobclickRT"

    const-string v4, "--->>> constructInstantMessage: request build envelope."

    invoke-static {v3, v4}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    sget-object v4, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v4, v2, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 518
    if-eqz v1, :cond_6b

    .line 520
    :try_start_3d
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Build envelope error code: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_3d .. :try_end_5d} :catchall_5e

    .line 526
    :cond_5d
    goto :goto_5f

    .line 524
    :catchall_5e
    move-exception v0

    .line 527
    :goto_5f
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 528
    invoke-direct {p0, v1}, Lcom/umeng/analytics/pro/n;->e(Lorg/json/JSONObject;)V

    .line 531
    :cond_68
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/n;->b(Ljava/lang/Object;)V

    .line 534
    :cond_6b
    return-void

    .line 507
    :cond_6c
    :goto_6c
    return-void
.end method

.method private j()V
    .registers 6

    .line 545
    const-string v0, "exception"

    sget-object v1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->maxDataSpace(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/umeng/analytics/pro/n;->a(J)Lorg/json/JSONObject;

    move-result-object v1

    .line 547
    if-eqz v1, :cond_65

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_16

    goto :goto_65

    .line 548
    :cond_16
    const-string v2, "header"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 549
    const-string v3, "content"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 550
    sget-object v3, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    if-eqz v3, :cond_64

    if-eqz v2, :cond_64

    if-eqz v1, :cond_64

    .line 554
    invoke-static {v3, v2, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 557
    if-eqz v1, :cond_64

    .line 559
    :try_start_34
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 560
    const-string v2, "MobclickRT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Build envelope error code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_34 .. :try_end_56} :catchall_57

    .line 564
    :cond_56
    goto :goto_58

    .line 562
    :catchall_57
    move-exception v0

    .line 565
    :goto_58
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 566
    invoke-direct {p0, v1}, Lcom/umeng/analytics/pro/n;->d(Lorg/json/JSONObject;)V

    .line 570
    :cond_61
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/n;->a(Ljava/lang/Object;)V

    .line 575
    :cond_64
    return-void

    .line 547
    :cond_65
    :goto_65
    return-void
.end method

.method private k()Lorg/json/JSONObject;
    .registers 4

    .line 955
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->l()Lorg/json/JSONObject;

    move-result-object v0

    .line 956
    if-eqz v0, :cond_f

    .line 958
    :try_start_6
    const-string v1, "st"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_e

    .line 960
    goto :goto_f

    .line 959
    :catchall_e
    move-exception v1

    .line 962
    :cond_f
    :goto_f
    return-object v0
.end method

.method private l()Lorg/json/JSONObject;
    .registers 12

    .line 1001
    const-string v0, "vers_name"

    const-string v1, "$ud_da"

    const-string v2, "$pr_ve"

    const-string v3, ""

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1003
    :try_start_d
    sget-object v5, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    if-eqz v5, :cond_23

    sget-object v5, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    if-eqz v5, :cond_23

    .line 1004
    const-string v5, "wrapper_version"

    sget-object v6, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1005
    const-string v5, "wrapper_type"

    sget-object v6, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1008
    :cond_23
    sget-object v5, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v5

    .line 1018
    const-string v6, "vertical_type"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_147

    .line 1019
    const/4 v6, 0x1

    const-string v7, "9.3.8"

    const-string v8, "sdk_version"

    if-ne v5, v6, :cond_47

    .line 1020
    :try_start_35
    sget-object v5, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/analytics/AnalyticsConfig;->getGameSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 1021
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 1022
    goto :goto_43

    .line 1021
    :cond_42
    move-object v7, v5

    .line 1024
    :goto_43
    invoke-virtual {v4, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1025
    goto :goto_4a

    .line 1026
    :cond_47
    invoke-virtual {v4, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1033
    :goto_4a
    sget-object v5, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/analytics/AnalyticsConfig;->getSecretKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1034
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5f

    .line 1035
    const-string v6, "secret"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1038
    :cond_5f
    sget-object v5, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    const-string v6, "pr_ve"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1040
    sget-object v6, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1043
    sget-object v7, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    const-string v8, "ekv_bl_ver"

    invoke-static {v7, v8, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1044
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_89

    .line 1045
    sget-boolean v8, Lcom/umeng/analytics/AnalyticsConfig;->CLEAR_EKV_BL:Z
    :try_end_7e
    .catchall {:try_start_35 .. :try_end_7e} :catchall_147

    const-string v9, "$ekv_bl_ver"

    if-eqz v8, :cond_86

    .line 1046
    :try_start_82
    invoke-virtual {v4, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_89

    .line 1048
    :cond_86
    invoke-virtual {v4, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1052
    :cond_89
    :goto_89
    sget-object v7, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    const-string v8, "ekv_wl_ver"

    invoke-static {v7, v8, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1053
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a4

    .line 1054
    sget-boolean v8, Lcom/umeng/analytics/AnalyticsConfig;->CLEAR_EKV_WL:Z
    :try_end_99
    .catchall {:try_start_82 .. :try_end_99} :catchall_147

    const-string v9, "$ekv_wl_ver"

    if-eqz v8, :cond_a1

    .line 1055
    :try_start_9d
    invoke-virtual {v4, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_a4

    .line 1057
    :cond_a1
    invoke-virtual {v4, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1062
    :cond_a4
    :goto_a4
    const-string v7, "pro_ver"

    const-string v8, "1.0.0"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1065
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->s()Z

    move-result v7

    if-eqz v7, :cond_c9

    .line 1066
    const-string v7, "atm"

    const-string v8, "1"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1067
    if-eqz v6, :cond_c9

    .line 1068
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "ana_is_f"

    const-wide/16 v9, 0x0

    invoke-interface {v7, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1074
    :cond_c9
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->m()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1075
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->n()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1080
    if-eqz v6, :cond_146

    .line 1082
    invoke-interface {v6, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1083
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_146

    .line 1086
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v8, Ljava/util/Date;

    .line 1087
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 1090
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_ff
    .catchall {:try_start_9d .. :try_end_ff} :catchall_147

    const-string v8, "vers_date"

    const-string v9, "vers_pre_version"

    if-eqz v5, :cond_115

    .line 1092
    :try_start_105
    const-string v5, "0"

    invoke-interface {v6, v9, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1094
    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1098
    :cond_115
    sget-object v1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1099
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "pre_version"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "cur_version"

    .line 1100
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pre_date"

    .line 1101
    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1102
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vers_code"

    .line 1103
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1104
    invoke-interface {v0, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1105
    invoke-interface {v0, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1106
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_146
    .catchall {:try_start_105 .. :try_end_146} :catchall_147

    .line 1118
    :cond_146
    goto :goto_14b

    .line 1116
    :catchall_147
    move-exception v0

    .line 1117
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1119
    :goto_14b
    return-object v4
.end method

.method private m()Ljava/lang/String;
    .registers 9

    .line 1276
    const-string v0, ""

    const-string v1, "pre_version"

    .line 1278
    const/4 v2, 0x0

    :try_start_5
    sget-object v3, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    const-string v4, "pr_ve"

    invoke-static {v3, v4, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1279
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_74

    const-string v4, "0"

    if-eqz v3, :cond_73

    .line 1280
    :try_start_15
    iget-object v3, p0, Lcom/umeng/analytics/pro/n;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 1281
    iget-object v0, p0, Lcom/umeng/analytics/pro/n;->d:Ljava/lang/String;

    return-object v0

    .line 1283
    :cond_20
    iget-object v3, p0, Lcom/umeng/analytics/pro/n;->c:Landroid/content/SharedPreferences;

    if-nez v3, :cond_2c

    sget-object v3, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/analytics/pro/n;->c:Landroid/content/SharedPreferences;

    .line 1288
    :cond_2c
    iget-object v3, p0, Lcom/umeng/analytics/pro/n;->c:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1289
    sget-object v5, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 1291
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_3c
    .catchall {:try_start_15 .. :try_end_3c} :catchall_74

    const-string v7, "cur_version"

    if-eqz v6, :cond_53

    .line 1292
    :try_start_40
    iget-object v0, p0, Lcom/umeng/analytics/pro/n;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1293
    move-object v2, v4

    goto :goto_73

    .line 1295
    :cond_53
    iget-object v4, p0, Lcom/umeng/analytics/pro/n;->c:Landroid/content/SharedPreferences;

    invoke-interface {v4, v7, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1296
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_72

    .line 1297
    iget-object v3, p0, Lcom/umeng/analytics/pro/n;->c:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1298
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_70
    .catchall {:try_start_40 .. :try_end_70} :catchall_74

    .line 1299
    move-object v2, v0

    goto :goto_73

    .line 1301
    :cond_72
    move-object v2, v3

    .line 1308
    :cond_73
    :goto_73
    goto :goto_75

    .line 1307
    :catchall_74
    move-exception v0

    .line 1309
    :goto_75
    iput-object v2, p0, Lcom/umeng/analytics/pro/n;->d:Ljava/lang/String;

    .line 1311
    return-object v2
.end method

.method private n()Ljava/lang/String;
    .registers 8

    .line 1320
    const-string v0, "pre_date"

    .line 1322
    const/4 v1, 0x0

    :try_start_3
    sget-object v2, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    const-string v3, "ud_da"

    invoke-static {v2, v3, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1324
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 1325
    iget-object v2, p0, Lcom/umeng/analytics/pro/n;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1326
    iget-object v0, p0, Lcom/umeng/analytics/pro/n;->e:Ljava/lang/String;

    return-object v0

    .line 1328
    :cond_1c
    iget-object v2, p0, Lcom/umeng/analytics/pro/n;->c:Landroid/content/SharedPreferences;

    if-nez v2, :cond_28

    sget-object v2, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/analytics/pro/n;->c:Landroid/content/SharedPreferences;

    .line 1329
    :cond_28
    iget-object v2, p0, Lcom/umeng/analytics/pro/n;->c:Landroid/content/SharedPreferences;

    const-string v3, ""

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1330
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_8b

    const-string v4, "yyyy-MM-dd"

    if-eqz v3, :cond_5e

    .line 1331
    :try_start_38
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    .line 1332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1333
    iget-object v3, p0, Lcom/umeng/analytics/pro/n;->c:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1334
    nop

    .line 1335
    move-object v1, v2

    goto :goto_8a

    .line 1336
    :cond_5e
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    .line 1337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1338
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_89

    .line 1339
    iget-object v2, p0, Lcom/umeng/analytics/pro/n;->c:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_87
    .catchall {:try_start_38 .. :try_end_87} :catchall_8b

    .line 1340
    move-object v1, v3

    goto :goto_8a

    .line 1342
    :cond_89
    move-object v1, v2

    .line 1348
    :cond_8a
    :goto_8a
    goto :goto_8c

    .line 1347
    :catchall_8b
    move-exception v0

    .line 1349
    :goto_8c
    iput-object v1, p0, Lcom/umeng/analytics/pro/n;->e:Ljava/lang/String;

    .line 1350
    return-object v1
.end method

.method private o()V
    .registers 6

    .line 1475
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/umeng/analytics/pro/n;->i:I

    .line 1476
    iput v0, p0, Lcom/umeng/analytics/pro/n;->j:I

    .line 1477
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/umeng/analytics/pro/n;->k:J

    .line 1479
    sget-object v1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1480
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dstk_last_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dstk_cnt"

    .line 1481
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_29

    goto :goto_2a

    .line 1482
    :catchall_29
    move-exception v0

    :goto_2a
    nop

    .line 1483
    return-void
.end method

.method private p()Z
    .registers 5

    .line 1608
    :try_start_0
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/t;->b()Ljava/lang/String;

    move-result-object v0

    .line 1609
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1610
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/n;->b(Landroid/content/Context;)V

    .line 1613
    :cond_13
    iget-object v0, p0, Lcom/umeng/analytics/pro/n;->g:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4f

    .line 1614
    nop

    .line 1615
    nop

    .line 1616
    const/4 v0, 0x0

    :goto_1f
    iget-object v2, p0, Lcom/umeng/analytics/pro/n;->g:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4d

    .line 1617
    iget-object v2, p0, Lcom/umeng/analytics/pro/n;->g:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1618
    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_4a

    .line 1619
    const-string v3, "__i"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1620
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_49

    const-string v3, "-1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_47
    .catchall {:try_start_0 .. :try_end_47} :catchall_50

    if-eqz v2, :cond_4a

    .line 1621
    :cond_49
    return v1

    .line 1616
    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 1625
    :cond_4d
    nop

    .line 1629
    goto :goto_51

    .line 1626
    :cond_4f
    return v1

    .line 1628
    :catchall_50
    move-exception v0

    .line 1630
    :goto_51
    const/4 v0, 0x1

    return v0
.end method

.method private q()V
    .registers 8

    .line 2339
    const-string v0, "__i"

    iget-object v1, p0, Lcom/umeng/analytics/pro/n;->g:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_5d

    .line 2340
    nop

    .line 2341
    nop

    .line 2342
    nop

    .line 2345
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 2346
    const/4 v2, 0x0

    :goto_13
    iget-object v3, p0, Lcom/umeng/analytics/pro/n;->g:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5b

    .line 2348
    :try_start_1b
    iget-object v3, p0, Lcom/umeng/analytics/pro/n;->g:Lorg/json/JSONArray;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 2349
    if-eqz v3, :cond_52

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_52

    .line 2350
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2351
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_31
    .catchall {:try_start_1b .. :try_end_31} :catchall_56

    const-string v6, "-1"

    if-nez v5, :cond_3b

    :try_start_35
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 2352
    :cond_3b
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object v4

    invoke-virtual {v4}, Lcom/umeng/analytics/pro/t;->b()Ljava/lang/String;

    move-result-object v4

    .line 2353
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 2354
    goto :goto_4b

    .line 2353
    :cond_4a
    move-object v6, v4

    .line 2356
    :goto_4b
    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2358
    :cond_4e
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_57

    .line 2360
    :cond_52
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_55
    .catchall {:try_start_35 .. :try_end_55} :catchall_56

    goto :goto_57

    .line 2362
    :catchall_56
    move-exception v3

    :goto_57
    nop

    .line 2346
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 2364
    :cond_5b
    iput-object v1, p0, Lcom/umeng/analytics/pro/n;->g:Lorg/json/JSONArray;

    .line 2366
    :cond_5d
    return-void
.end method

.method private r()V
    .registers 8

    .line 2373
    const-string v0, "first_activate_time"

    :try_start_2
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->s()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 2374
    sget-object v1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    if-eqz v1, :cond_2d

    .line 2375
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2376
    if-eqz v1, :cond_2d

    .line 2377
    const-wide/16 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2378
    cmp-long v6, v4, v2

    if-nez v6, :cond_2d

    .line 2379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2380
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_2c

    goto :goto_2d

    .line 2385
    :catchall_2c
    move-exception v0

    :cond_2d
    :goto_2d
    nop

    .line 2386
    return-void
.end method

.method private s()Z
    .registers 6

    .line 2421
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    if-eqz v0, :cond_1b

    .line 2422
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2423
    if-eqz v0, :cond_1b

    .line 2424
    const-string v1, "ana_is_f"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_1a

    .line 2425
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1b

    .line 2426
    const/4 v0, 0x1

    return v0

    .line 2430
    :catchall_1a
    move-exception v0

    :cond_1b
    nop

    .line 2431
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(J)Lorg/json/JSONObject;
    .registers 11

    .line 660
    invoke-static {}, Lcom/umeng/analytics/pro/x;->a()Lcom/umeng/analytics/pro/x;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/x;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 661
    return-object v1

    .line 665
    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/n;->b(Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 667
    invoke-static {}, Lcom/umeng/analytics/pro/q;->a()Lcom/umeng/analytics/pro/q;

    move-result-object v2

    sget-object v3, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/pro/q;->a(Landroid/content/Context;)I

    move-result v2

    .line 672
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v3

    const/4 v4, 0x3

    if-gtz v3, :cond_2b

    .line 673
    if-eq v2, v4, :cond_91

    .line 677
    return-object v1

    .line 682
    :cond_2b
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v3

    const/4 v5, 0x1

    const-string v6, "userlevel"

    const-string v7, "active_user"

    if-ne v3, v5, :cond_4c

    .line 683
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 687
    if-eq v2, v4, :cond_3f

    return-object v1

    .line 690
    :cond_3f
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_66

    .line 693
    if-eq v2, v4, :cond_66

    return-object v1

    .line 697
    :cond_4c
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_66

    .line 699
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_66

    .line 700
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_66

    .line 703
    if-eq v2, v4, :cond_66

    return-object v1

    .line 709
    :cond_66
    const-string v3, "sessions"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 710
    const-string v5, "gkv"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 711
    const-string v6, "ekv"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 712
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_91

    .line 713
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_91

    .line 714
    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/n;->a(Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_91

    .line 715
    return-object v1

    .line 722
    :cond_91
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->l()Lorg/json/JSONObject;

    move-result-object v1

    .line 723
    if-eqz v1, :cond_9a

    .line 724
    invoke-direct {p0, v1}, Lcom/umeng/analytics/pro/n;->c(Lorg/json/JSONObject;)V

    .line 727
    :cond_9a
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 729
    :try_start_9f
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_a4
    .catchall {:try_start_9f .. :try_end_a4} :catchall_d9

    .line 730
    const-string v6, "analytics"

    if-ne v2, v4, :cond_b1

    .line 731
    :try_start_a8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_bc

    .line 733
    :cond_b1
    if-eqz v0, :cond_bc

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_bc

    .line 734
    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 737
    :cond_bc
    :goto_bc
    if-eqz v1, :cond_c9

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_c9

    .line 738
    const-string v0, "header"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 741
    :cond_c9
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_d4

    .line 742
    const-string v0, "content"

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 745
    :cond_d4
    invoke-direct {p0, v3, p1, p2}, Lcom/umeng/analytics/pro/n;->a(Lorg/json/JSONObject;J)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_d8
    .catchall {:try_start_a8 .. :try_end_d8} :catchall_d9

    .line 747
    goto :goto_da

    .line 746
    :catchall_d9
    move-exception p1

    .line 752
    :goto_da
    return-object v3
.end method

.method public a()V
    .registers 6

    .line 167
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    if-eqz v0, :cond_39

    .line 169
    iget-object v0, p0, Lcom/umeng/analytics/pro/n;->w:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_7
    iget-boolean v1, p0, Lcom/umeng/analytics/pro/n;->u:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 171
    const-string v1, "MobclickRT"

    const-string v3, "--->>> network is now available, rebuild instant session data packet."

    invoke-static {v1, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sget-object v1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    const/16 v3, 0x1101

    .line 173
    invoke-static {v1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v4

    .line 172
    invoke-static {v1, v3, v4, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 175
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_36

    .line 178
    iget-object v1, p0, Lcom/umeng/analytics/pro/n;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_22
    iget-boolean v0, p0, Lcom/umeng/analytics/pro/n;->v:Z

    if-eqz v0, :cond_31

    .line 180
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    const/16 v3, 0x1102

    .line 181
    invoke-static {v0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v4

    .line 180
    invoke-static {v0, v3, v4, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 183
    :cond_31
    monitor-exit v1

    goto :goto_39

    :catchall_33
    move-exception v0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_22 .. :try_end_35} :catchall_33

    throw v0

    .line 175
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1

    .line 185
    :cond_39
    :goto_39
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 4

    .line 2061
    const-string v0, "exception"

    if-eqz p1, :cond_24

    .line 2062
    :try_start_4
    check-cast p1, Lorg/json/JSONObject;

    .line 2067
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_24

    .line 2068
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2069
    const/16 v1, 0x65

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1b

    goto :goto_24

    .line 2072
    :cond_1b
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/n;->g(Lorg/json/JSONObject;)V

    goto :goto_24

    .line 2075
    :cond_1f
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/n;->g(Lorg/json/JSONObject;)V
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_23

    goto :goto_24

    .line 2079
    :catchall_23
    move-exception p1

    :cond_24
    :goto_24
    nop

    .line 2080
    return-void
.end method

.method public a(Ljava/lang/Object;I)V
    .registers 9

    .line 210
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->enable:Z

    if-nez v0, :cond_5

    .line 211
    return-void

    .line 213
    :cond_5
    nop

    .line 214
    nop

    .line 215
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p2, :sswitch_data_1ee

    goto/16 :goto_1ec

    .line 441
    :sswitch_f
    const-string p1, "header_foreground_count"

    invoke-static {p1}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1ec

    .line 443
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getGlobleActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    .line 444
    if-eqz p1, :cond_24

    .line 446
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/t;->b(Landroid/content/Context;)V

    .line 450
    :cond_24
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    const/16 v1, 0x2015

    .line 451
    invoke-static {v0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x1388

    .line 450
    invoke-static/range {v0 .. v5}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEventEx(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;J)V

    .line 452
    goto/16 :goto_1ec

    .line 426
    :sswitch_34
    const-string p1, "MobclickRT"

    const-string p2, "--->>> recv BUILD_ENVELOPE_IMMEDIATELY."

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :try_start_3b
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_51

    .line 429
    iget-object p1, p0, Lcom/umeng/analytics/pro/n;->b:Lcom/umeng/analytics/pro/n$c;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/n$c;->c()Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object p1

    .line 430
    instance-of p1, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    if-eqz p1, :cond_4e

    .line 432
    return-void

    .line 434
    :cond_4e
    invoke-virtual {p0, v2}, Lcom/umeng/analytics/pro/n;->a(Z)V
    :try_end_51
    .catchall {:try_start_3b .. :try_end_51} :catchall_53

    .line 436
    :cond_51
    goto/16 :goto_1ec

    :catchall_53
    move-exception p1

    .line 438
    goto/16 :goto_1ec

    .line 421
    :sswitch_56
    invoke-virtual {p0, p1, v0}, Lcom/umeng/analytics/pro/n;->a(Ljava/lang/Object;Z)V

    .line 423
    goto/16 :goto_1ec

    .line 411
    :sswitch_5b
    const-string p1, "MobclickRT"

    const-string p2, "--->>> receive DELAY_BUILD_ENVELOPE event."

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    const/16 p2, 0x2011

    .line 413
    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v0

    .line 412
    invoke-static {p1, p2, v0, v1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 414
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    const/16 p2, 0x1102

    .line 415
    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v0

    .line 414
    invoke-static {p1, p2, v0, v1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 417
    goto/16 :goto_1ec

    .line 405
    :sswitch_7a
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/umeng/analytics/b;->b(Ljava/lang/Object;)V

    .line 406
    goto/16 :goto_1ec

    .line 402
    :sswitch_83
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/umeng/analytics/b;->b(Ljava/lang/Object;)V

    .line 403
    goto/16 :goto_1ec

    .line 354
    :sswitch_8c
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/b;->k()V

    .line 355
    goto/16 :goto_1ec

    .line 348
    :sswitch_95
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/b;->m()V

    .line 349
    goto/16 :goto_1ec

    .line 342
    :sswitch_9e
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/umeng/analytics/b;->a(Ljava/lang/Object;)V

    .line 343
    goto/16 :goto_1ec

    .line 314
    :sswitch_a7
    if-nez p1, :cond_aa

    .line 315
    return-void

    .line 317
    :cond_aa
    sget-object p2, Lcom/umeng/analytics/pro/n;->y:Ljava/lang/Class;

    if-eqz p2, :cond_e8

    sget-object p2, Lcom/umeng/analytics/pro/n;->z:Ljava/lang/reflect/Method;

    if-nez p2, :cond_b3

    goto :goto_e8

    .line 320
    :cond_b3
    const-string p2, "MobclickRT"

    const-string v0, "--->>> PROFILE_CHANGE_NOTIFY"

    invoke-static {p2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :try_start_ba
    const-string p2, ""

    .line 323
    const-string v0, ""

    .line 324
    instance-of v1, p1, Lorg/json/JSONObject;

    if-eqz v1, :cond_e3

    .line 325
    check-cast p1, Lorg/json/JSONObject;

    .line 326
    const-string v1, "uid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e0

    const-string v1, "provider"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 328
    const-string p2, "provider"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 329
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    :cond_e0
    invoke-direct {p0, v0, p2}, Lcom/umeng/analytics/pro/n;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e3
    .catchall {:try_start_ba .. :try_end_e3} :catchall_e5

    .line 335
    :cond_e3
    goto/16 :goto_1ec

    .line 333
    :catchall_e5
    move-exception p1

    .line 337
    goto/16 :goto_1ec

    .line 318
    :cond_e8
    :goto_e8
    return-void

    .line 239
    :sswitch_e9
    :try_start_e9
    sget-object p2, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_fa

    .line 243
    if-eqz p1, :cond_112

    .line 244
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/n;->e(Ljava/lang/Object;)V

    .line 245
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/n;->d()V

    goto :goto_112

    .line 248
    :cond_fa
    sget-object p2, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/process/UMProcessDBHelper;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/process/UMProcessDBHelper;

    move-result-object p2

    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getSubProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 249
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    .line 248
    invoke-virtual {p2, v0, p1}, Lcom/umeng/analytics/process/UMProcessDBHelper;->insertEventsInSubProcess(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_112
    .catchall {:try_start_e9 .. :try_end_112} :catchall_114

    .line 251
    :cond_112
    :goto_112
    goto/16 :goto_1ec

    :catchall_114
    move-exception p1

    .line 252
    goto/16 :goto_1ec

    .line 373
    :sswitch_117
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/n;->c()V

    .line 374
    goto/16 :goto_1ec

    .line 390
    :sswitch_11c
    invoke-virtual {p0, p1, v2}, Lcom/umeng/analytics/pro/n;->a(Ljava/lang/Object;Z)V

    .line 391
    goto/16 :goto_1ec

    .line 379
    :sswitch_121
    const-string p2, "MobclickRT"

    const-string v0, "--->>> INSTANT_SESSION_START"

    invoke-static {p2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object p2

    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Lcom/umeng/analytics/pro/t;->b(Landroid/content/Context;Ljava/lang/Object;)V

    .line 381
    iget-object p2, p0, Lcom/umeng/analytics/pro/n;->w:Ljava/lang/Object;

    monitor-enter p2

    .line 382
    :try_start_134
    iput-boolean v2, p0, Lcom/umeng/analytics/pro/n;->u:Z

    .line 383
    monitor-exit p2

    .line 384
    goto/16 :goto_1ec

    .line 383
    :catchall_139
    move-exception p1

    monitor-exit p2
    :try_end_13b
    .catchall {:try_start_134 .. :try_end_13b} :catchall_139

    throw p1

    .line 293
    :sswitch_13c
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/n;->h(Ljava/lang/Object;)V

    .line 294
    goto/16 :goto_1ec

    .line 286
    :sswitch_141
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/n;->d()V

    .line 287
    goto/16 :goto_1ec

    .line 397
    :sswitch_146
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object p2

    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Lcom/umeng/analytics/pro/t;->c(Landroid/content/Context;Ljava/lang/Object;)V

    .line 398
    goto/16 :goto_1ec

    .line 361
    :sswitch_151
    const-string p2, "MobclickRT"

    const-string v0, "--->>> START_SESSION"

    invoke-static {p2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object p2

    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Lcom/umeng/analytics/pro/t;->a(Landroid/content/Context;Ljava/lang/Object;)V

    .line 364
    iget-object p2, p0, Lcom/umeng/analytics/pro/n;->w:Ljava/lang/Object;

    monitor-enter p2

    .line 365
    :try_start_164
    iput-boolean v2, p0, Lcom/umeng/analytics/pro/n;->v:Z

    .line 366
    monitor-exit p2

    .line 368
    goto/16 :goto_1ec

    .line 366
    :catchall_169
    move-exception p1

    monitor-exit p2
    :try_end_16b
    .catchall {:try_start_164 .. :try_end_16b} :catchall_169

    throw p1

    .line 308
    :sswitch_16c
    const-string p2, "MobclickRT"

    const-string v0, "--->>> PROFILE_SIGNOFF"

    invoke-static {p2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0, v1, v2}, Lcom/umeng/analytics/pro/n;->a(Ljava/lang/Object;Z)V

    .line 311
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/n;->f(Ljava/lang/Object;)V

    .line 312
    goto/16 :goto_1ec

    .line 299
    :sswitch_17b
    const-string p2, "MobclickRT"

    const-string v0, "--->>> PROFILE_SIGNIN"

    invoke-static {p2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0, v1, v2}, Lcom/umeng/analytics/pro/n;->a(Ljava/lang/Object;Z)V

    .line 302
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/n;->g(Ljava/lang/Object;)V

    .line 303
    goto :goto_1ec

    .line 279
    :sswitch_189
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->c(Landroid/content/Context;)V

    .line 280
    goto :goto_1ec

    .line 273
    :sswitch_18f
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/u;->a(Landroid/content/Context;)V

    .line 274
    goto :goto_1ec

    .line 258
    :sswitch_195
    if-eqz p1, :cond_19a

    .line 259
    :try_start_197
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/n;->e(Ljava/lang/Object;)V

    .line 261
    :cond_19a
    check-cast p1, Lorg/json/JSONObject;

    .line 262
    const-string p2, "__i"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 263
    const-string p2, "-1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1ad

    .line 264
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/n;->a(Z)V
    :try_end_1ad
    .catchall {:try_start_197 .. :try_end_1ad} :catchall_1ae

    .line 266
    :cond_1ad
    goto :goto_1ec

    :catchall_1ae
    move-exception p1

    .line 267
    goto :goto_1ec

    .line 218
    :sswitch_1b0
    :try_start_1b0
    sget-object p2, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1d1

    .line 222
    if-eqz p1, :cond_1bd

    .line 223
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/n;->e(Ljava/lang/Object;)V

    .line 225
    :cond_1bd
    check-cast p1, Lorg/json/JSONObject;

    .line 226
    const-string p2, "__i"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 227
    const-string p2, "-1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e9

    .line 229
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/n;->a(Z)V

    goto :goto_1e9

    .line 232
    :cond_1d1
    sget-object p2, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/process/UMProcessDBHelper;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/process/UMProcessDBHelper;

    move-result-object p2

    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getSubProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 233
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    .line 232
    invoke-virtual {p2, v0, p1}, Lcom/umeng/analytics/process/UMProcessDBHelper;->insertEventsInSubProcess(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_1e9
    .catchall {:try_start_1b0 .. :try_end_1e9} :catchall_1ea

    .line 235
    :cond_1e9
    :goto_1e9
    goto :goto_1ec

    :catchall_1ea
    move-exception p1

    .line 236
    nop

    .line 459
    :cond_1ec
    :goto_1ec
    return-void

    nop

    :sswitch_data_1ee
    .sparse-switch
        0x1001 -> :sswitch_1b0
        0x1002 -> :sswitch_195
        0x1003 -> :sswitch_18f
        0x1004 -> :sswitch_189
        0x1005 -> :sswitch_17b
        0x1006 -> :sswitch_16c
        0x1007 -> :sswitch_151
        0x1008 -> :sswitch_146
        0x1009 -> :sswitch_141
        0x100a -> :sswitch_13c
        0x1100 -> :sswitch_121
        0x1101 -> :sswitch_11c
        0x1102 -> :sswitch_117
        0x1103 -> :sswitch_e9
        0x1104 -> :sswitch_a7
        0x2003 -> :sswitch_9e
        0x2004 -> :sswitch_95
        0x2005 -> :sswitch_8c
        0x2007 -> :sswitch_83
        0x2008 -> :sswitch_83
        0x2009 -> :sswitch_7a
        0x2010 -> :sswitch_5b
        0x2011 -> :sswitch_56
        0x2012 -> :sswitch_34
        0x2015 -> :sswitch_f
    .end sparse-switch
.end method

.method public a(Ljava/lang/Object;Z)V
    .registers 3

    .line 2320
    const/4 p1, 0x1

    if-eqz p2, :cond_d

    .line 2322
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/n;->d(Z)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 2323
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->i()V

    goto :goto_1e

    .line 2326
    :cond_d
    sget-object p2, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isOnline(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 2328
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/n;->d(Z)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 2329
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->i()V

    .line 2333
    :cond_1e
    :goto_1e
    return-void
.end method

.method public a(Z)V
    .registers 4

    .line 470
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/n;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 472
    iget-object v0, p0, Lcom/umeng/analytics/pro/n;->b:Lcom/umeng/analytics/pro/n$c;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/n$c;->c()Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object v0

    .line 473
    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    const-string v1, "MobclickRT"

    if-eqz v0, :cond_38

    .line 474
    if-eqz p1, :cond_25

    .line 476
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 477
    const-string p1, "--->>> send session start in policy ReportQuasiRealtime."

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->j()V

    goto :goto_4a

    .line 481
    :cond_25
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    sget-object v0, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_APP:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isReadyBuild(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 482
    const-string p1, "--->>> send normal data in policy ReportQuasiRealtime."

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->j()V

    goto :goto_4a

    .line 488
    :cond_38
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    sget-object v0, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_APP:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isReadyBuild(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 489
    const-string p1, "--->>> constructMessage()"

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->j()V

    .line 494
    :cond_4a
    :goto_4a
    return-void
.end method

.method public b(J)Lorg/json/JSONObject;
    .registers 11

    .line 821
    invoke-static {}, Lcom/umeng/analytics/pro/x;->a()Lcom/umeng/analytics/pro/x;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/x;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 822
    return-object v1

    .line 826
    :cond_16
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/umeng/analytics/pro/h;->b(Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 829
    sget-object v3, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 830
    const-string v4, "active_user"

    const/4 v5, 0x1

    if-eqz v3, :cond_5e

    aget-object v6, v3, v2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5e

    aget-object v6, v3, v5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5e

    .line 831
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 833
    :try_start_45
    const-string v7, "provider"

    aget-object v2, v3, v2

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 834
    const-string v2, "puid"

    aget-object v3, v3, v5

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 835
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_5c

    .line 836
    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5c
    .catchall {:try_start_45 .. :try_end_5c} :catchall_5d

    .line 840
    :cond_5c
    goto :goto_5e

    .line 838
    :catchall_5d
    move-exception v2

    .line 843
    :cond_5e
    :goto_5e
    invoke-static {}, Lcom/umeng/analytics/pro/q;->a()Lcom/umeng/analytics/pro/q;

    move-result-object v2

    sget-object v3, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/pro/q;->a(Landroid/content/Context;)I

    move-result v2

    .line 846
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v5, :cond_78

    .line 847
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_78

    .line 852
    if-eq v2, v6, :cond_78

    .line 853
    return-object v1

    .line 859
    :cond_78
    invoke-static {}, Lcom/umeng/analytics/pro/q;->a()Lcom/umeng/analytics/pro/q;

    move-result-object v3

    sget-object v4, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {v3, v0, v4}, Lcom/umeng/analytics/pro/q;->b(Lorg/json/JSONObject;Landroid/content/Context;)V

    .line 864
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-gtz v3, :cond_8a

    .line 865
    if-eq v2, v6, :cond_8a

    .line 869
    return-object v1

    .line 874
    :cond_8a
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->k()Lorg/json/JSONObject;

    move-result-object v1

    .line 875
    if-eqz v1, :cond_93

    .line 876
    invoke-direct {p0, v1}, Lcom/umeng/analytics/pro/n;->b(Lorg/json/JSONObject;)V

    .line 879
    :cond_93
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 880
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 883
    const-string v5, "analytics"

    if-ne v2, v6, :cond_aa

    .line 884
    :try_start_a1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_b8

    .line 886
    :cond_aa
    if-eqz v0, :cond_b8

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_b8

    .line 887
    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_b8

    .line 900
    :catchall_b6
    move-exception p1

    goto :goto_d4

    .line 890
    :cond_b8
    :goto_b8
    if-eqz v1, :cond_c5

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_c5

    .line 891
    const-string v0, "header"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 894
    :cond_c5
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_d0

    .line 895
    const-string v0, "content"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 899
    :cond_d0
    invoke-direct {p0, v3, p1, p2}, Lcom/umeng/analytics/pro/n;->b(Lorg/json/JSONObject;J)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_d4
    .catchall {:try_start_a1 .. :try_end_d4} :catchall_b6

    .line 906
    :goto_d4
    return-object v3
.end method

.method public b(Z)Lorg/json/JSONObject;
    .registers 19

    .line 1130
    const-string v1, "userlevel"

    const-string v0, "autopages"

    const-string v2, "sessions"

    const-string v3, "pages"

    .line 1140
    const/4 v4, 0x0

    :try_start_9
    sget-object v5, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object v5

    move/from16 v6, p1

    invoke-virtual {v5, v6}, Lcom/umeng/analytics/pro/h;->a(Z)Lorg/json/JSONObject;

    move-result-object v4

    .line 1141
    if-nez v4, :cond_1f

    .line 1142
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_18c

    move-object v4, v0

    goto/16 :goto_105

    .line 1145
    :cond_1f
    :try_start_1f
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_fb

    .line 1146
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 1147
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 1148
    const/4 v8, 0x0

    :goto_2f
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_f8

    .line 1149
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;

    .line 1150
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 1151
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 1153
    if-nez v10, :cond_4d

    if-eqz v11, :cond_4d

    .line 1154
    invoke-virtual {v9, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1155
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_4d} :catch_fc
    .catchall {:try_start_1f .. :try_end_4d} :catchall_18c

    .line 1158
    :cond_4d
    const-string v12, "page_start"

    if-eqz v10, :cond_a9

    if-eqz v11, :cond_a9

    .line 1159
    :try_start_53
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1160
    nop

    .line 1161
    const/4 v14, 0x0

    :goto_5a
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_6c

    .line 1162
    invoke-virtual {v10, v14}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/json/JSONObject;

    .line 1163
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1161
    add-int/lit8 v14, v14, 0x1

    goto :goto_5a

    .line 1166
    :cond_6c
    const/4 v10, 0x0

    :goto_6d
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v10, v14, :cond_7f

    .line 1167
    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/json/JSONObject;

    .line 1168
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1166
    add-int/lit8 v10, v10, 0x1

    goto :goto_6d

    .line 1170
    :cond_7f
    new-instance v10, Lcom/umeng/commonsdk/utils/JSONArraySortUtil;

    invoke-direct {v10}, Lcom/umeng/commonsdk/utils/JSONArraySortUtil;-><init>()V

    .line 1171
    invoke-virtual {v10, v12}, Lcom/umeng/commonsdk/utils/JSONArraySortUtil;->setCompareKey(Ljava/lang/String;)V

    .line 1172
    invoke-static {v13, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1173
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 1174
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_93
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/json/JSONObject;

    .line 1175
    invoke-virtual {v10, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1176
    goto :goto_93

    .line 1177
    :cond_a3
    invoke-virtual {v9, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1178
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1181
    :cond_a9
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_ad} :catch_fc
    .catchall {:try_start_53 .. :try_end_ad} :catchall_18c

    const-string v11, "$page_num"

    if-eqz v10, :cond_e9

    .line 1182
    :try_start_b1
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 1183
    const/4 v13, 0x0

    :goto_b6
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_dc

    .line 1184
    invoke-virtual {v10, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 1185
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d5

    .line 1186
    const-string v15, "ts"

    move-object/from16 v16, v6

    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v14, v15, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1187
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_d7

    .line 1185
    :cond_d5
    move-object/from16 v16, v6

    .line 1183
    :goto_d7
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, v16

    goto :goto_b6

    .line 1190
    :cond_dc
    move-object/from16 v16, v6

    invoke-virtual {v9, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1191
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-virtual {v9, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1192
    goto :goto_ef

    .line 1193
    :cond_e9
    move-object/from16 v16, v6

    const/4 v5, 0x0

    invoke-virtual {v9, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1196
    :goto_ef
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1148
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v6, v16

    goto/16 :goto_2f

    .line 1198
    :cond_f8
    invoke-virtual {v4, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_fb} :catch_fc
    .catchall {:try_start_b1 .. :try_end_fb} :catchall_18c

    .line 1203
    :cond_fb
    goto :goto_105

    .line 1200
    :catch_fc
    move-exception v0

    .line 1201
    :try_start_fd
    const-string v2, "merge pages error"

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 1202
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1209
    :goto_105
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1210
    if-eqz v0, :cond_11c

    .line 1211
    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1212
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11c

    .line 1213
    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1241
    :cond_11c
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 1242
    if-eqz v0, :cond_155

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_155

    const/4 v1, 0x1

    aget-object v2, v0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_155

    .line 1243
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1244
    const-string v3, "provider"

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1245
    const-string v3, "puid"

    aget-object v0, v0, v1

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1246
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_155

    const-string v0, "active_user"

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1251
    :cond_155
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest()Z

    move-result v0

    if-eqz v0, :cond_182

    .line 1252
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1253
    sget-object v1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getTestName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getGroupInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1254
    const-string v1, "group_info"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1257
    :cond_182
    invoke-static {}, Lcom/umeng/analytics/pro/q;->a()Lcom/umeng/analytics/pro/q;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {v0, v4, v1}, Lcom/umeng/analytics/pro/q;->a(Lorg/json/JSONObject;Landroid/content/Context;)V
    :try_end_18b
    .catchall {:try_start_fd .. :try_end_18b} :catchall_18c

    .line 1266
    goto :goto_18d

    .line 1265
    :catchall_18c
    move-exception v0

    .line 1267
    :goto_18d
    return-object v4
.end method

.method public b()V
    .registers 1

    .line 187
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 2

    .line 2254
    :try_start_0
    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/h;->d()V

    .line 2256
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->q()V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    goto :goto_c

    .line 2257
    :catchall_b
    move-exception p1

    :goto_c
    nop

    .line 2258
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .registers 4

    .line 2088
    const-string v0, "exception"

    if-eqz p1, :cond_24

    .line 2089
    :try_start_4
    check-cast p1, Lorg/json/JSONObject;

    .line 2094
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_24

    .line 2095
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2096
    const/16 v1, 0x65

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1b

    goto :goto_24

    .line 2101
    :cond_1b
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/n;->f(Lorg/json/JSONObject;)V

    goto :goto_24

    .line 2105
    :cond_1f
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/n;->f(Lorg/json/JSONObject;)V
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_23

    goto :goto_24

    .line 2109
    :catchall_23
    move-exception p1

    :cond_24
    :goto_24
    nop

    .line 2110
    return-void
.end method

.method public c()V
    .registers 2

    .line 194
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/n;->b(Landroid/content/Context;)V

    .line 195
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/n;->d()V

    .line 196
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/n;->a(Z)V

    .line 197
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .registers 2

    .line 2244
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/n;->b(Landroid/content/Context;)V

    .line 2245
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/n;->d()V

    .line 2247
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/n;->d(Z)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 2248
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->j()V

    .line 2250
    :cond_12
    return-void
.end method

.method public d()V
    .registers 5

    .line 1358
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/n;->g:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_21

    .line 1359
    const-string v0, "MobclickRT"

    const-string v1, "--->>>*** flushMemoryData: \u4e8b\u4ef6\u843d\u5e93\u3002"

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/pro/n;->g:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/h;->a(Lorg/json/JSONArray;)V

    .line 1361
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/n;->g:Lorg/json/JSONArray;

    .line 1363
    :cond_21
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1364
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "thtstart"

    iget-wide v2, p0, Lcom/umeng/analytics/pro/n;->k:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gkvc"

    iget v2, p0, Lcom/umeng/analytics/pro/n;->i:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ekvc"

    iget v2, p0, Lcom/umeng/analytics/pro/n;->j:I

    .line 1365
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_46
    .catchall {:try_start_0 .. :try_end_46} :catchall_47

    .line 1367
    goto :goto_48

    .line 1366
    :catchall_47
    move-exception v0

    .line 1368
    :goto_48
    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .registers 2

    .line 2276
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->r()V

    .line 2279
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->m()Ljava/lang/String;

    .line 2280
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->n()Ljava/lang/String;

    .line 2282
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/n;->a(Z)V

    .line 2284
    return-void
.end method

.method public e()V
    .registers 2

    .line 2265
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/n;->d(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2266
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->j()V

    .line 2268
    :cond_a
    return-void
.end method

.method public f()J
    .registers 8

    .line 2396
    const-string v0, "first_activate_time"

    .line 2398
    const-wide/16 v1, 0x0

    :try_start_4
    sget-object v3, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    if-eqz v3, :cond_2c

    .line 2399
    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2400
    if-eqz v3, :cond_2c

    .line 2401
    invoke-interface {v3, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_2b

    .line 2402
    cmp-long v6, v4, v1

    if-nez v6, :cond_29

    .line 2403
    :try_start_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_26

    .line 2404
    :try_start_1a
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_2b

    goto :goto_2c

    .line 2408
    :catchall_26
    move-exception v0

    move-wide v1, v4

    goto :goto_2c

    .line 2402
    :cond_29
    move-wide v1, v4

    goto :goto_2c

    .line 2408
    :catchall_2b
    move-exception v0

    :cond_2c
    :goto_2c
    nop

    .line 2410
    return-wide v1
.end method
