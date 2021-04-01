.class Lcom/tencent/smtt/sdk/ap;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/am;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/am;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/smtt/sdk/ap;->a:Lcom/tencent/smtt/sdk/am;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {v5}, Lcom/tencent/smtt/sdk/QbSdk;->setTBSInstallingStatus(Z)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_90

    :goto_b
    return-void

    :pswitch_c
    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--handleMessage--MSG_INSTALL_TBS_CORE"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/ap;->a:Lcom/tencent/smtt/sdk/am;

    aget-object v1, v0, v4

    check-cast v1, Landroid/content/Context;

    aget-object v2, v0, v5

    check-cast v2, Ljava/lang/String;

    aget-object v0, v0, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v1, v2, v0}, Lcom/tencent/smtt/sdk/am;->a(Lcom/tencent/smtt/sdk/am;Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_b

    :pswitch_2d
    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--handleMessage--MSG_COPY_TBS_CORE"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/ap;->a:Lcom/tencent/smtt/sdk/am;

    aget-object v1, v0, v4

    check-cast v1, Landroid/content/Context;

    aget-object v2, v0, v5

    check-cast v2, Landroid/content/Context;

    aget-object v0, v0, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v1, v2, v0}, Lcom/tencent/smtt/sdk/am;->a(Lcom/tencent/smtt/sdk/am;Landroid/content/Context;Landroid/content/Context;I)V

    goto :goto_b

    :pswitch_4e
    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--handleMessage--MSG_INSTALL_TBS_CORE_EX"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/ap;->a:Lcom/tencent/smtt/sdk/am;

    aget-object v1, v0, v4

    check-cast v1, Landroid/content/Context;

    aget-object v0, v0, v5

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v2, v1, v0}, Lcom/tencent/smtt/sdk/am;->b(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_b

    :pswitch_67
    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--handleMessage--MSG_UNZIP_TBS_CORE"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/ap;->a:Lcom/tencent/smtt/sdk/am;

    aget-object v1, v0, v4

    check-cast v1, Landroid/content/Context;

    aget-object v2, v0, v5

    check-cast v2, Ljava/io/File;

    aget-object v0, v0, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v1, v2, v0}, Lcom/tencent/smtt/sdk/am;->b(Landroid/content/Context;Ljava/io/File;I)Z

    invoke-static {v4}, Lcom/tencent/smtt/sdk/QbSdk;->setTBSInstallingStatus(Z)V

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_b

    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_c
        :pswitch_2d
        :pswitch_4e
        :pswitch_67
    .end packed-switch
.end method
