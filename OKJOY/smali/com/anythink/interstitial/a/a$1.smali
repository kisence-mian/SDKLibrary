.class final Lcom/anythink/interstitial/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/interstitial/a/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/interstitial/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/b/c/a;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/anythink/interstitial/a/c;

.field final synthetic e:Lcom/anythink/interstitial/a/a;


# direct methods
.method constructor <init>(Lcom/anythink/interstitial/a/a;Lcom/anythink/core/b/c/a;Landroid/content/Context;Ljava/lang/String;Lcom/anythink/interstitial/a/c;)V
    .registers 6

    .prologue
    .line 64
    iput-object p1, p0, Lcom/anythink/interstitial/a/a$1;->e:Lcom/anythink/interstitial/a/a;

    iput-object p2, p0, Lcom/anythink/interstitial/a/a$1;->a:Lcom/anythink/core/b/c/a;

    iput-object p3, p0, Lcom/anythink/interstitial/a/a$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/anythink/interstitial/a/a$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/anythink/interstitial/a/a$1;->d:Lcom/anythink/interstitial/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 67
    iget-object v0, p0, Lcom/anythink/interstitial/a/a$1;->a:Lcom/anythink/core/b/c/a;

    invoke-virtual {v0}, Lcom/anythink/core/b/c/a;->h()Lcom/anythink/core/b/a/b;

    move-result-object v0

    check-cast v0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    .line 68
    iget-object v1, p0, Lcom/anythink/interstitial/a/a$1;->b:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_15

    .line 69
    iget-object v1, p0, Lcom/anythink/interstitial/a/a$1;->b:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->refreshActivityContext(Landroid/app/Activity;)V

    .line 72
    :cond_15
    iget-object v1, p0, Lcom/anythink/interstitial/a/a$1;->a:Lcom/anythink/core/b/c/a;

    invoke-virtual {v1}, Lcom/anythink/core/b/c/a;->h()Lcom/anythink/core/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/a/b;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v1

    .line 74
    if-eqz v1, :cond_36

    .line 75
    iget-object v2, p0, Lcom/anythink/interstitial/a/a$1;->e:Lcom/anythink/interstitial/a/a;

    invoke-static {v2}, Lcom/anythink/interstitial/a/a;->a(Lcom/anythink/interstitial/a/a;)Ljava/lang/String;

    move-result-object v2

    .line 1334
    iput-object v2, v1, Lcom/anythink/core/b/c/b;->p:Ljava/lang/String;

    .line 76
    iget-object v2, p0, Lcom/anythink/interstitial/a/a$1;->c:Ljava/lang/String;

    .line 2182
    iput-object v2, v1, Lcom/anythink/core/b/c/b;->v:Ljava/lang/String;

    .line 78
    iget-object v2, p0, Lcom/anythink/interstitial/a/a$1;->e:Lcom/anythink/interstitial/a/a;

    invoke-static {v2}, Lcom/anythink/interstitial/a/a;->b(Lcom/anythink/interstitial/a/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/anythink/core/b/g/m;->a(Landroid/content/Context;Lcom/anythink/core/b/c/b;)V

    .line 82
    :cond_36
    invoke-static {}, Lcom/anythink/core/b/a;->a()Lcom/anythink/core/b/a;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/interstitial/a/a$1;->e:Lcom/anythink/interstitial/a/a;

    invoke-static {v3}, Lcom/anythink/interstitial/a/a;->c(Lcom/anythink/interstitial/a/a;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/interstitial/a/a$1;->a:Lcom/anythink/core/b/c/a;

    invoke-virtual {v2, v3, v4}, Lcom/anythink/core/b/a;->a(Landroid/content/Context;Lcom/anythink/core/b/c/a;)V

    .line 85
    iget-object v2, p0, Lcom/anythink/interstitial/a/a$1;->e:Lcom/anythink/interstitial/a/a;

    invoke-static {v2}, Lcom/anythink/interstitial/a/a;->d(Lcom/anythink/interstitial/a/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v1}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 86
    iget-object v1, p0, Lcom/anythink/interstitial/a/a$1;->d:Lcom/anythink/interstitial/a/c;

    invoke-virtual {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->setCustomInterstitialEventListener(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;)V

    .line 87
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v1

    new-instance v2, Lcom/anythink/interstitial/a/a$1$1;

    invoke-direct {v2, p0, v0}, Lcom/anythink/interstitial/a/a$1$1;-><init>(Lcom/anythink/interstitial/a/a$1;Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    invoke-virtual {v1, v2}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method
