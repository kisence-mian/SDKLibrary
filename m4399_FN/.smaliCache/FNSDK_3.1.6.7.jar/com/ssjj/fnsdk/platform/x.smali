.class Lcom/ssjj/fnsdk/platform/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/platform/FNAdapterDemo;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/SsjjFNListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/platform/x;->a:Lcom/ssjj/fnsdk/platform/FNAdapterDemo;

    iput-object p2, p0, Lcom/ssjj/fnsdk/platform/x;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/x;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p1, :cond_12

    new-instance p2, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/4 v0, 0x1

    const-string v1, ""

    invoke-interface {p1, v0, v1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_12
    return-void
.end method
