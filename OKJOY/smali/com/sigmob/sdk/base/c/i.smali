.class public Lcom/sigmob/sdk/base/c/i;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "sigmob-volley-cache"

.field private static final b:Ljava/lang/String;

.field private static volatile c:Lcom/sigmob/sdk/base/c/t;

.field private static volatile d:Lcom/sigmob/sdk/base/c/t;

.field private static volatile e:Lcom/sigmob/sdk/base/c/t;

.field private static volatile f:Lcom/sigmob/sdk/base/c/t;

.field private static volatile g:Ljava/lang/String;

.field private static volatile h:Lcom/sigmob/sdk/base/c/h;

.field private static i:Z

.field private static j:Lcom/sigmob/volley/toolbox/o;

.field private static volatile k:Lcom/sigmob/volley/b;

.field private static l:Lcom/sigmob/sdk/base/c/t;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/c/i;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sigmob/sdk/base/c/i;->i:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/sigmob/sdk/base/c/i;->k:Lcom/sigmob/volley/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/sigmob/sdk/base/c/t;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/c/i;->c:Lcom/sigmob/sdk/base/c/t;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/sigmob/sdk/base/c/i;->i(Landroid/content/Context;)Lcom/sigmob/sdk/base/c/t;

    invoke-static {p0}, Lcom/sigmob/sdk/base/c/i;->b(Landroid/content/Context;)Lcom/sigmob/sdk/base/c/t;

    invoke-static {p0}, Lcom/sigmob/sdk/base/c/i;->c(Landroid/content/Context;)Lcom/sigmob/sdk/base/c/t;

    invoke-static {p0}, Lcom/sigmob/sdk/base/c/i;->d(Landroid/content/Context;)Lcom/sigmob/sdk/base/c/t;

    invoke-static {p0}, Lcom/sigmob/sdk/base/c/i;->e(Landroid/content/Context;)Lcom/sigmob/sdk/base/c/t;

    invoke-static {p0}, Lcom/sigmob/sdk/base/c/i;->f(Landroid/content/Context;)Lcom/sigmob/volley/toolbox/p;

    return-void
.end method

