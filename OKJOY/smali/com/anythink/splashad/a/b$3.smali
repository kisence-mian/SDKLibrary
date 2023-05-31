.class final Lcom/anythink/splashad/a/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/splashad/a/b;->a(Lcom/anythink/core/api/AdError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/api/AdError;

.field final synthetic b:Lcom/anythink/splashad/a/b;


# direct methods
.method constructor <init>(Lcom/anythink/splashad/a/b;Lcom/anythink/core/api/AdError;)V
    .registers 3

    .prologue
    .line 213
    iput-object p1, p0, Lcom/anythink/splashad/a/b$3;->b:Lcom/anythink/splashad/a/b;

    iput-object p2, p0, Lcom/anythink/splashad/a/b$3;->a:Lcom/anythink/core/api/AdError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/anythink/splashad/a/b$3;->b:Lcom/anythink/splashad/a/b;

    invoke-static {v0}, Lcom/anythink/splashad/a/b;->l(Lcom/anythink/splashad/a/b;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 217
    iget-object v0, p0, Lcom/anythink/splashad/a/b$3;->b:Lcom/anythink/splashad/a/b;

    invoke-static {v0}, Lcom/anythink/splashad/a/b;->l(Lcom/anythink/splashad/a/b;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 220
    :cond_12
    iget-object v0, p0, Lcom/anythink/splashad/a/b$3;->b:Lcom/anythink/splashad/a/b;

    invoke-static {v0}, Lcom/anythink/splashad/a/b;->e(Lcom/anythink/splashad/a/b;)Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 221
    iget-object v0, p0, Lcom/anythink/splashad/a/b$3;->b:Lcom/anythink/splashad/a/b;

    invoke-static {v0}, Lcom/anythink/splashad/a/b;->e(Lcom/anythink/splashad/a/b;)Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->clean()V

    .line 224
    :cond_23
    iget-object v0, p0, Lcom/anythink/splashad/a/b$3;->b:Lcom/anythink/splashad/a/b;

    invoke-static {v0}, Lcom/anythink/splashad/a/b;->m(Lcom/anythink/splashad/a/b;)Landroid/view/ViewGroup;

    .line 225
    iget-object v0, p0, Lcom/anythink/splashad/a/b$3;->b:Lcom/anythink/splashad/a/b;

    invoke-static {v0}, Lcom/anythink/splashad/a/b;->n(Lcom/anythink/splashad/a/b;)Landroid/view/View;

    .line 227
    iget-object v0, p0, Lcom/anythink/splashad/a/b$3;->b:Lcom/anythink/splashad/a/b;

    iget-object v0, v0, Lcom/anythink/splashad/a/b;->y:Lcom/anythink/splashad/api/ATSplashAdListener;

    if-eqz v0, :cond_3c

    .line 228
    iget-object v0, p0, Lcom/anythink/splashad/a/b$3;->b:Lcom/anythink/splashad/a/b;

    iget-object v0, v0, Lcom/anythink/splashad/a/b;->y:Lcom/anythink/splashad/api/ATSplashAdListener;

    iget-object v1, p0, Lcom/anythink/splashad/a/b$3;->a:Lcom/anythink/core/api/AdError;

    invoke-interface {v0, v1}, Lcom/anythink/splashad/api/ATSplashAdListener;->onNoAdError(Lcom/anythink/core/api/AdError;)V

    .line 230
    :cond_3c
    iget-object v0, p0, Lcom/anythink/splashad/a/b$3;->b:Lcom/anythink/splashad/a/b;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/anythink/splashad/a/b;->y:Lcom/anythink/splashad/api/ATSplashAdListener;

    .line 231
    return-void
.end method
