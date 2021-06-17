.class public final Lcom/tendcloud/tenddata/game/zz;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Lcom/tendcloud/tenddata/game/ao;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/zz$a;
    }
.end annotation


# static fields
.field public static volatile a:Z = false

.field public static volatile b:Z = false

.field static c:Z = false

.field public static d:Lcom/tendcloud/tenddata/game/d; = null

.field public static final e:I = 0x66

.field private static volatile f:Lcom/tendcloud/tenddata/game/zz; = null

.field private static g:Ljava/lang/String; = null

.field private static h:Ljava/lang/String; = null

.field private static i:Z = false

.field private static final j:I = 0x65

.field private static final k:I = 0x67

.field private static l:Landroid/os/Handler; = null

.field private static final m:Landroid/os/HandlerThread;

.field private static n:Landroid/os/Handler; = null

.field private static final o:Landroid/os/HandlerThread;

.field private static final p:J = 0x7d0L


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/zz;->f:Lcom/tendcloud/tenddata/game/zz;

    .line 77
    const/4 v1, 0x0

    sput-boolean v1, Lcom/tendcloud/tenddata/game/zz;->a:Z

    .line 82
    sput-boolean v1, Lcom/tendcloud/tenddata/game/zz;->b:Z

    .line 87
    sput-boolean v1, Lcom/tendcloud/tenddata/game/zz;->c:Z

    .line 93
    sput-boolean v1, Lcom/tendcloud/tenddata/game/zz;->i:Z

    .line 101
    sput-object v0, Lcom/tendcloud/tenddata/game/zz;->l:Landroid/os/Handler;

    .line 103
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ProcessingThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/tendcloud/tenddata/game/zz;->m:Landroid/os/HandlerThread;

    .line 106
    sput-object v0, Lcom/tendcloud/tenddata/game/zz;->n:Landroid/os/Handler;

    .line 107
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "PauseEventThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/zz;->o:Landroid/os/HandlerThread;

    .line 113
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 114
    new-instance v2, Lcom/tendcloud/tenddata/game/e;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/tendcloud/tenddata/game/e;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/tendcloud/tenddata/game/zz;->l:Landroid/os/Handler;

    .line 134
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 135
    new-instance v1, Lcom/tendcloud/tenddata/game/p;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tendcloud/tenddata/game/p;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/tendcloud/tenddata/game/zz;->n:Landroid/os/Handler;

    .line 162
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sput-object p0, Lcom/tendcloud/tenddata/game/zz;->f:Lcom/tendcloud/tenddata/game/zz;

    .line 59
    return-void
.end method

