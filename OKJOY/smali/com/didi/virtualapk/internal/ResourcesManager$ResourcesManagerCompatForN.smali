.class final Lcom/didi/virtualapk/internal/ResourcesManager$ResourcesManagerCompatForN;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/virtualapk/internal/ResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourcesManagerCompatForN"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolveResourcesImplMap(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p2, "baseResDir"    # Ljava/lang/String;
    .param p3, "newAssetPath"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 285
    .local p0, "originalMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/res/ResourcesKey;Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;>;"
    .local p1, "resolvedMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/res/ResourcesKey;Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 286
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/res/ResourcesKey;Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/res/ResourcesKey;

    .line 287
    .local v9, "key":Landroid/content/res/ResourcesKey;
    iget-object v0, v9, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 288
    new-instance v0, Landroid/content/res/ResourcesKey;

    iget-object v1, v9, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v2, v9, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    .line 289
    # invokes: Lcom/didi/virtualapk/internal/ResourcesManager;->append([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v2, p3}, Lcom/didi/virtualapk/internal/ResourcesManager;->access$400([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, v9, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    iget-object v4, v9, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget v5, v9, Landroid/content/res/ResourcesKey;->mDisplayId:I

    iget-object v6, v9, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v7, v9, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-direct/range {v0 .. v7}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 294
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 288
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 296
    :cond_41
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 299
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/res/ResourcesKey;Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;>;"
    .end local v9    # "key":Landroid/content/res/ResourcesKey;
    :cond_49
    return-void
.end method
