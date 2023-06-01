.class Lcom/ssjj/fnsdk/platform/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/platform/r;

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/platform/r;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/platform/t;->a:Lcom/ssjj/fnsdk/platform/r;

    iput-object p2, p0, Lcom/ssjj/fnsdk/platform/t;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ssjj/fnsdk/platform/t;->c:Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/t;->b:Landroid/app/Activity;

    const-string p2, "\u5145\u503c\u5931\u8d25"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/t;->c:Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;

    if-eqz p1, :cond_18

    const-string p2, ""

    invoke-interface {p1, p2}, Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;->onFailed(Ljava/lang/String;)V

    :cond_18
    return-void
.end method
