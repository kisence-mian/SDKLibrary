.class public Lcom/didi/virtualapk/internal/PluginContentResolver;
.super Landroid/content/ContentResolverWrapper;
.source "PluginContentResolver.java"


# instance fields
.field private mPluginManager:Lcom/didi/virtualapk/PluginManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/content/ContentResolverWrapper;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-static {p1}, Lcom/didi/virtualapk/PluginManager;->getInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/virtualapk/internal/PluginContentResolver;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    .line 41
    return-void
.end method

.method public static getAuthority(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 107
    invoke-static {p0}, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBundleForCall(Landroid/net/Uri;)Landroid/os/Bundle;
    .registers 4
    .param p0, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 118
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "wrapper_uri"

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-object v0
.end method

.method public static getUri(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 112
    invoke-static {p0}, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->getUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static wrapperUri(Lcom/didi/virtualapk/internal/LoadedPlugin;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 8
    .param p0, "loadedPlugin"    # Lcom/didi/virtualapk/internal/LoadedPlugin;
    .param p1, "pluginUri"    # Landroid/net/Uri;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "pluginUriString":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getHostContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->getUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/?plugin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getLocation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 102
    .local v3, "wrapperUri":Landroid/net/Uri;
    return-object v3
.end method


# virtual methods
.method protected acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/didi/virtualapk/internal/PluginContentResolver;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/didi/virtualapk/PluginManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 54
    iget-object v0, p0, Lcom/didi/virtualapk/internal/PluginContentResolver;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0}, Lcom/didi/virtualapk/PluginManager;->getIContentProvider()Landroid/content/IContentProvider;

    move-result-object v0

    .line 56
    :goto_f
    return-object v0

    :cond_10
    invoke-super {p0, p1, p2}, Landroid/content/ContentResolverWrapper;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    goto :goto_f
.end method

.method protected acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/didi/virtualapk/internal/PluginContentResolver;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/didi/virtualapk/PluginManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 46
    iget-object v0, p0, Lcom/didi/virtualapk/internal/PluginContentResolver;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0}, Lcom/didi/virtualapk/PluginManager;->getIContentProvider()Landroid/content/IContentProvider;

    move-result-object v0

    .line 48
    :goto_f
    return-object v0

    :cond_10
    invoke-super {p0, p1, p2}, Landroid/content/ContentResolverWrapper;->acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    goto :goto_f
.end method

.method protected acquireUnstableProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/didi/virtualapk/internal/PluginContentResolver;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/didi/virtualapk/PluginManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 63
    iget-object v0, p0, Lcom/didi/virtualapk/internal/PluginContentResolver;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0}, Lcom/didi/virtualapk/PluginManager;->getIContentProvider()Landroid/content/IContentProvider;

    move-result-object v0

    .line 65
    :goto_f
    return-object v0

    :cond_10
    invoke-super {p0, p1, p2}, Landroid/content/ContentResolverWrapper;->acquireUnstableProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    goto :goto_f
.end method

.method public appNotRespondingViaProvider(Landroid/content/IContentProvider;)V
    .registers 2
    .param p1, "icp"    # Landroid/content/IContentProvider;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .prologue
    .line 87
    return-void
.end method

.method public releaseProvider(Landroid/content/IContentProvider;)Z
    .registers 3
    .param p1, "provider"    # Landroid/content/IContentProvider;

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public releaseUnstableProvider(Landroid/content/IContentProvider;)Z
    .registers 3
    .param p1, "icp"    # Landroid/content/IContentProvider;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method protected resolveUserIdFromAuthority(Ljava/lang/String;)I
    .registers 3
    .param p1, "auth"    # Ljava/lang/String;

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public unstableProviderDied(Landroid/content/IContentProvider;)V
    .registers 2
    .param p1, "icp"    # Landroid/content/IContentProvider;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 82
    return-void
.end method
