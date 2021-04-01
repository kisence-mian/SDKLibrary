.class public abstract Lcom/anythink/banner/a/b;
.super Lcom/anythink/core/b/a/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/anythink/core/b/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBannerView()Landroid/view/View;
.end method

.method public final notfiyShow(Landroid/content/Context;Lcom/anythink/core/b/c/a;)V
    .registers 5

    .prologue
    .line 22
    invoke-static {}, Lcom/anythink/core/b/g/a/a;->a()Lcom/anythink/core/b/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/banner/a/b$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/banner/a/b$1;-><init>(Lcom/anythink/banner/a/b;Landroid/content/Context;Lcom/anythink/core/b/c/a;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 50
    return-void
.end method
