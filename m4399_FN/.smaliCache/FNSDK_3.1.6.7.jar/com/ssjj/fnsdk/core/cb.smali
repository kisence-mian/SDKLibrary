.class Lcom/ssjj/fnsdk/core/cb;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/bz;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/bz;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/cb;->a:Lcom/ssjj/fnsdk/core/bz;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/cb;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/cb;->a:Lcom/ssjj/fnsdk/core/bz;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/bz;->a(Lcom/ssjj/fnsdk/core/bz;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->setUserListener(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cb;->a:Lcom/ssjj/fnsdk/core/bz;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/bz;->a(Lcom/ssjj/fnsdk/core/bz;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u7ed1\u5b9a\u5e10\u53f7\u767b\u5f55\u5931\u8d25\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/cb;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cb;->a:Lcom/ssjj/fnsdk/core/bz;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/bz;->a(Lcom/ssjj/fnsdk/core/bz;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/cb;->a:Lcom/ssjj/fnsdk/core/bz;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/bz;->a(Lcom/ssjj/fnsdk/core/bz;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b(Landroid/app/Activity;)V

    return-void
.end method
