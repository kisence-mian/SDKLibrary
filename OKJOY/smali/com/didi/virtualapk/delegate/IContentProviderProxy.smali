.class public Lcom/didi/virtualapk/delegate/IContentProviderProxy;
.super Ljava/lang/Object;
.source "IContentProviderProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "VA.IContentProviderProxy"


# instance fields
.field private mBase:Landroid/content/IContentProvider;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/IContentProvider;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iContentProvider"    # Landroid/content/IContentProvider;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/didi/virtualapk/delegate/IContentProviderProxy;->mBase:Landroid/content/IContentProvider;

    .line 49
    iput-object p1, p0, Lcom/didi/virtualapk/delegate/IContentProviderProxy;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private getBundleParameter([Ljava/lang/Object;)Landroid/os/Bundle;
    .registers 5
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_11

    .line 114
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_11

    .line 115
    aget-object v2, p1, v1

    instance-of v2, v2, Landroid/os/Bundle;

    if-eqz v2, :cond_12

    .line 116
    aget-object v0, p1, v1

    .end local v0    # "bundle":Landroid/os/Bundle;
    check-cast v0, Landroid/os/Bundle;

    .line 122
    .end local v1    # "i":I
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_11
    return-object v0

    .line 114
    .restart local v1    # "i":I
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public static newInstance(Landroid/content/Context;Landroid/content/IContentProvider;)Landroid/content/IContentProvider;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iContentProvider"    # Landroid/content/IContentProvider;

    .prologue
    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/IContentProvider;

    aput-object v3, v1, v2

    new-instance v2, Lcom/didi/virtualapk/delegate/IContentProviderProxy;

    invoke-direct {v2, p0, p1}, Lcom/didi/virtualapk/delegate/IContentProviderProxy;-><init>(Landroid/content/Context;Landroid/content/IContentProvider;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IContentProvider;

    return-object v0
.end method

.method private wrapperUri(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 15
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 70
    const/4 v7, 0x0

    .line 71
    .local v7, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 72
    .local v2, "index":I
    if-eqz p2, :cond_13

    .line 73
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v10, p2

    if-ge v1, v10, :cond_13

    .line 74
    aget-object v10, p2, v1

    instance-of v10, v10, Landroid/net/Uri;

    if-eqz v10, :cond_35

    .line 75
    aget-object v7, p2, v1

    .end local v7    # "uri":Landroid/net/Uri;
    check-cast v7, Landroid/net/Uri;

    .line 76
    .restart local v7    # "uri":Landroid/net/Uri;
    move v2, v1

    .line 82
    .end local v1    # "i":I
    :cond_13
    const/4 v0, 0x0

    .line 83
    .local v0, "bundleInCallMethod":Landroid/os/Bundle;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "call"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_32

    .line 84
    invoke-direct {p0, p2}, Lcom/didi/virtualapk/delegate/IContentProviderProxy;->getBundleParameter([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_32

    .line 86
    const-string v10, "wrapper_uri"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 87
    .local v8, "uriString":Ljava/lang/String;
    if-eqz v8, :cond_32

    .line 88
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 93
    .end local v8    # "uriString":Ljava/lang/String;
    :cond_32
    if-nez v7, :cond_38

    .line 109
    :cond_34
    :goto_34
    return-void

    .line 73
    .end local v0    # "bundleInCallMethod":Landroid/os/Bundle;
    .restart local v1    # "i":I
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 97
    .end local v1    # "i":I
    .restart local v0    # "bundleInCallMethod":Landroid/os/Bundle;
    :cond_38
    iget-object v10, p0, Lcom/didi/virtualapk/delegate/IContentProviderProxy;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/didi/virtualapk/PluginManager;->getInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;

    move-result-object v6

    .line 98
    .local v6, "pluginManager":Lcom/didi/virtualapk/PluginManager;
    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Lcom/didi/virtualapk/PluginManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    .line 99
    .local v3, "info":Landroid/content/pm/ProviderInfo;
    if-eqz v3, :cond_34

    .line 100
    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 101
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v6, v4}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v5

    .line 102
    .local v5, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    invoke-static {v5, v7}, Lcom/didi/virtualapk/internal/PluginContentResolver;->wrapperUri(Lcom/didi/virtualapk/internal/LoadedPlugin;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v9

    .line 103
    .local v9, "wrapperUri":Landroid/net/Uri;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "call"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_69

    .line 104
    const-string v10, "wrapper_uri"

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    .line 106
    :cond_69
    aput-object v9, p2, v2

    goto :goto_34
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 59
    const-string v1, "VA.IContentProviderProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-direct {p0, p2, p3}, Lcom/didi/virtualapk/delegate/IContentProviderProxy;->wrapperUri(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 63
    :try_start_27
    iget-object v1, p0, Lcom/didi/virtualapk/delegate/IContentProviderProxy;->mBase:Landroid/content/IContentProvider;

    invoke-virtual {p2, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_27 .. :try_end_2c} :catch_2e

    move-result-object v1

    return-object v1

    .line 64
    :catch_2e
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method
