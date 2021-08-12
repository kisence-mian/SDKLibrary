.class final Lcom/anythink/interstitial/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/interstitial/a/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/anythink/interstitial/api/ATInterstitialListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/d/b;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/anythink/interstitial/api/ATInterstitialListener;

.field final synthetic e:Lcom/anythink/interstitial/a/a;


# direct methods
.method constructor <init>(Lcom/anythink/interstitial/a/a;Lcom/anythink/core/common/d/b;Landroid/app/Activity;Ljava/lang/String;Lcom/anythink/interstitial/api/ATInterstitialListener;)V
    .registers 6

    .line 71
    iput-object p1, p0, Lcom/anythink/interstitial/a/a$1;->e:Lcom/anythink/interstitial/a/a;

    iput-object p2, p0, Lcom/anythink/interstitial/a/a$1;->a:Lcom/anythink/core/common/d/b;

    iput-object p3, p0, Lcom/anythink/interstitial/a/a$1;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/anythink/interstitial/a/a$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/anythink/interstitial/a/a$1;->d:Lcom/anythink/interstitial/api/ATInterstitialListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 74
    iget-object v0, p0, Lcom/anythink/interstitial/a/a$1;->a:Lcom/anythink/core/common/d/b;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/b;->g()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    check-cast v0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    .line 75
    iget-object v1, p0, Lcom/anythink/interstitial/a/a$1;->b:Landroid/app/Activity;

    if-eqz v1, :cond_f

    .line 76
    invoke-virtual {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->refreshActivityContext(Landroid/app/Activity;)V

    .line 79
    :cond_f
    iget-object v1, p0, Lcom/anythink/interstitial/a/a$1;->a:Lcom/anythink/core/common/d/b;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/b;->g()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v1

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 83
    if-eqz v1, :cond_43

    .line 84
    iget-object v4, p0, Lcom/anythink/interstitial/a/a$1;->e:Lcom/anythink/interstitial/a/a;

    invoke-static {v4}, Lcom/anythink/interstitial/a/a;->a(Lcom/anythink/interstitial/a/a;)Ljava/lang/String;

    move-result-object v4

    .line 1389
    iput-object v4, v1, Lcom/anythink/core/common/d/d;->r:Ljava/lang/String;

    .line 85
    iget-object v4, p0, Lcom/anythink/interstitial/a/a$1;->c:Ljava/lang/String;

    .line 2229
    iput-object v4, v1, Lcom/anythink/core/common/d/d;->y:Ljava/lang/String;

    .line 86
    invoke-virtual {v1}, Lcom/anythink/core/common/d/d;->F()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2, v3}, Lcom/anythink/core/common/g/g;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/anythink/core/common/d/d;->d(Ljava/lang/String;)V

    .line 89
    iget-object v4, p0, Lcom/anythink/interstitial/a/a$1;->e:Lcom/anythink/interstitial/a/a;

    invoke-static {v4}, Lcom/anythink/interstitial/a/a;->b(Lcom/anythink/interstitial/a/a;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/anythink/core/common/g/n;->a(Landroid/content/Context;Lcom/anythink/core/common/d/d;)V

    .line 93
    :cond_43
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v4

    iget-object v5, p0, Lcom/anythink/interstitial/a/a$1;->e:Lcom/anythink/interstitial/a/a;

    invoke-static {v5}, Lcom/anythink/interstitial/a/a;->c(Lcom/anythink/interstitial/a/a;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/anythink/interstitial/a/a$1;->a:Lcom/anythink/core/common/d/b;

    invoke-virtual {v4, v5, v6}, Lcom/anythink/core/common/a;->a(Landroid/content/Context;Lcom/anythink/core/common/d/b;)V

    .line 96
    iget-object v4, p0, Lcom/anythink/interstitial/a/a$1;->e:Lcom/anythink/interstitial/a/a;

    invoke-static {v4}, Lcom/anythink/interstitial/a/a;->d(Lcom/anythink/interstitial/a/a;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v4

    const/16 v5, 0xd

    invoke-virtual {v4, v5, v1, v2, v3}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;J)V

    .line 97
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    new-instance v2, Lcom/anythink/interstitial/a/a$1$1;

    invoke-direct {v2, p0, v0}, Lcom/anythink/interstitial/a/a$1$1;-><init>(Lcom/anythink/interstitial/a/a$1;Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method
