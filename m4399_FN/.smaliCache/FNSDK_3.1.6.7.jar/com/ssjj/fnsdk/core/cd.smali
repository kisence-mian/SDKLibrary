.class Lcom/ssjj/fnsdk/core/cd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/cd;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cd;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Landroid/app/AlertDialog;)V

    return-void
.end method
