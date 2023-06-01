.class Lcom/ssjj/fnsdk/core/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/SsjjFNListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/FNGuestManager;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/FNGuestManager;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/e;->a:Lcom/ssjj/fnsdk/core/FNGuestManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/e;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_27

    if-eqz p3, :cond_27

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "\ndata\u4e3a\u7a7a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getUserListener()Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    move-result-object p1

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/e;->a:Lcom/ssjj/fnsdk/core/FNGuestManager;

    invoke-static {v1, p3, p1}, Lcom/ssjj/fnsdk/core/FNGuestManager;->a(Lcom/ssjj/fnsdk/core/FNGuestManager;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;)Z

    move-result p1

    goto :goto_28

    :cond_27
    const/4 p1, 0x0

    :goto_28
    if-nez p1, :cond_49

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/e;->b:Landroid/app/Activity;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object p1

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/e;->b:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->login(Landroid/app/Activity;)V

    :cond_49
    return-void
.end method
