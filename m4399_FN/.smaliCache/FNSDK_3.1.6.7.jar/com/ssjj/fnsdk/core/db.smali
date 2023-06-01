.class Lcom/ssjj/fnsdk/core/db;
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

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/db;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    iput-boolean p2, p0, Lcom/ssjj/fnsdk/core/db;->b:Z

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/db;->c:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-boolean p1, p0, Lcom/ssjj/fnsdk/core/db;->b:Z

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/db;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->m(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 p2, 0x13

    iput p2, p1, Landroid/os/Message;->what:I

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/db;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->m(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Landroid/os/Handler;

    move-result-object p2

    const-wide/16 v0, 0xa

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2d

    :cond_26
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/db;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/db;->c:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->c(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V

    :goto_2d
    return-void
.end method
