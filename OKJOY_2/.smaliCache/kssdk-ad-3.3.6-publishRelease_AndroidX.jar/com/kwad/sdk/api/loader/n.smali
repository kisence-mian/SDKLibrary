.class Lcom/kwad/sdk/api/loader/n;
.super Landroid/content/ContextWrapper;

# interfaces
.implements Lcom/kwad/sdk/api/core/ResContext;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/content/res/Resources$Theme;

.field private c:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/kwad/sdk/api/loader/n;->c:I

    iput-object p1, p0, Lcom/kwad/sdk/api/loader/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object p1

    const-string v0, "getThemeResId"

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/api/loader/Reflect;->d(Ljava/lang/String;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kwad/sdk/api/loader/Reflect;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/kwad/sdk/api/loader/n;->c:I

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .registers 2

    invoke-super {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/api/loader/Wrapper;->wrapContextIfNeed(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getBaseContext()Landroid/content/Context;
    .registers 2

    invoke-super {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/api/loader/Wrapper;->wrapContextIfNeed(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    invoke-static {}, Lcom/kwad/sdk/api/loader/Loader;->get()Lcom/kwad/sdk/api/loader/Loader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/api/loader/Loader;->getExternalClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_b

    goto :goto_f

    :cond_b
    invoke-super {p0}, Landroid/content/ContextWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public getDelegatedContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/n;->a:Landroid/content/Context;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    invoke-static {}, Lcom/kwad/sdk/api/loader/Loader;->get()Lcom/kwad/sdk/api/loader/Loader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/api/loader/Loader;->getExternalResource()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_b

    goto :goto_f

    :cond_b
    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz v0, :cond_1a

    check-cast p1, Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/kwad/sdk/api/core/ResContext;

    if-nez v0, :cond_1a

    invoke-virtual {p1, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    :cond_1a
    return-object p1
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .registers 4

    invoke-super {p0}, Landroid/content/ContextWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-static {}, Lcom/kwad/sdk/api/loader/Loader;->get()Lcom/kwad/sdk/api/loader/Loader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/api/loader/Loader;->getExternalResource()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_22

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/n;->b:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_20

    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/api/loader/n;->b:Landroid/content/res/Resources$Theme;

    iget v1, p0, Lcom/kwad/sdk/api/loader/n;->c:I

    if-lez v1, :cond_20

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_20
    iget-object v0, p0, Lcom/kwad/sdk/api/loader/n;->b:Landroid/content/res/Resources$Theme;

    :cond_22
    return-object v0
.end method

.method public registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/n;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/n;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method
