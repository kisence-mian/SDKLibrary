.class Lcom/ssjj/fnsdk/core/ci;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/ci;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/ci;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/ci;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getUserListener()Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/ci;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    move-result-object v0

    if-nez v0, :cond_1a

    const-string v0, "\u8bf7\u5728Adapter\u91cd\u5199 getUserListener()"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    :cond_1a
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/ci;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u8bf7\u767b\u5f55\u8981\u7ed1\u5b9a\u7684\u5e10\u53f7"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/ci;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->h(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->setUserListener(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/ci;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->login(Landroid/app/Activity;)V

    return-void
.end method
