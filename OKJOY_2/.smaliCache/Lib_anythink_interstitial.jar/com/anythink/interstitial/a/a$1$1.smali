.class final Lcom/anythink/interstitial/a/a$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/interstitial/a/a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

.field final synthetic b:Lcom/anythink/interstitial/a/a$1;


# direct methods
.method constructor <init>(Lcom/anythink/interstitial/a/a$1;Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V
    .registers 3

    .line 97
    iput-object p1, p0, Lcom/anythink/interstitial/a/a$1$1;->b:Lcom/anythink/interstitial/a/a$1;

    iput-object p2, p0, Lcom/anythink/interstitial/a/a$1$1;->a:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 100
    iget-object v0, p0, Lcom/anythink/interstitial/a/a$1$1;->a:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    iget-object v1, p0, Lcom/anythink/interstitial/a/a$1$1;->b:Lcom/anythink/interstitial/a/a$1;

    iget-object v1, v1, Lcom/anythink/interstitial/a/a$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->setScenario(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/anythink/interstitial/a/a$1$1;->a:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    iget-object v1, p0, Lcom/anythink/interstitial/a/a$1$1;->b:Lcom/anythink/interstitial/a/a$1;

    iget-object v1, v1, Lcom/anythink/interstitial/a/a$1;->b:Landroid/app/Activity;

    new-instance v2, Lcom/anythink/interstitial/a/b;

    iget-object v3, p0, Lcom/anythink/interstitial/a/a$1$1;->a:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    iget-object v4, p0, Lcom/anythink/interstitial/a/a$1$1;->b:Lcom/anythink/interstitial/a/a$1;

    iget-object v4, v4, Lcom/anythink/interstitial/a/a$1;->d:Lcom/anythink/interstitial/api/ATInterstitialListener;

    invoke-direct {v2, v3, v4}, Lcom/anythink/interstitial/a/b;-><init>(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/interstitial/api/ATInterstitialListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->internalShow(Landroid/app/Activity;Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;)V

    .line 102
    return-void
.end method
