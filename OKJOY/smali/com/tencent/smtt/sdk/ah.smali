.class Lcom/tencent/smtt/sdk/ah;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/ag;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/ag;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/smtt/sdk/ah;->a:Lcom/tencent/smtt/sdk/ag;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x96

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ah;->a:Lcom/tencent/smtt/sdk/ag;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/ag;->a(Lcom/tencent/smtt/sdk/ag;)Z

    :cond_b
    return-void
.end method
