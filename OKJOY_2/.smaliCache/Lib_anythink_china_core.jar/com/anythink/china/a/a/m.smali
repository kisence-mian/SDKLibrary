.class public final Lcom/anythink/china/a/a/m;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/anythink/china/a/a/l;

.field b:Landroid/content/ServiceConnection;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/anythink/china/a/a/m$1;

    invoke-direct {v0, p0}, Lcom/anythink/china/a/a/m$1;-><init>(Lcom/anythink/china/a/a/m;)V

    iput-object v0, p0, Lcom/anythink/china/a/a/m;->b:Landroid/content/ServiceConnection;

    .line 31
    iput-object p1, p0, Lcom/anythink/china/a/a/m;->c:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/china/a/a;)V
    .registers 6

    .line 36
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 37
    const-string v1, "com.zui.deviceidservice"

    const-string v2, "com.zui.deviceidservice.DeviceidService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    iget-object v1, p0, Lcom/anythink/china/a/a/m;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/china/a/a/m;->b:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 39
    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/anythink/china/a/a/m;->a:Lcom/anythink/china/a/a/l;

    if-eqz v0, :cond_24

    .line 40
    invoke-interface {v0}, Lcom/anythink/china/a/a/l;->a()Ljava/lang/String;

    move-result-object v0

    .line 42
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/anythink/china/a/a;->a(Ljava/lang/String;Z)V

    .line 44
    return-void

    .line 46
    :cond_24
    invoke-interface {p1}, Lcom/anythink/china/a/a;->a()V
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    .line 53
    return-void

    .line 49
    :catchall_28
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-interface {p1}, Lcom/anythink/china/a/a;->a()V

    .line 55
    return-void
.end method
