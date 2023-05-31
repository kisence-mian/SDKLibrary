.class final Lcom/anythink/banner/a/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/banner/a/a/a;->a(Lcom/anythink/banner/api/ATBannerView;Landroid/content/Context;Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Ljava/util/Map;Lcom/anythink/banner/unitgroup/api/CustomBannerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

.field final synthetic b:Lcom/anythink/banner/api/ATBannerView;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Lcom/anythink/core/api/ATMediationSetting;

.field final synthetic f:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;


# direct methods
.method constructor <init>(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Lcom/anythink/banner/api/ATBannerView;Landroid/content/Context;Ljava/util/Map;Lcom/anythink/banner/unitgroup/api/CustomBannerListener;)V
    .registers 7

    .prologue
    .line 47
    iput-object p1, p0, Lcom/anythink/banner/a/a/a$1;->a:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    iput-object p2, p0, Lcom/anythink/banner/a/a/a$1;->b:Lcom/anythink/banner/api/ATBannerView;

    iput-object p3, p0, Lcom/anythink/banner/a/a/a$1;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/anythink/banner/a/a/a$1;->d:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/banner/a/a/a$1;->e:Lcom/anythink/core/api/ATMediationSetting;

    iput-object p5, p0, Lcom/anythink/banner/a/a/a$1;->f:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/anythink/banner/a/a/a$1;->a:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    iget-object v1, p0, Lcom/anythink/banner/a/a/a$1;->b:Lcom/anythink/banner/api/ATBannerView;

    iget-object v2, p0, Lcom/anythink/banner/a/a/a$1;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/anythink/banner/a/a/a$1;->d:Ljava/util/Map;

    iget-object v4, p0, Lcom/anythink/banner/a/a/a$1;->e:Lcom/anythink/core/api/ATMediationSetting;

    iget-object v5, p0, Lcom/anythink/banner/a/a/a$1;->f:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->loadBannerAd(Lcom/anythink/banner/api/ATBannerView;Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/banner/unitgroup/api/CustomBannerListener;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    .line 60
    :goto_f
    return-void

    .line 55
    :catch_10
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    const-string v1, "2006"

    const-string v2, ""

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/anythink/banner/a/a/a$1;->f:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    iget-object v2, p0, Lcom/anythink/banner/a/a/a$1;->a:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    invoke-interface {v1, v2, v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdLoadFail(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_f
.end method
