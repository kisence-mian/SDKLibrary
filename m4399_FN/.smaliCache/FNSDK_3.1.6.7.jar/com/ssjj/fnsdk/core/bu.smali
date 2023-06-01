.class Lcom/ssjj/fnsdk/core/bu;
.super Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNSDK;

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNSDK;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/bu;->a:Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/bu;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/bu;->c:Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/bu;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied([Ljava/lang/String;)V
    .registers 4

    const-string p1, "onDenied permission"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/bu;->a:Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bu;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/bu;->c:Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;

    invoke-static {p1, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->a(Lcom/ssjj/fnsdk/core/SsjjFNSDK;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;)V

    return-void
.end method

.method public onGranted([Ljava/lang/String;)V
    .registers 4

    const-string p1, "onGranted permission"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/bu;->a:Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bu;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/bu;->c:Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;

    invoke-static {p1, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->a(Lcom/ssjj/fnsdk/core/SsjjFNSDK;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;)V

    return-void
.end method

.method public rationale([Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/bu;->d:Ljava/lang/String;

    return-object p1
.end method
