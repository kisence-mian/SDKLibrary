.class Lcom/kwad/sdk/collector/b/a$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/utils/AppStatusHelper$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/collector/b/a$a;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Messenger;

.field final synthetic b:Landroid/app/Service;

.field final synthetic c:Lcom/kwad/sdk/collector/b/a$a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/collector/b/a$a;Landroid/os/Messenger;Landroid/app/Service;)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/collector/b/a$a$1;->c:Lcom/kwad/sdk/collector/b/a$a;

    iput-object p2, p0, Lcom/kwad/sdk/collector/b/a$a$1;->a:Landroid/os/Messenger;

    iput-object p3, p0, Lcom/kwad/sdk/collector/b/a$a$1;->b:Landroid/app/Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteService: onAppStatusResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteService"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 v2, 0x65

    iput v2, p1, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {p1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_36
    iget-object v0, p0, Lcom/kwad/sdk/collector/b/a$a$1;->a:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    move-exception p1

    :goto_3d
    iget-object p1, p0, Lcom/kwad/sdk/collector/b/a$a$1;->b:Landroid/app/Service;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    iget-object p1, p0, Lcom/kwad/sdk/collector/b/a$a$1;->c:Lcom/kwad/sdk/collector/b/a$a;

    iget-object v0, p0, Lcom/kwad/sdk/collector/b/a$a$1;->b:Landroid/app/Service;

    invoke-static {p1, v0}, Lcom/kwad/sdk/collector/b/a$a;->a(Lcom/kwad/sdk/collector/b/a$a;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_58

    const-string p1, "gotta kill myself"

    invoke-static {v1, p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    :cond_58
    return-void
.end method
