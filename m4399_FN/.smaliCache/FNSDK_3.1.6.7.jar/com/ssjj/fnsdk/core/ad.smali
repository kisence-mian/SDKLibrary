.class Lcom/ssjj/fnsdk/core/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/s;

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/s;Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V
    .registers 5

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/ad;->a:Lcom/ssjj/fnsdk/core/s;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/ad;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/ad;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/ad;->d:Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/ad;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->getDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u5145\u503c\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/ad;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/ssjj/fnsdk/core/ae;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/ad;->d:Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/ad;->c:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/ssjj/fnsdk/core/ae;-><init>(Lcom/ssjj/fnsdk/core/ad;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;Ljava/lang/String;)V

    const-string v2, "\u786e\u5b9a"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
