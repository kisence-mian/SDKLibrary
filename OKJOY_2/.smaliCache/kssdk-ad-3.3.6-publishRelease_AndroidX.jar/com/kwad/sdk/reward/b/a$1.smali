.class Lcom/kwad/sdk/reward/b/a$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/reward/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/b/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/b/a$1;->a:Lcom/kwad/sdk/reward/b/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1b

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_23

    return-void

    :cond_23
    iget-object p2, p0, Lcom/kwad/sdk/reward/b/a$1;->a:Lcom/kwad/sdk/reward/b/a;

    invoke-static {p2}, Lcom/kwad/sdk/reward/b/a;->a(Lcom/kwad/sdk/reward/b/a;)Landroid/os/Handler;

    move-result-object p2

    const/16 v0, 0xf2

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
