.class Lcom/ssjj/fnsdk/core/share/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/ShareDialog;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/share/ShareDialog$ShareDialogListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/ShareDialog;Lcom/ssjj/fnsdk/core/share/ShareDialog$ShareDialogListener;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/h;->a:Lcom/ssjj/fnsdk/core/share/ShareDialog;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/h;->b:Lcom/ssjj/fnsdk/core/share/ShareDialog$ShareDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/h;->a:Lcom/ssjj/fnsdk/core/share/ShareDialog;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/ShareDialog;->b(Lcom/ssjj/fnsdk/core/share/ShareDialog;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/h;->b:Lcom/ssjj/fnsdk/core/share/ShareDialog$ShareDialogListener;

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/share/ShareDialog$ShareDialogListener;->onCancel()V

    return-void
.end method
