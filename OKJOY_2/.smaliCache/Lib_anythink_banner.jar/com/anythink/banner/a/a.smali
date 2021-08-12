.class public Lcom/anythink/banner/a/a;
.super Lcom/anythink/core/common/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/core/common/d<",
        "Lcom/anythink/banner/a/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
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

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/anythink/core/common/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/banner/a/a;
    .registers 4

    .line 37
    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/o;->a(Ljava/lang/String;)Lcom/anythink/core/common/d;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_e

    instance-of v1, v0, Lcom/anythink/banner/a/a;

    if-nez v1, :cond_1a

    .line 39
    :cond_e
    new-instance v0, Lcom/anythink/banner/a/a;

    invoke-direct {v0, p0, p1}, Lcom/anythink/banner/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/anythink/core/common/o;->a(Ljava/lang/String;Lcom/anythink/core/common/d;)V

    .line 42
    :cond_1a
    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d;->a(Landroid/content/Context;)V

    .line 43
    check-cast v0, Lcom/anythink/banner/a/a;

    return-object v0
.end method

.method private static a(Lcom/anythink/banner/a/c;)Lcom/anythink/core/common/f;
    .registers 3

    .line 66
    new-instance v0, Lcom/anythink/banner/a/e;

    iget-object v1, p0, Lcom/anythink/banner/a/c;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/banner/a/e;-><init>(Landroid/content/Context;)V

    .line 67
    iget-object v1, p0, Lcom/anythink/banner/a/c;->a:Lcom/anythink/banner/a/d;

    .line 1031
    iput-object v1, v0, Lcom/anythink/banner/a/e;->a:Lcom/anythink/banner/a/d;

    .line 68
    iget-boolean v1, p0, Lcom/anythink/banner/a/c;->d:Z

    invoke-virtual {v0, v1}, Lcom/anythink/banner/a/e;->a(Z)V

    .line 69
    iget-object p0, p0, Lcom/anythink/banner/a/c;->b:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {v0, p0}, Lcom/anythink/banner/a/e;->a(Lcom/anythink/banner/api/ATBannerView;)V

    .line 70
    return-object v0
.end method

.method private static a(Lcom/anythink/banner/a/c;Lcom/anythink/core/api/AdError;)V
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/anythink/banner/a/c;->a:Lcom/anythink/banner/a/d;

    if-eqz v0, :cond_b

    .line 83
    iget-object v0, p0, Lcom/anythink/banner/a/c;->a:Lcom/anythink/banner/a/d;

    iget-boolean p0, p0, Lcom/anythink/banner/a/c;->d:Z

    invoke-interface {v0, p0, p1}, Lcom/anythink/banner/a/d;->onBannerFailed(ZLcom/anythink/core/api/AdError;)V

    .line 86
    :cond_b
    return-void
.end method

.method private static b(Lcom/anythink/banner/a/c;)V
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/anythink/banner/a/c;->a:Lcom/anythink/banner/a/d;

    if-eqz v0, :cond_b

    .line 76
    iget-object v0, p0, Lcom/anythink/banner/a/c;->a:Lcom/anythink/banner/a/d;

    iget-boolean p0, p0, Lcom/anythink/banner/a/c;->d:Z

    invoke-interface {v0, p0}, Lcom/anythink/banner/a/d;->onBannerLoaded(Z)V

    .line 78
    :cond_b
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/anythink/banner/api/ATBannerView;ZLcom/anythink/banner/a/d;)V
    .registers 6

    .line 53
    new-instance v0, Lcom/anythink/banner/a/c;

    invoke-direct {v0}, Lcom/anythink/banner/a/c;-><init>()V

    .line 54
    iput-object p2, v0, Lcom/anythink/banner/a/c;->b:Lcom/anythink/banner/api/ATBannerView;

    .line 55
    iput-object p4, v0, Lcom/anythink/banner/a/c;->a:Lcom/anythink/banner/a/d;

    .line 56
    iput-object p1, v0, Lcom/anythink/banner/a/c;->c:Landroid/content/Context;

    .line 57
    iput-boolean p3, v0, Lcom/anythink/banner/a/c;->d:Z

    .line 59
    iget-object p1, p0, Lcom/anythink/banner/a/a;->b:Landroid/content/Context;

    iget-object p2, p0, Lcom/anythink/banner/a/a;->d:Ljava/lang/String;

    const-string p3, "2"

    invoke-super {p0, p1, p3, p2, v0}, Lcom/anythink/core/common/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/g;)V

    .line 61
    return-void
.end method

.method public final synthetic a(Lcom/anythink/core/common/g;)V
    .registers 3

    .line 24
    check-cast p1, Lcom/anythink/banner/a/c;

    .line 2075
    iget-object v0, p1, Lcom/anythink/banner/a/c;->a:Lcom/anythink/banner/a/d;

    if-eqz v0, :cond_d

    .line 2076
    iget-object v0, p1, Lcom/anythink/banner/a/c;->a:Lcom/anythink/banner/a/d;

    iget-boolean p1, p1, Lcom/anythink/banner/a/c;->d:Z

    invoke-interface {v0, p1}, Lcom/anythink/banner/a/d;->onBannerLoaded(Z)V

    .line 24
    :cond_d
    return-void
.end method

.method public final synthetic a(Lcom/anythink/core/common/g;Lcom/anythink/core/api/AdError;)V
    .registers 4

    .line 24
    check-cast p1, Lcom/anythink/banner/a/c;

    .line 1082
    iget-object v0, p1, Lcom/anythink/banner/a/c;->a:Lcom/anythink/banner/a/d;

    if-eqz v0, :cond_d

    .line 1083
    iget-object v0, p1, Lcom/anythink/banner/a/c;->a:Lcom/anythink/banner/a/d;

    iget-boolean p1, p1, Lcom/anythink/banner/a/c;->d:Z

    invoke-interface {v0, p1, p2}, Lcom/anythink/banner/a/d;->onBannerFailed(ZLcom/anythink/core/api/AdError;)V

    .line 24
    :cond_d
    return-void
.end method

.method public final synthetic b(Lcom/anythink/core/common/g;)Lcom/anythink/core/common/f;
    .registers 4

    .line 24
    check-cast p1, Lcom/anythink/banner/a/c;

    .line 3066
    new-instance v0, Lcom/anythink/banner/a/e;

    iget-object v1, p1, Lcom/anythink/banner/a/c;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/banner/a/e;-><init>(Landroid/content/Context;)V

    .line 3067
    iget-object v1, p1, Lcom/anythink/banner/a/c;->a:Lcom/anythink/banner/a/d;

    .line 4031
    iput-object v1, v0, Lcom/anythink/banner/a/e;->a:Lcom/anythink/banner/a/d;

    .line 3068
    iget-boolean v1, p1, Lcom/anythink/banner/a/c;->d:Z

    invoke-virtual {v0, v1}, Lcom/anythink/banner/a/e;->a(Z)V

    .line 3069
    iget-object p1, p1, Lcom/anythink/banner/a/c;->b:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {v0, p1}, Lcom/anythink/banner/a/e;->a(Lcom/anythink/banner/api/ATBannerView;)V

    .line 3070
    nop

    .line 24
    return-object v0
.end method
