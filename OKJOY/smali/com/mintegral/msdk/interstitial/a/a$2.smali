.class final Lcom/mintegral/msdk/interstitial/a/a$2;
.super Lcom/mintegral/msdk/interstitial/d/b;
.source "IntersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/interstitial/a/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/interstitial/a/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/interstitial/a/a;)V
    .registers 2

    .prologue
    .line 290
    iput-object p1, p0, Lcom/mintegral/msdk/interstitial/a/a$2;->a:Lcom/mintegral/msdk/interstitial/a/a;

    invoke-direct {p0}, Lcom/mintegral/msdk/interstitial/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 309
    const-string v0, "IntersAdapter"

    invoke-static {v0, p2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v0, "IntersAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLoadCompaginFailed load\u5931\u8d25 errorCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a$2;->a:Lcom/mintegral/msdk/interstitial/a/a;

    invoke-static {v0, p2}, Lcom/mintegral/msdk/interstitial/a/a;->a(Lcom/mintegral/msdk/interstitial/a/a;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a$2;->a:Lcom/mintegral/msdk/interstitial/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/a/a;->e(Lcom/mintegral/msdk/interstitial/a/a;)V

    .line 313
    return-void
.end method

.method public final a(Lcom/mintegral/msdk/base/entity/CampaignUnit;)V
    .registers 4

    .prologue
    .line 296
    :try_start_0
    const-string v0, "IntersAdapter"

    const-string v1, "onLoadCompaginSuccess \u6570\u636e\u521a\u8bf7\u6c42\u56de\u6765"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a$2;->a:Lcom/mintegral/msdk/interstitial/a/a;

    invoke-static {v0, p1}, Lcom/mintegral/msdk/interstitial/a/a;->a(Lcom/mintegral/msdk/interstitial/a/a;Lcom/mintegral/msdk/base/entity/CampaignUnit;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 305
    :goto_c
    return-void

    .line 300
    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 301
    const-string v0, "IntersAdapter"

    const-string v1, "onLoadCompaginSuccess \u6570\u636e\u521a\u8bf7\u6c42\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a$2;->a:Lcom/mintegral/msdk/interstitial/a/a;

    const-string v1, "can\'t show because unknow error"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/interstitial/a/a;->a(Lcom/mintegral/msdk/interstitial/a/a;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a$2;->a:Lcom/mintegral/msdk/interstitial/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/a/a;->e(Lcom/mintegral/msdk/interstitial/a/a;)V

    goto :goto_c
.end method
