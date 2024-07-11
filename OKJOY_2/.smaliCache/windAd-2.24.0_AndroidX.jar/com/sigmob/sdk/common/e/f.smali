.class public Lcom/sigmob/sdk/common/e/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lcom/sigmob/sdk/common/e/l;

.field private static volatile c:Lcom/sigmob/sdk/common/e/l;

.field private static volatile d:Lcom/sigmob/sdk/common/e/l;

.field private static volatile e:Lcom/sigmob/sdk/common/e/l;

.field private static volatile f:Ljava/lang/String;

.field private static volatile g:Lcom/sigmob/sdk/common/e/e;

.field private static h:Z

.field private static i:Lcom/sigmob/volley/toolbox/j$b;

.field private static volatile j:Lcom/sigmob/volley/b;

.field private static k:Lcom/sigmob/sdk/common/e/l;

.field private static l:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/common/e/f;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sigmob/sdk/common/e/f;->h:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/sigmob/sdk/common/e/f;->j:Lcom/sigmob/volley/b;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/common/e/f;->l:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/sigmob/sdk/common/e/l;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/common/e/f;->b:Lcom/sigmob/sdk/common/e/l;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->getConfigUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/common/e/f;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/SDKConfig;->getAdsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/common/e/f;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/SDKConfig;->getLogUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/common/e/f;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/SDKConfig;->getStrategyUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/common/e/f;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->getGDPRRegionURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/common/e/f;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sigmob/sdk/common/e/f;->i(Landroid/content/Context;)Lcom/sigmob/sdk/common/e/l;

    invoke-static {p0}, Lcom/sigmob/sdk/common/e/f;->b(Landroid/content/Context;)Lcom/sigmob/sdk/common/e/l;

    invoke-static {p0}, Lcom/sigmob/sdk/common/e/f;->c(Landroid/content/Context;)Lcom/sigmob/sdk/common/e/l;

    invoke-static {p0}, Lcom/sigmob/sdk/common/e/f;->d(Landroid/content/Context;)Lcom/sigmob/sdk/common/e/l;

    invoke-static {p0}, Lcom/sigmob/sdk/common/e/f;->e(Landroid/content/Context;)Lcom/sigmob/sdk/common/e/l;

    invoke-static {p0}, Lcom/sigmob/sdk/common/e/f;->f(Landroid/content/Context;)Lcom/sigmob/volley/toolbox/k;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/sigmob/sdk/common/e/f;->l:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/sigmob/sdk/common/e/l;
    .registers 6

    sget-object v0, Lcom/sigmob/sdk/common/e/f;->d:Lcom/sigmob/sdk/common/e/l;

    if-nez v0, :cond_4e

    const-class v1, Lcom/sigmob/sdk/common/e/f;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/sigmob/sdk/common/e/f;->d:Lcom/sigmob/sdk/common/e/l;

    if-nez v0, :cond_49

    sget-object v0, Lcom/sigmob/sdk/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/sigmob/sdk/common/e/b;->a()Lcom/sigmob/sdk/common/e/b;

    move-result-object v0

    goto :goto_1e

    :cond_18
    const/16 v0, 0x2710

    invoke-static {v0}, Lcom/sigmob/sdk/common/e/b;->a(I)Lcom/sigmob/sdk/common/e/b;

    move-result-object v0

    :goto_1e
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/common/e/f;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sigmob/sdk/common/e/h;

    invoke-static {p0}, Lcom/sigmob/sdk/common/e/f;->h(Landroid/content/Context;)Lcom/sigmob/volley/toolbox/j$b;

    move-result-object v4

    invoke-direct {v3, v2, v4, v0}, Lcom/sigmob/sdk/common/e/h;-><init>(Ljava/lang/String;Lcom/sigmob/volley/toolbox/j$b;Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v0, Lcom/sigmob/volley/toolbox/b;

    invoke-direct {v0, v3}, Lcom/sigmob/volley/toolbox/b;-><init>(Lcom/sigmob/volley/toolbox/a;)V

    sget-object v2, Lcom/sigmob/sdk/common/e/f;->j:Lcom/sigmob/volley/b;

    if-nez v2, :cond_3b

    invoke-static {p0}, Lcom/sigmob/sdk/common/e/f;->g(Landroid/content/Context;)Lcom/sigmob/volley/b;

    :cond_3b
    new-instance p0, Lcom/sigmob/sdk/common/e/l;

    sget-object v2, Lcom/sigmob/sdk/common/e/f;->j:Lcom/sigmob/volley/b;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v0, v3}, Lcom/sigmob/sdk/common/e/l;-><init>(Lcom/sigmob/volley/b;Lcom/sigmob/volley/g;I)V

    sput-object p0, Lcom/sigmob/sdk/common/e/f;->d:Lcom/sigmob/sdk/common/e/l;

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/e/l;->b()V

    move-object v0, p0

    :cond_49
    monitor-exit v1

    goto :goto_4e

    :catchall_4b
    move-exception p0

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_4b

    throw p0

    :cond_4e
    :goto_4e
    return-object v0
