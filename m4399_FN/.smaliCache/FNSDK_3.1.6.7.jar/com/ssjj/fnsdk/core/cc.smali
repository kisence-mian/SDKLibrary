.class Lcom/ssjj/fnsdk/core/cc;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/bz;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/bz;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/cc;->a:Lcom/ssjj/fnsdk/core/bz;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/cc;->a:Lcom/ssjj/fnsdk/core/bz;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/bz;->a(Lcom/ssjj/fnsdk/core/bz;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->setUserListener(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cc;->a:Lcom/ssjj/fnsdk/core/bz;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/bz;->a(Lcom/ssjj/fnsdk/core/bz;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u7ed1\u5b9a\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
