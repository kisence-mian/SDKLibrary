.class public final Lcom/anythink/splashad/a/b;
.super Lcom/anythink/core/b/f;


# instance fields
.field private A:Landroid/view/View;

.field private B:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

.field private C:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

.field a:Z

.field y:Lcom/anythink/splashad/api/ATSplashAdListener;

.field private z:Landroid/view/ViewGroup;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/anythink/core/b/f;-><init>(Landroid/content/Context;)V

    .line 107
    new-instance v0, Lcom/anythink/splashad/a/b$1;

    invoke-direct {v0, p0}, Lcom/anythink/splashad/a/b$1;-><init>(Lcom/anythink/splashad/a/b;)V

    iput-object v0, p0, Lcom/anythink/splashad/a/b;->C:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    .line 196
    return-void
.end method

.method static synthetic a(Lcom/anythink/splashad/a/b;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/anythink/splashad/a/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/anythink/splashad/a/b;Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;
    .registers 2

    .prologue
    .line 35
    iput-object p1, p0, Lcom/anythink/splashad/a/b;->B:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    return-object p1
.end method

.method private a(Lcom/anythink/splashad/api/ATSplashAdListener;)V
    .registers 2

    .prologue
    .line 246
    iput-object p1, p0, Lcom/anythink/splashad/a/b;->y:Lcom/anythink/splashad/api/ATSplashAdListener;

    .line 247
    return-void
.end method

.method static synthetic b(Lcom/anythink/splashad/a/b;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/anythink/splashad/a/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/anythink/splashad/a/b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/anythink/splashad/a/b;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/anythink/splashad/a/b;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/anythink/splashad/a/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/anythink/splashad/a/b;)Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/anythink/splashad/a/b;->B:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    return-object v0
.end method

.method static synthetic f(Lcom/anythink/splashad/a/b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/anythink/splashad/a/b;->u:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 64
    iget-boolean v0, p0, Lcom/anythink/splashad/a/b;->a:Z

    if-nez v0, :cond_3d

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/splashad/a/b;->a:Z

    .line 66
    iget-object v0, p0, Lcom/anythink/splashad/a/b;->B:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/anythink/splashad/a/b;->B:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    invoke-virtual {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 67
    iget-object v0, p0, Lcom/anythink/splashad/a/b;->B:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    sget-object v1, Lcom/anythink/core/b/a/d$e;->e:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/b/a/d$e;->f:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_1f
    iput-object v4, p0, Lcom/anythink/splashad/a/b;->z:Landroid/view/ViewGroup;

    .line 70
    iput-object v4, p0, Lcom/anythink/splashad/a/b;->A:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/anythink/splashad/a/b;->B:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    if-eqz v0, :cond_2c

    .line 73
    iget-object v0, p0, Lcom/anythink/splashad/a/b;->B:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    invoke-virtual {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->clean()V

    .line 76
    :cond_2c
    iget-object v0, p0, Lcom/anythink/splashad/a/b;->y:Lcom/anythink/splashad/api/ATSplashAdListener;

    if-eqz v0, :cond_3b

    .line 77
    iget-object v0, p0, Lcom/anythink/splashad/a/b;->y:Lcom/anythink/splashad/api/ATSplashAdListener;

    iget-object v1, p0, Lcom/anythink/splashad/a/b;->B:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    invoke-static {v1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/b/a/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/splashad/api/ATSplashAdListener;->onAdDismiss(Lcom/anythink/core/api/ATAdInfo;)V

    .line 81
    :cond_3b
    iput-object v4, p0, Lcom/anythink/splashad/a/b;->y:Lcom/anythink/splashad/api/ATSplashAdListener;

    .line 83
    :cond_3d
    return-void
.end method

.method static synthetic g(Lcom/anythink/splashad/a/b;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/anythink/splashad/a/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method private g()V
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/anythink/splashad/a/b;->B:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    if-eqz v0, :cond_9

    .line 260
    iget-object v0, p0, Lcom/anythink/splashad/a/b;->B:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    invoke-virtual {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->clean()V

    .line 262
    :cond_9
    return-void
.end method

.method static synthetic h(Lcom/anythink/splashad/a/b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/anythink/splashad/a/b;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/anythink/splashad/a/b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/anythink/splashad/a/b;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/anythink/splashad/a/b;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/anythink/splashad/a/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic k(Lcom/anythink/splashad/a/b;)V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 35
    .line 1064
    iget-boolean v0, p0, Lcom/anythink/splashad/a/b;->a:Z

    if-nez v0, :cond_3d

    .line 1065
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/splashad/a/b;->a:Z

    .line 1066
    iget-object v0, p0, Lcom/anythink/splashad/a/b;->B:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/anythink/splashad/a/b;->B:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    invoke-virtual {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1067
    iget-object v0, p0, Lcom/anythink/splashad/a/b;->B:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    sget-object v1, Lcom/anythink/core/b/a/d$e;->e:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/b/a/d$e;->f:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    :cond_1f
    iput-object v4, p0, Lcom/anythink/splashad/a/b;->z:Landroid/view/ViewGroup;

    .line 1070
    iput-object v4, p0, Lcom/anythink/splashad/a/b;->A:Landroid/view/View;

    .line 1072
    iget-object v0, p0, Lcom/anythink/splashad/a/b;->B:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    if-eqz v0, :cond_2c

    .line 1073
    iget-object v0, p0, Lcom/anythink/splashad/a/b;->B:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    invoke-virtual {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->clean()V

    .line 1076
    :cond_2c
    iget-object v0, p0, Lcom/anythink/splashad/a/b;->y:Lcom/anythink/splashad/api/ATSplashAdListener;

    if-eqz v0, :cond_3b

    .line 1077
    iget-object v0, p0, Lcom/anythink/splashad/a/b;->y:Lcom/anythink/splashad/api/ATSplashAdListener;

    iget-object v1, p0, Lcom/anythink/splashad/a/b;->B:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    invoke-static {v1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/b/a/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/splashad/api/ATSplashAdListener;->onAdDismiss(Lcom/anythink/core/api/ATAdInfo;)V

    .line 1081
    :cond_3b
    iput-object v4, p0, Lcom/anythink/splashad/a/b;->y:Lcom/anythink/splashad/api/ATSplashAdListener;

    .line 35
    :cond_3d
    return-void
.end method

.method static synthetic l(Lcom/anythink/splashad/a/b;)Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/anythink/splashad/a/b;->z:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic m(Lcom/anythink/splashad/a/b;)Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/splashad/a/b;->z:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic n(Lcom/anythink/splashad/a/b;)Landroid/view/View;
    .registers 2

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/splashad/a/b;->A:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 200
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/splashad/a/b$2;

    invoke-direct {v1, p0}, Lcom/anythink/splashad/a/b$2;-><init>(Lcom/anythink/splashad/a/b;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 209
    return-void
.end method

.method protected final a(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
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
    .line 252
    iput-object p1, p0, Lcom/anythink/splashad/a/b;->z:Landroid/view/ViewGroup;

    .line 253
    iput-object p2, p0, Lcom/anythink/splashad/a/b;->A:Landroid/view/View;

    .line 254
    invoke-super {p0, p3, p4, p5, p6}, Lcom/anythink/core/b/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;)V

    .line 255
    return-void
.end method

.method public final a(Lcom/anythink/core/api/AdError;)V
    .registers 4

    .prologue
    .line 213
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/splashad/a/b$3;

    invoke-direct {v1, p0, p1}, Lcom/anythink/splashad/a/b$3;-><init>(Lcom/anythink/splashad/a/b;Lcom/anythink/core/api/AdError;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 233
    return-void
.end method

.method public final a(Lcom/anythink/core/b/a/b;Lcom/anythink/core/c/c$b;Ljava/util/Map;)V
    .registers 10
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
    .line 237
    instance-of v0, p1, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/anythink/splashad/a/b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_23

    .line 238
    iget-object v0, p0, Lcom/anythink/splashad/a/b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/anythink/splashad/a/b;->z:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/anythink/splashad/a/b;->A:Landroid/view/View;

    move-object v3, p1

    check-cast v3, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    iget-object v5, p0, Lcom/anythink/splashad/a/b;->C:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/anythink/splashad/a/a/a;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Ljava/util/Map;Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;)V

    .line 240
    :cond_23
    return-void
.end method
