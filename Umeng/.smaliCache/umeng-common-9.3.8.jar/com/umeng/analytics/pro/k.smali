.class public Lcom/umeng/analytics/pro/k;
.super Ljava/lang/Object;
.source "AutoViewPageTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/k$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Lcom/umeng/analytics/MobclickAgent$PageMode;

.field static e:Ljava/lang/String;

.field static f:I

.field private static j:Lorg/json/JSONArray;

.field private static k:Ljava/lang/Object;

.field private static l:Landroid/app/Application;

.field private static p:Z

.field private static q:Ljava/lang/Object;


# instance fields
.field c:Z

.field d:Z

.field g:Lcom/umeng/analytics/vshelper/a;

.field h:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:I

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/analytics/pro/k;->a:Ljava/lang/String;

    .line 56
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    sput-object v1, Lcom/umeng/analytics/pro/k;->j:Lorg/json/JSONArray;

    .line 57
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/umeng/analytics/pro/k;->k:Ljava/lang/Object;

    .line 59
    sput-object v0, Lcom/umeng/analytics/pro/k;->l:Landroid/app/Application;

    .line 62
    sget-object v1, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sput-object v1, Lcom/umeng/analytics/pro/k;->b:Lcom/umeng/analytics/MobclickAgent$PageMode;

    .line 81
    sput-object v0, Lcom/umeng/analytics/pro/k;->e:Ljava/lang/String;

    .line 82
    const/4 v0, -0x1

    sput v0, Lcom/umeng/analytics/pro/k;->f:I

    .line 84
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/analytics/pro/k;->p:Z

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/k;->q:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/k;->i:Ljava/util/Map;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/analytics/pro/k;->m:Z

    .line 74
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/k;->c:Z

    .line 77
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/k;->d:Z

    .line 79
    iput v0, p0, Lcom/umeng/analytics/pro/k;->n:I

    .line 80
    iput v0, p0, Lcom/umeng/analytics/pro/k;->o:I

    .line 105
    invoke-static {}, Lcom/umeng/analytics/vshelper/PageNameMonitor;->getInstance()Lcom/umeng/analytics/vshelper/PageNameMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/k;->g:Lcom/umeng/analytics/vshelper/a;

    .line 251
    new-instance v0, Lcom/umeng/analytics/pro/k$1;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/k$1;-><init>(Lcom/umeng/analytics/pro/k;)V

    iput-object v0, p0, Lcom/umeng/analytics/pro/k;->h:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 128
    monitor-enter p0

    .line 129
    :try_start_23
    sget-object v0, Lcom/umeng/analytics/pro/k;->l:Landroid/app/Application;

    if-eqz v0, :cond_2a

    .line 130
    invoke-direct {p0}, Lcom/umeng/analytics/pro/k;->f()V

    .line 134
    :cond_2a
    monitor-exit p0

    .line 136
    return-void

    .line 134
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/k$1;)V
    .registers 2

    .line 53
    invoke-direct {p0}, Lcom/umeng/analytics/pro/k;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/pro/k;)I
    .registers 3

    .line 53
    iget v0, p0, Lcom/umeng/analytics/pro/k;->o:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/umeng/analytics/pro/k;->o:I

    return v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/umeng/analytics/pro/k;
    .registers 3

    const-class v0, Lcom/umeng/analytics/pro/k;

    monitor-enter v0

    .line 92
    :try_start_3
    sget-object v1, Lcom/umeng/analytics/pro/k;->l:Landroid/app/Application;

    if-nez v1, :cond_1e

    .line 93
    if-eqz p0, :cond_1e

    .line 94
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_16

    .line 95
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/pro/k;->l:Landroid/app/Application;

    goto :goto_1e

    .line 96
    :cond_16
    instance-of v1, p0, Landroid/app/Application;

    if-eqz v1, :cond_1e

    .line 97
    check-cast p0, Landroid/app/Application;

    sput-object p0, Lcom/umeng/analytics/pro/k;->l:Landroid/app/Application;

    .line 101
    :cond_1e
    :goto_1e
    invoke-static {}, Lcom/umeng/analytics/pro/k$a;->a()Lcom/umeng/analytics/pro/k;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_24

    monitor-exit v0

    return-object p0

    .line 91
    :catchall_24
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a(Landroid/app/Activity;)V
    .registers 4

    .line 217
    sget-object v0, Lcom/umeng/analytics/pro/k;->b:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-eq v0, v1, :cond_7

    goto :goto_6b

    .line 221
    :cond_7
    if-eqz p1, :cond_6b

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/umeng/analytics/pro/k;->g:Lcom/umeng/analytics/vshelper/a;

    invoke-interface {v1, v0}, Lcom/umeng/analytics/vshelper/a;->activityResume(Ljava/lang/String;)V

    .line 224
    iget-boolean v1, p0, Lcom/umeng/analytics/pro/k;->c:Z

    if-eqz v1, :cond_59

    .line 225
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/umeng/analytics/pro/k;->c:Z

    .line 226
    sget-object v1, Lcom/umeng/analytics/pro/k;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 227
    sget-object v1, Lcom/umeng/analytics/pro/k;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 228
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/k;->b(Landroid/app/Activity;)V

    .line 229
    sget-object p1, Lcom/umeng/analytics/pro/k;->q:Ljava/lang/Object;

    monitor-enter p1

    .line 230
    :try_start_4a
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/b;->h()V

    .line 231
    monitor-exit p1

    goto :goto_6b

    :catchall_53
    move-exception v0

    monitor-exit p1
    :try_end_55
    .catchall {:try_start_4a .. :try_end_55} :catchall_53

    throw v0

    .line 234
    :cond_56
    sput-object v0, Lcom/umeng/analytics/pro/k;->a:Ljava/lang/String;

    goto :goto_6b

    .line 238
    :cond_59
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/k;->b(Landroid/app/Activity;)V

    .line 239
    sget-object p1, Lcom/umeng/analytics/pro/k;->q:Ljava/lang/Object;

    monitor-enter p1

    .line 240
    :try_start_5f
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/b;->h()V

    .line 241
    monitor-exit p1

    goto :goto_6b

    :catchall_68
    move-exception v0

    monitor-exit p1
    :try_end_6a
    .catchall {:try_start_5f .. :try_end_6a} :catchall_68

    throw v0

    .line 246
    :cond_6b
    :goto_6b
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 172
    sget v0, Lcom/umeng/analytics/pro/k;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_51

    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 174
    sget-object v1, Lcom/umeng/analytics/pro/k;->e:Ljava/lang/String;

    const-string v2, "pairUUID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v1, "reason"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object p1, Lcom/umeng/analytics/pro/k;->e:Ljava/lang/String;

    if-eqz p1, :cond_23

    .line 177
    const/4 p1, 0x0

    sput-object p1, Lcom/umeng/analytics/pro/k;->e:Ljava/lang/String;

    .line 179
    :cond_23
    if-eqz p0, :cond_51

    .line 181
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "pid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "isMainProcess"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Context"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p1

    const-string v1, "$$_onUMengEnterBackground"

    invoke-virtual {p1, p0, v1, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 189
    :cond_51
    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/pro/k;Landroid/app/Activity;)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/k;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Z)Z
    .registers 1

    .line 53
    sput-boolean p0, Lcom/umeng/analytics/pro/k;->p:Z

    return p0
