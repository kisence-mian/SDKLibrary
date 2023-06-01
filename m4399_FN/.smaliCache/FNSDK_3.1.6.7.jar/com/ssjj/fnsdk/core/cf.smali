.class Lcom/ssjj/fnsdk/core/cf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/ce;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/ce;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/cf;->a:Lcom/ssjj/fnsdk/core/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    const-string p1, "\u53d6\u6d88\u7ed1\u5b9a\u8fdb\u5ea6\u6846"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method
