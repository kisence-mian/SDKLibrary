.class final Lcom/anythink/splashad/a/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/splashad/a/b;->b(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Lcom/anythink/core/api/AdError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

.field final synthetic b:Lcom/anythink/core/api/AdError;

.field final synthetic c:Lcom/anythink/splashad/a/b;


# direct methods
.method constructor <init>(Lcom/anythink/splashad/a/b;Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Lcom/anythink/core/api/AdError;)V
    .registers 4

    .line 226
    iput-object p1, p0, Lcom/anythink/splashad/a/b$2;->c:Lcom/anythink/splashad/a/b;

    iput-object p2, p0, Lcom/anythink/splashad/a/b$2;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    iput-object p3, p0, Lcom/anythink/splashad/a/b$2;->b:Lcom/anythink/core/api/AdError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 229
    iget-object v0, p0, Lcom/anythink/splashad/a/b$2;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    if-eqz v0, :cond_7

    .line 230
    invoke-virtual {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->destory()V

    .line 233
    :cond_7
    iget-object v0, p0, Lcom/anythink/splashad/a/b$2;->c:Lcom/anythink/splashad/a/b;

    iget-object v0, v0, Lcom/anythink/splashad/a/b;->b:Lcom/anythink/splashad/api/ATSplashAdListener;

    if-eqz v0, :cond_16

    .line 234
    iget-object v0, p0, Lcom/anythink/splashad/a/b$2;->c:Lcom/anythink/splashad/a/b;

    iget-object v0, v0, Lcom/anythink/splashad/a/b;->b:Lcom/anythink/splashad/api/ATSplashAdListener;

    iget-object v1, p0, Lcom/anythink/splashad/a/b$2;->b:Lcom/anythink/core/api/AdError;

    invoke-interface {v0, v1}, Lcom/anythink/splashad/api/ATSplashAdListener;->onNoAdError(Lcom/anythink/core/api/AdError;)V

    .line 236
    :cond_16
    iget-object v0, p0, Lcom/anythink/splashad/a/b$2;->c:Lcom/anythink/splashad/a/b;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/anythink/splashad/a/b;->b:Lcom/anythink/splashad/api/ATSplashAdListener;

    .line 237
    return-void
.end method