.end method

.method static synthetic b(Lcom/umeng/analytics/pro/k;)I
    .registers 3

    .line 53
    iget v0, p0, Lcom/umeng/analytics/pro/k;->n:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/umeng/analytics/pro/k;->n:I

    return v0
.end method

.method private b(Landroid/app/Activity;)V
    .registers 6

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/pro/k;->a:Ljava/lang/String;

    .line 471
    iget-object p1, p0, Lcom/umeng/analytics/pro/k;->i:Ljava/util/Map;

    monitor-enter p1

    .line 472
    :try_start_24
    iget-object v0, p0, Lcom/umeng/analytics/pro/k;->i:Ljava/util/Map;

    sget-object v1, Lcom/umeng/analytics/pro/k;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    monitor-exit p1

    .line 474
    return-void

    .line 473
    :catchall_35
    move-exception v0

    monitor-exit p1
    :try_end_37
    .catchall {:try_start_24 .. :try_end_37} :catchall_35

    throw v0
.end method

.method static synthetic b(Lcom/umeng/analytics/pro/k;Landroid/app/Activity;)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/k;->c(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic c(Lcom/umeng/analytics/pro/k;)I
    .registers 1

    .line 53
    iget p0, p0, Lcom/umeng/analytics/pro/k;->n:I

    return p0
.end method

.method private c(Landroid/app/Activity;)V
    .registers 11

    .line 478
    nop

    .line 479
    nop

    .line 480
    :try_start_2
    iget-object v0, p0, Lcom/umeng/analytics/pro/k;->i:Ljava/util/Map;

    monitor-enter v0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_8e

    .line 481
    :try_start_5
    sget-object v1, Lcom/umeng/analytics/pro/k;->a:Ljava/lang/String;

    if-nez v1, :cond_2c

    .line 482
    if-eqz p1, :cond_2c

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/pro/k;->a:Ljava/lang/String;

    .line 486
    :cond_2c
    sget-object p1, Lcom/umeng/analytics/pro/k;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-wide/16 v1, 0x0

    if-nez p1, :cond_5e

    .line 487
    iget-object p1, p0, Lcom/umeng/analytics/pro/k;->i:Ljava/util/Map;

    sget-object v3, Lcom/umeng/analytics/pro/k;->a:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 488
    iget-object p1, p0, Lcom/umeng/analytics/pro/k;->i:Ljava/util/Map;

    sget-object v1, Lcom/umeng/analytics/pro/k;->a:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 489
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 490
    iget-object p1, p0, Lcom/umeng/analytics/pro/k;->i:Ljava/util/Map;

    sget-object v5, Lcom/umeng/analytics/pro/k;->a:Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide v7, v1

    move-wide v1, v3

    move-wide v3, v7

    goto :goto_5f

    .line 493
    :cond_5e
    move-wide v3, v1

    :goto_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5 .. :try_end_60} :catchall_8b

    .line 495
    :try_start_60
    sget-object p1, Lcom/umeng/analytics/pro/k;->k:Ljava/lang/Object;

    monitor-enter p1
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_8e

    .line 497
    :try_start_63
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 499
    const-string v5, "page_name"

    sget-object v6, Lcom/umeng/analytics/pro/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 500
    const-string v5, "duration"

    invoke-virtual {v0, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 501
    const-string v1, "page_start"

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 502
    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 503
    sget-object v1, Lcom/umeng/analytics/pro/k;->j:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_84
    .catchall {:try_start_63 .. :try_end_84} :catchall_85

    .line 505
    goto :goto_86

    .line 504
    :catchall_85
    move-exception v0

    .line 506
    :goto_86
    :try_start_86
    monitor-exit p1

    .line 511
    goto :goto_8f

    .line 506
    :catchall_88
    move-exception v0

    monitor-exit p1
    :try_end_8a
    .catchall {:try_start_86 .. :try_end_8a} :catchall_88

    :try_start_8a
    throw v0
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_8e

    .line 493
    :catchall_8b
    move-exception p1

    :try_start_8c
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    :try_start_8d
    throw p1
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8e

    .line 507
    :catchall_8e
    move-exception p1

    .line 512
    :goto_8f
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .registers 5

    .line 194
    if-eqz p0, :cond_40

    .line 195
    nop

    .line 196
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 197
    sget-object v1, Lcom/umeng/analytics/pro/k;->k:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_3e

    .line 199
    :try_start_b
    sget-object v2, Lcom/umeng/analytics/pro/k;->j:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    sput-object v3, Lcom/umeng/analytics/pro/k;->j:Lorg/json/JSONArray;

    .line 201
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_3b

    .line 203
    :try_start_19
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_40

    .line 204
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 205
    const-string v2, "__b"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    invoke-static {p0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p0

    .line 207
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/t;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/pro/h$a;->a:Lcom/umeng/analytics/pro/h$a;

    .line 206
    invoke-virtual {p0, v1, v0, v2}, Lcom/umeng/analytics/pro/h;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/h$a;)Z
    :try_end_3a
    .catchall {:try_start_19 .. :try_end_3a} :catchall_3e

    goto :goto_40

    .line 201
    :catchall_3b
    move-exception p0

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    .line 212
    :catchall_3e
    move-exception p0

    goto :goto_41

    .line 213
    :cond_40
    :goto_40
    nop

    .line 214
    :goto_41
    return-void
.end method

.method static synthetic d(Lcom/umeng/analytics/pro/k;)I
    .registers 1

    .line 53
    iget p0, p0, Lcom/umeng/analytics/pro/k;->o:I

    return p0
.end method

.method static synthetic d()Ljava/lang/Object;
    .registers 1

    .line 53
    sget-object v0, Lcom/umeng/analytics/pro/k;->q:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lcom/umeng/analytics/pro/k;)I
    .registers 3

    .line 53
    iget v0, p0, Lcom/umeng/analytics/pro/k;->o:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/umeng/analytics/pro/k;->o:I

    return v0
