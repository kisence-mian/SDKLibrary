.class Lcom/ssjj/fnsdk/platform/f;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/platform/d;

.field private final synthetic b:Landroid/app/AlertDialog;

.field private final synthetic c:Landroid/app/Activity;

.field private final synthetic d:Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/platform/d;Landroid/app/AlertDialog;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;)V
    .registers 5

    iput-object p1, p0, Lcom/ssjj/fnsdk/platform/f;->a:Lcom/ssjj/fnsdk/platform/d;

    iput-object p2, p0, Lcom/ssjj/fnsdk/platform/f;->b:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/ssjj/fnsdk/platform/f;->c:Landroid/app/Activity;

    iput-object p4, p0, Lcom/ssjj/fnsdk/platform/f;->d:Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/platform/f;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/ssjj/fnsdk/platform/f;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/platform/f;->c:Landroid/app/Activity;

    const-string v1, "\u521d\u59cb\u5316\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/platform/f;->d:Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;

    if-eqz v0, :cond_20

    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;->onSucceed()V

    :cond_20
    return-void
.end method
