.class Lcom/ssjj/fnsdk/platform/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/platform/FNAdapterDemo;

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;

.field private final synthetic d:Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V
    .registers 5

    iput-object p1, p0, Lcom/ssjj/fnsdk/platform/r;->a:Lcom/ssjj/fnsdk/platform/FNAdapterDemo;

    iput-object p2, p0, Lcom/ssjj/fnsdk/platform/r;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ssjj/fnsdk/platform/r;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;

    iput-object p4, p0, Lcom/ssjj/fnsdk/platform/r;->d:Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/platform/r;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ssjj/fnsdk/platform/DemoUtil;->getDialog(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u5145\u503c\u63a5\u53e3 pay();"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ssjj/fnsdk/platform/r;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_28

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_28
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/ssjj/fnsdk/platform/s;

    iget-object v2, p0, Lcom/ssjj/fnsdk/platform/r;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/ssjj/fnsdk/platform/r;->d:Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;

    invoke-direct {v1, p0, v2, v3}, Lcom/ssjj/fnsdk/platform/s;-><init>(Lcom/ssjj/fnsdk/platform/r;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V

    const-string v2, "\u5145\u503c\u6210\u529f"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/ssjj/fnsdk/platform/t;

    iget-object v2, p0, Lcom/ssjj/fnsdk/platform/r;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/ssjj/fnsdk/platform/r;->d:Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;

    invoke-direct {v1, p0, v2, v3}, Lcom/ssjj/fnsdk/platform/t;-><init>(Lcom/ssjj/fnsdk/platform/r;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V

    const-string v2, "\u5145\u503c\u5931\u8d25"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/ssjj/fnsdk/platform/u;

    iget-object v2, p0, Lcom/ssjj/fnsdk/platform/r;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/ssjj/fnsdk/platform/r;->d:Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;

    invoke-direct {v1, p0, v2, v3}, Lcom/ssjj/fnsdk/platform/u;-><init>(Lcom/ssjj/fnsdk/platform/r;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V

    const-string v2, "\u5145\u503c\u53d6\u6d88"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