.method public static declared-synchronized a(Lcom/sigmob/sdk/base/c/h;)V
    .registers 3

    const-class v0, Lcom/sigmob/sdk/base/c/i;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/sigmob/sdk/base/c/i;->h:Lcom/sigmob/sdk/base/c/h;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Lcom/sigmob/sdk/base/c/t;)V
    .registers 3

    const-class v0, Lcom/sigmob/sdk/base/c/i;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/sigmob/sdk/base/c/i;->c:Lcom/sigmob/sdk/base/c/t;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .registers 3

    const-class v0, Lcom/sigmob/sdk/base/c/i;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/sigmob/sdk/base/c/i;->g:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Z)V
    .registers 1

    sput-boolean p0, Lcom/sigmob/sdk/base/c/i;->i:Z

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/sigmob/sdk/base/c/t;
    .registers 6

    sget-object v0, Lcom/sigmob/sdk/base/c/i;->e:Lcom/sigmob/sdk/base/c/t;

    if-nez v0, :cond_42

    const-class v1, Lcom/sigmob/sdk/base/c/i;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/sigmob/sdk/base/c/i;->e:Lcom/sigmob/sdk/base/c/t;

    if-nez v0, :cond_41

    sget-object v0, Lcom/sigmob/sdk/base/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-static {}, Lcom/sigmob/sdk/base/c/d;->a()Lcom/sigmob/sdk/base/c/d;

    move-result-object v0

    :goto_17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/base/c/i;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sigmob/sdk/base/c/o;

    invoke-static {p0}, Lcom/sigmob/sdk/base/c/i;->h(Landroid/content/Context;)Lcom/sigmob/volley/toolbox/o;

    move-result-object v4

    invoke-direct {v3, v2, v4, v0}, Lcom/sigmob/sdk/base/c/o;-><init>(Ljava/lang/String;Lcom/sigmob/volley/toolbox/o;Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v2, Lcom/sigmob/volley/toolbox/b;

    invoke-direct {v2, v3}, Lcom/sigmob/volley/toolbox/b;-><init>(Lcom/sigmob/volley/toolbox/a;)V

    sget-object v0, Lcom/sigmob/sdk/base/c/i;->k:Lcom/sigmob/volley/b;

    if-nez v0, :cond_34

    invoke-static {p0}, Lcom/sigmob/sdk/base/c/i;->g(Landroid/content/Context;)Lcom/sigmob/volley/b;

    :cond_34
    new-instance v0, Lcom/sigmob/sdk/base/c/t;

    sget-object v3, Lcom/sigmob/sdk/base/c/i;->k:Lcom/sigmob/volley/b;

    const/4 v4, 0x1

    invoke-direct {v0, v3, v2, v4}, Lcom/sigmob/sdk/base/c/t;-><init>(Lcom/sigmob/volley/b;Lcom/sigmob/volley/k;I)V

    sput-object v0, Lcom/sigmob/sdk/base/c/i;->e:Lcom/sigmob/sdk/base/c/t;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/c/t;->c()V

    :cond_41
    monitor-exit v1

    :cond_42
    return-object v0

    :cond_43
    const/16 v0, 0x2710

    invoke-static {v0}, Lcom/sigmob/sdk/base/c/d;->a(I)Lcom/sigmob/sdk/base/c/d;

    move-result-object v0

    goto :goto_17

    :catchall_4a
    move-exception v0

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_7 .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method public static b()Lcom/sigmob/volley/toolbox/p;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/c/i;->h:Lcom/sigmob/sdk/base/c/h;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Lcom/sigmob/sdk/base/c/t;
    .registers 6

    sget-object v0, Lcom/sigmob/sdk/base/c/i;->d:Lcom/sigmob/sdk/base/c/t;

    if-nez v0, :cond_42

    const-class v1, Lcom/sigmob/sdk/base/c/i;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/sigmob/sdk/base/c/i;->d:Lcom/sigmob/sdk/base/c/t;

    if-nez v0, :cond_41

    sget-object v0, Lcom/sigmob/sdk/base/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-static {}, Lcom/sigmob/sdk/base/c/d;->a()Lcom/sigmob/sdk/base/c/d;

    move-result-object v0

    :goto_17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/base/c/i;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sigmob/sdk/base/c/o;

    invoke-static {p0}, Lcom/sigmob/sdk/base/c/i;->h(Landroid/content/Context;)Lcom/sigmob/volley/toolbox/o;

    move-result-object v4

    invoke-direct {v3, v2, v4, v0}, Lcom/sigmob/sdk/base/c/o;-><init>(Ljava/lang/String;Lcom/sigmob/volley/toolbox/o;Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v2, Lcom/sigmob/volley/toolbox/f;

    invoke-direct {v2, v3}, Lcom/sigmob/volley/toolbox/f;-><init>(Lcom/sigmob/volley/toolbox/a;)V

    sget-object v0, Lcom/sigmob/sdk/base/c/i;->k:Lcom/sigmob/volley/b;

    if-nez v0, :cond_34

    invoke-static {p0}, Lcom/sigmob/sdk/base/c/i;->g(Landroid/content/Context;)Lcom/sigmob/volley/b;

    :cond_34
    new-instance v0, Lcom/sigmob/sdk/base/c/t;

    sget-object v3, Lcom/sigmob/sdk/base/c/i;->k:Lcom/sigmob/volley/b;

    const/4 v4, 0x4

    invoke-direct {v0, v3, v2, v4}, Lcom/sigmob/sdk/base/c/t;-><init>(Lcom/sigmob/volley/b;Lcom/sigmob/volley/k;I)V

    sput-object v0, Lcom/sigmob/sdk/base/c/i;->d:Lcom/sigmob/sdk/base/c/t;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/c/t;->c()V

    :cond_41
    monitor-exit v1

    :cond_42
    return-object v0

    :cond_43
    const/16 v0, 0x2710

    invoke-static {v0}, Lcom/sigmob/sdk/base/c/d;->a(I)Lcom/sigmob/sdk/base/c/d;

    move-result-object v0

    goto :goto_17

    :catchall_4a
    move-exception v0

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_7 .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/c/i;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Lcom/sigmob/sdk/base/c/t;
    .registers 6

    sget-object v0, Lcom/sigmob/sdk/base/c/i;->f:Lcom/sigmob/sdk/base/c/t;

    if-nez v0, :cond_42

    const-class v1, Lcom/sigmob/sdk/base/c/i;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/sigmob/sdk/base/c/i;->f:Lcom/sigmob/sdk/base/c/t;

    if-nez v0, :cond_41

    sget-object v0, Lcom/sigmob/sdk/base/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-static {}, Lcom/sigmob/sdk/base/c/d;->a()Lcom/sigmob/sdk/base/c/d;

    move-result-object v0

    :goto_17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/base/c/i;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sigmob/sdk/base/c/o;

    invoke-static {p0}, Lcom/sigmob/sdk/base/c/i;->h(Landroid/content/Context;)Lcom/sigmob/volley/toolbox/o;

    move-result-object v4

    invoke-direct {v3, v2, v4, v0}, Lcom/sigmob/sdk/base/c/o;-><init>(Ljava/lang/String;Lcom/sigmob/volley/toolbox/o;Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v2, Lcom/sigmob/volley/toolbox/b;

    invoke-direct {v2, v3}, Lcom/sigmob/volley/toolbox/b;-><init>(Lcom/sigmob/volley/toolbox/a;)V

    sget-object v0, Lcom/sigmob/sdk/base/c/i;->k:Lcom/sigmob/volley/b;

    if-nez v0, :cond_34

    invoke-static {p0}, Lcom/sigmob/sdk/base/c/i;->g(Landroid/content/Context;)Lcom/sigmob/volley/b;

    :cond_34
    new-instance v0, Lcom/sigmob/sdk/base/c/t;

    sget-object v3, Lcom/sigmob/sdk/base/c/i;->k:Lcom/sigmob/volley/b;

    const/4 v4, 0x2

    invoke-direct {v0, v3, v2, v4}, Lcom/sigmob/sdk/base/c/t;-><init>(Lcom/sigmob/volley/b;Lcom/sigmob/volley/k;I)V

    sput-object v0, Lcom/sigmob/sdk/base/c/i;->f:Lcom/sigmob/sdk/base/c/t;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/c/t;->c()V

    :cond_41
    monitor-exit v1

    :cond_42
    return-object v0

    :cond_43
    const/16 v0, 0x2710

    invoke-static {v0}, Lcom/sigmob/sdk/base/c/d;->a(I)Lcom/sigmob/sdk/base/c/d;

    move-result-object v0

    goto :goto_17

    :catchall_4a
    move-exception v0

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_7 .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method public static d()Lcom/sigmob/volley/toolbox/o;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/c/i;->j:Lcom/sigmob/volley/toolbox/o;

    return-object v0
.end method

.method public static e()Lcom/sigmob/sdk/base/c/t;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/c/i;->d:Lcom/sigmob/sdk/base/c/t;

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Lcom/sigmob/sdk/base/c/t;
    .registers 6

    sget-object v0, Lcom/sigmob/sdk/base/c/i;->l:Lcom/sigmob/sdk/base/c/t;

    if-nez v0, :cond_42

    const-class v1, Lcom/sigmob/sdk/base/c/i;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/sigmob/sdk/base/c/i;->l:Lcom/sigmob/sdk/base/c/t;

    if-nez v0, :cond_41

    sget-object v0, Lcom/sigmob/sdk/base/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-static {}, Lcom/sigmob/sdk/base/c/d;->a()Lcom/sigmob/sdk/base/c/d;

    move-result-object v0

    :goto_17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/base/c/i;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sigmob/sdk/base/c/o;

    invoke-static {p0}, Lcom/sigmob/sdk/base/c/i;->h(Landroid/content/Context;)Lcom/sigmob/volley/toolbox/o;

    move-result-object v4

    invoke-direct {v3, v2, v4, v0}, Lcom/sigmob/sdk/base/c/o;-><init>(Ljava/lang/String;Lcom/sigmob/volley/toolbox/o;Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v2, Lcom/sigmob/volley/toolbox/f;

    invoke-direct {v2, v3}, Lcom/sigmob/volley/toolbox/f;-><init>(Lcom/sigmob/volley/toolbox/a;)V

    sget-object v0, Lcom/sigmob/sdk/base/c/i;->k:Lcom/sigmob/volley/b;

    if-nez v0, :cond_34

    invoke-static {p0}, Lcom/sigmob/sdk/base/c/i;->g(Landroid/content/Context;)Lcom/sigmob/volley/b;

    :cond_34
    new-instance v0, Lcom/sigmob/sdk/base/c/t;

    sget-object v3, Lcom/sigmob/sdk/base/c/i;->k:Lcom/sigmob/volley/b;

    const/4 v4, 0x4

    invoke-direct {v0, v3, v2, v4}, Lcom/sigmob/sdk/base/c/t;-><init>(Lcom/sigmob/volley/b;Lcom/sigmob/volley/k;I)V

    sput-object v0, Lcom/sigmob/sdk/base/c/i;->l:Lcom/sigmob/sdk/base/c/t;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/c/t;->c()V

    :cond_41
    monitor-exit v1

    :cond_42
    return-object v0

    :cond_43
    const/16 v0, 0x2710

    invoke-static {v0}, Lcom/sigmob/sdk/base/c/d;->a(I)Lcom/sigmob/sdk/base/c/d;

    move-result-object v0

    goto :goto_17

    :catchall_4a
    move-exception v0

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_7 .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method public static f()Lcom/sigmob/sdk/base/c/t;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/c/i;->l:Lcom/sigmob/sdk/base/c/t;

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Lcom/sigmob/volley/toolbox/p;
    .registers 6

    sget-object v0, Lcom/sigmob/sdk/base/c/i;->h:Lcom/sigmob/sdk/base/c/h;

    if-nez v0, :cond_25

    const-class v1, Lcom/sigmob/sdk/base/c/i;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/sigmob/sdk/base/c/i;->h:Lcom/sigmob/sdk/base/c/h;

    if-nez v0, :cond_24

    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->a()Lcom/sigmob/sdk/base/c/t;

    move-result-object v2

    invoke-static {p0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->c(Landroid/content/Context;)I

    move-result v0

    new-instance v3, Lcom/sigmob/sdk/base/c/i$1;

    invoke-direct {v3, v0}, Lcom/sigmob/sdk/base/c/i$1;-><init>(I)V

    new-instance v0, Lcom/sigmob/sdk/base/c/h;

    new-instance v4, Lcom/sigmob/sdk/base/c/i$2;

    invoke-direct {v4, v3}, Lcom/sigmob/sdk/base/c/i$2;-><init>(Landroid/util/LruCache;)V

    invoke-direct {v0, v2, p0, v4}, Lcom/sigmob/sdk/base/c/h;-><init>(Lcom/sigmob/volley/u;Landroid/content/Context;Lcom/sigmob/volley/toolbox/r;)V

    sput-object v0, Lcom/sigmob/sdk/base/c/i;->h:Lcom/sigmob/sdk/base/c/h;

    :cond_24
    monitor-exit v1

    :cond_25
    return-object v0

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public static g()Lcom/sigmob/sdk/base/c/t;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/c/i;->e:Lcom/sigmob/sdk/base/c/t;

    return-object v0
.end method

.method private static g(Landroid/content/Context;)Lcom/sigmob/volley/b;
    .registers 2

    sget-object v0, Lcom/sigmob/sdk/base/c/i;->k:Lcom/sigmob/volley/b;

    if-nez v0, :cond_b

    new-instance v0, Lcom/sigmob/volley/toolbox/v;

    invoke-direct {v0}, Lcom/sigmob/volley/toolbox/v;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/c/i;->k:Lcom/sigmob/volley/b;

    :cond_b
    sget-object v0, Lcom/sigmob/sdk/base/c/i;->k:Lcom/sigmob/volley/b;

    return-object v0
.end method

.method public static h()Lcom/sigmob/sdk/base/c/t;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/c/i;->f:Lcom/sigmob/sdk/base/c/t;

    return-object v0
.end method

.method private static h(Landroid/content/Context;)Lcom/sigmob/volley/toolbox/o;
    .registers 2

    invoke-static {p0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sigmob/sdk/base/c/i;->j:Lcom/sigmob/volley/toolbox/o;

    if-nez v0, :cond_e

    new-instance v0, Lcom/sigmob/sdk/base/c/j;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/c/j;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/c/i;->j:Lcom/sigmob/volley/toolbox/o;

    :cond_e
    sget-object v0, Lcom/sigmob/sdk/base/c/i;->j:Lcom/sigmob/volley/toolbox/o;

    return-object v0
.end method

.method private static i(Landroid/content/Context;)Lcom/sigmob/sdk/base/c/t;
    .registers 6

    sget-object v0, Lcom/sigmob/sdk/base/c/i;->c:Lcom/sigmob/sdk/base/c/t;

    if-nez v0, :cond_42

    const-class v1, Lcom/sigmob/sdk/base/c/i;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/sigmob/sdk/base/c/i;->c:Lcom/sigmob/sdk/base/c/t;

    if-nez v0, :cond_41

    sget-object v0, Lcom/sigmob/sdk/base/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-static {}, Lcom/sigmob/sdk/base/c/d;->a()Lcom/sigmob/sdk/base/c/d;

    move-result-object v0

    :goto_17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/base/c/i;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sigmob/sdk/base/c/o;

    invoke-static {p0}, Lcom/sigmob/sdk/base/c/i;->h(Landroid/content/Context;)Lcom/sigmob/volley/toolbox/o;

    move-result-object v4

    invoke-direct {v3, v2, v4, v0}, Lcom/sigmob/sdk/base/c/o;-><init>(Ljava/lang/String;Lcom/sigmob/volley/toolbox/o;Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v2, Lcom/sigmob/volley/toolbox/b;

    invoke-direct {v2, v3}, Lcom/sigmob/volley/toolbox/b;-><init>(Lcom/sigmob/volley/toolbox/a;)V

    sget-object v0, Lcom/sigmob/sdk/base/c/i;->k:Lcom/sigmob/volley/b;

    if-nez v0, :cond_34

    invoke-static {p0}, Lcom/sigmob/sdk/base/c/i;->g(Landroid/content/Context;)Lcom/sigmob/volley/b;

    :cond_34
    new-instance v0, Lcom/sigmob/sdk/base/c/t;

    sget-object v3, Lcom/sigmob/sdk/base/c/i;->k:Lcom/sigmob/volley/b;

    const/4 v4, 0x2

    invoke-direct {v0, v3, v2, v4}, Lcom/sigmob/sdk/base/c/t;-><init>(Lcom/sigmob/volley/b;Lcom/sigmob/volley/k;I)V

    sput-object v0, Lcom/sigmob/sdk/base/c/i;->c:Lcom/sigmob/sdk/base/c/t;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/c/t;->c()V

    :cond_41
    monitor-exit v1

    :cond_42
    return-object v0

    :cond_43
    invoke-static {}, Lcom/sigmob/sdk/base/c/d;->a()Lcom/sigmob/sdk/base/c/d;

    move-result-object v0

    goto :goto_17

    :catchall_48
    move-exception v0

    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_7 .. :try_end_4a} :catchall_48

    throw v0
.end method

.method public static i()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/c/i;->g:Ljava/lang/String;

    if-nez v0, :cond_6

    sget-object v0, Lcom/sigmob/sdk/base/c/i;->b:Ljava/lang/String;

    :cond_6
    return-object v0
.end method

.method private static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sigmob/sdk/base/c/i;->g:Ljava/lang/String;

    if-nez v0, :cond_1b

    const-class v1, Lcom/sigmob/sdk/base/c/i;

    monitor-enter v1

    :try_start_a
    sget-object v0, Lcom/sigmob/sdk/base/c/i;->g:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_3b

    if-nez v0, :cond_1a

    :try_start_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_1c

    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_17} :catch_37
    .catchall {:try_start_e .. :try_end_17} :catchall_3b

    move-result-object v0

    :goto_18
    :try_start_18
    sput-object v0, Lcom/sigmob/sdk/base/c/i;->g:Ljava/lang/String;

    :cond_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_3b

    :cond_1b
    return-object v0

    :cond_1c
    :try_start_1c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_34

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_34
    sget-object v0, Lcom/sigmob/sdk/base/c/i;->b:Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_36} :catch_37
    .catchall {:try_start_1c .. :try_end_36} :catchall_3b

    goto :goto_18

    :catch_37
    move-exception v0

    :try_start_38
    sget-object v0, Lcom/sigmob/sdk/base/c/i;->b:Ljava/lang/String;

    goto :goto_18

    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method public static declared-synchronized j()V
    .registers 2

    const-class v1, Lcom/sigmob/sdk/base/c/i;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-object v0, Lcom/sigmob/sdk/base/c/i;->c:Lcom/sigmob/sdk/base/c/t;

    const/4 v0, 0x0

    sput-object v0, Lcom/sigmob/sdk/base/c/i;->h:Lcom/sigmob/sdk/base/c/h;

    const/4 v0, 0x0

    sput-object v0, Lcom/sigmob/sdk/base/c/i;->g:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_e

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static k()Ljava/lang/String;
    .registers 1

    const-string v0, "https"

    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->m()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "https"

    :goto_8
    return-object v0

    :cond_9
    const-string v0, "http"

    goto :goto_8
.end method

.method private static m()Z
    .registers 1

    sget-boolean v0, Lcom/sigmob/sdk/base/c/i;->i:Z

    return v0
.end method
