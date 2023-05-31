.class public Lcom/kwai/filedownloader/services/f;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Lcom/kwai/filedownloader/f0/c;)V
    .registers 3

    if-eqz p0, :cond_23

    invoke-virtual {p0}, Lcom/kwai/filedownloader/f0/c;->h()B

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_1d

    new-instance v0, Landroid/content/Intent;

    const-string v1, "filedownloader.intent.action.completed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "model"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {}, Lcom/kwai/filedownloader/h0/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
