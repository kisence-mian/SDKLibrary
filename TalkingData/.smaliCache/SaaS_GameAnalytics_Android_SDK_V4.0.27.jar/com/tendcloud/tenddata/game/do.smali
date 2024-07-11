.class Lcom/tendcloud/tenddata/game/do;
.super Landroid/os/Handler;
.source "td"


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/game/dm;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/dm;Landroid/os/Looper;)V
    .registers 3

    .line 447
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/do;->this$0:Lcom/tendcloud/tenddata/game/dm;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 452
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_13

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/tendcloud/tenddata/game/a;

    if-eqz v0, :cond_13

    .line 453
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/tendcloud/tenddata/game/a;

    .line 454
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/do;->this$0:Lcom/tendcloud/tenddata/game/dm;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/dm;->a(Lcom/tendcloud/tenddata/game/dm;Lcom/tendcloud/tenddata/game/a;)V

    .line 456
    :cond_13
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/do;->this$0:Lcom/tendcloud/tenddata/game/dm;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/dm;->a(Lcom/tendcloud/tenddata/game/dm;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    .line 463
    goto :goto_1d

    .line 457
    :catchall_19
    move-exception p1

    .line 461
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 464
    :goto_1d
    return-void
.end method
