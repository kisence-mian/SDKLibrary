.class Lcom/ssjj/fnsdk/core/dd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

.field private final synthetic b:Z

.field private final synthetic c:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;ZLcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/dd;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    iput-boolean p2, p0, Lcom/ssjj/fnsdk/core/dd;->b:Z

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/dd;->c:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-boolean p1, p0, Lcom/ssjj/fnsdk/core/dd;->b:Z

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/dd;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->m(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_19

    :cond_12
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/dd;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/dd;->c:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->d(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V

    :goto_19
    return-void
.end method
