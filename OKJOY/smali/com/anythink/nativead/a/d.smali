.class public final Lcom/anythink/nativead/a/d;
.super Lcom/anythink/core/b/f;


# instance fields
.field a:Lcom/anythink/nativead/api/ATNativeNetworkListener;

.field y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/anythink/core/b/f;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Lcom/anythink/nativead/a/d$1;

    invoke-direct {v0, p0}, Lcom/anythink/nativead/a/d$1;-><init>(Lcom/anythink/nativead/a/d;)V

    iput-object v0, p0, Lcom/anythink/nativead/a/d;->z:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    .line 55
    return-void
.end method

.method private a(Lcom/anythink/nativead/api/ATNativeNetworkListener;)V
    .registers 2

    .prologue
    .line 74
    iput-object p1, p0, Lcom/anythink/nativead/a/d;->a:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    .line 75
    return-void
.end method

.method private b(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    iput-object p1, p0, Lcom/anythink/nativead/a/d;->y:Ljava/util/Map;

    .line 59
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 80
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/nativead/a/d$2;

    invoke-direct {v1, p0}, Lcom/anythink/nativead/a/d$2;-><init>(Lcom/anythink/nativead/a/d;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method

.method public final a(Lcom/anythink/core/api/AdError;)V
    .registers 4

    .prologue
    .line 92
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/nativead/a/d$3;

    invoke-direct {v1, p0, p1}, Lcom/anythink/nativead/a/d$3;-><init>(Lcom/anythink/nativead/a/d;Lcom/anythink/core/api/AdError;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method

.method public final a(Lcom/anythink/core/b/a/b;Lcom/anythink/core/c/c$b;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/b/a/b;",
            "Lcom/anythink/core/c/c$b;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    instance-of v0, p1, Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;

    if-eqz v0, :cond_1a

    .line 68
    iget-object v0, p0, Lcom/anythink/nativead/a/d;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    move-object v1, p1

    check-cast v1, Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;

    iget-object v2, p0, Lcom/anythink/nativead/a/d;->t:Lcom/anythink/core/c/c;

    iget-object v5, p0, Lcom/anythink/nativead/a/d;->y:Ljava/util/Map;

    iget-object v6, p0, Lcom/anythink/nativead/a/d;->z:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Lcom/anythink/nativead/a/a/c;->a(Landroid/content/Context;Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/c/c;Lcom/anythink/core/c/c$b;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;)V

    .line 70
    :cond_1a
    return-void
.end method

.method protected final b(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/anythink/core/c/c;",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Lcom/anythink/core/b/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;)V

    .line 63
    return-void
.end method
