.class public final Lcom/anythink/splashad/a/a;
.super Lcom/anythink/core/b/d;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/anythink/core/b/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/anythink/splashad/a/a;Lcom/anythink/core/b/f;)Lcom/anythink/core/b/f;
    .registers 2

    .prologue
    .line 22
    iput-object p1, p0, Lcom/anythink/splashad/a/a;->g:Lcom/anythink/core/b/f;

    return-object p1
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Lcom/anythink/splashad/a/a;
    .registers 4

    .prologue
    .line 33
    invoke-static {p1}, Lcom/anythink/core/b/d;->a(Ljava/lang/String;)Lcom/anythink/core/b/d;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_a

    instance-of v1, v0, Lcom/anythink/splashad/a/a;

    if-nez v1, :cond_12

    .line 35
    :cond_a
    new-instance v0, Lcom/anythink/splashad/a/a;

    invoke-direct {v0, p0, p1}, Lcom/anythink/splashad/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    invoke-static {p1, v0}, Lcom/anythink/core/b/d;->a(Ljava/lang/String;Lcom/anythink/core/b/d;)V

    .line 38
    :cond_12
    invoke-virtual {v0, p0}, Lcom/anythink/core/b/d;->a(Landroid/content/Context;)V

    .line 39
    check-cast v0, Lcom/anythink/splashad/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/anythink/splashad/a/a;)Ljava/lang/ref/WeakReference;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/splashad/a/a;->d:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic b(Lcom/anythink/splashad/a/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/splashad/a/a;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Lcom/anythink/splashad/api/ATSplashAdListener;)V
    .registers 9

    .prologue
    .line 48
    iget-object v1, p0, Lcom/anythink/splashad/a/a;->c:Landroid/content/Context;

    const-string v2, "4"

    iget-object v3, p0, Lcom/anythink/splashad/a/a;->e:Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Lcom/anythink/splashad/a/a$1;

    invoke-direct {v5, p0, p2, p1}, Lcom/anythink/splashad/a/a$1;-><init>(Lcom/anythink/splashad/a/a;Lcom/anythink/splashad/api/ATSplashAdListener;Landroid/view/ViewGroup;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/splashad/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/anythink/core/b/d$a;)V

    .line 72
    return-void
.end method

.method public final a(Lcom/anythink/core/c/c$b;Lcom/anythink/core/b/c/b;)V
    .registers 3

    .prologue
    .line 77
    return-void
.end method

.method public final g()V
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/anythink/splashad/a/a;->g:Lcom/anythink/core/b/f;

    if-eqz v0, :cond_9

    .line 81
    iget-object v0, p0, Lcom/anythink/splashad/a/a;->g:Lcom/anythink/core/b/f;

    invoke-virtual {v0}, Lcom/anythink/core/b/f;->e()V

    .line 83
    :cond_9
    return-void
.end method
