.class public Lcom/anythink/banner/a/a;
.super Lcom/anythink/core/b/d;


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Banner"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/anythink/banner/a/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/banner/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/anythink/core/b/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/banner/a/a;
    .registers 4

    .prologue
    .line 32
    invoke-static {p1}, Lcom/anythink/core/b/d;->a(Ljava/lang/String;)Lcom/anythink/core/b/d;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_a

    instance-of v1, v0, Lcom/anythink/banner/a/a;

    if-nez v1, :cond_12

    .line 34
    :cond_a
    new-instance v0, Lcom/anythink/banner/a/a;

    invoke-direct {v0, p0, p1}, Lcom/anythink/banner/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    invoke-static {p1, v0}, Lcom/anythink/core/b/d;->a(Ljava/lang/String;Lcom/anythink/core/b/d;)V

    .line 37
    :cond_12
    invoke-virtual {v0, p0}, Lcom/anythink/core/b/d;->a(Landroid/content/Context;)V

    .line 38
    check-cast v0, Lcom/anythink/banner/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/anythink/banner/a/a;Lcom/anythink/core/b/f;)Lcom/anythink/core/b/f;
    .registers 2

    .prologue
    .line 19
    iput-object p1, p0, Lcom/anythink/banner/a/a;->g:Lcom/anythink/core/b/f;

    return-object p1
.end method

.method static synthetic a(Lcom/anythink/banner/a/a;)Ljava/lang/ref/WeakReference;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/anythink/banner/a/a;->d:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic b(Lcom/anythink/banner/a/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/anythink/banner/a/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/anythink/banner/a/a;)Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/anythink/banner/a/a;->f:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/anythink/banner/api/ATBannerView;ZLcom/anythink/banner/a/c;)V
    .registers 10

    .prologue
    .line 48
    iget-object v1, p0, Lcom/anythink/banner/a/a;->c:Landroid/content/Context;

    const-string v2, "2"

    iget-object v3, p0, Lcom/anythink/banner/a/a;->e:Ljava/lang/String;

    new-instance v5, Lcom/anythink/banner/a/a$1;

    invoke-direct {v5, p0, p3, p2, p1}, Lcom/anythink/banner/a/a$1;-><init>(Lcom/anythink/banner/a/a;Lcom/anythink/banner/a/c;ZLcom/anythink/banner/api/ATBannerView;)V

    move-object v0, p0

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/banner/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/anythink/core/b/d$a;)V

    .line 77
    return-void
.end method

.method public final a(Lcom/anythink/core/c/c$b;Lcom/anythink/core/b/c/b;)V
    .registers 3

    .prologue
    .line 83
    return-void
.end method
