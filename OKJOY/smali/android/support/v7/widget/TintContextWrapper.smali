.class public Landroid/support/v7/widget/TintContextWrapper;
.super Landroid/content/ContextWrapper;
.source "TintContextWrapper.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final CACHE_LOCK:Ljava/lang/Object;

.field private static sCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v7/widget/TintContextWrapper;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mResources:Landroid/content/res/Resources;

.field private final mTheme:Landroid/content/res/Resources$Theme;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v7/widget/TintContextWrapper;->CACHE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "base"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-static {}, Landroid/support/v7/widget/VectorEnabledTintResources;->shouldBeUsed()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 97
    new-instance v0, Landroid/support/v7/widget/VectorEnabledTintResources;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/VectorEnabledTintResources;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;

    .line 98
    iget-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 99
    iget-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 104
    :goto_25
    return-void

    .line 101
    :cond_26
    new-instance v0, Landroid/support/v7/widget/TintResources;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/TintResources;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    goto :goto_25
.end method

.method private static shouldWrap(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 78
    instance-of v1, p0, Landroid/support/v7/widget/TintContextWrapper;

    if-nez v1, :cond_15

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v7/widget/TintResources;

    if-nez v1, :cond_15

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v7/widget/VectorEnabledTintResources;

    if-eqz v1, :cond_16

    .line 85
    :cond_15
    :goto_15
    return v0

    :cond_16
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_22

    invoke-static {}, Landroid/support/v7/widget/VectorEnabledTintResources;->shouldBeUsed()Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_22
    const/4 v0, 0x1

    goto :goto_15
.end method

.method public static wrap(Landroid/content/Context;)Landroid/content/Context;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    invoke-static {p0}, Landroid/support/v7/widget/TintContextWrapper;->shouldWrap(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 47
    sget-object v4, Landroid/support/v7/widget/TintContextWrapper;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 48
    :try_start_9
    sget-object v3, Landroid/support/v7/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    if-nez v3, :cond_25

    .line 49
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Landroid/support/v7/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    .line 69
    :cond_14
    new-instance v2, Landroid/support/v7/widget/TintContextWrapper;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/TintContextWrapper;-><init>(Landroid/content/Context;)V

    .line 70
    .local v2, "wrapper":Landroid/support/v7/widget/TintContextWrapper;
    sget-object v3, Landroid/support/v7/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    monitor-exit v4

    .line 74
    .end local v2    # "wrapper":Landroid/support/v7/widget/TintContextWrapper;
    :goto_24
    return-object v2

    .line 52
    :cond_25
    sget-object v3, Landroid/support/v7/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_2d
    if-ltz v0, :cond_47

    .line 53
    sget-object v3, Landroid/support/v7/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 54
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/widget/TintContextWrapper;>;"
    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_44

    .line 55
    :cond_3f
    sget-object v3, Landroid/support/v7/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 52
    :cond_44
    add-int/lit8 v0, v0, -0x1

    goto :goto_2d

    .line 59
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/widget/TintContextWrapper;>;"
    :cond_47
    sget-object v3, Landroid/support/v7/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_4f
    if-ltz v0, :cond_14

    .line 60
    sget-object v3, Landroid/support/v7/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 61
    .restart local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/widget/TintContextWrapper;>;"
    if-eqz v1, :cond_6f

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/TintContextWrapper;

    move-object v2, v3

    .line 62
    .restart local v2    # "wrapper":Landroid/support/v7/widget/TintContextWrapper;
    :goto_62
    if-eqz v2, :cond_71

    invoke-virtual {v2}, Landroid/support/v7/widget/TintContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    if-ne v3, p0, :cond_71

    .line 63
    monitor-exit v4

    goto :goto_24

    .line 72
    .end local v0    # "i":I
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/widget/TintContextWrapper;>;"
    .end local v2    # "wrapper":Landroid/support/v7/widget/TintContextWrapper;
    :catchall_6c
    move-exception v3

    monitor-exit v4
    :try_end_6e
    .catchall {:try_start_9 .. :try_end_6e} :catchall_6c

    throw v3

    .line 61
    .restart local v0    # "i":I
    .restart local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/widget/TintContextWrapper;>;"
    :cond_6f
    const/4 v2, 0x0

    goto :goto_62

    .line 59
    .restart local v2    # "wrapper":Landroid/support/v7/widget/TintContextWrapper;
    :cond_71
    add-int/lit8 v0, v0, -0x1

    goto :goto_4f

    .end local v0    # "i":I
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/widget/TintContextWrapper;>;"
    .end local v2    # "wrapper":Landroid/support/v7/widget/TintContextWrapper;
    :cond_74
    move-object v2, p0

    .line 74
    goto :goto_24
.end method


# virtual methods
.method public getAssets()Landroid/content/res/AssetManager;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_9

    invoke-super {p0}, Landroid/content/ContextWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    goto :goto_8
.end method

.method public setTheme(I)V
    .registers 4
    .param p1, "resid"    # I

    .prologue
    .line 113
    iget-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_8

    .line 114
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->setTheme(I)V

    .line 118
    :goto_7
    return-void

    .line 116
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_7
.end method
