.class final Lcom/mintegral/msdk/mtgdownload/b$b;
.super Landroid/os/Handler;
.source "DownloadAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgdownload/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgdownload/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgdownload/b;)V
    .registers 2

    .prologue
    .line 114
    iput-object p1, p0, Lcom/mintegral/msdk/mtgdownload/b$b;->a:Lcom/mintegral/msdk/mtgdownload/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 7

    .prologue
    .line 121
    :try_start_0
    invoke-static {}, Lcom/mintegral/msdk/mtgdownload/b;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DownloadAgent.handleMessage("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e4

    .line 163
    :pswitch_23
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 170
    :cond_26
    :goto_26
    return-void

    .line 125
    :pswitch_27
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b$b;->a:Lcom/mintegral/msdk/mtgdownload/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/b;->a(Lcom/mintegral/msdk/mtgdownload/b;)Lcom/mintegral/msdk/out/IDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 126
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b$b;->a:Lcom/mintegral/msdk/mtgdownload/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/b;->a(Lcom/mintegral/msdk/mtgdownload/b;)Lcom/mintegral/msdk/out/IDownloadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/out/IDownloadListener;->onStart()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_39

    goto :goto_26

    .line 165
    :catch_39
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    invoke-static {}, Lcom/mintegral/msdk/mtgdownload/b;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DownloadAgent.handleMessage("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 168
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 130
    :pswitch_64
    :try_start_64
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b$b;->a:Lcom/mintegral/msdk/mtgdownload/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/b;->a(Lcom/mintegral/msdk/mtgdownload/b;)Lcom/mintegral/msdk/out/IDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 131
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b$b;->a:Lcom/mintegral/msdk/mtgdownload/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/b;->a(Lcom/mintegral/msdk/mtgdownload/b;)Lcom/mintegral/msdk/out/IDownloadListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/out/IDownloadListener;->onProgressUpdate(I)V

    goto :goto_26

    .line 135
    :pswitch_78
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b$b;->a:Lcom/mintegral/msdk/mtgdownload/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/b;->c(Lcom/mintegral/msdk/mtgdownload/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/b$b;->a:Lcom/mintegral/msdk/mtgdownload/b;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgdownload/b;->b(Lcom/mintegral/msdk/mtgdownload/b;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 136
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b$b;->a:Lcom/mintegral/msdk/mtgdownload/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/b;->a(Lcom/mintegral/msdk/mtgdownload/b;)Lcom/mintegral/msdk/out/IDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 137
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9e

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9e

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b7

    .line 140
    :cond_9e
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b$b;->a:Lcom/mintegral/msdk/mtgdownload/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/b;->a(Lcom/mintegral/msdk/mtgdownload/b;)Lcom/mintegral/msdk/out/IDownloadListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "filename"

    .line 145
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-interface {v0, v1, v2, v3}, Lcom/mintegral/msdk/out/IDownloadListener;->onEnd(IILjava/lang/String;)V

    goto/16 :goto_26

    .line 149
    :cond_b7
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b$b;->a:Lcom/mintegral/msdk/mtgdownload/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/b;->a(Lcom/mintegral/msdk/mtgdownload/b;)Lcom/mintegral/msdk/out/IDownloadListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mintegral/msdk/out/IDownloadListener;->onEnd(IILjava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/mintegral/msdk/mtgdownload/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadAgent.handleMessage(DownloadingService.DOWNLOAD_COMPLETE_FAIL): "

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 158
    :pswitch_ce
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b$b;->a:Lcom/mintegral/msdk/mtgdownload/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/b;->a(Lcom/mintegral/msdk/mtgdownload/b;)Lcom/mintegral/msdk/out/IDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 159
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b$b;->a:Lcom/mintegral/msdk/mtgdownload/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/b;->a(Lcom/mintegral/msdk/mtgdownload/b;)Lcom/mintegral/msdk/out/IDownloadListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/out/IDownloadListener;->onStatus(I)V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_e1} :catch_39

    goto/16 :goto_26

    .line 123
    nop

    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_27
        :pswitch_ce
        :pswitch_64
        :pswitch_23
        :pswitch_78
    .end packed-switch
.end method
