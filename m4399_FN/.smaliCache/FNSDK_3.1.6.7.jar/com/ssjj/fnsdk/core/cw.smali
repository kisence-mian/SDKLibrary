.class Lcom/ssjj/fnsdk/core/cw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/cw;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/cw;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cw;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;Z)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cw;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    if-eqz p1, :cond_10

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onCancelForceUpdate()V

    :cond_10
    return-void
.end method
