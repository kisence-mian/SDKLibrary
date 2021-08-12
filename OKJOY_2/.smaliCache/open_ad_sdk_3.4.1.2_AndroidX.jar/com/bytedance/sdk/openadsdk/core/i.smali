.class public Lcom/bytedance/sdk/openadsdk/core/i;
.super Ljava/lang/Object;
.source "GlobalInfo.java"


# static fields
.field private static volatile u:Lcom/bytedance/sdk/openadsdk/core/i;

.field private static x:Lcom/bytedance/sdk/openadsdk/TTCustomController;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadListener;

.field private final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Landroid/graphics/Bitmap;

.field private m:Lcom/bytedance/sdk/openadsdk/utils/a;

.field private n:Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;

.field private o:Lcom/bytedance/sdk/openadsdk/TTSecAbs;

.field private p:[Ljava/lang/String;

.field private q:Lcom/bytedance/sdk/openadsdk/TTCustomController;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Z

.field private v:Lcom/bytedance/sdk/openadsdk/b/c;

.field private w:Lcom/bytedance/sdk/openadsdk/core/g/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 155
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/i;->u:Lcom/bytedance/sdk/openadsdk/core/i;

    .line 530
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/i$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/i$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/i;->x:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->f:I

    .line 86
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/i;->g:Z

    .line 88
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->h:Z

    .line 92
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/i;->j:Ljava/util/Set;

    .line 95
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->k:Z

    .line 97
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/i;->l:Landroid/graphics/Bitmap;

    .line 99
    new-instance v2, Lcom/bytedance/sdk/openadsdk/utils/a;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/utils/a;-><init>()V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/i;->m:Lcom/bytedance/sdk/openadsdk/utils/a;

    .line 113
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->t:Z

    .line 132
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/i/g/a;->a(Landroid/content/Context;)V

    .line 134
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    .line 138
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_43

    .line 139
    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/i;->m:Lcom/bytedance/sdk/openadsdk/utils/a;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_56

    .line 141
    :cond_43
    if-eqz v0, :cond_56

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 142
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 143
    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/i;->m:Lcom/bytedance/sdk/openadsdk/utils/a;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 147
    :cond_56
    :goto_56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_70

    .line 149
    :try_start_5c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->t:Z
    :try_end_6e
    .catchall {:try_start_5c .. :try_end_6e} :catchall_6f

    .line 151
    goto :goto_70

    .line 150
    :catchall_6f
    move-exception v0

    .line 153
    :cond_70
    :goto_70
    return-void
.end method

.method public static d()Lcom/bytedance/sdk/openadsdk/core/i;
    .registers 2

    .line 161
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/i;->u:Lcom/bytedance/sdk/openadsdk/core/i;

    if-nez v0, :cond_17

    .line 162
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/i;

    monitor-enter v0

    .line 163
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/i;->u:Lcom/bytedance/sdk/openadsdk/core/i;

    if-nez v1, :cond_12

    .line 164
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/i;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/i;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/i;->u:Lcom/bytedance/sdk/openadsdk/core/i;

    .line 166
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 168
    :cond_17
    :goto_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/i;->u:Lcom/bytedance/sdk/openadsdk/core/i;

    return-object v0
.end method

.method private static e(Ljava/lang/String;)V
    .registers 2

    .line 398
    const-string v0, "appid\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method private static f(Ljava/lang/String;)V
    .registers 2

    .line 402
    const-string v0, "name\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method private static g(Ljava/lang/String;)V
    .registers 2

    .line 410
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 411
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x3e8

    if-gt p0, v0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    const-string v0, "keyword\u8d85\u957f, \u6700\u957f\u4e3a1000"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(ZLjava/lang/String;)V

    .line 414
    :cond_16
    return-void
.end method

.method private static h(Ljava/lang/String;)V
    .registers 2

    .line 417
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 418
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x3e8

    if-gt p0, v0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    const-string v0, "data\u8d85\u957f, \u6700\u957f\u4e3a1000"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(ZLjava/lang/String;)V

    .line 421
    :cond_16
    return-void
.end method

.method private y()V
    .registers 4

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 205
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/i;->f()Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 207
    const v1, 0x2820a

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 209
    :cond_1a
    const-string v2, "host_appid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v1, "sdk_version"

    const-string v2, "3.4.1.2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-static {v0}, Lcom/bytedance/embedapplog/AppLog;->setHeaderInfo(Ljava/util/HashMap;)V

    .line 212
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    .line 277
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 278
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "sp_global_info"

    const-string v2, "title_bar_theme"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    :cond_11
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/i;->f:I

    .line 281
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .registers 5

    .line 468
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 469
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/f;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 471
    const-string v1, "sp_global_info"

    const-string v2, "pause_icon"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :cond_17
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i;->l:Landroid/graphics/Bitmap;

    .line 475
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTCustomController;)V
    .registers 2

    .line 172
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i;->q:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    .line 173
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;)V
    .registers 2

    .line 333
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i;->n:Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;

    .line 334
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadListener;)V
    .registers 2

    .line 325
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i;->i:Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadListener;

    .line 326
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTSecAbs;)V
    .registers 2

    .line 341
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i;->o:Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    .line 342
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .line 193
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/i;->e(Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 195
    const-string v0, "sp_global_info"

    const-string v1, "app_id"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_10
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i;->a:Ljava/lang/String;

    .line 199
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/i;->y()V

    .line 200
    return-void
.end method

.method public a(Z)V
    .registers 5

    .line 238
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 239
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "sp_global_info"

    const-string v2, "is_paid"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 241
    :cond_11
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/i;->c:Z

    .line 242
    return-void
.end method

.method public varargs a([I)V
    .registers 7

    .line 366
    if-nez p1, :cond_3

    .line 367
    return-void

    .line 370
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 371
    array-length v0, p1

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    aget v2, p1, v1

    .line 372
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/i;->j:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 375
    :cond_1a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result p1

    if-eqz p1, :cond_56

    .line 376
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i;->j:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_57

    const-string v0, "network_state"

    const-string v1, "sp_global_info"

    if-nez p1, :cond_53

    .line 377
    :try_start_2c
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i;->j:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    :goto_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 380
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 382
    :cond_4b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    goto :goto_56

    .line 384
    :cond_53
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_2c .. :try_end_56} :catchall_57

    .line 389
    :cond_56
    :goto_56
    goto :goto_5b

    .line 387
    :catchall_57
    move-exception p1

    .line 388
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 390
    :goto_5b
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .registers 8

    .line 478
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 479
    if-eqz p1, :cond_3f

    array-length v0, p1

    if-lez v0, :cond_3f

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    nop

    .line 482
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v2, v1, :cond_2e

    aget-object v4, p1, v2

    .line 483
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 484
    add-int/lit8 v5, v3, 0x1

    if-lez v3, :cond_27

    .line 485
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    :cond_27
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v5

    .line 482
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 491
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 493
    const-string v1, "sp_global_info"

    const-string v2, "need_clear_task_reset"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :cond_3f
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i;->p:[Ljava/lang/String;

    .line 498
    return-void
.end method

.method public a()Z
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->m:Lcom/bytedance/sdk/openadsdk/utils/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/a;->a()Z

    move-result v0

    return v0
.end method

.method public a(Landroid/app/Activity;)Z
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->m:Lcom/bytedance/sdk/openadsdk/utils/a;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/a;->a(Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .line 223
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/i;->f(Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 225
    const-string v0, "sp_global_info"

    const-string v1, "name"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_10
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i;->b:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public b(Z)V
    .registers 5

    .line 293
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 294
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "sp_global_info"

    const-string v2, "allow_show_notify"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 296
    :cond_11
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/i;->g:Z

    .line 297
    return-void
.end method

.method public b()Z
    .registers 2

    .line 120
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->t:Z

    return v0
.end method

.method public b(I)Z
    .registers 8

    .line 345
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 346
    nop

    .line 347
    const/4 v0, 0x0

    const-string v1, "sp_global_info"

    const-string v2, "network_state"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3c

    .line 349
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 350
    array-length v1, v0

    if-lez v1, :cond_3c

    .line 351
    array-length v1, v0

    move v3, v2

    :goto_22
    if-ge v3, v1, :cond_3c

    aget-object v4, v0, v3

    .line 352
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_39

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 353
    nop

    .line 354
    const/4 v2, 0x1

    goto :goto_3c

    .line 351
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 360
    :cond_3c
    :goto_3c
    return v2

    .line 362
    :cond_3d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->j:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c()Lcom/bytedance/sdk/openadsdk/utils/a;
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->m:Lcom/bytedance/sdk/openadsdk/utils/a;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    .line 253
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/i;->g(Ljava/lang/String;)V

    .line 254
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 255
    const-string v0, "sp_global_info"

    const-string v1, "keywords"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_10
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i;->d:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public c(Z)V
    .registers 5

    .line 307
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 308
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "sp_global_info"

    const-string v2, "allow_lp_when_screen_lock"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 310
    :cond_11
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/i;->h:Z

    .line 311
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 4

    .line 269
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/i;->h(Ljava/lang/String;)V

    .line 270
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 271
    const-string v0, "sp_global_info"

    const-string v1, "extra_data"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_10
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i;->e:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public d(Z)V
    .registers 5

    .line 452
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 453
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "sp_global_info"

    const-string v2, "is_use_texture"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 455
    :cond_11
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/i;->k:Z

    .line 456
    return-void
.end method

.method public e()Lcom/bytedance/sdk/openadsdk/TTCustomController;
    .registers 2

    .line 178
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/m;->b:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    if-eqz v0, :cond_7

    .line 179
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/m;->b:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    return-object v0

    .line 181
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->q:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    if-nez v0, :cond_d

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/i;->x:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    :cond_d
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 4

    .line 186
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 187
    const/4 v0, 0x0

    const-string v1, "sp_global_info"

    const-string v2, "app_id"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 189
    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 4

    .line 216
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 217
    const/4 v0, 0x0

    const-string v1, "sp_global_info"

    const-string v2, "name"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 219
    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .registers 4

    .line 231
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 232
    const/4 v0, 0x0

    const-string v1, "sp_global_info"

    const-string v2, "is_paid"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 234
    :cond_10
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->c:Z

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 4

    .line 246
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 247
    const/4 v0, 0x0

    const-string v1, "sp_global_info"

    const-string v2, "keywords"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 249
    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 4

    .line 262
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 263
    const/4 v0, 0x0

    const-string v1, "sp_global_info"

    const-string v2, "extra_data"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 265
    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .registers 4

    .line 285
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 286
    const/4 v0, 0x0

    const-string v1, "sp_global_info"

    const-string v2, "title_bar_theme"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 289
    :cond_10
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->f:I

    return v0
.end method

.method public l()Z
    .registers 4

    .line 300
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 301
    const/4 v0, 0x1

    const-string v1, "sp_global_info"

    const-string v2, "allow_show_notify"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 303
    :cond_10
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->g:Z

    return v0
.end method

.method public m()Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;
    .registers 2

    .line 329
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->n:Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;

    return-object v0
.end method

.method public n()Lcom/bytedance/sdk/openadsdk/TTSecAbs;
    .registers 2

    .line 337
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->o:Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    return-object v0
.end method

.method public o()V
    .registers 2

    .line 393
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->e(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->f(Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method public p()Lcom/bytedance/sdk/openadsdk/b/c;
    .registers 4

    .line 424
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->v:Lcom/bytedance/sdk/openadsdk/b/c;

    if-nez v0, :cond_f

    .line 425
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/c;

    const/16 v1, 0xa

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/c;-><init>(II)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->v:Lcom/bytedance/sdk/openadsdk/b/c;

    .line 427
    :cond_f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->v:Lcom/bytedance/sdk/openadsdk/b/c;

    return-object v0
.end method

.method public q()Lcom/bytedance/sdk/openadsdk/b/c;
    .registers 5

    .line 431
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->v:Lcom/bytedance/sdk/openadsdk/b/c;

    if-nez v0, :cond_10

    .line 432
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/c;

    const/16 v1, 0xa

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/b/c;-><init>(IIZ)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->v:Lcom/bytedance/sdk/openadsdk/b/c;

    .line 434
    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->v:Lcom/bytedance/sdk/openadsdk/b/c;

    return-object v0
.end method

.method public r()Lcom/bytedance/sdk/openadsdk/core/g/c;
    .registers 4

    .line 438
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->w:Lcom/bytedance/sdk/openadsdk/core/g/c;

    if-nez v0, :cond_f

    .line 439
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/g/c;

    const/16 v1, 0xa

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/g/c;-><init>(II)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->w:Lcom/bytedance/sdk/openadsdk/core/g/c;

    .line 441
    :cond_f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->w:Lcom/bytedance/sdk/openadsdk/core/g/c;

    return-object v0
.end method

.method public s()Z
    .registers 4

    .line 445
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 446
    const/4 v0, 0x0

    const-string v1, "sp_global_info"

    const-string v2, "is_use_texture"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 448
    :cond_10
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->k:Z

    return v0
.end method

.method public t()Landroid/graphics/Bitmap;
    .registers 4

    .line 459
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 460
    const/4 v0, 0x0

    const-string v1, "sp_global_info"

    const-string v2, "pause_icon"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/f;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 464
    :cond_14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->l:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .registers 5

    .line 518
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_19

    .line 519
    const/4 v0, 0x0

    const-string v2, "sp_global_info"

    const-string v3, "tob_ab_sdk_version"

    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 520
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 521
    return-object v1

    .line 523
    :cond_18
    return-object v0

    .line 525
    :cond_19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 526
    return-object v1

    .line 528
    :cond_22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->r:Ljava/lang/String;

    return-object v0
.end method

.method public v()Z
    .registers 3

    .line 534
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->a:Ljava/lang/String;

    const-string v1, "5001121"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 535
    const/4 v0, 0x1

    return v0

    .line 537
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public w()Z
    .registers 3

    .line 542
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aj;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.union_test.toutiao"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 543
    const/4 v0, 0x1

    return v0

    .line 545
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public x()Ljava/lang/String;
    .registers 3

    .line 551
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 552
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->s:Ljava/lang/String;

    return-object v0

    .line 555
    :cond_b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/k;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->s:Ljava/lang/String;

    .line 556
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 557
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->s:Ljava/lang/String;

    return-object v0

    .line 560
    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 561
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/k;->a(Ljava/lang/String;)V

    .line 562
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->s:Ljava/lang/String;

    .line 563
    return-object v0
.end method
