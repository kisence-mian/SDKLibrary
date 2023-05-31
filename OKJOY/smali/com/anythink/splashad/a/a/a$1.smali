.class final Lcom/anythink/splashad/a/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/splashad/a/a/a;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Ljava/util/Map;Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Ljava/util/Map;

.field final synthetic f:Lcom/anythink/core/api/ATMediationSetting;

.field final synthetic g:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;


# direct methods
.method constructor <init>(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/util/Map;Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;)V
    .registers 8

    .prologue
    .line 34
    iput-object p1, p0, Lcom/anythink/splashad/a/a/a$1;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    iput-object p2, p0, Lcom/anythink/splashad/a/a/a$1;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/anythink/splashad/a/a/a$1;->c:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/anythink/splashad/a/a/a$1;->d:Landroid/view/View;

    iput-object p5, p0, Lcom/anythink/splashad/a/a/a$1;->e:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/splashad/a/a/a$1;->f:Lcom/anythink/core/api/ATMediationSetting;

    iput-object p6, p0, Lcom/anythink/splashad/a/a/a$1;->g:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .prologue
    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/anythink/splashad/a/a/a$1;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    iget-object v1, p0, Lcom/anythink/splashad/a/a/a$1;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/anythink/splashad/a/a/a$1;->c:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/anythink/splashad/a/a/a$1;->d:Landroid/view/View;

    iget-object v4, p0, Lcom/anythink/splashad/a/a/a$1;->e:Ljava/util/Map;

    iget-object v5, p0, Lcom/anythink/splashad/a/a/a$1;->f:Lcom/anythink/core/api/ATMediationSetting;

    iget-object v6, p0, Lcom/anythink/splashad/a/a/a$1;->g:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    invoke-virtual/range {v0 .. v6}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->loadSplashAd(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_12

    .line 48
    :goto_11
    return-void

    .line 43
    :catch_12
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    const-string v1, "2006"

    const-string v2, ""

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/anythink/splashad/a/a/a$1;->g:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    iget-object v2, p0, Lcom/anythink/splashad/a/a/a$1;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    invoke-interface {v1, v2, v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;->onSplashAdFailed(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_11
.end method
