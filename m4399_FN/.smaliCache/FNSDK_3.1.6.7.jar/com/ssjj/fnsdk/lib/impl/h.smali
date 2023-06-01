.class public Lcom/ssjj/fnsdk/lib/impl/h;
.super Lcom/ssjj/fnsdk/lib/core/ApiClass;


# instance fields
.field private a:I

.field private b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

.field private c:Ljava/lang/String;

.field private d:Lcom/ssjj/fnsdk/lib/sdk/FNParam;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/ssjj/fnsdk/lib/core/ApiClass;-><init>()V

    const/16 v0, -0x63

    iput v0, p0, Lcom/ssjj/fnsdk/lib/impl/h;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/h;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    const-string v1, "not init"

    iput-object v1, p0, Lcom/ssjj/fnsdk/lib/impl/h;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/h;->d:Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/lib/impl/h;)Lcom/ssjj/fnsdk/lib/sdk/FNBack;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/lib/impl/h;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    return-object p0
.end method

.method protected static a()V
    .registers 8

    sget-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->FUNC_switchUser:Ljava/lang/String;

    sget-object v1, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->FUNC_logout:Ljava/lang/String;

    sget-object v2, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->FUNC_showBBS:Ljava/lang/String;

    sget-object v3, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->FUNC_showFloatBar:Ljava/lang/String;

    sget-object v4, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->FUNC_hideFloatBar:Ljava/lang/String;

    sget-object v5, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->FUNC_showGameCenter:Ljava/lang/String;

    sget-object v6, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->FUNC_showUserCenter:Ljava/lang/String;

    sget-object v7, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->FUNC_showPlatformExitDialog:Ljava/lang/String;

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_15
    const/16 v2, 0x8

    if-lt v1, v2, :cond_1a

    return-void

    :cond_1a
    aget-object v2, v0, v1

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->isSurportFunc(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_31

    invoke-static {}, Lcom/ssjj/fnsdk/lib/impl/x;->a()Lcom/ssjj/fnsdk/lib/impl/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ssjj/fnsdk/lib/impl/x;->b()Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->removeSupport(Ljava/lang/String;)V

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_15
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/lib/impl/h;I)V
    .registers 2

    iput p1, p0, Lcom/ssjj/fnsdk/lib/impl/h;->a:I

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/lib/impl/h;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/h;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/lib/impl/h;)I
    .registers 1

    iget p0, p0, Lcom/ssjj/fnsdk/lib/impl/h;->a:I

    return p0
.end method

.method static synthetic c(Lcom/ssjj/fnsdk/lib/impl/h;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/lib/impl/h;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/ssjj/fnsdk/lib/impl/h;)Lcom/ssjj/fnsdk/lib/sdk/FNParam;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/lib/impl/h;->d:Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    return-object p0
.end method


# virtual methods
.method public checkAndUpdateVersion(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 5

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    invoke-static {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->getActivity(Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Landroid/app/Activity;

    move-result-object p1

    new-instance v1, Lcom/ssjj/fnsdk/lib/impl/n;

    invoke-direct {v1, p0, p2}, Lcom/ssjj/fnsdk/lib/impl/n;-><init>(Lcom/ssjj/fnsdk/lib/impl/h;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V

    invoke-virtual {v0, p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->checkAndUpdateVersion(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V

    return-void
.end method

.method public init(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 6

    const/16 v0, -0x63

    iput v0, p0, Lcom/ssjj/fnsdk/lib/impl/h;->a:I

    const-string v0, "not init"

    iput-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/h;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/h;->d:Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    invoke-static {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->getActivity(Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/ssjj/fnsdk/lib/impl/i;

    invoke-direct {v2, p0, p2, p1}, Lcom/ssjj/fnsdk/lib/impl/i;-><init>(Lcom/ssjj/fnsdk/lib/impl/h;Lcom/ssjj/fnsdk/lib/sdk/FNBack;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->init(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;)V

    invoke-static {}, Lcom/ssjj/fnsdk/lib/impl/h;->a()V

    return-void
.end method

.method public release(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 4

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object p1

    new-instance v0, Lcom/ssjj/fnsdk/lib/impl/m;

    invoke-direct {v0, p0, p2}, Lcom/ssjj/fnsdk/lib/impl/m;-><init>(Lcom/ssjj/fnsdk/lib/impl/h;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->exit(Lcom/ssjj/fnsdk/core/listener/SsjjFNExitListener;)V

    return-void
.end method

.method public setCallbackInitState(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 5

    iput-object p2, p0, Lcom/ssjj/fnsdk/lib/impl/h;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    if-eqz p2, :cond_14

    iget p1, p0, Lcom/ssjj/fnsdk/lib/impl/h;->a:I

    const/16 v0, -0x63

    if-eq p1, v0, :cond_14

    new-instance p1, Lcom/ssjj/fnsdk/lib/impl/l;

    invoke-direct {p1, p0, p2}, Lcom/ssjj/fnsdk/lib/impl/l;-><init>(Lcom/ssjj/fnsdk/lib/impl/h;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V

    const-wide/16 v0, 0x64

    invoke-static {p1, v0, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->post(Ljava/lang/Runnable;J)V

    :cond_14
    return-void
.end method

.method public showExitDialog(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 5

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object p1

    sget-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->FUNC_showPlatformExitDialog:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->isSurportFunc(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object p1

    new-instance v0, Lcom/ssjj/fnsdk/lib/impl/o;

    invoke-direct {v0, p0, p2}, Lcom/ssjj/fnsdk/lib/impl/o;-><init>(Lcom/ssjj/fnsdk/lib/impl/h;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->showPlatformExitDialog(Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListener;)V

    goto :goto_22

    :cond_19
    if-eqz p2, :cond_22

    const-string p1, "show custom exit dialog"

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-interface {p2, v1, p1, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_22
    :goto_22
    return-void
.end method
