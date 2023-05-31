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

    .prologue
    .line 87
    iput-object p1, p0, Lcom/anythink/interstitial/a/a$1$1;->b:Lcom/anythink/interstitial/a/a$1;

    iput-object p2, p0, Lcom/anythink/interstitial/a/a$1$1;->a:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/anythink/interstitial/a/a$1$1;->a:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    iget-object v1, p0, Lcom/anythink/interstitial/a/a$1$1;->b:Lcom/anythink/interstitial/a/a$1;

    iget-object v1, v1, Lcom/anythink/interstitial/a/a$1;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->show(Landroid/content/Context;)V

    .line 91
    return-void
.end method
