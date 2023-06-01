.class Lcom/ssjj/fnsdk/core/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

.field private final synthetic c:Landroid/app/Activity;

.field private final synthetic d:Lcom/ssjj/fnsdk/core/SsjjFNListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/FNUpdateManager;Lcom/ssjj/fnsdk/core/FNUpdateManager$a;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 5

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/f;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/f;->b:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/f;->c:Landroid/app/Activity;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/f;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/f;->b:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->b()Z

    move-result p1

    if-eqz p1, :cond_3a

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/f;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/f;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/f;->b:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->a:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->install(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    const-string p1, "\u5df2\u4e0b\u8f7d\u5b8c\u6210\uff0c\u4e0d\u7528\u91cd\u65b0\u4e0b\u8f7d"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/f;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p1, :cond_27

    sget v0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->CODE_UPDATE_FINISH:I

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/f;->b:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->a:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    const-string v2, "\u4e0b\u8f7d\u5b8c\u6210"

    invoke-interface {p1, v0, v2, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_27
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/f;->b:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->f()Z

    move-result p1

    if-nez p1, :cond_5f

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/f;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->b(Lcom/ssjj/fnsdk/core/FNUpdateManager;)Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    goto :goto_5f

    :cond_3a
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/f;->c:Landroid/app/Activity;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->checkNet2(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_53

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/f;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->c(Lcom/ssjj/fnsdk/core/FNUpdateManager;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/f;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/f;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/f;->b:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/f;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-static {p1, v0, v1, v2}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->a(Lcom/ssjj/fnsdk/core/FNUpdateManager;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/FNUpdateManager$a;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto :goto_5f

    :cond_53
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/f;->c:Landroid/app/Activity;

    const-string v0, "\u7f51\u7edc\u5df2\u4e2d\u65ad\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_5f
    :goto_5f
    return-void
.end method
