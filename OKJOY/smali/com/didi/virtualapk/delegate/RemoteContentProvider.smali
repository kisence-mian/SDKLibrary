.class public Lcom/didi/virtualapk/delegate/RemoteContentProvider;
.super Landroid/content/ContentProvider;
.source "RemoteContentProvider.java"


# static fields
.field public static final KEY_PKG:Ljava/lang/String; = "pkg"

.field public static final KEY_PLUGIN:Ljava/lang/String; = "plugin"

.field public static final KEY_URI:Ljava/lang/String; = "uri"

.field public static final KEY_WRAPPER_URI:Ljava/lang/String; = "wrapper_uri"

.field private static final TAG:Ljava/lang/String; = "VA.RemoteContentProvider"

.field private static sCachedProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ContentProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->sCachedProviders:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->sCachedProviders:Ljava/util/Map;

    return-object v0
.end method

.method public static getAuthority(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".VirtualAPK.Provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getContentProvider(Landroid/net/Uri;)Landroid/content/ContentProvider;
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/virtualapk/PluginManager;->getInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;

    move-result-object v2

    .line 67
    .local v2, "pluginManager":Lcom/didi/virtualapk/PluginManager;
    const-string v0, "uri"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 68
    .local v9, "pluginUri":Landroid/net/Uri;
    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, "auth":Ljava/lang/String;
    sget-object v0, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->sCachedProviders:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentProvider;

    .line 70
    .local v6, "cachedProvider":Landroid/content/ContentProvider;
    if-eqz v6, :cond_21

    .line 103
    .end local v6    # "cachedProvider":Landroid/content/ContentProvider;
    :goto_20
    return-object v6

    .line 74
    .restart local v6    # "cachedProvider":Landroid/content/ContentProvider;
    :cond_21
    sget-object v10, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->sCachedProviders:Ljava/util/Map;

    monitor-enter v10

    .line 75
    :try_start_24
    const-string v0, "pkg"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_62

    move-result-object v8

    .line 76
    .local v8, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-nez v8, :cond_3e

    .line 78
    :try_start_30
    new-instance v0, Ljava/io/File;

    const-string v1, "plugin"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/didi/virtualapk/PluginManager;->loadPlugin(Ljava/io/File;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3e} :catch_5b
    .catchall {:try_start_30 .. :try_end_3e} :catchall_62

    .line 84
    :cond_3e
    :goto_3e
    const/4 v0, 0x0

    :try_start_3f
    invoke-virtual {v2, v5, v0}, Lcom/didi/virtualapk/PluginManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 85
    .local v4, "providerInfo":Landroid/content/pm/ProviderInfo;
    if-eqz v4, :cond_65

    .line 86
    new-instance v0, Lcom/didi/virtualapk/delegate/RemoteContentProvider$1;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/didi/virtualapk/delegate/RemoteContentProvider$1;-><init>(Lcom/didi/virtualapk/delegate/RemoteContentProvider;Lcom/didi/virtualapk/PluginManager;Landroid/net/Uri;Landroid/content/pm/ProviderInfo;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/didi/virtualapk/utils/RunUtil;->runOnUiThread(Ljava/lang/Runnable;Z)V

    .line 99
    sget-object v0, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->sCachedProviders:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProvider;

    monitor-exit v10

    move-object v6, v0

    goto :goto_20

    .line 79
    .end local v4    # "providerInfo":Landroid/content/pm/ProviderInfo;
    :catch_5b
    move-exception v7

    .line 80
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "VA.RemoteContentProvider"

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3e

    .line 101
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    :catchall_62
    move-exception v0

    monitor-exit v10
    :try_end_64
    .catchall {:try_start_3f .. :try_end_64} :catchall_62

    throw v0

    .restart local v4    # "providerInfo":Landroid/content/pm/ProviderInfo;
    .restart local v8    # "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    :cond_65
    :try_start_65
    monitor-exit v10
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_62

    .line 103
    const/4 v6, 0x0

    goto :goto_20
.end method

.method public static getUri(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 11
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v8, 0x0

    .line 176
    :try_start_1
    const-class v5, Landroid/content/ContentProviderOperation;

    const-string v6, "mUri"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 177
    .local v4, "uriField":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 178
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_33

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentProviderOperation;

    .line 179
    .local v1, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v6

    const-string v7, "uri"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 180
    .local v2, "pluginUri":Landroid/net/Uri;
    invoke-virtual {v4, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2e} :catch_2f

    goto :goto_11

    .line 182
    .end local v1    # "operation":Landroid/content/ContentProviderOperation;
    .end local v2    # "pluginUri":Landroid/net/Uri;
    .end local v4    # "uriField":Ljava/lang/reflect/Field;
    :catch_2f
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    new-array v5, v8, [Landroid/content/ContentProviderResult;

    .line 193
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_32
    return-object v5

    .line 186
    .restart local v4    # "uriField":Ljava/lang/reflect/Field;
    :cond_33
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4e

    .line 187
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentProviderOperation;

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->getContentProvider(Landroid/net/Uri;)Landroid/content/ContentProvider;

    move-result-object v3

    .line 188
    .local v3, "provider":Landroid/content/ContentProvider;
    if-eqz v3, :cond_4e

    .line 189
    invoke-virtual {v3, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    goto :goto_32

    .line 193
    .end local v3    # "provider":Landroid/content/ContentProvider;
    :cond_4e
    new-array v5, v8, [Landroid/content/ContentProviderResult;

    goto :goto_32
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->getContentProvider(Landroid/net/Uri;)Landroid/content/ContentProvider;

    move-result-object v1

    .line 164
    .local v1, "provider":Landroid/content/ContentProvider;
    const-string v2, "uri"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 165
    .local v0, "pluginUri":Landroid/net/Uri;
    if-eqz v1, :cond_15

    .line 166
    invoke-virtual {v1, v0, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v2

    .line 169
    :goto_14
    return v2

    :cond_15
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 10
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 198
    const-string v3, "VA.RemoteContentProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with extras : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    if-eqz p3, :cond_2d

    const-string v3, "wrapper_uri"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2e

    .line 210
    :cond_2d
    :goto_2d
    return-object v2

    .line 204
    :cond_2e
    const-string v3, "wrapper_uri"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 205
    .local v1, "uri":Landroid/net/Uri;
    invoke-direct {p0, v1}, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->getContentProvider(Landroid/net/Uri;)Landroid/content/ContentProvider;

    move-result-object v0

    .line 206
    .local v0, "provider":Landroid/content/ContentProvider;
    if-eqz v0, :cond_2d

    .line 207
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_2d
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->getContentProvider(Landroid/net/Uri;)Landroid/content/ContentProvider;

    move-result-object v1

    .line 142
    .local v1, "provider":Landroid/content/ContentProvider;
    const-string v2, "uri"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 143
    .local v0, "pluginUri":Landroid/net/Uri;
    if-eqz v1, :cond_15

    .line 144
    invoke-virtual {v1, v0, p2, p3}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 147
    :goto_14
    return v2

    :cond_15
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->getContentProvider(Landroid/net/Uri;)Landroid/content/ContentProvider;

    move-result-object v1

    .line 109
    .local v1, "provider":Landroid/content/ContentProvider;
    const-string v2, "uri"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 110
    .local v0, "pluginUri":Landroid/net/Uri;
    if-eqz v1, :cond_15

    .line 111
    invoke-virtual {v1, v0}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 114
    :goto_14
    return-object v2

    :cond_15
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->getContentProvider(Landroid/net/Uri;)Landroid/content/ContentProvider;

    move-result-object v1

    .line 131
    .local v1, "provider":Landroid/content/ContentProvider;
    const-string v2, "uri"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 132
    .local v0, "pluginUri":Landroid/net/Uri;
    if-eqz v1, :cond_14

    .line 133
    invoke-virtual {v1, v0, p2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 136
    .end local p1    # "uri":Landroid/net/Uri;
    :cond_14
    return-object p1
.end method

.method public onCreate()Z
    .registers 4

    .prologue
    .line 60
    const-string v0, "VA.RemoteContentProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate, current thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 61
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->getContentProvider(Landroid/net/Uri;)Landroid/content/ContentProvider;

    move-result-object v0

    .line 120
    .local v0, "provider":Landroid/content/ContentProvider;
    const-string v2, "uri"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 121
    .local v1, "pluginUri":Landroid/net/Uri;
    if-eqz v0, :cond_19

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 122
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 125
    :goto_18
    return-object v2

    :cond_19
    const/4 v2, 0x0

    goto :goto_18
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->getContentProvider(Landroid/net/Uri;)Landroid/content/ContentProvider;

    move-result-object v1

    .line 153
    .local v1, "provider":Landroid/content/ContentProvider;
    const-string v2, "uri"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 154
    .local v0, "pluginUri":Landroid/net/Uri;
    if-eqz v1, :cond_15

    .line 155
    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 158
    :goto_14
    return v2

    :cond_15
    const/4 v2, 0x0

    goto :goto_14
.end method
