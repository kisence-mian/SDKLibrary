.class public Lcom/tencent/smtt/sdk/WebSettings;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;,
        Lcom/tencent/smtt/sdk/WebSettings$TextSize;,
        Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;,
        Lcom/tencent/smtt/sdk/WebSettings$PluginState;,
        Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;
    }
.end annotation


# static fields
.field public static final LOAD_CACHE_ELSE_NETWORK:I = 0x1

.field public static final LOAD_CACHE_ONLY:I = 0x3

.field public static final LOAD_DEFAULT:I = -0x1

.field public static final LOAD_NORMAL:I = 0x0

.field public static final LOAD_NO_CACHE:I = 0x2


# instance fields
.field private a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

.field private b:Landroid/webkit/WebSettings;

.field private c:Z


# direct methods
.method constructor <init>(Landroid/webkit/WebSettings;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    iput-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    iput-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    iput-object p1, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    return-void
.end method

.method constructor <init>(Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    iput-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    iput-object p1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    iput-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    return-void
.end method

.method public static getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/bu;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_19
    return-object v0

    :cond_1a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v0, v2, :cond_22

    move-object v0, v1

    goto :goto_19

    :cond_22
    const-class v0, Landroid/webkit/WebSettings;

    const-string v2, "getDefaultUserAgent"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v5

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_38

    move-object v0, v1

    goto :goto_19

    :cond_38
    check-cast v0, Ljava/lang/String;

    goto :goto_19
.end method


# virtual methods
.method public enableSmoothTransition()Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->enableSmoothTransition()Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_33

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_31

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const-string v2, "enableSmoothTransition"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2a

    move v0, v1

    goto :goto_f

    :cond_2a
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_f

    :cond_31
    move v0, v1

    goto :goto_f

    :cond_33
    move v0, v1

    goto :goto_f
.end method

.method public getAllowContentAccess()Z
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getAllowContentAccess()Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_33

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_31

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const-string v2, "getAllowContentAccess"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2a

    move v0, v1

    goto :goto_f

    :cond_2a
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_f

    :cond_31
    move v0, v1

    goto :goto_f

    :cond_33
    move v0, v1

    goto :goto_f
.end method

.method public getAllowFileAccess()Z
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getAllowFileAccess()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAllowFileAccess()Z

    move-result v0

    goto :goto_e

    :cond_1e
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public declared-synchronized getBlockNetworkImage()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getBlockNetworkImage()Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_22

    move-result v0

    :goto_f
    monitor-exit p0

    return v0

    :cond_11
    :try_start_11
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBlockNetworkImage()Z
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_22

    move-result v0

    goto :goto_f

    :cond_20
    const/4 v0, 0x0

    goto :goto_f

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBlockNetworkLoads()Z
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_12

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getBlockNetworkLoads()Z
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_27

    move-result v0

    :cond_10
    :goto_10
    monitor-exit p0

    return v0

    :cond_12
    :try_start_12
    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v1, :cond_10

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBlockNetworkLoads()Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_27

    move-result v0

    goto :goto_10

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBuiltInZoomControls()Z
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    goto :goto_e

    :cond_1e
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getCacheMode()I
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getCacheMode()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getCacheMode()I

    move-result v0

    goto :goto_e

    :cond_1e
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public declared-synchronized getCursiveFontFamily()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getCursiveFontFamily()Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_23

    move-result-object v0

    :goto_f
    monitor-exit p0

    return-object v0

    :cond_11
    :try_start_11
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getCursiveFontFamily()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_20
    const-string v0, ""
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_23

    goto :goto_f

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabaseEnabled()Z
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getDatabaseEnabled()Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_22

    move-result v0

    :goto_f
    monitor-exit p0

    return v0

    :cond_11
    :try_start_11
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDatabaseEnabled()Z
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_22

    move-result v0

    goto :goto_f

    :cond_20
    const/4 v0, 0x0

    goto :goto_f

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabasePath()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getDatabasePath()Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_23

    move-result-object v0

    :goto_f
    monitor-exit p0

    return-object v0

    :cond_11
    :try_start_11
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDatabasePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_20
    const-string v0, ""
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_23

    goto :goto_f

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFixedFontSize()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getDefaultFixedFontSize()I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_22

    move-result v0

    :goto_f
    monitor-exit p0

    return v0

    :cond_11
    :try_start_11
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDefaultFixedFontSize()I
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_22

    move-result v0

    goto :goto_f

    :cond_20
    const/4 v0, 0x0

    goto :goto_f

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFontSize()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getDefaultFontSize()I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_22

    move-result v0

    :goto_f
    monitor-exit p0

    return v0

    :cond_11
    :try_start_11
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDefaultFontSize()I
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_22

    move-result v0

    goto :goto_f

    :cond_20
    const/4 v0, 0x0

    goto :goto_f

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultTextEncodingName()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getDefaultTextEncodingName()Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_23

    move-result-object v0

    :goto_f
    monitor-exit p0

    return-object v0

    :cond_11
    :try_start_11
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDefaultTextEncodingName()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_20
    const-string v0, ""
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_23

    goto :goto_f

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultZoom()Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x7
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getDefaultZoom()Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;->valueOf(Ljava/lang/String;)Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings$ZoomDensity;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;->valueOf(Ljava/lang/String;)Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;

    move-result-object v0

    goto :goto_16

    :cond_2e
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getDisplayZoomControls()Z
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getDisplayZoomControls()Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_33

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_31

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const-string v2, "getDisplayZoomControls"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2a

    move v0, v1

    goto :goto_f

    :cond_2a
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_f

    :cond_31
    move v0, v1

    goto :goto_f

    :cond_33
    move v0, v1

    goto :goto_f
.end method

.method public declared-synchronized getDomStorageEnabled()Z
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x7
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getDomStorageEnabled()Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_22

    move-result v0

    :goto_f
    monitor-exit p0

    return v0

    :cond_11
    :try_start_11
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDomStorageEnabled()Z
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_22

    move-result v0

    goto :goto_f

    :cond_20
    const/4 v0, 0x0

    goto :goto_f

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFantasyFontFamily()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getFantasyFontFamily()Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_23

    move-result-object v0

    :goto_f
    monitor-exit p0

    return-object v0

    :cond_11
    :try_start_11
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getFantasyFontFamily()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_20
    const-string v0, ""
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_23

    goto :goto_f

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFixedFontFamily()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getFixedFontFamily()Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_23

    move-result-object v0

    :goto_f
    monitor-exit p0

    return-object v0

    :cond_11
    :try_start_11
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getFixedFontFamily()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_20
    const-string v0, ""
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_23

    goto :goto_f

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptCanOpenWindowsAutomatically()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getJavaScriptCanOpenWindowsAutomatically()Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_22

    move-result v0

    :goto_f
    monitor-exit p0

    return v0

    :cond_11
    :try_start_11
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptCanOpenWindowsAutomatically()Z
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_22

    move-result v0

    goto :goto_f

    :cond_20
    const/4 v0, 0x0

    goto :goto_f

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptEnabled()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getJavaScriptEnabled()Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_22

    move-result v0

    :goto_f
    monitor-exit p0

    return v0

    :cond_11
    :try_start_11
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_22

    move-result v0

    goto :goto_f

    :cond_20
    const/4 v0, 0x0

    goto :goto_f

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLayoutAlgorithm()Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getLayoutAlgorithm()Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;->valueOf(Ljava/lang/String;)Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_32

    move-result-object v0

    :goto_17
    monitor-exit p0

    return-object v0

    :cond_19
    :try_start_19
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings$LayoutAlgorithm;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;->valueOf(Ljava/lang/String;)Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;
    :try_end_2e
    .catchall {:try_start_19 .. :try_end_2e} :catchall_32

    move-result-object v0

    goto :goto_17

    :cond_30
    const/4 v0, 0x0

    goto :goto_17

    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLightTouchEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getLightTouchEnabled()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLightTouchEnabled()Z

    move-result v0

    goto :goto_e

    :cond_1e
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getLoadWithOverviewMode()Z
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x7
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getLoadWithOverviewMode()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v0

    goto :goto_e

    :cond_1e
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public declared-synchronized getLoadsImagesAutomatically()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getLoadsImagesAutomatically()Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_22

    move-result v0

    :goto_f
    monitor-exit p0

    return v0

    :cond_11
    :try_start_11
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLoadsImagesAutomatically()Z
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_22

    move-result v0

    goto :goto_f

    :cond_20
    const/4 v0, 0x0

    goto :goto_f

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMediaPlaybackRequiresUserGesture()Z
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getMediaPlaybackRequiresUserGesture()Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_33

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v0, v2, :cond_20

    move v0, v1

    goto :goto_f

    :cond_20
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const-string v2, "getMediaPlaybackRequiresUserGesture"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2c

    move v0, v1

    goto :goto_f

    :cond_2c
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_f

    :cond_33
    move v0, v1

    goto :goto_f
.end method

.method public declared-synchronized getMinimumFontSize()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getMinimumFontSize()I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_22

    move-result v0

    :goto_f
    monitor-exit p0

    return v0

    :cond_11
    :try_start_11
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getMinimumFontSize()I
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_22

    move-result v0

    goto :goto_f

    :cond_20
    const/4 v0, 0x0

    goto :goto_f

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumLogicalFontSize()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getMinimumLogicalFontSize()I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_22

    move-result v0

    :goto_f
    monitor-exit p0

    return v0

    :cond_11
    :try_start_11
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getMinimumLogicalFontSize()I
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_22

    move-result v0

    goto :goto_f

    :cond_20
    const/4 v0, 0x0

    goto :goto_f

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMixedContentMode()I
    .registers 6

    const/4 v1, -0x1

    monitor-enter p0

    :try_start_2
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_39

    if-eqz v0, :cond_18

    :try_start_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getMixedContentMode()I
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_f} :catch_12
    .catchall {:try_start_a .. :try_end_f} :catchall_39

    move-result v0

    :goto_10
    monitor-exit p0

    return v0

    :catch_12
    move-exception v0

    :try_start_13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v1

    goto :goto_10

    :cond_18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_20

    move v0, v1

    goto :goto_10

    :cond_20
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const-string v2, "getMixedContentMode"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_32

    move v0, v1

    goto :goto_10

    :cond_32
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_37
    .catchall {:try_start_13 .. :try_end_37} :catchall_39

    move-result v0

    goto :goto_10

    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNavDump()Z
    .registers 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getNavDump()Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const-string v2, "getNavDump"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_24

    move v0, v1

    goto :goto_f

    :cond_24
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_f

    :cond_2b
    move v0, v1

    goto :goto_f
.end method

.method public declared-synchronized getPluginState()Lcom/tencent/smtt/sdk/WebSettings$PluginState;
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getPluginState()Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$PluginState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$PluginState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/sdk/WebSettings$PluginState;->valueOf(Ljava/lang/String;)Lcom/tencent/smtt/sdk/WebSettings$PluginState;
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_43

    move-result-object v0

    :goto_18
    monitor-exit p0

    return-object v0

    :cond_1a
    :try_start_1a
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_41

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v0, v2, :cond_3f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const-string v2, "getPluginState"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_34

    move-object v0, v1

    goto :goto_18

    :cond_34
    check-cast v0, Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0}, Landroid/webkit/WebSettings$PluginState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/sdk/WebSettings$PluginState;->valueOf(Ljava/lang/String;)Lcom/tencent/smtt/sdk/WebSettings$PluginState;
    :try_end_3d
    .catchall {:try_start_1a .. :try_end_3d} :catchall_43

    move-result-object v0

    goto :goto_18

    :cond_3f
    move-object v0, v1

    goto :goto_18

    :cond_41
    move-object v0, v1

    goto :goto_18

    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsEnabled()Z
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getPluginsEnabled()Z
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_4b

    move-result v0

    :goto_10
    monitor-exit p0

    return v0

    :cond_12
    :try_start_12
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_49

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-gt v0, v2, :cond_33

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const-string v2, "getPluginsEnabled"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2c

    move v0, v1

    goto :goto_10

    :cond_2c
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_10

    :cond_33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ne v0, v2, :cond_47

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getPluginState()Landroid/webkit/WebSettings$PluginState;

    move-result-object v0

    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;
    :try_end_41
    .catchall {:try_start_12 .. :try_end_41} :catchall_4b

    if-ne v2, v0, :cond_45

    const/4 v0, 0x1

    goto :goto_10

    :cond_45
    move v0, v1

    goto :goto_10

    :cond_47
    move v0, v1

    goto :goto_10

    :cond_49
    move v0, v1

    goto :goto_10

    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsPath()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getPluginsPath()Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_34

    move-result-object v0

    :goto_f
    monitor-exit p0

    return-object v0

    :cond_11
    :try_start_11
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_31

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_2e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const-string v1, "getPluginsPath"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2b

    const/4 v0, 0x0

    goto :goto_f

    :cond_2b
    check-cast v0, Ljava/lang/String;

    goto :goto_f

    :cond_2e
    const-string v0, ""

    goto :goto_f

    :cond_31
    const-string v0, ""
    :try_end_33
    .catchall {:try_start_11 .. :try_end_33} :catchall_34

    goto :goto_f

    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSansSerifFontFamily()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getSansSerifFontFamily()Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_23

    move-result-object v0

    :goto_f
    monitor-exit p0

    return-object v0

    :cond_11
    :try_start_11
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getSansSerifFontFamily()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_20
    const-string v0, ""
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_23

    goto :goto_f

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSaveFormData()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getSaveFormData()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getSaveFormData()Z

    move-result v0

    goto :goto_e

    :cond_1e
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getSavePassword()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getSavePassword()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getSavePassword()Z

    move-result v0

    goto :goto_e

    :cond_1e
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public declared-synchronized getSerifFontFamily()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getSerifFontFamily()Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_23

    move-result-object v0

    :goto_f
    monitor-exit p0

    return-object v0

    :cond_11
    :try_start_11
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getSerifFontFamily()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_20
    const-string v0, ""
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_23

    goto :goto_f

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStandardFontFamily()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getStandardFontFamily()Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_23

    move-result-object v0

    :goto_f
    monitor-exit p0

    return-object v0

    :cond_11
    :try_start_11
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getStandardFontFamily()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_20
    const-string v0, ""
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_23

    goto :goto_f

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTextSize()Lcom/tencent/smtt/sdk/WebSettings$TextSize;
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getTextSize()Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$TextSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$TextSize;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/sdk/WebSettings$TextSize;->valueOf(Ljava/lang/String;)Lcom/tencent/smtt/sdk/WebSettings$TextSize;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getTextSize()Landroid/webkit/WebSettings$TextSize;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings$TextSize;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/sdk/WebSettings$TextSize;->valueOf(Ljava/lang/String;)Lcom/tencent/smtt/sdk/WebSettings$TextSize;

    move-result-object v0

    goto :goto_16

    :cond_2e
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public declared-synchronized getTextZoom()I
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getTextZoom()I
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_3f

    move-result v0

    :goto_10
    monitor-exit p0

    return v0

    :cond_12
    :try_start_12
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_3d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_3f

    const/16 v2, 0xe

    if-ge v0, v2, :cond_22

    move v0, v1

    goto :goto_10

    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getTextZoom()I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_29
    .catchall {:try_start_22 .. :try_end_27} :catchall_3f

    move-result v0

    goto :goto_10

    :catch_29
    move-exception v0

    :try_start_2a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const-string v2, "getTextZoom"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_36

    move v0, v1

    goto :goto_10

    :cond_36
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_3b
    .catchall {:try_start_2a .. :try_end_3b} :catchall_3f

    move-result v0

    goto :goto_10

    :cond_3d
    move v0, v1

    goto :goto_10

    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUseWebViewBackgroundForOverscrollBackground()Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getUseWebViewBackgroundForOverscrollBackground()Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const-string v2, "getUseWebViewBackgroundForOverscrollBackground"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_24

    move v0, v1

    goto :goto_f

    :cond_24
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_f

    :cond_2b
    move v0, v1

    goto :goto_f