.end method

.method static synthetic e()Z
    .registers 1

    .line 53
    sget-boolean v0, Lcom/umeng/analytics/pro/k;->p:Z

    return v0
.end method

.method static synthetic f(Lcom/umeng/analytics/pro/k;)I
    .registers 3

    .line 53
    iget v0, p0, Lcom/umeng/analytics/pro/k;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/umeng/analytics/pro/k;->n:I

    return v0
.end method

.method private f()V
    .registers 3

    .line 143
    iget-boolean v0, p0, Lcom/umeng/analytics/pro/k;->m:Z

    if-nez v0, :cond_18

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/analytics/pro/k;->m:Z

    .line 145
    sget-object v0, Lcom/umeng/analytics/pro/k;->l:Landroid/app/Application;

    if-eqz v0, :cond_18

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_18

    .line 147
    sget-object v0, Lcom/umeng/analytics/pro/k;->l:Landroid/app/Application;

    iget-object v1, p0, Lcom/umeng/analytics/pro/k;->h:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 151
    :cond_18
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 67
    iget-boolean v0, p0, Lcom/umeng/analytics/pro/k;->m:Z

    return v0
.end method

.method public b()V
    .registers 3

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/analytics/pro/k;->m:Z

    .line 158
    sget-object v0, Lcom/umeng/analytics/pro/k;->l:Landroid/app/Application;

    if-eqz v0, :cond_17

    .line 159
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_14

    .line 160
    sget-object v0, Lcom/umeng/analytics/pro/k;->l:Landroid/app/Application;

    iget-object v1, p0, Lcom/umeng/analytics/pro/k;->h:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 162
    :cond_14
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/analytics/pro/k;->l:Landroid/app/Application;

    .line 164
    :cond_17
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 6

    .line 109
    sget-object v0, Lcom/umeng/analytics/pro/k;->q:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_3
    sget-boolean v1, Lcom/umeng/analytics/pro/k;->p:Z

    if-eqz v1, :cond_39

    .line 111
    const/4 v1, 0x0

    sput-boolean v1, Lcom/umeng/analytics/pro/k;->p:Z

    .line 116
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_42

    .line 117
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getGlobleActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    .line 118
    if-nez p1, :cond_19

    .line 119
    const-string p1, "MobclickRT"

    const-string v0, "--->>> init\u89e6\u53d1onResume: \u65e0\u524d\u53f0Activity\uff0c\u76f4\u63a5\u9000\u51fa\u3002"

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void

    .line 122
    :cond_19
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    .line 123
    const-string v1, "MobclickRT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->>> init\u89e6\u53d1onResume: \u8865\u6551\u6210\u529f\uff0c\u524d\u53f0Activity\u540d\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/k;->a(Landroid/app/Activity;)V

    .line 125
    return-void

    .line 113
    :cond_39
    :try_start_39
    const-string p1, "MobclickRT"

    const-string v1, "--->>> init\u89e6\u53d1onResume: firstResumeCall = false\uff0c\u76f4\u63a5\u8fd4\u56de\u3002"

    invoke-static {p1, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    monitor-exit v0

    return-void

    .line 116
    :catchall_42
    move-exception p1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_39 .. :try_end_44} :catchall_42

    throw p1
.end method

.method public c()V
    .registers 2

    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/k;->c(Landroid/app/Activity;)V

    .line 168
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/k;->b()V

    .line 169
    return-void
.end method
