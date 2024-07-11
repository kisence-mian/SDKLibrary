.class public Lcom/kwad/sdk/collector/b/a;
.super Lcom/kwad/sdk/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/collector/b/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/kwad/sdk/collector/b/a$a;

.field private b:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/kwad/sdk/b/b;-><init>()V

    new-instance v0, Lcom/kwad/sdk/collector/b/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kwad/sdk/collector/b/a$a;-><init>(Lcom/kwad/sdk/collector/b/a$1;)V

    iput-object v0, p0, Lcom/kwad/sdk/collector/b/a;->a:Lcom/kwad/sdk/collector/b/a$a;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/kwad/sdk/collector/b/a;->a:Lcom/kwad/sdk/collector/b/a$a;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/kwad/sdk/collector/b/a;->b:Landroid/os/Messenger;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kwad/sdk/api/proxy/app/ServiceProxyRemote;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .registers 2

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :goto_8
    return-void
.end method


# virtual methods
.method public onBind(Landroid/app/Service;Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object p1, p0, Lcom/kwad/sdk/collector/b/a;->b:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/app/Service;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/kwad/sdk/b/b;->onCreate(Landroid/app/Service;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate processName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/kwad/sdk/utils/v;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteService"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/collector/b/a;->a:Lcom/kwad/sdk/collector/b/a$a;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/collector/b/a$a;->a(Landroid/app/Service;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Service;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/kwad/sdk/b/b;->onDestroy(Landroid/app/Service;)V

    iget-object p1, p0, Lcom/kwad/sdk/collector/b/a;->a:Lcom/kwad/sdk/collector/b/a$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/collector/b/a$a;->a(Landroid/app/Service;)V

    return-void
.end method
