.class public abstract Lcom/mintegral/msdk/pluginFramework/PluginService;
.super Landroid/app/Service;
.source "PluginService.java"


# instance fields
.field protected a:Lcom/mintegral/msdk/pluginFramework/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/pluginFramework/PluginService;->a:Lcom/mintegral/msdk/pluginFramework/a;

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/mintegral/msdk/pluginFramework/a;
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mintegral/msdk/pluginFramework/PluginService;->a:Lcom/mintegral/msdk/pluginFramework/a;

    if-eqz v0, :cond_6

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_5
    return-object v0

    :cond_6
    invoke-super {p0}, Landroid/app/Service;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    goto :goto_5
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mintegral/msdk/pluginFramework/PluginService;->a:Lcom/mintegral/msdk/pluginFramework/a;

    if-eqz v0, :cond_6

    .line 45
    const/4 v0, 0x0

    .line 51
    :goto_5
    return-object v0

    :cond_6
    invoke-super {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_5
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .registers 2

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Service;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 63
    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 17
    :try_start_0
    invoke-virtual {p0}, Lcom/mintegral/msdk/pluginFramework/PluginService;->a()Lcom/mintegral/msdk/pluginFramework/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/pluginFramework/PluginService;->a:Lcom/mintegral/msdk/pluginFramework/a;

    .line 18
    iget-object v0, p0, Lcom/mintegral/msdk/pluginFramework/PluginService;->a:Lcom/mintegral/msdk/pluginFramework/a;

    iget-object v0, v0, Lcom/mintegral/msdk/pluginFramework/a;->a:Lcom/mintegral/msdk/pluginFramework/a$a;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_1c

    .line 1069
    :try_start_a
    iget-object v0, v0, Lcom/mintegral/msdk/pluginFramework/a$a;->a:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-virtual {v0, p0}, Lcom/mintegral/msdk/mtgdownload/c;->a(Landroid/app/Service;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_13

    .line 19
    :goto_f
    :try_start_f
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 23
    :goto_12
    return-void

    .line 1070
    :catch_13
    move-exception v0

    .line 1071
    const-string v1, "PluginServiceContext"

    const-string v2, "invoke onDestroy error"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1b} :catch_1c

    goto :goto_f

    .line 20
    :catch_1c
    move-exception v0

    .line 21
    const-string v1, "Download"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method