.end method

.method public declared-synchronized getUseWideViewPort()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getUseWideViewPort()Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_22

    move-result v0

    :goto_f
    monitor-exit p0

    return v0

    :cond_11
    :try_start_11
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_22

    move-result v0

    goto :goto_f

    :cond_20
    const/4 v0, 0x0

    goto :goto_f

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_1e
    const-string v0, ""

    goto :goto_e
.end method

.method public setAllowContentAccess(Z)V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setAllowContentAccess(Z)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const-string v1, "setAllowContentAccess"

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f
.end method

.method public setAllowFileAccess(Z)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setAllowFileAccess(Z)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    goto :goto_d
.end method

.method public setAllowFileAccessFromFileURLs(Z)V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const-string v1, "setAllowFileAccessFromFileURLs"

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f
.end method

.method public setAllowUniversalAccessFromFileURLs(Z)V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const-string v1, "setAllowUniversalAccessFromFileURLs"

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f
.end method

.method public setAppCacheEnabled(Z)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x7
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setAppCacheEnabled(Z)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    goto :goto_d
.end method

.method public setAppCacheMaxSize(J)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x7
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setAppCacheMaxSize(J)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    goto :goto_d
.end method

.method public setAppCachePath(Ljava/lang/String;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x7
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setAppCachePath(Ljava/lang/String;)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public setBlockNetworkImage(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setBlockNetworkImage(Z)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    goto :goto_d
.end method

.method public declared-synchronized setBlockNetworkLoads(Z)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setBlockNetworkLoads(Z)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_24

    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_24

    goto :goto_e

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBuiltInZoomControls(Z)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setBuiltInZoomControls(Z)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    goto :goto_d
.end method

.method public setCacheMode(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setCacheMode(I)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_d
.end method

.method public declared-synchronized setCursiveFontFamily(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setCursiveFontFamily(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1e

    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCursiveFontFamily(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1e

    goto :goto_e

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDatabaseEnabled(Z)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setDatabaseEnabled(Z)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    goto :goto_d
.end method

.method public setDatabasePath(Ljava/lang/String;)V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setDatabasePath(Ljava/lang/String;)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const-string v1, "setDatabasePath"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f
.end method

.method public declared-synchronized setDefaultFixedFontSize(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setDefaultFixedFontSize(I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1e

    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1e

    goto :goto_e

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFontSize(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setDefaultFontSize(I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1e

    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1e

    goto :goto_e

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultTextEncodingName(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1e

    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1e

    goto :goto_e

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultZoom(Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x7
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;->valueOf(Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setDefaultZoom(Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/WebSettings$ZoomDensity;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto :goto_15
.end method

.method public setDisplayZoomControls(Z)V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setDisplayZoomControls(Z)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const-string v1, "setDisplayZoomControls"

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f
.end method

.method public setDomStorageEnabled(Z)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x7
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setDomStorageEnabled(Z)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    goto :goto_d
.end method

.method public setEnableSmoothTransition(Z)V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setEnableSmoothTransition(Z)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const-string v1, "setEnableSmoothTransition"

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f
.end method

.method public declared-synchronized setFantasyFontFamily(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setFantasyFontFamily(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1e

    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setFantasyFontFamily(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1e

    goto :goto_e

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFixedFontFamily(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setFixedFontFamily(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1e

    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setFixedFontFamily(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1e

    goto :goto_e

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setGeolocationDatabasePath(Ljava/lang/String;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public setGeolocationEnabled(Z)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setGeolocationEnabled(Z)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    goto :goto_d
.end method

.method public declared-synchronized setJavaScriptCanOpenWindowsAutomatically(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1e

    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1e

    goto :goto_e

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setJavaScriptEnabled(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setJavaScriptEnabled(Z)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_d

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d
.end method

.method public setLayoutAlgorithm(Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;)V
    .registers 4

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;->valueOf(Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setLayoutAlgorithm(Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/WebSettings$LayoutAlgorithm;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    goto :goto_15
.end method

.method public setLightTouchEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setLightTouchEnabled(Z)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    goto :goto_d
.end method

.method public setLoadWithOverviewMode(Z)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x7
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setLoadWithOverviewMode(Z)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    goto :goto_d
.end method

.method public setLoadsImagesAutomatically(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setLoadsImagesAutomatically(Z)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    goto :goto_d
.end method

.method public setMediaPlaybackRequiresUserGesture(Z)V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const-string v1, "setMediaPlaybackRequiresUserGesture"

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f
.end method

.method public declared-synchronized setMinimumFontSize(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setMinimumFontSize(I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1e

    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1e

    goto :goto_e

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMinimumLogicalFontSize(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setMinimumLogicalFontSize(I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1e

    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1e

    goto :goto_e

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMixedContentMode(I)V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const-string v1, "setMixedContentMode"

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a
.end method

.method public setNavDump(Z)V
    .registers 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setNavDump(Z)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const-string v1, "setNavDump"

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f
.end method

.method public setNeedInitialFocus(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setNeedInitialFocus(Z)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    goto :goto_d
.end method

.method public declared-synchronized setPluginState(Lcom/tencent/smtt/sdk/WebSettings$PluginState;)V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebSettings$PluginState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$PluginState;->valueOf(Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$PluginState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setPluginState(Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$PluginState;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_44

    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    :cond_18
    :try_start_18
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_16

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_16

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebSettings$PluginState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebSettings$PluginState;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$PluginState;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const-string v2, "setPluginState"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/webkit/WebSettings$PluginState;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catchall {:try_start_18 .. :try_end_43} :catchall_44

    goto :goto_16

    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPluginsEnabled(Z)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setPluginsEnabled(Z)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const-string v1, "setPluginsEnabled"

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f
.end method

.method public declared-synchronized setPluginsPath(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setPluginsPath(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_2e

    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const-string v1, "setPluginsPath"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_2e

    goto :goto_e

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRenderPriority(Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;)V
    .registers 4

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$RenderPriority;->valueOf(Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$RenderPriority;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setRenderPriority(Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$RenderPriority;)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/WebSettings$RenderPriority;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$RenderPriority;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    goto :goto_15
.end method

.method public declared-synchronized setSansSerifFontFamily(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setSansSerifFontFamily(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1e

    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSansSerifFontFamily(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1e

    goto :goto_e

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSaveFormData(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setSaveFormData(Z)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    goto :goto_d
.end method

.method public setSavePassword(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setSavePassword(Z)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    goto :goto_d
.end method

.method public declared-synchronized setSerifFontFamily(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setSerifFontFamily(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1e

    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSerifFontFamily(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1e

    goto :goto_e

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStandardFontFamily(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setStandardFontFamily(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1e

    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setStandardFontFamily(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1e

    goto :goto_e

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSupportMultipleWindows(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setSupportMultipleWindows(Z)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    goto :goto_d
.end method

.method public setSupportZoom(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setSupportZoom(Z)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    goto :goto_d
.end method

.method public setTextSize(Lcom/tencent/smtt/sdk/WebSettings$TextSize;)V
    .registers 4

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebSettings$TextSize;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$TextSize;->valueOf(Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$TextSize;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setTextSize(Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$TextSize;)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebSettings$TextSize;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/WebSettings$TextSize;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$TextSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    goto :goto_15
.end method

.method public declared-synchronized setTextZoom(I)V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setTextZoom(I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_3f

    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_3f

    const/16 v1, 0xe

    if-lt v0, v1, :cond_e

    :try_start_1e
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setTextZoom(I)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_24
    .catchall {:try_start_1e .. :try_end_23} :catchall_3f

    goto :goto_e

    :catch_24
    move-exception v0

    :try_start_25
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const-string v1, "setTextZoom"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catchall {:try_start_25 .. :try_end_3e} :catchall_3f

    goto :goto_e

    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setUseWebViewBackgroundForOverscrollBackground(Z)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setUseWebViewBackgroundForOverscrollBackground(Z)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const-string v1, "setUseWebViewBackgroundForOverscrollBackground"

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f
.end method

.method public setUseWideViewPort(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setUseWideViewPort(Z)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    goto :goto_d
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setUserAgent(Ljava/lang/String;)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public declared-synchronized supportMultipleWindows()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->supportMultipleWindows()Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_22

    move-result v0

    :goto_f
    monitor-exit p0

    return v0

    :cond_11
    :try_start_11
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportMultipleWindows()Z
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_22

    move-result v0

    goto :goto_f

    :cond_20
    const/4 v0, 0x0

    goto :goto_f

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public supportZoom()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->supportZoom()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v0

    goto :goto_e

    :cond_1e
    const/4 v0, 0x0

    goto :goto_e
.end method
