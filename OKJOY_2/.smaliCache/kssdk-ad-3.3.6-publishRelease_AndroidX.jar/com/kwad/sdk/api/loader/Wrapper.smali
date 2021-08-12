.class public Lcom/kwad/sdk/api/loader/Wrapper;
.super Ljava/lang/Object;


# static fields
.field private static sResContextCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Context;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/kwad/sdk/api/loader/Wrapper;->sResContextCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unwrapContextIfNeed(Landroid/content/Context;)Landroid/content/Context;
    .registers 4

    instance-of v0, p0, Lcom/kwad/sdk/api/core/ResContext;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Lcom/kwad/sdk/api/core/ResContext;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    move-object v1, p0

    :goto_a
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_26

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_13

    return-object v1

    :cond_13
    instance-of v2, v1, Lcom/kwad/sdk/api/core/ResContext;

    if-eqz v2, :cond_1f

    move-object v0, v1

    check-cast v0, Lcom/kwad/sdk/api/core/ResContext;

    invoke-interface {v0}, Lcom/kwad/sdk/api/core/ResContext;->getDelegatedContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_a

    :cond_1f
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_a

    :cond_26
    if-eqz v0, :cond_2c

    invoke-interface {v0}, Lcom/kwad/sdk/api/core/ResContext;->getDelegatedContext()Landroid/content/Context;

    move-result-object p0

    :cond_2c
    return-object p0
.end method

.method public static wrapContextIfNeed(Landroid/content/Context;)Landroid/content/Context;
    .registers 3

    invoke-static {}, Lcom/kwad/sdk/api/loader/Loader;->get()Lcom/kwad/sdk/api/loader/Loader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/api/loader/Loader;->isExternalLoaded()Z

    move-result v0

    if-nez v0, :cond_b

    return-object p0

    :cond_b
    instance-of v0, p0, Lcom/kwad/sdk/api/core/ResContext;

    if-eqz v0, :cond_10

    return-object p0

    :cond_10
    instance-of v0, p0, Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/kwad/sdk/api/loader/Wrapper;->sResContextCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_2b

    new-instance v0, Lcom/kwad/sdk/api/loader/l;

    move-object v1, p0

    check-cast v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/api/loader/l;-><init>(Landroid/view/ContextThemeWrapper;)V

    sget-object v1, Lcom/kwad/sdk/api/loader/Wrapper;->sResContextCache:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    return-object v0

    :cond_2c
    instance-of v0, p0, Landroidx/appcompat/view/ContextThemeWrapper;

    if-eqz v0, :cond_48

    sget-object v0, Lcom/kwad/sdk/api/loader/Wrapper;->sResContextCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_47

    new-instance v0, Lcom/kwad/sdk/api/loader/m;

    move-object v1, p0

    check-cast v1, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/api/loader/m;-><init>(Landroidx/appcompat/view/ContextThemeWrapper;)V

    sget-object v1, Lcom/kwad/sdk/api/loader/Wrapper;->sResContextCache:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    return-object v0

    :cond_48
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_61

    sget-object v0, Lcom/kwad/sdk/api/loader/Wrapper;->sResContextCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_60

    new-instance v0, Lcom/kwad/sdk/api/loader/n;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/api/loader/n;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/kwad/sdk/api/loader/Wrapper;->sResContextCache:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_60
    return-object v0

    :cond_61
    sget-object v0, Lcom/kwad/sdk/api/loader/Wrapper;->sResContextCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_75

    new-instance v0, Lcom/kwad/sdk/api/loader/n;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/api/loader/n;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/kwad/sdk/api/loader/Wrapper;->sResContextCache:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_75
    return-object v0
.end method

.method public static wrapInflaterIfNeed(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .registers 3

    invoke-static {}, Lcom/kwad/sdk/api/loader/Loader;->get()Lcom/kwad/sdk/api/loader/Loader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/api/loader/Loader;->isExternalLoaded()Z

    move-result v0

    if-nez v0, :cond_b

    return-object p0

    :cond_b
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/kwad/sdk/api/core/ResContext;

    if-nez v1, :cond_1f

    invoke-static {v0}, Lcom/kwad/sdk/api/loader/Wrapper;->wrapContextIfNeed(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/kwad/sdk/api/core/ResContext;

    if-eqz v1, :cond_1f

    invoke-virtual {p0, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    :cond_1f
    return-object p0
.end method
