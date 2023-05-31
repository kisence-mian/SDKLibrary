.class public Lcom/mintegral/msdk/shell/MTGService;
.super Lcom/mintegral/msdk/pluginFramework/PluginService;
.source "MTGService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/mintegral/msdk/pluginFramework/PluginService;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/mintegral/msdk/pluginFramework/a;
    .registers 4

    .prologue
    .line 24
    :try_start_0
    new-instance v1, Lcom/mintegral/msdk/mtgdownload/c;

    invoke-direct {v1}, Lcom/mintegral/msdk/mtgdownload/c;-><init>()V

    .line 25
    new-instance v0, Lcom/mintegral/msdk/pluginFramework/a;

    new-instance v2, Lcom/mintegral/msdk/pluginFramework/a$a;

    invoke-direct {v2, v1}, Lcom/mintegral/msdk/pluginFramework/a$a;-><init>(Lcom/mintegral/msdk/mtgdownload/c;)V

    invoke-direct {v0, v2}, Lcom/mintegral/msdk/pluginFramework/a;-><init>(Lcom/mintegral/msdk/pluginFramework/a$a;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 30
    :goto_f
    return-object v0

    .line 27
    :catch_10
    move-exception v0

    .line 28
    const-string v1, "Download"

    const-string v2, "Find Provider Error"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mintegral/msdk/shell/MTGService;->a:Lcom/mintegral/msdk/pluginFramework/a;

    iget-object v0, v0, Lcom/mintegral/msdk/pluginFramework/a;->a:Lcom/mintegral/msdk/pluginFramework/a$a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/pluginFramework/a$a;->a()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 15
    invoke-super {p0}, Lcom/mintegral/msdk/pluginFramework/PluginService;->onCreate()V

    .line 16
    iget-object v0, p0, Lcom/mintegral/msdk/shell/MTGService;->a:Lcom/mintegral/msdk/pluginFramework/a;

    iget-object v0, v0, Lcom/mintegral/msdk/pluginFramework/a;->a:Lcom/mintegral/msdk/pluginFramework/a$a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/pluginFramework/a$a;->b()V

    .line 18
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mintegral/msdk/shell/MTGService;->a:Lcom/mintegral/msdk/pluginFramework/a;

    iget-object v0, v0, Lcom/mintegral/msdk/pluginFramework/a;->a:Lcom/mintegral/msdk/pluginFramework/a$a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/pluginFramework/a$a;->c()V

    .line 46
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mintegral/msdk/shell/MTGService;->a:Lcom/mintegral/msdk/pluginFramework/a;

    iget-object v0, v0, Lcom/mintegral/msdk/pluginFramework/a;->a:Lcom/mintegral/msdk/pluginFramework/a$a;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/pluginFramework/a$a;->a(Landroid/content/Intent;)I

    move-result v0

    return v0
.end method
