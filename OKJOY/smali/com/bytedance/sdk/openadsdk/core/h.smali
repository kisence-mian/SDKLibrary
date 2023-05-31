.class public Lcom/bytedance/sdk/openadsdk/core/h;
.super Ljava/lang/Object;
.source "GlobalInfo.java"


# static fields
.field private static final s:Lcom/bytedance/sdk/openadsdk/core/h;

.field private static v:Lcom/bytedance/sdk/openadsdk/TTCustomController;


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private c:Z

.field private d:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadListener;

.field private final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
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

.field private r:Z

.field private t:Lcom/bytedance/sdk/openadsdk/b/c;

.field private u:Lcom/bytedance/sdk/openadsdk/core/g/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 139
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/h;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/h;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/h;->s:Lcom/bytedance/sdk/openadsdk/core/h;

    .line 476
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/h$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/h$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/h;->v:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->f:I

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->g:Z

    .line 80
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->h:Z

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->j:Ljava/util/Set;

    .line 87
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->k:Z

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->l:Landroid/graphics/Bitmap;

    .line 91
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/utils/a;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->m:Lcom/bytedance/sdk/openadsdk/utils/a;

    .line 101
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->r:Z

    .line 116
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/g/a;->a(Landroid/content/Context;)V

    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->j:Ljava/util/Set;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    .line 122
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_5d

    .line 123
    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->m:Lcom/bytedance/sdk/openadsdk/utils/a;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 131
    :cond_44
    :goto_44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_5c

    .line 133
    :try_start_4a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->r:Z
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_5c} :catch_71

    .line 137
    :cond_5c
    :goto_5c
    return-void

    .line 125
    :cond_5d
    if-eqz v0, :cond_44

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 126
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 127
    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->m:Lcom/bytedance/sdk/openadsdk/utils/a;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_44

    .line 134
    :catch_71
    move-exception v0

    goto :goto_5c
.end method

.method public static c()Lcom/bytedance/sdk/openadsdk/core/h;
    .registers 1

    .prologue
    .line 145
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h;->s:Lcom/bytedance/sdk/openadsdk/core/h;

    return-object v0
.end method

.method private static e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 371
    const-string v0, "appid\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method private static f(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 375
    const-string v0, "name\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method private static g(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 383
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 384
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_15

    const/4 v0, 0x1

    :goto_f
    const-string v1, "keyword\u8d85\u957f, \u6700\u957f\u4e3a1000"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/y;->a(ZLjava/lang/String;)V

    .line 387
    :cond_14
    return-void

    .line 384
    :cond_15
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static h(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 390
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 391
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_15

    const/4 v0, 0x1

    :goto_f
    const-string v1, "data\u8d85\u957f, \u6700\u957f\u4e3a1000"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/y;->a(ZLjava/lang/String;)V

    .line 394
    :cond_14
    return-void

    .line 391
    :cond_15
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private t()V
    .registers 4

    .prologue
    .line 177
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 178
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->e()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 180
    const v0, 0x2820a

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    :cond_1a
    const-string v2, "host_appid"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v0, "sdk_version"

    const-string v2, "2.9.5.3"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {v1}, Lcom/bytedance/embedapplog/AppLog;->setHeaderInfo(Ljava/util/HashMap;)V

    .line 185
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    .prologue
    .line 250
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 251
    const-string v0, "sp_global_info"

    const-string v1, "title_bar_theme"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 253
    :cond_11
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->f:I

    .line 254
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .registers 5

    .prologue
    .line 434
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 435
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/f;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 437
    const-string v1, "sp_global_info"

    const-string v2, "pause_icon"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_17
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->l:Landroid/graphics/Bitmap;

    .line 441
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTCustomController;)V
    .registers 2

    .prologue
    .line 149
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->q:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    .line 150
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;)V
    .registers 2

    .prologue
    .line 306
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->n:Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;

    .line 307
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadListener;)V
    .registers 2

    .prologue
    .line 298
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->i:Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadListener;

    .line 299
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTSecAbs;)V
    .registers 2

    .prologue
    .line 314
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->o:Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    .line 315
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 166
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h;->e(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 168
    const-string v0, "sp_global_info"

    const-string v1, "app_id"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_10
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->a:Ljava/lang/String;

    .line 172
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h;->t()V

    .line 173
    return-void
.end method

.method public a(Z)V
    .registers 5

    .prologue
    .line 211
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 212
    const-string v0, "sp_global_info"

    const-string v1, "is_paid"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 214
    :cond_11
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->c:Z

    .line 215
    return-void
.end method

.method public varargs a([I)V
    .registers 6

    .prologue
    .line 339
    if-nez p1, :cond_3

    .line 363
    :cond_2
    :goto_2
    return-void

    .line 343
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 344
    array-length v1, p1

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_1a

    aget v2, p1, v0

    .line 345
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/h;->j:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 348
    :cond_1a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_58

    .line 350
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 353
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_46} :catch_47

    goto :goto_33

    .line 360
    :catch_47
    move-exception v0

    .line 361
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 355
    :cond_4c
    :try_start_4c
    const-string v0, "sp_global_info"

    const-string v2, "network_state"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 357
    :cond_58
    const-string v0, "sp_global_info"

    const-string v1, "network_state"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_5f} :catch_47

    goto :goto_2
