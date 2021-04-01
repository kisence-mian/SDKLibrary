.class final Lcom/didi/virtualapk/internal/ResourcesManager$ResourcesManagerCompatForP;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/virtualapk/internal/ResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourcesManagerCompatForP"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolveResourcesImplMap(Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;Landroid/app/LoadedApk;)V
    .registers 17
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "loadedApk"    # Landroid/app/LoadedApk;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/content/res/ResourcesKey;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/ResourcesImpl;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Landroid/content/res/ResourcesKey;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/ResourcesImpl;",
            ">;>;",
            "Landroid/content/Context;",
            "Landroid/app/LoadedApk;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 306
    .local p0, "originalMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/res/ResourcesKey;Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;>;"
    .local p1, "resolvedMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/res/ResourcesKey;Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 307
    .local v5, "newResImplMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/res/ResourcesImpl;Landroid/content/Context;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 313
    .local v9, "resKeyMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    # getter for: Lcom/didi/virtualapk/internal/ResourcesManager;->mDefaultConfiguration:Landroid/content/res/Configuration;
    invoke-static {}, Lcom/didi/virtualapk/internal/ResourcesManager;->access$500()Landroid/content/res/Configuration;

    move-result-object v10

    if-nez v10, :cond_18

    .line 314
    new-instance v10, Landroid/content/res/Configuration;

    invoke-direct {v10}, Landroid/content/res/Configuration;-><init>()V

    # setter for: Lcom/didi/virtualapk/internal/ResourcesManager;->mDefaultConfiguration:Landroid/content/res/Configuration;
    invoke-static {v10}, Lcom/didi/virtualapk/internal/ResourcesManager;->access$502(Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    .line 316
    :cond_18
    # getter for: Lcom/didi/virtualapk/internal/ResourcesManager;->mDefaultConfiguration:Landroid/content/res/Configuration;
    invoke-static {}, Lcom/didi/virtualapk/internal/ResourcesManager;->access$500()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 317
    .local v4, "newRes":Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v10

    invoke-virtual {v5, v10, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    invoke-static {p2}, Lcom/didi/virtualapk/PluginManager;->getInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/didi/virtualapk/PluginManager;->getInstrumentation()Lcom/didi/virtualapk/internal/VAInstrumentation;

    move-result-object v10

    invoke-virtual {v10}, Lcom/didi/virtualapk/internal/VAInstrumentation;->getActivities()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3b
    :goto_3b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_67

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    .line 321
    .local v7, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 322
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_3b

    .line 323
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/app/Activity;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 324
    invoke-virtual {v4}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v11

    invoke-virtual {v5, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    .line 329
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v7    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    :cond_67
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 330
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/res/ResourcesKey;Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/res/ResourcesImpl;

    .line 331
    .local v8, "resImpl":Landroid/content/res/ResourcesImpl;
    if-eqz v8, :cond_90

    .line 332
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_90
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {p1, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6f

    .line 338
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/res/ResourcesKey;Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;>;"
    .end local v8    # "resImpl":Landroid/content/res/ResourcesImpl;
    :cond_9c
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_a4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 339
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/res/ResourcesImpl;Landroid/content/Context;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ResourcesKey;

    .line 340
    .local v3, "newKey":Landroid/content/res/ResourcesKey;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v6

    .line 342
    .local v6, "originResImpl":Landroid/content/res/ResourcesImpl;
    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {p1, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a4

    .line 345
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/res/ResourcesImpl;Landroid/content/Context;>;"
    .end local v3    # "newKey":Landroid/content/res/ResourcesKey;
    .end local v6    # "originResImpl":Landroid/content/res/ResourcesImpl;
    :cond_d8
    return-void
.end method
