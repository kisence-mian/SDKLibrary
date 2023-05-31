.class public Lcom/tencent/smtt/sdk/GeolocationPermissions;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tencent/smtt/sdk/GeolocationPermissions;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a()Lcom/tencent/smtt/sdk/GeolocationPermissions;
    .registers 2

    const-class v1, Lcom/tencent/smtt/sdk/GeolocationPermissions;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/smtt/sdk/GeolocationPermissions;->a:Lcom/tencent/smtt/sdk/GeolocationPermissions;

    if-nez v0, :cond_e

    new-instance v0, Lcom/tencent/smtt/sdk/GeolocationPermissions;

    invoke-direct {v0}, Lcom/tencent/smtt/sdk/GeolocationPermissions;-><init>()V

    sput-object v0, Lcom/tencent/smtt/sdk/GeolocationPermissions;->a:Lcom/tencent/smtt/sdk/GeolocationPermissions;

    :cond_e
    sget-object v0, Lcom/tencent/smtt/sdk/GeolocationPermissions;->a:Lcom/tencent/smtt/sdk/GeolocationPermissions;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lcom/tencent/smtt/sdk/GeolocationPermissions;
    .registers 1

    invoke-static {}, Lcom/tencent/smtt/sdk/GeolocationPermissions;->a()Lcom/tencent/smtt/sdk/GeolocationPermissions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allow(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/bu;->g(Ljava/lang/String;)V

    :goto_13
    return-void

    :cond_14
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/GeolocationPermissions;->allow(Ljava/lang/String;)V

    goto :goto_13
.end method

.method public clear(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/bu;->f(Ljava/lang/String;)V

    :goto_13
    return-void

    :cond_14
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/GeolocationPermissions;->clear(Ljava/lang/String;)V

    goto :goto_13
.end method

.method public clearAll()V
    .registers 3

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bu;->o()V

    :goto_13
    return-void

    :cond_14
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/GeolocationPermissions;->clearAll()V

    goto :goto_13
.end method

.method public getAllowed(Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/smtt/sdk/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/smtt/sdk/bu;->c(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :goto_13
    return-void

    :cond_14
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/GeolocationPermissions;->getAllowed(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_13
.end method

.method public getOrigins(Lcom/tencent/smtt/sdk/ValueCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/smtt/sdk/ValueCallback",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/bu;->b(Landroid/webkit/ValueCallback;)V

    :goto_13
    return-void

    :cond_14
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/GeolocationPermissions;->getOrigins(Landroid/webkit/ValueCallback;)V

    goto :goto_13
.end method