.end method

.method public a([Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 444
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 445
    if-eqz p1, :cond_40

    array-length v1, p1

    if-lez v1, :cond_40

    .line 446
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    array-length v4, p1

    move v2, v0

    move v1, v0

    :goto_14
    if-ge v2, v4, :cond_2f

    aget-object v5, p1, v2

    .line 449
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 450
    add-int/lit8 v0, v1, 0x1

    if-lez v1, :cond_27

    .line 451
    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    :cond_27
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    :goto_2a
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_14

    .line 457
    :cond_2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 458
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 459
    const-string v1, "sp_global_info"

    const-string v2, "need_clear_task_reset"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :cond_40
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->p:[Ljava/lang/String;

    .line 464
    return-void

    :cond_43
    move v0, v1

    goto :goto_2a
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->m:Lcom/bytedance/sdk/openadsdk/utils/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/a;->a()Z

    move-result v0

    return v0
.end method

.method public a(Landroid/app/Activity;)Z
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->m:Lcom/bytedance/sdk/openadsdk/utils/a;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/a;->a(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 196
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h;->f(Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 198
    const-string v0, "sp_global_info"

    const-string v1, "name"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_10
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->b:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public b(Z)V
    .registers 5

    .prologue
    .line 266
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 267
    const-string v0, "sp_global_info"

    const-string v1, "allow_show_notify"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 269
    :cond_11
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->g:Z

    .line 270
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->r:Z

    return v0
.end method

.method public b(I)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 318
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 320
    const-string v1, "sp_global_info"

    const-string v2, "network_state"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 321
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 322
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 323
    array-length v1, v2

    if-lez v1, :cond_36

    .line 324
    array-length v3, v2

    move v1, v0

    :goto_21
    if-ge v1, v3, :cond_36

    aget-object v4, v2, v1

    .line 325
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_37

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 326
    const/4 v0, 0x1

    .line 335
    :cond_36
    :goto_36
    return v0

    .line 324
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 335
    :cond_3a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->j:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_36
.end method

.method public c(Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 226
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h;->g(Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 228
    const-string v0, "sp_global_info"

    const-string v1, "keywords"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_10
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->d:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public c(Z)V
    .registers 5

    .prologue
    .line 280
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 281
    const-string v0, "sp_global_info"

    const-string v1, "allow_lp_when_screen_lock"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 283
    :cond_11
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->h:Z

    .line 284
    return-void
.end method

.method public d()Lcom/bytedance/sdk/openadsdk/TTCustomController;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->q:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    if-nez v0, :cond_7

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h;->v:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->q:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    goto :goto_6
.end method

.method public d(Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 242
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h;->h(Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 244
    const-string v0, "sp_global_info"

    const-string v1, "extra_data"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_10
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->e:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public d(Z)V
    .registers 5

    .prologue
    .line 418
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 419
    const-string v0, "sp_global_info"

    const-string v1, "is_use_texture"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 421
    :cond_11
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->k:Z

    .line 422
    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 159
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 160
    const-string v0, "sp_global_info"

    const-string v1, "app_id"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->a:Ljava/lang/String;

    goto :goto_f
.end method

.method public f()Ljava/lang/String;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 189
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 190
    const-string v0, "sp_global_info"

    const-string v1, "name"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->b:Ljava/lang/String;

    goto :goto_f
.end method

.method public g()Z
    .registers 4

    .prologue
    .line 204
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 205
    const-string v0, "sp_global_info"

    const-string v1, "is_paid"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 207
    :goto_f
    return v0

    :cond_10
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->c:Z

    goto :goto_f
.end method

.method public h()Ljava/lang/String;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 219
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 220
    const-string v0, "sp_global_info"

    const-string v1, "keywords"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->d:Ljava/lang/String;

    goto :goto_f
.end method

.method public i()Ljava/lang/String;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 235
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 236
    const-string v0, "sp_global_info"

    const-string v1, "extra_data"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->e:Ljava/lang/String;

    goto :goto_f
.end method

.method public j()I
    .registers 4

    .prologue
    .line 258
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 259
    const-string v0, "sp_global_info"

    const-string v1, "title_bar_theme"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 262
    :goto_f
    return v0

    :cond_10
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->f:I

    goto :goto_f
.end method

.method public k()Z
    .registers 4

    .prologue
    .line 273
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 274
    const-string v0, "sp_global_info"

    const-string v1, "allow_show_notify"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 276
    :goto_f
    return v0

    :cond_10
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->g:Z

    goto :goto_f
.end method

.method public l()Z
    .registers 4

    .prologue
    .line 287
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 288
    const-string v0, "sp_global_info"

    const-string v1, "allow_lp_when_screen_lock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 290
    :goto_f
    return v0

    :cond_10
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->h:Z

    goto :goto_f
.end method

.method public m()Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->n:Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;

    return-object v0
.end method

.method public n()Lcom/bytedance/sdk/openadsdk/TTSecAbs;
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->o:Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    return-object v0
.end method

.method public o()V
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->e(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->f(Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method public p()Lcom/bytedance/sdk/openadsdk/b/c;
    .registers 4

    .prologue
    .line 397
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->t:Lcom/bytedance/sdk/openadsdk/b/c;

    if-nez v0, :cond_f

    .line 398
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/c;

    const/16 v1, 0xa

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/c;-><init>(II)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->t:Lcom/bytedance/sdk/openadsdk/b/c;

    .line 400
    :cond_f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->t:Lcom/bytedance/sdk/openadsdk/b/c;

    return-object v0
.end method

.method public q()Lcom/bytedance/sdk/openadsdk/core/g/c;
    .registers 4

    .prologue
    .line 404
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->u:Lcom/bytedance/sdk/openadsdk/core/g/c;

    if-nez v0, :cond_f

    .line 405
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/g/c;

    const/16 v1, 0xa

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/g/c;-><init>(II)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->u:Lcom/bytedance/sdk/openadsdk/core/g/c;

    .line 407
    :cond_f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->u:Lcom/bytedance/sdk/openadsdk/core/g/c;

    return-object v0
.end method

.method public r()Z
    .registers 4

    .prologue
    .line 411
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 412
    const-string v0, "sp_global_info"

    const-string v1, "is_use_texture"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 414
    :goto_f
    return v0

    :cond_10
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->k:Z

    goto :goto_f
.end method

.method public s()Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 425
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 426
    const-string v0, "sp_global_info"

    const-string v1, "pause_icon"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/f;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 430
    :goto_13
    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->l:Landroid/graphics/Bitmap;

    goto :goto_13
.end method
