.class final Lcom/anythink/splashad/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/b/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/splashad/a/a;->a(Landroid/view/ViewGroup;Lcom/anythink/splashad/api/ATSplashAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/splashad/api/ATSplashAdListener;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/anythink/splashad/a/a;


# direct methods
.method constructor <init>(Lcom/anythink/splashad/a/a;Lcom/anythink/splashad/api/ATSplashAdListener;Landroid/view/ViewGroup;)V
    .registers 5

    .prologue
    .line 48
    iput-object p1, p0, Lcom/anythink/splashad/a/a$1;->d:Lcom/anythink/splashad/a/a;

    iput-object p2, p0, Lcom/anythink/splashad/a/a$1;->a:Lcom/anythink/splashad/api/ATSplashAdListener;

    iput-object p3, p0, Lcom/anythink/splashad/a/a$1;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/splashad/a/a$1;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/anythink/splashad/a/a$1;->a:Lcom/anythink/splashad/api/ATSplashAdListener;

    if-eqz v0, :cond_9

    .line 61
    iget-object v0, p0, Lcom/anythink/splashad/a/a$1;->a:Lcom/anythink/splashad/api/ATSplashAdListener;

    invoke-interface {v0}, Lcom/anythink/splashad/api/ATSplashAdListener;->onAdLoaded()V

    .line 63
    :cond_9
    return-void
.end method

.method public final a(Lcom/anythink/core/api/AdError;)V
    .registers 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/anythink/splashad/a/a$1;->a:Lcom/anythink/splashad/api/ATSplashAdListener;

    if-eqz v0, :cond_9

    .line 68
    iget-object v0, p0, Lcom/anythink/splashad/a/a$1;->a:Lcom/anythink/splashad/api/ATSplashAdListener;

    invoke-interface {v0, p1}, Lcom/anythink/splashad/api/ATSplashAdListener;->onNoAdError(Lcom/anythink/core/api/AdError;)V

    .line 70
    :cond_9
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;)V
    .registers 11
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
    new-instance v0, Lcom/anythink/splashad/a/b;

    iget-object v1, p0, Lcom/anythink/splashad/a/a$1;->d:Lcom/anythink/splashad/a/a;

    invoke-static {v1}, Lcom/anythink/splashad/a/a;->a(Lcom/anythink/splashad/a/a;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/anythink/splashad/a/b;-><init>(Landroid/content/Context;)V

    .line 52
    iget-object v1, p0, Lcom/anythink/splashad/a/a$1;->a:Lcom/anythink/splashad/api/ATSplashAdListener;

    .line 1246
    iput-object v1, v0, Lcom/anythink/splashad/a/b;->y:Lcom/anythink/splashad/api/ATSplashAdListener;

    .line 53
    iget-object v1, p0, Lcom/anythink/splashad/a/a$1;->b:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/anythink/splashad/a/a$1;->c:Landroid/view/View;

    iget-object v3, p0, Lcom/anythink/splashad/a/a$1;->d:Lcom/anythink/splashad/a/a;

    invoke-static {v3}, Lcom/anythink/splashad/a/a;->b(Lcom/anythink/splashad/a/a;)Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/anythink/splashad/a/b;->a(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;)V

    .line 55
    iget-object v1, p0, Lcom/anythink/splashad/a/a$1;->d:Lcom/anythink/splashad/a/a;

    invoke-static {v1, v0}, Lcom/anythink/splashad/a/a;->a(Lcom/anythink/splashad/a/a;Lcom/anythink/core/b/f;)Lcom/anythink/core/b/f;

    .line 56
    return-void
.end method
