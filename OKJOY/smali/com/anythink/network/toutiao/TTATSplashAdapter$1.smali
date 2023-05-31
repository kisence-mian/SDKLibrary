.class final Lcom/anythink/network/toutiao/TTATSplashAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/network/toutiao/TTATInitManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATSplashAdapter;->loadSplashAd(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Lcom/anythink/network/toutiao/TTATSplashAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/toutiao/TTATSplashAdapter;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 4

    .prologue
    .line 65
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$1;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$1;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .registers 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$1;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$1;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$1;->b:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Lcom/anythink/network/toutiao/TTATSplashAdapter;->a(Lcom/anythink/network/toutiao/TTATSplashAdapter;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 69
    return-void
.end method
