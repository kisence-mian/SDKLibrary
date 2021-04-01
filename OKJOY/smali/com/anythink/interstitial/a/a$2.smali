.class final Lcom/anythink/interstitial/a/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/b/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/interstitial/a/a;->a(Landroid/content/Context;ZLcom/anythink/interstitial/api/ATInterstitialListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/anythink/interstitial/api/ATInterstitialListener;

.field final synthetic c:Z

.field final synthetic d:Lcom/anythink/interstitial/a/a;


# direct methods
.method constructor <init>(Lcom/anythink/interstitial/a/a;Landroid/content/Context;Lcom/anythink/interstitial/api/ATInterstitialListener;Z)V
    .registers 5

    .prologue
    .line 118
    iput-object p1, p0, Lcom/anythink/interstitial/a/a$2;->d:Lcom/anythink/interstitial/a/a;

    iput-object p2, p0, Lcom/anythink/interstitial/a/a$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/interstitial/a/a$2;->b:Lcom/anythink/interstitial/api/ATInterstitialListener;

    iput-boolean p4, p0, Lcom/anythink/interstitial/a/a$2;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/anythink/interstitial/a/a$2;->b:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz v0, :cond_9

    .line 138
    iget-object v0, p0, Lcom/anythink/interstitial/a/a$2;->b:Lcom/anythink/interstitial/api/ATInterstitialListener;

    invoke-interface {v0}, Lcom/anythink/interstitial/api/ATInterstitialListener;->onInterstitialAdLoaded()V

    .line 140
    :cond_9
    return-void
.end method

.method public final a(Lcom/anythink/core/api/AdError;)V
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/anythink/interstitial/a/a$2;->b:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz v0, :cond_9

    .line 145
    iget-object v0, p0, Lcom/anythink/interstitial/a/a$2;->b:Lcom/anythink/interstitial/api/ATInterstitialListener;

    invoke-interface {v0, p1}, Lcom/anythink/interstitial/api/ATInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/core/api/AdError;)V

    .line 147
    :cond_9
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;)V
    .registers 7
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
    .line 121
    new-instance v1, Lcom/anythink/interstitial/a/d;

    iget-object v0, p0, Lcom/anythink/interstitial/a/a$2;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/anythink/interstitial/a/d;-><init>(Landroid/content/Context;)V

    .line 122
    iget-object v0, p0, Lcom/anythink/interstitial/a/a$2;->b:Lcom/anythink/interstitial/api/ATInterstitialListener;

    .line 1074
    iput-object v0, v1, Lcom/anythink/interstitial/a/d;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    .line 123
    iget-object v0, p0, Lcom/anythink/interstitial/a/a$2;->d:Lcom/anythink/interstitial/a/a;

    invoke-static {v0}, Lcom/anythink/interstitial/a/a;->e(Lcom/anythink/interstitial/a/a;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/anythink/interstitial/a/d;->a(Ljava/util/Map;)V

    .line 124
    iget-boolean v0, p0, Lcom/anythink/interstitial/a/a$2;->c:Z

    invoke-virtual {v1, v0}, Lcom/anythink/interstitial/a/d;->a(Z)V

    .line 125
    iget-object v0, p0, Lcom/anythink/interstitial/a/a$2;->d:Lcom/anythink/interstitial/a/a;

    invoke-static {v0}, Lcom/anythink/interstitial/a/a;->f(Lcom/anythink/interstitial/a/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/anythink/interstitial/a/d;->b(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;)V

    .line 127
    iget-object v0, p0, Lcom/anythink/interstitial/a/a$2;->d:Lcom/anythink/interstitial/a/a;

    invoke-static {v0}, Lcom/anythink/interstitial/a/a;->g(Lcom/anythink/interstitial/a/a;)Lcom/anythink/core/b/f;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 128
    iget-object v0, p0, Lcom/anythink/interstitial/a/a$2;->d:Lcom/anythink/interstitial/a/a;

    invoke-static {v0}, Lcom/anythink/interstitial/a/a;->h(Lcom/anythink/interstitial/a/a;)Lcom/anythink/core/b/f;

    move-result-object v0

    check-cast v0, Lcom/anythink/interstitial/a/d;

    .line 2074
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/anythink/interstitial/a/d;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    .line 130
    :cond_35
    iget-object v0, p0, Lcom/anythink/interstitial/a/a$2;->d:Lcom/anythink/interstitial/a/a;

    invoke-static {v0}, Lcom/anythink/interstitial/a/a;->i(Lcom/anythink/interstitial/a/a;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/anythink/interstitial/a/a$2;->d:Lcom/anythink/interstitial/a/a;

    invoke-static {v0, v1}, Lcom/anythink/interstitial/a/a;->a(Lcom/anythink/interstitial/a/a;Lcom/anythink/core/b/f;)Lcom/anythink/core/b/f;

    .line 133
    return-void
.end method
