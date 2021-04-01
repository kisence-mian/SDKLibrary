.class Lcom/didi/virtualapk/internal/PluginContext;
.super Landroid/content/ContextWrapper;
.source "PluginContext.java"


# instance fields
.field private final mPlugin:Lcom/didi/virtualapk/internal/LoadedPlugin;


# direct methods
.method public constructor <init>(Lcom/didi/virtualapk/internal/LoadedPlugin;)V
    .registers 3
    .param p1, "plugin"    # Lcom/didi/virtualapk/internal/LoadedPlugin;

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getPluginManager()Lcom/didi/virtualapk/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/virtualapk/PluginManager;->getHostContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p1, p0, Lcom/didi/virtualapk/internal/PluginContext;->mPlugin:Lcom/didi/virtualapk/internal/LoadedPlugin;

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/didi/virtualapk/internal/LoadedPlugin;Landroid/content/Context;)V
    .registers 3
    .param p1, "plugin"    # Lcom/didi/virtualapk/internal/LoadedPlugin;
    .param p2, "base"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p1, p0, Lcom/didi/virtualapk/internal/PluginContext;->mPlugin:Lcom/didi/virtualapk/internal/LoadedPlugin;

    .line 43
    return-void
.end method

.method private getHostContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/PluginContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/didi/virtualapk/internal/PluginContext;->mPlugin:Lcom/didi/virtualapk/internal/LoadedPlugin;

    invoke-virtual {v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/didi/virtualapk/internal/PluginContext;->mPlugin:Lcom/didi/virtualapk/internal/LoadedPlugin;

    invoke-virtual {v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/didi/virtualapk/internal/PluginContext;->mPlugin:Lcom/didi/virtualapk/internal/LoadedPlugin;

    invoke-virtual {v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .registers 3

    .prologue
    .line 61
    new-instance v0, Lcom/didi/virtualapk/internal/PluginContentResolver;

    invoke-direct {p0}, Lcom/didi/virtualapk/internal/PluginContext;->getHostContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/virtualapk/internal/PluginContentResolver;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/didi/virtualapk/internal/PluginContext;->mPlugin:Lcom/didi/virtualapk/internal/LoadedPlugin;

    invoke-virtual {v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/didi/virtualapk/internal/PluginContext;->mPlugin:Lcom/didi/virtualapk/internal/LoadedPlugin;

    invoke-virtual {v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 92
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 93
    invoke-direct {p0}, Lcom/didi/virtualapk/internal/PluginContext;->getHostContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    :goto_10
    return-object v0

    .line 94
    :cond_11
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 95
    invoke-direct {p0}, Lcom/didi/virtualapk/internal/PluginContext;->getHostContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_10

    .line 98
    :cond_22
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_10
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/didi/virtualapk/internal/PluginContext;->mPlugin:Lcom/didi/virtualapk/internal/LoadedPlugin;

    invoke-virtual {v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 118
    iget-object v1, p0, Lcom/didi/virtualapk/internal/PluginContext;->mPlugin:Lcom/didi/virtualapk/internal/LoadedPlugin;

    invoke-virtual {v1}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getPluginManager()Lcom/didi/virtualapk/PluginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v0

    .line 119
    .local v0, "componentsHandler":Lcom/didi/virtualapk/internal/ComponentsHandler;
    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/internal/ComponentsHandler;->transformIntentToExplicitAsNeeded(Landroid/content/Intent;)Landroid/content/Intent;

    .line 120
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 121
    return-void
.end method
