.class Lcom/ssjj/fnsdk/core/update/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/update/FNDialog;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/update/FNDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/a;->a:Lcom/ssjj/fnsdk/core/update/FNDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/a;->a:Lcom/ssjj/fnsdk/core/update/FNDialog;

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/update/FNDialog;->release()V

    return-void
.end method
