.class final Lcom/anythink/network/ks/KSATSplashAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/network/ks/KSATInitManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/ks/KSATSplashAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/ks/KSATSplashAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/ks/KSATSplashAdapter;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/anythink/network/ks/KSATSplashAdapter$1;->a:Lcom/anythink/network/ks/KSATSplashAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/anythink/network/ks/KSATSplashAdapter$1;->a:Lcom/anythink/network/ks/KSATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATSplashAdapter;->a(Lcom/anythink/network/ks/KSATSplashAdapter;)V

    .line 49
    return-void
.end method
