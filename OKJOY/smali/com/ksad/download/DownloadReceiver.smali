.class public Lcom/ksad/download/DownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "download.intent.action.DOWNLOAD_PAUSE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/ksad/download/d;->e()Lcom/ksad/download/d;

    move-result-object v0

    const-string v1, "download.intent.action.EXTRA_TASK_ID"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ksad/download/d;->d(I)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "download.intent.action.DOWNLOAD_RESUME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {}, Lcom/ksad/download/d;->e()Lcom/ksad/download/d;

    move-result-object v0

    const-string v1, "download.intent.action.EXTRA_TASK_ID"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ksad/download/d;->e(I)V

    goto :goto_1a

    :cond_35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "download.intent.action.DOWNLOAD_CANCEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/ksad/download/d;->e()Lcom/ksad/download/d;

    move-result-object v0

    const-string v1, "download.intent.action.EXTRA_TASK_ID"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ksad/download/d;->a(I)V

    invoke-static {}, Lcom/ksad/download/e;->a()Lcom/ksad/download/e;

    move-result-object v0

    const-string v1, "download.intent.action.EXTRA_TASK_ID"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ksad/download/e;->a(I)V

    goto :goto_1a
.end method