.end method

.method public static b()Lcom/sigmob/volley/toolbox/k;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/common/e/f;->g:Lcom/sigmob/sdk/common/e/e;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Lcom/sigmob/sdk/common/e/l;
    .registers 6

    sget-object v0, Lcom/sigmob/sdk/common/e/f;->c:Lcom/sigmob/sdk/common/e/l;

    if-nez v0, :cond_4e

    const-class v1, Lcom/sigmob/sdk/common/e/f;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/sigmob/sdk/common/e/f;->c:Lcom/sigmob/sdk/common/e/l;

    if-nez v0, :cond_49

    sget-object v0, Lcom/sigmob/sdk/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/sigmob/sdk/common/e/b;->a()Lcom/sigmob/sdk/common/e/b;

    move-result-object v0

    goto :goto_1e

    :cond_18
    const/16 v0, 0x2710

    invoke-static {v0}, Lcom/sigmob/sdk/common/e/b;->a(I)Lcom/sigmob/sdk/common/e/b;

    move-result-object v0

    :goto_1e
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/common/e/f;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sigmob/sdk/common/e/h;

    invoke-static {p0}, Lcom/sigmob/sdk/common/e/f;->h(Landroid/content/Context;)Lcom/sigmob/volley/toolbox/j$b;

    move-result-object v4

    invoke-direct {v3, v2, v4, v0}, Lcom/sigmob/sdk/common/e/h;-><init>(Ljava/lang/String;Lcom/sigmob/volley/toolbox/j$b;Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v0, Lcom/sigmob/volley/toolbox/e;

    invoke-direct {v0, v3}, Lcom/sigmob/volley/toolbox/e;-><init>(Lcom/sigmob/volley/toolbox/a;)V

    sget-object v2, Lcom/sigmob/sdk/common/e/f;->j:Lcom/sigmob/volley/b;

    if-nez v2, :cond_3b

    invoke-static {p0}, Lcom/sigmob/sdk/common/e/f;->g(Landroid/content/Context;)Lcom/sigmob/volley/b;

    :cond_3b
    new-instance p0, Lcom/sigmob/sdk/common/e/l;

    sget-object v2, Lcom/sigmob/sdk/common/e/f;->j:Lcom/sigmob/volley/b;

    const/4 v3, 0x4

    invoke-direct {p0, v2, v0, v3}, Lcom/sigmob/sdk/common/e/l;-><init>(Lcom/sigmob/volley/b;Lcom/sigmob/volley/g;I)V

    sput-object p0, Lcom/sigmob/sdk/common/e/f;->c:Lcom/sigmob/sdk/common/e/l;

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/e/l;->b()V

    move-object v0, p0

    :cond_49
    monitor-exit v1

    goto :goto_4e

    :catchall_4b
    move-exception p0

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_4b

    throw p0

    :cond_4e
    :goto_4e
    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/common/e/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Lcom/sigmob/sdk/common/e/l;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/common/e/f;->c:Lcom/sigmob/sdk/common/e/l;

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Lcom/sigmob/sdk/common/e/l;
    .registers 6

    sget-object v0, Lcom/sigmob/sdk/common/e/f;->e:Lcom/sigmob/sdk/common/e/l;

    if-nez v0, :cond_4e

    const-class v1, Lcom/sigmob/sdk/common/e/f;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/sigmob/sdk/common/e/f;->e:Lcom/sigmob/sdk/common/e/l;

    if-nez v0, :cond_49

    sget-object v0, Lcom/sigmob/sdk/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/sigmob/sdk/common/e/b;->a()Lcom/sigmob/sdk/common/e/b;

    move-result-object v0

    goto :goto_1e

    :cond_18
    const/16 v0, 0x2710

    invoke-static {v0}, Lcom/sigmob/sdk/common/e/b;->a(I)Lcom/sigmob/sdk/common/e/b;

    move-result-object v0

    :goto_1e
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/common/e/f;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sigmob/sdk/common/e/h;

    invoke-static {p0}, Lcom/sigmob/sdk/common/e/f;->h(Landroid/content/Context;)Lcom/sigmob/volley/toolbox/j$b;

    move-result-object v4

    invoke-direct {v3, v2, v4, v0}, Lcom/sigmob/sdk/common/e/h;-><init>(Ljava/lang/String;Lcom/sigmob/volley/toolbox/j$b;Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v0, Lcom/sigmob/volley/toolbox/b;

    invoke-direct {v0, v3}, Lcom/sigmob/volley/toolbox/b;-><init>(Lcom/sigmob/volley/toolbox/a;)V

    sget-object v2, Lcom/sigmob/sdk/common/e/f;->j:Lcom/sigmob/volley/b;

    if-nez v2, :cond_3b

    invoke-static {p0}, Lcom/sigmob/sdk/common/e/f;->g(Landroid/content/Context;)Lcom/sigmob/volley/b;

    :cond_3b
    new-instance p0, Lcom/sigmob/sdk/common/e/l;

    sget-object v2, Lcom/sigmob/sdk/common/e/f;->j:Lcom/sigmob/volley/b;

    const/4 v3, 0x2

    invoke-direct {p0, v2, v0, v3}, Lcom/sigmob/sdk/common/e/l;-><init>(Lcom/sigmob/volley/b;Lcom/sigmob/volley/g;I)V

    sput-object p0, Lcom/sigmob/sdk/common/e/f;->e:Lcom/sigmob/sdk/common/e/l;

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/e/l;->b()V

    move-object v0, p0

    :cond_49
    monitor-exit v1

    goto :goto_4e

    :catchall_4b
    move-exception p0

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_4b

    throw p0

    :cond_4e
    :goto_4e
    return-object v0
.end method

.method public static e()Lcom/sigmob/sdk/common/e/l;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/common/e/f;->k:Lcom/sigmob/sdk/common/e/l;

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Lcom/sigmob/sdk/common/e/l;
    .registers 6

    sget-object v0, Lcom/sigmob/sdk/common/e/f;->k:Lcom/sigmob/sdk/common/e/l;

    if-nez v0, :cond_4e

    const-class v1, Lcom/sigmob/sdk/common/e/f;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/sigmob/sdk/common/e/f;->k:Lcom/sigmob/sdk/common/e/l;

    if-nez v0, :cond_49

    sget-object v0, Lcom/sigmob/sdk/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/sigmob/sdk/common/e/b;->a()Lcom/sigmob/sdk/common/e/b;

    move-result-object v0

    goto :goto_1e

    :cond_18
    const/16 v0, 0x2710

    invoke-static {v0}, Lcom/sigmob/sdk/common/e/b;->a(I)Lcom/sigmob/sdk/common/e/b;

    move-result-object v0

    :goto_1e
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/common/e/f;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sigmob/sdk/common/e/h;

    invoke-static {p0}, Lcom/sigmob/sdk/common/e/f;->h(Landroid/content/Context;)Lcom/sigmob/volley/toolbox/j$b;

    move-result-object v4

    invoke-direct {v3, v2, v4, v0}, Lcom/sigmob/sdk/common/e/h;-><init>(Ljava/lang/String;Lcom/sigmob/volley/toolbox/j$b;Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v0, Lcom/sigmob/volley/toolbox/e;

    invoke-direct {v0, v3}, Lcom/sigmob/volley/toolbox/e;-><init>(Lcom/sigmob/volley/toolbox/a;)V

    sget-object v2, Lcom/sigmob/sdk/common/e/f;->j:Lcom/sigmob/volley/b;

    if-nez v2, :cond_3b

    invoke-static {p0}, Lcom/sigmob/sdk/common/e/f;->g(Landroid/content/Context;)Lcom/sigmob/volley/b;

    :cond_3b
    new-instance p0, Lcom/sigmob/sdk/common/e/l;

    sget-object v2, Lcom/sigmob/sdk/common/e/f;->j:Lcom/sigmob/volley/b;

    const/4 v3, 0x2

    invoke-direct {p0, v2, v0, v3}, Lcom/sigmob/sdk/common/e/l;-><init>(Lcom/sigmob/volley/b;Lcom/sigmob/volley/g;I)V

    sput-object p0, Lcom/sigmob/sdk/common/e/f;->k:Lcom/sigmob/sdk/common/e/l;

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/e/l;->b()V

    move-object v0, p0

    :cond_49
    monitor-exit v1

    goto :goto_4e

    :catchall_4b
    move-exception p0

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_4b

    throw p0

    :cond_4e
    :goto_4e
    return-object v0
.end method

.method public static f()Lcom/sigmob/sdk/common/e/l;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/common/e/f;->d:Lcom/sigmob/sdk/common/e/l;

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Lcom/sigmob/volley/toolbox/k;
    .registers 6

    sget-object v0, Lcom/sigmob/sdk/common/e/f;->g:Lcom/sigmob/sdk/common/e/e;

    if-nez v0, :cond_2a

    const-class v1, Lcom/sigmob/sdk/common/e/f;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/sigmob/sdk/common/e/f;->g:Lcom/sigmob/sdk/common/e/e;

    if-nez v0, :cond_25

    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->a()Lcom/sigmob/sdk/common/e/l;

    move-result-object v0

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/c;->a(Landroid/content/Context;)I

    move-result v2

    new-instance v3, Lcom/sigmob/sdk/common/e/f$1;

    invoke-direct {v3, v2}, Lcom/sigmob/sdk/common/e/f$1;-><init>(I)V

    new-instance v2, Lcom/sigmob/sdk/common/e/e;

    new-instance v4, Lcom/sigmob/sdk/common/e/f$2;

    invoke-direct {v4, v3}, Lcom/sigmob/sdk/common/e/f$2;-><init>(Landroid/util/LruCache;)V

    invoke-direct {v2, v0, p0, v4}, Lcom/sigmob/sdk/common/e/e;-><init>(Lcom/sigmob/volley/n;Landroid/content/Context;Lcom/sigmob/volley/toolbox/k$b;)V

    sput-object v2, Lcom/sigmob/sdk/common/e/f;->g:Lcom/sigmob/sdk/common/e/e;

    move-object v0, v2

    :cond_25
    monitor-exit v1

    goto :goto_2a

    :catchall_27
    move-exception p0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_27

    throw p0

    :cond_2a
    :goto_2a
    return-object v0
.end method

.method public static g()Lcom/sigmob/sdk/common/e/l;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/common/e/f;->e:Lcom/sigmob/sdk/common/e/l;

    return-object v0
.end method

.method private static g(Landroid/content/Context;)Lcom/sigmob/volley/b;
    .registers 1

    sget-object p0, Lcom/sigmob/sdk/common/e/f;->j:Lcom/sigmob/volley/b;

    if-nez p0, :cond_b

    new-instance p0, Lcom/sigmob/volley/toolbox/m;

    invoke-direct {p0}, Lcom/sigmob/volley/toolbox/m;-><init>()V

    sput-object p0, Lcom/sigmob/sdk/common/e/f;->j:Lcom/sigmob/volley/b;

    :cond_b
    sget-object p0, Lcom/sigmob/sdk/common/e/f;->j:Lcom/sigmob/volley/b;

    return-object p0
.end method

.method private static h(Landroid/content/Context;)Lcom/sigmob/volley/toolbox/j$b;
    .registers 1

    sget-object p0, Lcom/sigmob/sdk/common/e/f;->i:Lcom/sigmob/volley/toolbox/j$b;

    if-nez p0, :cond_b

    new-instance p0, Lcom/sigmob/sdk/common/e/g;

    invoke-direct {p0}, Lcom/sigmob/sdk/common/e/g;-><init>()V

    sput-object p0, Lcom/sigmob/sdk/common/e/f;->i:Lcom/sigmob/volley/toolbox/j$b;

    :cond_b
    sget-object p0, Lcom/sigmob/sdk/common/e/f;->i:Lcom/sigmob/volley/toolbox/j$b;

    return-object p0
.end method

.method public static h()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->j()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "https"

    goto :goto_b

    :cond_9
    const-string v0, "http"

    :goto_b
    return-object v0
.end method

.method private static i(Landroid/content/Context;)Lcom/sigmob/sdk/common/e/l;
    .registers 6

    sget-object v0, Lcom/sigmob/sdk/common/e/f;->b:Lcom/sigmob/sdk/common/e/l;

    if-nez v0, :cond_4e

    const-class v1, Lcom/sigmob/sdk/common/e/f;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/sigmob/sdk/common/e/f;->b:Lcom/sigmob/sdk/common/e/l;

    if-nez v0, :cond_49

    sget-object v0, Lcom/sigmob/sdk/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/sigmob/sdk/common/e/b;->a()Lcom/sigmob/sdk/common/e/b;

    move-result-object v0

    goto :goto_1e

    :cond_18
    const/16 v0, 0x2710

    invoke-static {v0}, Lcom/sigmob/sdk/common/e/b;->a(I)Lcom/sigmob/sdk/common/e/b;

    move-result-object v0

    :goto_1e
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/common/e/f;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sigmob/sdk/common/e/h;

    invoke-static {p0}, Lcom/sigmob/sdk/common/e/f;->h(Landroid/content/Context;)Lcom/sigmob/volley/toolbox/j$b;

    move-result-object v4

    invoke-direct {v3, v2, v4, v0}, Lcom/sigmob/sdk/common/e/h;-><init>(Ljava/lang/String;Lcom/sigmob/volley/toolbox/j$b;Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v0, Lcom/sigmob/volley/toolbox/b;

    invoke-direct {v0, v3}, Lcom/sigmob/volley/toolbox/b;-><init>(Lcom/sigmob/volley/toolbox/a;)V

    sget-object v2, Lcom/sigmob/sdk/common/e/f;->j:Lcom/sigmob/volley/b;

    if-nez v2, :cond_3b

    invoke-static {p0}, Lcom/sigmob/sdk/common/e/f;->g(Landroid/content/Context;)Lcom/sigmob/volley/b;

    :cond_3b
    new-instance p0, Lcom/sigmob/sdk/common/e/l;

    sget-object v2, Lcom/sigmob/sdk/common/e/f;->j:Lcom/sigmob/volley/b;

    const/4 v3, 0x2

    invoke-direct {p0, v2, v0, v3}, Lcom/sigmob/sdk/common/e/l;-><init>(Lcom/sigmob/volley/b;Lcom/sigmob/volley/g;I)V

    sput-object p0, Lcom/sigmob/sdk/common/e/f;->b:Lcom/sigmob/sdk/common/e/l;

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/e/l;->b()V

    move-object v0, p0

    :cond_49
    monitor-exit v1

    goto :goto_4e

    :catchall_4b
    move-exception p0

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_4b

    throw p0

    :cond_4e
    :goto_4e
    return-object v0
.end method

.method public static i()Ljava/util/HashSet;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/common/e/f;->l:Ljava/util/HashSet;

    return-object v0
.end method

.method private static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sigmob/sdk/common/e/f;->f:Ljava/lang/String;

    if-nez v0, :cond_3f

    const-class v1, Lcom/sigmob/sdk/common/e/f;

    monitor-enter v1

    :try_start_a
    sget-object v0, Lcom/sigmob/sdk/common/e/f;->f:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_3c

    if-nez v0, :cond_3a

    :try_start_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_19

    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_37

    :cond_19
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_31

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p0

    goto :goto_37

    :cond_31
    sget-object p0, Lcom/sigmob/sdk/common/e/f;->a:Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_e .. :try_end_33} :catchall_34

    goto :goto_37

    :catchall_34
    move-exception p0

    :try_start_35
    sget-object p0, Lcom/sigmob/sdk/common/e/f;->a:Ljava/lang/String;

    :goto_37
    sput-object p0, Lcom/sigmob/sdk/common/e/f;->f:Ljava/lang/String;

    move-object v0, p0

    :cond_3a
    monitor-exit v1

    goto :goto_3f

    :catchall_3c
    move-exception p0

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_3c

    throw p0

    :cond_3f
    :goto_3f
    return-object v0
.end method

.method private static j()Z
    .registers 1

    sget-boolean v0, Lcom/sigmob/sdk/common/e/f;->h:Z

    return v0
.end method
