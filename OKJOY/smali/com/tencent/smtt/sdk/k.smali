.class final Lcom/tencent/smtt/sdk/k;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/smtt/sdk/k;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/k;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/k;->a:Landroid/content/Context;

    invoke-virtual {v0, v4, v1}, Lcom/tencent/smtt/sdk/am;->a(ZLandroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/k;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloader;->setAppContext(Landroid/content/Context;)V

    const-string v1, "QbSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "QbSdk preinit ver is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_30

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/k;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v4}, Lcom/tencent/smtt/sdk/am;->b(Landroid/content/Context;Z)V

    :cond_30
    const-string v0, "QbSdk"

    const-string v1, "preInit -- prepare initAndLoadSo"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/tencent/smtt/sdk/o;->a(Z)Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/k;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v5, v5}, Lcom/tencent/smtt/sdk/o;->a(Landroid/content/Context;ZZ)V

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/k;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/bt;->a(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/k;->b:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    if-nez v0, :cond_5c

    iget-object v0, p0, Lcom/tencent/smtt/sdk/k;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_5b
    return-void

    :cond_5c
    iget-object v0, p0, Lcom/tencent/smtt/sdk/k;->b:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5b
.end method