.method static declared-synchronized a()Lcom/tendcloud/tenddata/game/zz;
    .registers 2

    const-class v0, Lcom/tendcloud/tenddata/game/zz;

    monitor-enter v0

    .line 62
    :try_start_3
    sget-object v1, Lcom/tendcloud/tenddata/game/zz;->f:Lcom/tendcloud/tenddata/game/zz;

    if-nez v1, :cond_18

    .line 63
    monitor-enter v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1c

    .line 64
    :try_start_8
    sget-object v1, Lcom/tendcloud/tenddata/game/zz;->f:Lcom/tendcloud/tenddata/game/zz;

    if-nez v1, :cond_13

    .line 65
    new-instance v1, Lcom/tendcloud/tenddata/game/zz;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/zz;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/game/zz;->f:Lcom/tendcloud/tenddata/game/zz;

    .line 67
    :cond_13
    monitor-exit v0

    goto :goto_18

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_15

    :try_start_17
    throw v1

    .line 69
    :cond_18
    :goto_18
    sget-object v1, Lcom/tendcloud/tenddata/game/zz;->f:Lcom/tendcloud/tenddata/game/zz;
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1c

    monitor-exit v0

    return-object v1

    .line 61
    :catchall_1c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Landroid/content/Context;)V
    .registers 6

    .line 1319
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_38

    .line 1321
    const/4 p1, 0x0

    .line 1322
    :try_start_a
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_19

    .line 1323
    sget-object p1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    goto :goto_23

    .line 1324
    :cond_19
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_23

    .line 1325
    sget-object p1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    check-cast p1, Landroid/app/Application;

    .line 1328
    :cond_23
    :goto_23
    if-eqz p1, :cond_37

    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->i:Z

    if-nez v0, :cond_37

    .line 1329
    new-instance v0, Lcom/tendcloud/tenddata/game/d;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/d;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/zz;->d:Lcom/tendcloud/tenddata/game/d;

    .line 1330
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1331
    sput-boolean v1, Lcom/tendcloud/tenddata/game/zz;->i:Z
    :try_end_35
    .catchall {:try_start_a .. :try_end_35} :catchall_36

    goto :goto_37

    .line 1333
    :catchall_36
    move-exception p1

    .line 1335
    :cond_37
    :goto_37
    goto :goto_68

    .line 1337
    :cond_38
    new-instance v0, Lcom/tendcloud/tenddata/game/w;

    invoke-direct {v0, p0, p1}, Lcom/tendcloud/tenddata/game/w;-><init>(Lcom/tendcloud/tenddata/game/zz;Landroid/content/Context;)V

    .line 1358
    :try_start_3d
    const-string p1, "android.app.ActivityManagerNative"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 1359
    const-string v2, "gDefault"

    const-string v3, "android.app.IActivityManager"

    invoke-static {p1, v0, v2, v3}, Lcom/tendcloud/tenddata/game/bq;->a(Ljava/lang/Class;Lcom/tendcloud/tenddata/game/bj;Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    sput-boolean v1, Lcom/tendcloud/tenddata/game/zz;->i:Z
    :try_end_4c
    .catchall {:try_start_3d .. :try_end_4c} :catchall_4d

    .line 1363
    goto :goto_68

    .line 1361
    :catchall_4d
    move-exception p1

    .line 1362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerActivityLifecycleListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 1365
    :goto_68
    return-void
.end method

.method static b()Landroid/os/Handler;
    .registers 1

    .line 165
    sget-object v0, Lcom/tendcloud/tenddata/game/zz;->n:Landroid/os/Handler;

    return-object v0
.end method

.method public static c()Landroid/os/Handler;
    .registers 1

    .line 169
    sget-object v0, Lcom/tendcloud/tenddata/game/zz;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .registers 1

    .line 52
    sget-object v0, Lcom/tendcloud/tenddata/game/zz;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .registers 1

    .line 52
    sget-object v0, Lcom/tendcloud/tenddata/game/zz;->h:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(DLjava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 9

    .line 1786
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v0, :cond_a

    .line 1787
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 1788
    return-void

    .line 1790
    :cond_a
    new-instance v0, Lcom/tendcloud/tenddata/game/zz$a;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/zz$a;-><init>()V

    .line 1791
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "apiType"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1792
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "domain"

    const-string v3, "iap"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1793
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "action"

    const-string v3, "reward"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1794
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "service"

    invoke-virtual {v1, v2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1795
    new-instance p4, Ljava/util/TreeMap;

    invoke-direct {p4}, Ljava/util/TreeMap;-><init>()V

    .line 1796
    const-string v1, "reason"

    invoke-interface {p4, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1797
    const-string p3, "amount"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p4, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1798
    iget-object p1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string p2, "data"

    invoke-virtual {p1, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1799
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x66

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_5c
    .catchall {:try_start_0 .. :try_end_5c} :catchall_5d

    .line 1803
    goto :goto_61

    .line 1800
    :catchall_5d
    move-exception p1

    .line 1802
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 1805
    :goto_61
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V
    .registers 4

    .line 305
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v0, :cond_a

    .line 306
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 307
    return-void

    .line 309
    :cond_a
    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->i:Z

    if-eqz v0, :cond_13

    sget-boolean v0, Lcom/tendcloud/tenddata/game/ab;->D:Z

    if-eqz v0, :cond_13

    .line 313
    return-void

    .line 315
    :cond_13
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/zz;->a(Landroid/content/Context;)V

    .line 316
    invoke-static {p1, p2}, Lcom/tendcloud/tenddata/game/ai;->a(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    .line 319
    goto :goto_1b

    .line 317
    :catchall_1a
    move-exception p1

    .line 320
    :goto_1b
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 5

    .line 327
    :try_start_0
    sget-boolean p2, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez p2, :cond_a

    .line 328
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 329
    return-void

    .line 331
    :cond_a
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/zz;->a(Landroid/content/Context;)V

    .line 332
    invoke-virtual {p0, p1, p4}, Lcom/tendcloud/tenddata/game/zz;->a(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    .line 335
    goto :goto_12

    .line 333
    :catchall_11
    move-exception p1

    .line 336
    :goto_12
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V
    .registers 4

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/tendcloud/tenddata/game/zz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    .line 178
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 6

    .line 184
    if-nez p1, :cond_8

    .line 185
    :try_start_2
    const-string p1, "Init failed Context is null"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 186
    return-void

    .line 189
    :cond_8
    const-string v0, "android.permission.INTERNET"

    invoke-static {p1, v0}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 190
    const-string p1, "[SDKInit] Permission \"android.permission.INTERNET\" is needed."

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 191
    return-void

    .line 193
    :cond_16
    if-nez p4, :cond_1e

    .line 194
    const-string p1, "Failed to initialize!"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_83

    .line 195
    return-void

    .line 198
    :cond_1e
    :try_start_1e
    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v0, :cond_70

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    .line 201
    sput-object p2, Lcom/tendcloud/tenddata/game/zz;->g:Ljava/lang/String;

    .line 202
    sput-object p3, Lcom/tendcloud/tenddata/game/zz;->h:Ljava/lang/String;

    .line 205
    const-string p2, "ChannelConfig.json"

    invoke-static {p1, p2}, Lcom/tendcloud/tenddata/game/bq;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 206
    invoke-static {p2}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_39

    goto :goto_3b

    :cond_39
    sget-object p2, Lcom/tendcloud/tenddata/game/zz;->h:Ljava/lang/String;

    :goto_3b
    sput-object p2, Lcom/tendcloud/tenddata/game/zz;->h:Ljava/lang/String;

    .line 208
    invoke-static {p2}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_46

    sget-object p2, Lcom/tendcloud/tenddata/game/zz;->h:Ljava/lang/String;

    goto :goto_48

    :cond_46
    const-string p2, "Default"

    :goto_48
    sput-object p2, Lcom/tendcloud/tenddata/game/zz;->h:Ljava/lang/String;

    .line 210
    sget-object p2, Lcom/tendcloud/tenddata/game/zz;->g:Ljava/lang/String;

    invoke-static {p2}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_58

    .line 211
    const-string p1, "[SDKInit] TD AppId is null"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 212
    return-void

    .line 216
    :cond_58
    sget-object p2, Lcom/tendcloud/tenddata/game/zz;->g:Ljava/lang/String;

    sget-object p3, Lcom/tendcloud/tenddata/game/zz;->h:Ljava/lang/String;

    invoke-static {p2, p3, p4}, Lcom/tendcloud/tenddata/game/ab;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    .line 218
    invoke-static {}, Lcom/tendcloud/tenddata/game/cq;->a()Lcom/tendcloud/tenddata/game/cq;

    move-result-object p2

    sget-object p3, Lcom/tendcloud/tenddata/game/zz;->g:Ljava/lang/String;

    sget-object v0, Lcom/tendcloud/tenddata/game/zz;->h:Ljava/lang/String;

    invoke-virtual {p2, p3, v0, p4}, Lcom/tendcloud/tenddata/game/cq;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    .line 219
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/zz;->a(Landroid/content/Context;)V

    .line 222
    const/4 p1, 0x1

    sput-boolean p1, Lcom/tendcloud/tenddata/game/zz;->a:Z

    .line 224
    :cond_70
    new-instance p1, Lcom/tendcloud/tenddata/game/x;

    invoke-direct {p1, p0, p4}, Lcom/tendcloud/tenddata/game/x;-><init>(Lcom/tendcloud/tenddata/game/zz;Lcom/tendcloud/tenddata/game/a;)V

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bq;->execute(Ljava/lang/Runnable;)V
    :try_end_78
    .catchall {:try_start_1e .. :try_end_78} :catchall_79

    .line 249
    goto :goto_82

    .line 246
    :catchall_79
    move-exception p1

    .line 247
    :try_start_7a
    const-string p2, "[SDKInit] Failed to initialize!"

    invoke-static {p2, p1}, Lcom/tendcloud/tenddata/game/ar;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V
    :try_end_82
    .catchall {:try_start_7a .. :try_end_82} :catchall_83

    .line 254
    :goto_82
    goto :goto_87

    .line 251
    :catchall_83
    move-exception p1

    .line 253
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 255
    :goto_87
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/game/a;)V
    .registers 12

    .line 358
    :try_start_0
    sget-boolean p1, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez p1, :cond_a

    .line 359
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 360
    return-void

    .line 362
    :cond_a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 363
    const-string p1, "onEvent()# event id is empty."

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 364
    return-void

    .line 367
    :cond_16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    const-string v0, "onEvent being called! eventId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {p5}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result v0
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_75

    const/4 v1, 0x3

    const-string v2, "null"

    if-eq v0, v1, :cond_39

    .line 376
    :try_start_2c
    const-string v0, ", eventLabel: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    if-nez p3, :cond_35

    move-object v0, v2

    goto :goto_36

    :cond_35
    move-object v0, p3

    :goto_36
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    :cond_39
    const-string v0, ", eventMap: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    if-nez p4, :cond_41

    goto :goto_5c

    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mapSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5c
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 382
    new-instance p1, Lcom/tendcloud/tenddata/game/y;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p5

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tendcloud/tenddata/game/y;-><init>(Lcom/tendcloud/tenddata/game/zz;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bq;->execute(Ljava/lang/Runnable;)V
    :try_end_74
    .catchall {:try_start_2c .. :try_end_74} :catchall_75

    .line 401
    goto :goto_76

    .line 399
    :catchall_75
    move-exception p1

    .line 402
    :goto_76
    return-void
.end method

.method public a(Lcom/tendcloud/tenddata/TDGAAccount$a;Lcom/tendcloud/tenddata/game/a;)V
    .registers 13

    .line 1616
    const-string v0, "account"

    const-string v1, "session"

    const-string v2, "service"

    const-string v3, "domain"

    const-string v4, "apiType"

    :try_start_a
    sget-boolean v5, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v5, :cond_14

    .line 1617
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 1618
    return-void

    .line 1621
    :cond_14
    new-instance v5, Lcom/tendcloud/tenddata/game/zz$a;

    invoke-direct {v5}, Lcom/tendcloud/tenddata/game/zz$a;-><init>()V

    .line 1622
    iget-object v6, v5, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const/16 v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    iget-object v6, v5, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1624
    iget-object v6, v5, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1625
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x66

    invoke-virtual {v6, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1627
    new-instance v5, Lcom/tendcloud/tenddata/game/zz$a;

    invoke-direct {v5}, Lcom/tendcloud/tenddata/game/zz$a;-><init>()V

    .line 1628
    iget-object v6, v5, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const/16 v8, 0x9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    iget-object v6, v5, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    iget-object v6, v5, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v8, "action"

    const-string v9, "update"

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1631
    iget-object v6, v5, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1632
    iget-object v6, v5, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    iget-object v8, p1, Lcom/tendcloud/tenddata/TDGAAccount$a;->newAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {v6, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V
    :try_end_6a
    .catchall {:try_start_a .. :try_end_6a} :catchall_135

    .line 1636
    :try_start_6a
    const-string v6, "accountId"

    iget-object v8, p1, Lcom/tendcloud/tenddata/TDGAAccount$a;->newAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {v8}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1637
    const-string v6, "name"

    iget-object v8, p1, Lcom/tendcloud/tenddata/TDGAAccount$a;->newAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {v8}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    const-string v6, "type"

    iget-object v8, p1, Lcom/tendcloud/tenddata/TDGAAccount$a;->newAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {v8}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountType()Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->index()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    const-string v6, "gender"

    iget-object v8, p1, Lcom/tendcloud/tenddata/TDGAAccount$a;->newAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {v8}, Lcom/tendcloud/tenddata/TDGAAccount;->getGender()Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->index()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1640
    const-string v6, "age"

    iget-object v8, p1, Lcom/tendcloud/tenddata/TDGAAccount$a;->newAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {v8}, Lcom/tendcloud/tenddata/TDGAAccount;->getAge()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1641
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 1642
    const-string v8, "level"

    iget-object v9, p1, Lcom/tendcloud/tenddata/TDGAAccount$a;->newAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {v9}, Lcom/tendcloud/tenddata/TDGAAccount;->getLevel()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1643
    const-string v8, "gameServer"

    iget-object p1, p1, Lcom/tendcloud/tenddata/TDGAAccount$a;->newAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getGameServer()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6, v8, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    const-string p1, "custom"

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_de
    .catchall {:try_start_6a .. :try_end_de} :catchall_df

    .line 1648
    goto :goto_e3

    .line 1645
    :catchall_df
    move-exception p1

    .line 1647
    :try_start_e0
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 1649
    :goto_e3
    iget-object p1, v5, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v6, "data"

    invoke-virtual {p1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1650
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x67

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_fd

    .line 1651
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1653
    :cond_fd
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 1654
    iput-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1655
    iput v0, p1, Landroid/os/Message;->what:I

    .line 1656
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v5, 0x7d0

    invoke-virtual {v0, p1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1659
    new-instance p1, Lcom/tendcloud/tenddata/game/zz$a;

    invoke-direct {p1}, Lcom/tendcloud/tenddata/game/zz$a;-><init>()V

    .line 1660
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const/16 v5, 0xc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1661
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1662
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1663
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_134
    .catchall {:try_start_e0 .. :try_end_134} :catchall_135

    .line 1667
    goto :goto_139

    .line 1664
    :catchall_135
    move-exception p1

    .line 1666
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 1669
    :goto_139
    return-void
.end method

.method public a(Lcom/tendcloud/tenddata/TDGAAccount;IILjava/lang/String;JLcom/tendcloud/tenddata/game/a;)V
    .registers 13

    .line 1543
    const-string v0, "account"

    :try_start_2
    sget-boolean v1, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v1, :cond_c

    .line 1544
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 1545
    return-void

    .line 1547
    :cond_c
    new-instance v1, Lcom/tendcloud/tenddata/game/zz$a;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/zz$a;-><init>()V

    .line 1548
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "apiType"

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1549
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "domain"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "service"

    invoke-virtual {v2, v3, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1551
    iget-object p7, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "action"

    const-string v3, "levelUp"

    invoke-virtual {p7, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    iget-object p7, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-virtual {p7, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1553
    iget-object p1, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string p7, "mission"

    invoke-virtual {p1, p7, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    .line 1555
    const-string p4, "level"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1556
    const-string p3, "preLevel"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1557
    const-string p2, "timeConsuming"

    const-wide/16 p3, 0x3e8

    div-long/2addr p5, p3

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1558
    iget-object p2, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string p3, "data"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1559
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x66

    invoke-virtual {p1, p2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_78
    .catchall {:try_start_2 .. :try_end_78} :catchall_79

    .line 1563
    goto :goto_7d

    .line 1560
    :catchall_79
    move-exception p1

    .line 1562
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 1565
    :goto_7d
    return-void
.end method

.method public a(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V
    .registers 8

    .line 1391
    const-string v0, "account"

    :try_start_2
    sget-boolean v1, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v1, :cond_c

    .line 1392
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 1393
    return-void

    .line 1396
    :cond_c
    new-instance v1, Lcom/tendcloud/tenddata/game/zz$a;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/zz$a;-><init>()V

    .line 1397
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "apiType"

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "domain"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "service"

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    iget-object p2, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    iget-object p2, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v0, "immediate"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    iget-object p2, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v0, "action"

    const-string v2, "update"

    invoke-virtual {p2, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1403
    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V
    :try_end_4b
    .catchall {:try_start_2 .. :try_end_4b} :catchall_e3

    .line 1405
    :try_start_4b
    const-string v0, "accountId"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    const-string v0, "name"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1407
    const-string v0, "type"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountType()Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->index()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    const-string v0, "gender"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getGender()Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->index()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    const-string v0, "age"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAge()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1410
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 1411
    const-string v2, "level"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    const-string v2, "gameServer"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getGameServer()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1413
    const-string p1, "custom"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b1
    .catchall {:try_start_4b .. :try_end_b1} :catchall_b2

    .line 1417
    goto :goto_b6

    .line 1414
    :catchall_b2
    move-exception p1

    .line 1416
    :try_start_b3
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 1418
    :goto_b6
    iget-object p1, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v0, "data"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x67

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_d0

    .line 1420
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1422
    :cond_d0
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 1423
    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1424
    iput p2, p1, Landroid/os/Message;->what:I

    .line 1425
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object p2

    const-wide/16 v0, 0x7d0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_e2
    .catchall {:try_start_b3 .. :try_end_e2} :catchall_e3

    .line 1430
    goto :goto_e7

    .line 1427
    :catchall_e3
    move-exception p1

    .line 1429
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 1432
    :goto_e7
    return-void
.end method

.method public a(Lcom/tendcloud/tenddata/game/eo;Lcom/tendcloud/tenddata/game/a;)V
    .registers 5

    .line 1221
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v0, :cond_a

    .line 1222
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 1223
    return-void

    .line 1225
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewShoppingCart called --> shoppingCart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 1226
    if-eqz p1, :cond_32

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/eo;->length()I

    move-result v0

    if-gtz v0, :cond_29

    goto :goto_32

    .line 1230
    :cond_29
    new-instance v0, Lcom/tendcloud/tenddata/game/t;

    invoke-direct {v0, p0, p2, p1}, Lcom/tendcloud/tenddata/game/t;-><init>(Lcom/tendcloud/tenddata/game/zz;Lcom/tendcloud/tenddata/game/a;Lcom/tendcloud/tenddata/game/eo;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->execute(Ljava/lang/Runnable;)V

    .line 1251
    goto :goto_3c

    .line 1227
    :cond_32
    :goto_32
    const-string p1, "viewShoppingCart# shoppingCart can\'t be null or empty"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_38

    .line 1228
    return-void

    .line 1248
    :catchall_38
    move-exception p1

    .line 1250
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 1252
    :goto_3c
    return-void
.end method

.method public a(Ljava/lang/String;IDLcom/tendcloud/tenddata/game/a;)V
    .registers 10

    .line 1705
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v0, :cond_a

    .line 1706
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 1707
    return-void

    .line 1709
    :cond_a
    new-instance v0, Lcom/tendcloud/tenddata/game/zz$a;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/zz$a;-><init>()V

    .line 1710
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "apiType"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1711
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "domain"

    const-string v3, "iap"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1712
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "service"

    invoke-virtual {v1, v2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1713
    iget-object p5, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v1, "action"

    const-string v2, "virtualCurrencyPurchase"

    invoke-virtual {p5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1714
    new-instance p5, Ljava/util/TreeMap;

    invoke-direct {p5}, Ljava/util/TreeMap;-><init>()V

    .line 1715
    const-string v1, "itemId"

    invoke-interface {p5, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1716
    const-string p1, "itemCount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p5, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1717
    const-string p1, "amount"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {p5, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1718
    iget-object p1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string p2, "data"

    invoke-virtual {p1, p2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1719
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x66

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_65
    .catchall {:try_start_0 .. :try_end_65} :catchall_66

    .line 1723
    goto :goto_6a

    .line 1720
    :catchall_66
    move-exception p1

    .line 1722
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 1725
    :goto_6a
    return-void
.end method

.method public a(Ljava/lang/String;ILcom/tendcloud/tenddata/game/a;)V
    .registers 8

    .line 1730
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v0, :cond_a

    .line 1731
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 1732
    return-void

    .line 1734
    :cond_a
    new-instance v0, Lcom/tendcloud/tenddata/game/zz$a;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/zz$a;-><init>()V

    .line 1735
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "apiType"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1736
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "domain"

    const-string v3, "iap"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1737
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "service"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1738
    iget-object p3, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v1, "action"

    const-string v2, "itemUsedFor"

    invoke-virtual {p3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1739
    new-instance p3, Ljava/util/TreeMap;

    invoke-direct {p3}, Ljava/util/TreeMap;-><init>()V

    .line 1740
    const-string v1, "item"

    invoke-interface {p3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1741
    const-string p1, "count"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1742
    iget-object p1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string p2, "data"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1743
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x66

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_5c
    .catchall {:try_start_0 .. :try_end_5c} :catchall_5d

    .line 1747
    goto :goto_61

    .line 1744
    :catchall_5d
    move-exception p1

    .line 1746
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 1749
    :goto_61
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 5

    .line 480
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v0, :cond_a

    .line 481
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 482
    return-void

    .line 484
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 485
    const-string p1, "onLogin: account could not be null or empty"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 486
    return-void

    .line 488
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLogin called --> account is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 489
    new-instance v0, Lcom/tendcloud/tenddata/game/ad;

    invoke-direct {v0, p0, p2, p1}, Lcom/tendcloud/tenddata/game/ad;-><init>(Lcom/tendcloud/tenddata/game/zz;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->execute(Ljava/lang/Runnable;)V
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_35

    .line 507
    goto :goto_39

    .line 505
    :catchall_35
    move-exception p1

    .line 506
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 508
    :goto_39
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/af$AccountType;Lcom/tendcloud/tenddata/game/a;)V
    .registers 6

    .line 594
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v0, :cond_a

    .line 595
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 596
    return-void

    .line 598
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 599
    const-string p1, "onLogin: account could not be null or empty"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 600
    return-void

    .line 602
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLogin called --> account is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \uff0ctype is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 603
    new-instance v0, Lcom/tendcloud/tenddata/game/ah;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/tendcloud/tenddata/game/ah;-><init>(Lcom/tendcloud/tenddata/game/zz;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;Lcom/tendcloud/tenddata/game/af$AccountType;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->execute(Ljava/lang/Runnable;)V
    :try_end_3e
    .catchall {:try_start_0 .. :try_end_3e} :catchall_3f

    .line 627
    goto :goto_43

    .line 625
    :catchall_3f
    move-exception p1

    .line 626
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 628
    :goto_43
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/af$AccountType;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 12

    .line 515
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v0, :cond_a

    .line 516
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 517
    return-void

    .line 519
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 520
    const-string p1, "onRegister: account could not be null or empty"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 521
    return-void

    .line 523
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegister called --> account is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \uff0ctype is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , name is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 524
    new-instance v0, Lcom/tendcloud/tenddata/game/ae;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/tendcloud/tenddata/game/ae;-><init>(Lcom/tendcloud/tenddata/game/zz;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;Lcom/tendcloud/tenddata/game/af$AccountType;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->execute(Ljava/lang/Runnable;)V
    :try_end_4e
    .catchall {:try_start_0 .. :try_end_4e} :catchall_4f

    .line 548
    goto :goto_53

    .line 546
    :catchall_4f
    move-exception p1

    .line 547
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 549
    :goto_53
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/en;Lcom/tendcloud/tenddata/game/a;)V
    .registers 6

    .line 1113
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v0, :cond_a

    .line 1114
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 1115
    return-void

    .line 1117
    :cond_a
    if-eqz p1, :cond_59

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_17

    goto :goto_59

    .line 1121
    :cond_17
    if-eqz p2, :cond_53

    const-string v0, "keyOrderId"

    invoke-virtual {p2, v0}, Lcom/tendcloud/tenddata/game/en;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_53

    .line 1125
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlaceOrder called --> account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,order: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/en;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 1126
    new-instance v0, Lcom/tendcloud/tenddata/game/r;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/tendcloud/tenddata/game/r;-><init>(Lcom/tendcloud/tenddata/game/zz;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;Lcom/tendcloud/tenddata/game/en;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->execute(Ljava/lang/Runnable;)V

    .line 1166
    goto :goto_63

    .line 1122
    :cond_53
    :goto_53
    const-string p1, "onPlaceOrder: order or orderID could not be null or empty"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 1123
    return-void

    .line 1118
    :cond_59
    :goto_59
    const-string p1, "onPlaceOrder: account could not be null or empty"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_0 .. :try_end_5e} :catchall_5f

    .line 1119
    return-void

    .line 1163
    :catchall_5f
    move-exception p1

    .line 1165
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 1167
    :goto_63
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 451
    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v0, :cond_a

    .line 452
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 453
    return-void

    .line 455
    :cond_a
    if-eqz p1, :cond_32

    if-eqz p2, :cond_32

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGlobalKV# key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 457
    :cond_32
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;Lcom/tendcloud/tenddata/game/a;)V
    .registers 15

    .line 1754
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v0, :cond_a

    .line 1755
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 1756
    return-void

    .line 1758
    :cond_a
    new-instance v0, Lcom/tendcloud/tenddata/game/zz$a;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/zz$a;-><init>()V

    .line 1759
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "apiType"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1760
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "domain"

    const-string v3, "iap"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1761
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "service"

    invoke-virtual {v1, v2, p10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    new-instance p10, Ljava/util/TreeMap;

    invoke-direct {p10}, Ljava/util/TreeMap;-><init>()V

    .line 1763
    invoke-virtual {p9}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;->index()I

    move-result p9
    :try_end_35
    .catchall {:try_start_0 .. :try_end_35} :catchall_84

    const/4 v1, 0x2

    const-string v2, "action"

    if-ne p9, v1, :cond_42

    .line 1764
    :try_start_3a
    iget-object p2, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string p3, "onRechargeSucc"

    invoke-virtual {p2, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6a

    .line 1766
    :cond_42
    iget-object p9, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v1, "recharge"

    invoke-virtual {p9, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1767
    const-string p9, "sku"

    invoke-interface {p10, p9, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    const-string p2, "amount"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-interface {p10, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1769
    const-string p2, "currencyType"

    invoke-interface {p10, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1770
    const-string p2, "virtualCurrencyCount"

    invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-interface {p10, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    const-string p2, "payType"

    invoke-interface {p10, p2, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    :goto_6a
    const-string p2, "orderId"

    invoke-interface {p10, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1774
    iget-object p1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string p2, "data"

    invoke-virtual {p1, p2, p10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1775
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x66

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_83
    .catchall {:try_start_3a .. :try_end_83} :catchall_84

    .line 1779
    goto :goto_88

    .line 1776
    :catchall_84
    move-exception p1

    .line 1778
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 1781
    :goto_88
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 16

    .line 817
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v0, :cond_a

    .line 818
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 819
    return-void

    .line 821
    :cond_a
    if-eqz p1, :cond_77

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_17

    goto :goto_77

    .line 826
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOrderPaySucc called --> account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,orderid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,amount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,currencyType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,payType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 827
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_66

    .line 828
    const-string p1, "currencyType length must be 3 likes CNY so so"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 829
    return-void

    .line 831
    :cond_66
    new-instance v8, Lcom/tendcloud/tenddata/game/k;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/tendcloud/tenddata/game/k;-><init>(Lcom/tendcloud/tenddata/game/zz;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/tendcloud/tenddata/game/bq;->execute(Ljava/lang/Runnable;)V

    .line 855
    goto :goto_81

    .line 822
    :cond_77
    :goto_77
    const-string p1, "onOrderPaySucc: account could not be null or empty"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_0 .. :try_end_7c} :catchall_7d

    .line 823
    return-void

    .line 853
    :catchall_7d
    move-exception p1

    .line 854
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 856
    :goto_81
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/en;Lcom/tendcloud/tenddata/game/a;)V
    .registers 19

    move-object v0, p1

    .line 988
    :try_start_1
    sget-boolean v1, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v1, :cond_b

    .line 989
    const-string v0, "SDK have not been initialized"

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 990
    return-void

    .line 992
    :cond_b
    if-eqz v0, :cond_98

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_19

    goto/16 :goto_98

    .line 996
    :cond_19
    if-nez p6, :cond_21

    .line 997
    const-string v0, "onPay: order could not be null"

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 998
    return-void

    .line 1000
    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPay called --> account: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,orderid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v5, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,amount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move v6, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,currencyType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v7, p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,payType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v8, p5

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,order: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p6 .. p6}, Lcom/tendcloud/tenddata/game/en;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_83

    .line 1002
    const-string v0, "currencyType length must be 3 likes CNY so so"

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 1003
    return-void

    .line 1005
    :cond_83
    new-instance v10, Lcom/tendcloud/tenddata/game/o;

    move-object v1, v10

    move-object v2, p0

    move-object/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/tendcloud/tenddata/game/o;-><init>(Lcom/tendcloud/tenddata/game/zz;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/en;)V

    invoke-static {v10}, Lcom/tendcloud/tenddata/game/bq;->execute(Ljava/lang/Runnable;)V

    .line 1042
    goto :goto_a2

    .line 993
    :cond_98
    :goto_98
    const-string v0, "onPay: account could not be null or empty"

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V
    :try_end_9d
    .catchall {:try_start_1 .. :try_end_9d} :catchall_9e

    .line 994
    return-void

    .line 1039
    :catchall_9e
    move-exception v0

    .line 1041
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 1043
    :goto_a2
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tendcloud/tenddata/game/a;)V
    .registers 21

    move-object v0, p1

    .line 904
    :try_start_1
    sget-boolean v1, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v1, :cond_b

    .line 905
    const-string v0, "SDK have not been initialized"

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 906
    return-void

    .line 908
    :cond_b
    if-eqz v0, :cond_9e

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_19

    goto/16 :goto_9e

    .line 912
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPay called --> account: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,orderid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v5, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,amount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move v6, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,currencyType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v7, p4

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,payType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v8, p5

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,itemId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v9, p6

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,itemCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v10, p7

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 913
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_86

    .line 914
    const-string v0, "currencyType length must be 3 likes CNY so so"

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 915
    return-void

    .line 917
    :cond_86
    new-instance v11, Lcom/tendcloud/tenddata/game/m;

    move-object v1, v11

    move-object v2, p0

    move-object/from16 v3, p8

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/tendcloud/tenddata/game/m;-><init>(Lcom/tendcloud/tenddata/game/zz;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v11}, Lcom/tendcloud/tenddata/game/bq;->execute(Ljava/lang/Runnable;)V

    .line 945
    goto :goto_a8

    .line 909
    :cond_9e
    :goto_9e
    const-string v0, "onPay: account could not be null or empty"

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V
    :try_end_a3
    .catchall {:try_start_1 .. :try_end_a3} :catchall_a4

    .line 910
    return-void

    .line 942
    :catchall_a4
    move-exception v0

    .line 944
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 946
    :goto_a8
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/TDGAMission$a;JLcom/tendcloud/tenddata/game/a;)V
    .registers 14

    .line 1674
    const-string v0, "missionId"

    const-string v1, "account"

    :try_start_4
    sget-boolean v2, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v2, :cond_e

    .line 1675
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 1676
    return-void

    .line 1681
    :cond_e
    new-instance v2, Lcom/tendcloud/tenddata/game/zz$a;

    invoke-direct {v2}, Lcom/tendcloud/tenddata/game/zz$a;-><init>()V

    .line 1682
    iget-object v3, v2, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v4, "apiType"

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    iget-object v3, v2, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v4, "domain"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1684
    iget-object v3, v2, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v4, "service"

    invoke-virtual {v3, v4, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    iget-object p7, v2, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-virtual {p7, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1686
    iget-object p3, v2, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string p7, "action"

    const-string v1, "mission"

    invoke-virtual {p3, p7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1687
    iget-object p3, v2, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-virtual {p4}, Lcom/tendcloud/tenddata/TDGAMission$a;->index()I

    move-result p7

    const/4 v1, 0x1

    if-ne p7, v1, :cond_47

    move-object p7, p1

    goto :goto_49

    :cond_47
    const-string p7, ""

    :goto_49
    invoke-virtual {p3, v0, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1688
    new-instance p3, Ljava/util/TreeMap;

    invoke-direct {p3}, Ljava/util/TreeMap;-><init>()V

    .line 1689
    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1690
    const-string p1, "status"

    invoke-virtual {p4}, Lcom/tendcloud/tenddata/TDGAMission$a;->index()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1691
    const-string p1, "timeConsuming"

    const-wide/16 v0, 0x3e8

    div-long/2addr p5, v0

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-interface {p3, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1692
    const-string p1, "cause"

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    iget-object p1, v2, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string p2, "data"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1694
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x66

    invoke-virtual {p1, p2, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_86
    .catchall {:try_start_4 .. :try_end_86} :catchall_87

    .line 1698
    goto :goto_8b

    .line 1695
    :catchall_87
    move-exception p1

    .line 1697
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 1700
    :goto_8b
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/en;Lcom/tendcloud/tenddata/game/a;)V
    .registers 12

    .line 1048
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v0, :cond_a

    .line 1049
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 1050
    return-void

    .line 1052
    :cond_a
    if-eqz p1, :cond_69

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_17

    goto :goto_69

    .line 1056
    :cond_17
    if-eqz p3, :cond_63

    const-string v0, "keyOrderId"

    invoke-virtual {p3, v0}, Lcom/tendcloud/tenddata/game/en;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_63

    .line 1060
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPay called --> account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,payType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,order: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/game/en;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 1061
    new-instance v0, Lcom/tendcloud/tenddata/game/q;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/tendcloud/tenddata/game/q;-><init>(Lcom/tendcloud/tenddata/game/zz;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;Lcom/tendcloud/tenddata/game/en;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->execute(Ljava/lang/Runnable;)V

    .line 1107
    goto :goto_73

    .line 1057
    :cond_63
    :goto_63
    const-string p1, "onPay: order or orderID could not be null or empty"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 1058
    return-void

    .line 1053
    :cond_69
    :goto_69
    const-string p1, "onPay: account could not be null or empty"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_0 .. :try_end_6e} :catchall_6f

    .line 1054
    return-void

    .line 1104
    :catchall_6f
    move-exception p1

    .line 1106
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 1108
    :goto_73
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/tendcloud/tenddata/game/a;)V
    .registers 16

    .line 769
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v0, :cond_a

    .line 770
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 771
    return-void

    .line 773
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAddItemToShoppingCart called --> itemId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,category: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,unitPrice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,amount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 774
    new-instance v0, Lcom/tendcloud/tenddata/game/j;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/tendcloud/tenddata/game/j;-><init>(Lcom/tendcloud/tenddata/game/zz;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->execute(Ljava/lang/Runnable;)V
    :try_end_58
    .catchall {:try_start_0 .. :try_end_58} :catchall_59

    .line 812
    goto :goto_5d

    .line 810
    :catchall_59
    move-exception p1

    .line 811
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 813
    :goto_5d
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tendcloud/tenddata/game/a;)V
    .registers 14

    .line 1172
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v0, :cond_a

    .line 1173
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 1174
    return-void

    .line 1176
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewItem called --> itemId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,category: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,unitPrice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 1177
    new-instance v0, Lcom/tendcloud/tenddata/game/s;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/tendcloud/tenddata/game/s;-><init>(Lcom/tendcloud/tenddata/game/zz;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->execute(Ljava/lang/Runnable;)V
    :try_end_4d
    .catchall {:try_start_0 .. :try_end_4d} :catchall_4e

    .line 1214
    goto :goto_52

    .line 1211
    :catchall_4e
    move-exception p1

    .line 1213
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 1216
    :goto_52
    return-void
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 273
    :try_start_0
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/au;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p1

    .line 274
    :catchall_5
    move-exception p1

    .line 276
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;
    .registers 3

    .line 260
    if-eqz p1, :cond_b

    :try_start_2
    sget-boolean p2, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez p2, :cond_b

    .line 261
    const-string p2, "SDK have not been initialized"

    invoke-static {p2}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 263
    :cond_b
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/au;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_10

    return-object p1

    .line 264
    :catchall_10
    move-exception p1

    .line 266
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V
    .registers 4

    .line 341
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v0, :cond_a

    .line 342
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 343
    return-void

    .line 345
    :cond_a
    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->i:Z

    if-eqz v0, :cond_f

    .line 346
    return-void

    .line 348
    :cond_f
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/zz;->a(Landroid/content/Context;)V

    .line 349
    invoke-static {p1, p2}, Lcom/tendcloud/tenddata/game/ai;->b(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    .line 352
    goto :goto_17

    .line 350
    :catchall_16
    move-exception p1

    .line 353
    :goto_17
    return-void
.end method

.method public b(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V
    .registers 13

    .line 1437
    const-string v0, "account"

    const-string v1, "session"

    const-string v2, "service"

    const-string v3, "domain"

    const-string v4, "apiType"

    :try_start_a
    sget-boolean v5, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v5, :cond_14

    .line 1438
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 1439
    return-void

    .line 1442
    :cond_14
    new-instance v5, Lcom/tendcloud/tenddata/game/zz$a;

    invoke-direct {v5}, Lcom/tendcloud/tenddata/game/zz$a;-><init>()V

    .line 1443
    iget-object v6, v5, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const/16 v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    iget-object v6, v5, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    iget-object v6, v5, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x66

    invoke-virtual {v6, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1449
    new-instance v5, Lcom/tendcloud/tenddata/game/zz$a;

    invoke-direct {v5}, Lcom/tendcloud/tenddata/game/zz$a;-><init>()V

    .line 1450
    iget-object v6, v5, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const/16 v8, 0x9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    iget-object v6, v5, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1452
    iget-object v6, v5, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1453
    iget-object v6, v5, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    iget-object v0, v5, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v6, "action"

    const-string v8, "update"

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V
    :try_end_68
    .catchall {:try_start_a .. :try_end_68} :catchall_125

    .line 1457
    :try_start_68
    const-string v6, "accountId"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1458
    const-string v6, "name"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1459
    const-string v6, "type"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountType()Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->index()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1460
    const-string v6, "gender"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getGender()Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->index()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    const-string v6, "age"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAge()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1462
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 1463
    const-string v8, "level"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getLevel()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    const-string v8, "gameServer"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getGameServer()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6, v8, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1465
    const-string p1, "custom"

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ce
    .catchall {:try_start_68 .. :try_end_ce} :catchall_cf

    .line 1469
    goto :goto_d3

    .line 1466
    :catchall_cf
    move-exception p1

    .line 1468
    :try_start_d0
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 1470
    :goto_d3
    iget-object p1, v5, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v6, "data"

    invoke-virtual {p1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1471
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x67

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_ed

    .line 1472
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1474
    :cond_ed
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 1475
    iput-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1476
    iput v0, p1, Landroid/os/Message;->what:I

    .line 1477
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v5, 0x7d0

    invoke-virtual {v0, p1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1481
    new-instance p1, Lcom/tendcloud/tenddata/game/zz$a;

    invoke-direct {p1}, Lcom/tendcloud/tenddata/game/zz$a;-><init>()V

    .line 1482
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const/16 v5, 0xc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1483
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1485
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_124
    .catchall {:try_start_d0 .. :try_end_124} :catchall_125

    .line 1490
    goto :goto_129

    .line 1487
    :catchall_125
    move-exception p1

    .line 1489
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 1492
    :goto_129
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 5

    .line 633
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v0, :cond_a

    .line 634
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 635
    return-void

    .line 637
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 638
    const-string p1, "onRegister: account could not be null or empty"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 639
    return-void

    .line 641
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegister called --> account is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 642
    new-instance v0, Lcom/tendcloud/tenddata/game/f;

    invoke-direct {v0, p0, p2, p1}, Lcom/tendcloud/tenddata/game/f;-><init>(Lcom/tendcloud/tenddata/game/zz;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->execute(Ljava/lang/Runnable;)V
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_35

    .line 660
    goto :goto_39

    .line 658
    :catchall_35
    move-exception p1

    .line 659
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 661
    :goto_39
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/tendcloud/tenddata/game/af$AccountType;Lcom/tendcloud/tenddata/game/a;)V
    .registers 6

    .line 666
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v0, :cond_a

    .line 667
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 668
    return-void

    .line 670
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 671
    const-string p1, "onApply: account could not be null or empty"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 672
    return-void

    .line 674
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onApply called --> account is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 675
    new-instance v0, Lcom/tendcloud/tenddata/game/g;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/tendcloud/tenddata/game/g;-><init>(Lcom/tendcloud/tenddata/game/zz;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;Lcom/tendcloud/tenddata/game/af$AccountType;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->execute(Ljava/lang/Runnable;)V
    :try_end_3e
    .catchall {:try_start_0 .. :try_end_3e} :catchall_3f

    .line 696
    goto :goto_43

    .line 694
    :catchall_3f
    move-exception p1

    .line 695
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 697
    :goto_43
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/tendcloud/tenddata/game/af$AccountType;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 12

    .line 554
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v0, :cond_a

    .line 555
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 556
    return-void

    .line 558
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 559
    const-string p1, "onLogin: account could not be null or empty"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 560
    return-void

    .line 562
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLogin called --> account is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \uff0ctype is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , name is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 563
    new-instance v0, Lcom/tendcloud/tenddata/game/ag;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/tendcloud/tenddata/game/ag;-><init>(Lcom/tendcloud/tenddata/game/zz;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;Lcom/tendcloud/tenddata/game/af$AccountType;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->execute(Ljava/lang/Runnable;)V
    :try_end_4e
    .catchall {:try_start_0 .. :try_end_4e} :catchall_4f

    .line 588
    goto :goto_53

    .line 586
    :catchall_4f
    move-exception p1

    .line 587
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 589
    :goto_53
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 16

    .line 861
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v0, :cond_a

    .line 862
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 863
    return-void

    .line 865
    :cond_a
    if-eqz p1, :cond_77

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_17

    goto :goto_77

    .line 869
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPay called --> account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,orderid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,amount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,currencyType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,payType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 870
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_66

    .line 871
    const-string p1, "currencyType length must be 3 likes CNY so so"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 872
    return-void

    .line 874
    :cond_66
    new-instance v8, Lcom/tendcloud/tenddata/game/l;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/tendcloud/tenddata/game/l;-><init>(Lcom/tendcloud/tenddata/game/zz;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/tendcloud/tenddata/game/bq;->execute(Ljava/lang/Runnable;)V

    .line 898
    goto :goto_81

    .line 866
    :cond_77
    :goto_77
    const-string p1, "onPay: account could not be null or empty"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_0 .. :try_end_7c} :catchall_7d

    .line 867
    return-void

    .line 896
    :catchall_7d
    move-exception p1

    .line 897
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 899
    :goto_81
    return-void
.end method

.method public c(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;
    .registers 3

    .line 293
    invoke-static {p1, p2}, Lcom/tendcloud/tenddata/game/ab;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V
    .registers 9

    .line 1497
    const-string v0, "account"

    :try_start_2
    sget-boolean v1, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v1, :cond_c

    .line 1498
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 1499
    return-void

    .line 1501
    :cond_c
    new-instance v1, Lcom/tendcloud/tenddata/game/zz$a;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/zz$a;-><init>()V

    .line 1502
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "apiType"

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_d7

    .line 1506
    :try_start_23
    const-string v3, "accountId"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1507
    const-string v3, "name"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    const-string v3, "type"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountType()Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->index()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    const-string v3, "gender"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getGender()Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->index()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    const-string v3, "age"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAge()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 1512
    const-string v4, "level"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    const-string v4, "gameServer"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getGameServer()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1514
    const-string v4, "custom"

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_89
    .catchall {:try_start_23 .. :try_end_89} :catchall_8a

    .line 1518
    goto :goto_8e

    .line 1515
    :catchall_8a
    move-exception v3

    .line 1517
    :try_start_8b
    invoke-static {v3}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 1519
    :goto_8e
    iget-object v3, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v4, "domain"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    iget-object v3, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v4, "action"

    const-string v5, "update"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    iget-object v3, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v4, "service"

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    iget-object p2, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1523
    iget-object p1, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string p2, "data"

    invoke-virtual {p1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1526
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x67

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_c4

    .line 1527
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1529
    :cond_c4
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 1530
    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1531
    iput p2, p1, Landroid/os/Message;->what:I

    .line 1532
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object p2

    const-wide/16 v0, 0x7d0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_d6
    .catchall {:try_start_8b .. :try_end_d6} :catchall_d7

    .line 1537
    goto :goto_db

    .line 1534
    :catchall_d7
    move-exception p1

    .line 1536
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 1538
    :goto_db
    return-void
.end method

.method public c(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 5

    .line 952
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v0, :cond_a

    .line 953
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 954
    return-void

    .line 956
    :cond_a
    if-eqz p1, :cond_36

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_17

    goto :goto_36

    .line 960
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPay called --> accountID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 961
    new-instance v0, Lcom/tendcloud/tenddata/game/n;

    invoke-direct {v0, p0, p2, p1}, Lcom/tendcloud/tenddata/game/n;-><init>(Lcom/tendcloud/tenddata/game/zz;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->execute(Ljava/lang/Runnable;)V

    .line 982
    goto :goto_40

    .line 957
    :cond_36
    :goto_36
    const-string p1, "onPay: account could not be null or empty"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_3c

    .line 958
    return-void

    .line 979
    :catchall_3c
    move-exception p1

    .line 981
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 983
    :goto_40
    return-void
.end method

.method public c(Ljava/lang/String;Lcom/tendcloud/tenddata/game/af$AccountType;Lcom/tendcloud/tenddata/game/a;)V
    .registers 6

    .line 702
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v0, :cond_a

    .line 703
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 704
    return-void

    .line 706
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 707
    const-string p1, "onActivate: account could not be null or empty"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 708
    return-void

    .line 710
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivate called --> account is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 711
    new-instance v0, Lcom/tendcloud/tenddata/game/h;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/tendcloud/tenddata/game/h;-><init>(Lcom/tendcloud/tenddata/game/zz;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;Lcom/tendcloud/tenddata/game/af$AccountType;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->execute(Ljava/lang/Runnable;)V
    :try_end_3e
    .catchall {:try_start_0 .. :try_end_3e} :catchall_3f

    .line 732
    goto :goto_43

    .line 730
    :catchall_3f
    move-exception p1

    .line 731
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 733
    :goto_43
    return-void
.end method

.method public d()Landroid/content/Context;
    .registers 2

    .line 284
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_3

    return-object v0

    .line 285
    :catchall_3
    move-exception v0

    .line 288
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;
    .registers 3

    .line 298
    invoke-static {p1, p2}, Lcom/tendcloud/tenddata/game/ab;->b(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V
    .registers 9

    .line 1570
    const-string v0, "account"

    :try_start_2
    sget-boolean v1, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v1, :cond_c

    .line 1571
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 1572
    return-void

    .line 1574
    :cond_c
    new-instance v1, Lcom/tendcloud/tenddata/game/zz$a;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/zz$a;-><init>()V

    .line 1575
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "apiType"

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1577
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_e3

    .line 1579
    :try_start_23
    const-string v3, "accountId"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    const-string v3, "name"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1581
    const-string v3, "type"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountType()Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->index()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1582
    const-string v3, "gender"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getGender()Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->index()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1583
    const-string v3, "age"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAge()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 1585
    const-string v4, "level"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1586
    const-string v4, "gameServer"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getGameServer()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1587
    const-string v4, "custom"

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_89
    .catchall {:try_start_23 .. :try_end_89} :catchall_8a

    .line 1591
    goto :goto_8e

    .line 1588
    :catchall_8a
    move-exception v3

    .line 1590
    :try_start_8b
    invoke-static {v3}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 1592
    :goto_8e
    iget-object v3, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v4, "domain"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1593
    iget-object v3, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v4, "action"

    const-string v5, "update"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1594
    iget-object v3, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v4, "service"

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1595
    iget-object p2, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1596
    iget-object p1, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string p2, "immediate"

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1597
    iget-object p1, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string p2, "data"

    invoke-virtual {p1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1599
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x67

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_d0

    .line 1600
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1602
    :cond_d0
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 1603
    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1604
    iput p2, p1, Landroid/os/Message;->what:I

    .line 1605
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object p2

    const-wide/16 v0, 0x7d0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_e2
    .catchall {:try_start_8b .. :try_end_e2} :catchall_e3

    .line 1610
    goto :goto_e7

    .line 1607
    :catchall_e3
    move-exception p1

    .line 1609
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 1611
    :goto_e7
    return-void
.end method

.method public d(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 5

    .line 1257
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v0, :cond_a

    .line 1258
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 1259
    return-void

    .line 1261
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1262
    const-string p1, "onReceiveDeepLink: url could not be null or empty"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 1263
    return-void

    .line 1265
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveDeepLink --> link: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 1266
    new-instance v0, Lcom/tendcloud/tenddata/game/u;

    invoke-direct {v0, p0, p1, p2}, Lcom/tendcloud/tenddata/game/u;-><init>(Lcom/tendcloud/tenddata/game/zz;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->execute(Ljava/lang/Runnable;)V
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_35

    .line 1289
    goto :goto_39

    .line 1286
    :catchall_35
    move-exception p1

    .line 1288
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 1290
    :goto_39
    return-void
.end method

.method public e()V
    .registers 2

    .line 443
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/tendcloud/tenddata/game/ar;->a:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_4

    .line 446
    goto :goto_5

    .line 444
    :catchall_4
    move-exception v0

    .line 447
    :goto_5
    return-void
.end method

.method public e(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 5

    .line 1295
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v0, :cond_a

    .line 1296
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 1297
    return-void

    .line 1299
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createRole called --> roleName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 1300
    new-instance v0, Lcom/tendcloud/tenddata/game/v;

    invoke-direct {v0, p0, p1, p2}, Lcom/tendcloud/tenddata/game/v;-><init>(Lcom/tendcloud/tenddata/game/zz;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->execute(Ljava/lang/Runnable;)V
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    .line 1314
    goto :goto_2d

    .line 1312
    :catchall_29
    move-exception p1

    .line 1313
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 1315
    :goto_2d
    return-void
.end method

.method public onKill(Lcom/tendcloud/tenddata/game/a;)V
    .registers 3

    .line 406
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v0, :cond_a

    .line 407
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 408
    return-void

    .line 411
    :cond_a
    new-instance v0, Lcom/tendcloud/tenddata/game/z;

    invoke-direct {v0, p0, p1}, Lcom/tendcloud/tenddata/game/z;-><init>(Lcom/tendcloud/tenddata/game/zz;Lcom/tendcloud/tenddata/game/a;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->execute(Ljava/lang/Runnable;)V

    .line 425
    sget-object p1, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    if-eqz p1, :cond_1b

    .line 426
    sget-object p1, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->updateGameDuration()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 430
    :cond_1b
    goto :goto_1d

    .line 428
    :catch_1c
    move-exception p1

    .line 431
    :goto_1d
    return-void
.end method

.method public onLogout(Lcom/tendcloud/tenddata/game/a;)V
    .registers 3

    .line 738
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v0, :cond_a

    .line 739
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 740
    return-void

    .line 742
    :cond_a
    const-string v0, "ModuleAccount.logout "

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 743
    new-instance v0, Lcom/tendcloud/tenddata/game/i;

    invoke-direct {v0, p0, p1}, Lcom/tendcloud/tenddata/game/i;-><init>(Lcom/tendcloud/tenddata/game/zz;Lcom/tendcloud/tenddata/game/a;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->execute(Ljava/lang/Runnable;)V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    .line 761
    goto :goto_1c

    .line 759
    :catchall_18
    move-exception p1

    .line 760
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 762
    :goto_1c
    return-void
.end method

.method public removeGlobalKV(Ljava/lang/String;)V
    .registers 4

    .line 462
    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v0, :cond_a

    .line 463
    const-string p1, "SDK have not been initialized"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 464
    return-void

    .line 466
    :cond_a
    if-eqz p1, :cond_22

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeGlobalKV# key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 468
    :cond_22
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    return-void
.end method
