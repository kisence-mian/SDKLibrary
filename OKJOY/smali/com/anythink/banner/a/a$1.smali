.class final Lcom/anythink/banner/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/b/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/banner/a/a;->a(Lcom/anythink/banner/api/ATBannerView;ZLcom/anythink/banner/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/banner/a/c;

.field final synthetic b:Z

.field final synthetic c:Lcom/anythink/banner/api/ATBannerView;

.field final synthetic d:Lcom/anythink/banner/a/a;


# direct methods
.method constructor <init>(Lcom/anythink/banner/a/a;Lcom/anythink/banner/a/c;ZLcom/anythink/banner/api/ATBannerView;)V
    .registers 5

    .prologue
    .line 48
    iput-object p1, p0, Lcom/anythink/banner/a/a$1;->d:Lcom/anythink/banner/a/a;

    iput-object p2, p0, Lcom/anythink/banner/a/a$1;->a:Lcom/anythink/banner/a/c;

    iput-boolean p3, p0, Lcom/anythink/banner/a/a$1;->b:Z

    iput-object p4, p0, Lcom/anythink/banner/a/a$1;->c:Lcom/anythink/banner/api/ATBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/anythink/banner/a/a$1;->a:Lcom/anythink/banner/a/c;

    if-eqz v0, :cond_b

    .line 63
    iget-object v0, p0, Lcom/anythink/banner/a/a$1;->a:Lcom/anythink/banner/a/c;

    iget-boolean v1, p0, Lcom/anythink/banner/a/a$1;->b:Z

    invoke-interface {v0, v1}, Lcom/anythink/banner/a/c;->onBannerLoaded(Z)V

    .line 65
    :cond_b
    return-void
.end method

.method public final a(Lcom/anythink/core/api/AdError;)V
    .registers 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/anythink/banner/a/a$1;->a:Lcom/anythink/banner/a/c;

    if-eqz v0, :cond_b

    .line 70
    iget-object v0, p0, Lcom/anythink/banner/a/a$1;->a:Lcom/anythink/banner/a/c;

    iget-boolean v1, p0, Lcom/anythink/banner/a/a$1;->b:Z

    invoke-interface {v0, v1, p1}, Lcom/anythink/banner/a/c;->onBannerFailed(ZLcom/anythink/core/api/AdError;)V

    .line 72
    :cond_b
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/anythink/core/c/c;",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/anythink/banner/a/d;

    iget-object v1, p0, Lcom/anythink/banner/a/a$1;->d:Lcom/anythink/banner/a/a;

    invoke-static {v1}, Lcom/anythink/banner/a/a;->a(Lcom/anythink/banner/a/a;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/banner/a/d;-><init>(Landroid/content/Context;)V

    .line 52
    iget-object v1, p0, Lcom/anythink/banner/a/a$1;->a:Lcom/anythink/banner/a/c;

    .line 1094
    iput-object v1, v0, Lcom/anythink/banner/a/d;->a:Lcom/anythink/banner/a/c;

    .line 53
    iget-boolean v1, p0, Lcom/anythink/banner/a/a$1;->b:Z

    invoke-virtual {v0, v1}, Lcom/anythink/banner/a/d;->a(Z)V

    .line 54
    iget-object v1, p0, Lcom/anythink/banner/a/a$1;->c:Lcom/anythink/banner/api/ATBannerView;

    iget-object v2, p0, Lcom/anythink/banner/a/a$1;->d:Lcom/anythink/banner/a/a;

    invoke-static {v2}, Lcom/anythink/banner/a/a;->b(Lcom/anythink/banner/a/a;)Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/banner/a/d;->a(Lcom/anythink/banner/api/ATBannerView;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;)V

    .line 55
    iget-object v1, p0, Lcom/anythink/banner/a/a$1;->d:Lcom/anythink/banner/a/a;

    invoke-static {v1}, Lcom/anythink/banner/a/a;->c(Lcom/anythink/banner/a/a;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v1, p0, Lcom/anythink/banner/a/a$1;->d:Lcom/anythink/banner/a/a;

    invoke-static {v1, v0}, Lcom/anythink/banner/a/a;->a(Lcom/anythink/banner/a/a;Lcom/anythink/core/b/f;)Lcom/anythink/core/b/f;

    .line 58
    return-void
.end method
