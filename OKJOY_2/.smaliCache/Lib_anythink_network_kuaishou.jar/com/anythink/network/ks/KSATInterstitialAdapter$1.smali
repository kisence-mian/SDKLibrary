.class final Lcom/anythink/network/ks/KSATInterstitialAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/network/ks/KSATInitManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/ks/KSATInterstitialAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/ks/KSATInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/ks/KSATInterstitialAdapter;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$1;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$1;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->a(Lcom/anythink/network/ks/KSATInterstitialAdapter;)V

    .line 58
    return-void
.end method
