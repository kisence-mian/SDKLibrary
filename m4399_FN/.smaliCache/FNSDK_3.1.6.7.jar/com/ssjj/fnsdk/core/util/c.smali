.class Lcom/ssjj/fnsdk/core/util/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/util/c;->a:Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/util/c;->a:Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;->b()V

    return-void
.end method
