.class public final Lcom/anythink/banner/a/d;
.super Lcom/anythink/core/b/f;


# instance fields
.field a:Lcom/anythink/banner/a/c;

.field private y:Lcom/anythink/banner/api/ATBannerView;

.field private z:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/anythink/core/b/f;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Lcom/anythink/banner/a/d$1;

    invoke-direct {v0, p0}, Lcom/anythink/banner/a/d$1;-><init>(Lcom/anythink/banner/a/d;)V

    iput-object v0, p0, Lcom/anythink/banner/a/d;->z:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    .line 88
    return-void
.end method

.method private a(Lcom/anythink/banner/a/c;)V
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/anythink/banner/a/d;->a:Lcom/anythink/banner/a/c;

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/anythink/banner/a/d;)Z
    .registers 2

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/anythink/banner/a/d;->p:Z

    return v0
.end method

.method static synthetic b(Lcom/anythink/banner/a/d;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/anythink/banner/a/d;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/anythink/banner/a/d;)Z
    .registers 2

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/anythink/banner/a/d;->p:Z

    return v0
.end method

.method static synthetic d(Lcom/anythink/banner/a/d;)Z
    .registers 2

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/anythink/banner/a/d;->p:Z

    return v0
.end method

.method static synthetic e(Lcom/anythink/banner/a/d;)Z
    .registers 2

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/anythink/banner/a/d;->p:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 105
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/banner/a/d$2;

    invoke-direct {v1, p0}, Lcom/anythink/banner/a/d$2;-><init>(Lcom/anythink/banner/a/d;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method protected final a(Lcom/anythink/banner/api/ATBannerView;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/banner/api/ATBannerView;",
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
    .line 99
    iput-object p1, p0, Lcom/anythink/banner/a/d;->y:Lcom/anythink/banner/api/ATBannerView;

    .line 100
    invoke-super {p0, p2, p3, p4, p5}, Lcom/anythink/core/b/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;)V

    .line 101
    return-void
.end method

.method public final a(Lcom/anythink/core/api/AdError;)V
    .registers 4

    .prologue
    .line 117
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/banner/a/d$3;

    invoke-direct {v1, p0, p1}, Lcom/anythink/banner/a/d$3;-><init>(Lcom/anythink/banner/a/d;Lcom/anythink/core/api/AdError;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method public final a(Lcom/anythink/core/b/a/b;Lcom/anythink/core/c/c$b;Ljava/util/Map;)V
    .registers 7
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
    .line 129
    instance-of v0, p1, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    if-eqz v0, :cond_15

    .line 130
    iget-object v1, p0, Lcom/anythink/banner/a/d;->y:Lcom/anythink/banner/api/ATBannerView;

    iget-object v0, p0, Lcom/anythink/banner/a/d;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    check-cast p1, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    iget-object v2, p0, Lcom/anythink/banner/a/d;->z:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    invoke-static {v1, v0, p1, p3, v2}, Lcom/anythink/banner/a/a/a;->a(Lcom/anythink/banner/api/ATBannerView;Landroid/content/Context;Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Ljava/util/Map;Lcom/anythink/banner/unitgroup/api/CustomBannerListener;)V

    .line 133
    :cond_15
    return-void
.end method
