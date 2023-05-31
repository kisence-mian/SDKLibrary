.class Lcom/sigmob/sdk/splash/SplashAdView$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/utils/ae;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/splash/SplashAdView;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:I

.field final synthetic e:Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

.field final synthetic f:Lcom/sigmob/sdk/splash/SplashAdView;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/splash/SplashAdView;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Landroid/content/Context;ILcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;)V
    .registers 7

    iput-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    iput-object p2, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p3, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->c:Landroid/content/Context;

    iput p5, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->d:I

    iput-object p6, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->e:Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/utils/ab;)V
    .registers 10

    const/4 v6, 0x0

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "urlHandlingSucceeded: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/common/utils/ab;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " url: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ab;->e:Lcom/sigmob/sdk/base/common/utils/ab;

    if-ne v0, p2, :cond_a5

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5d

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "final_url"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    sget-object v2, Lcom/sigmob/sdk/base/common/b/b;->H:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v3}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v4}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadslot_id()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Lcom/sigmob/sdk/splash/SplashAdView;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/util/Map;)V

    :cond_5d
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "is_deeplink"

    const-string v2, "1"

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "target_url"

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "coordinate"

    iget-object v2, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->b:Ljava/lang/String;

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/SplashAdView;->e(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/splash/d;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v2, v6, v3}, Lcom/sigmob/sdk/splash/d;->e(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v2, Lcom/sigmob/sdk/base/common/a;->C:Lcom/sigmob/sdk/base/common/a;

    invoke-static {v0, v2}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    sget-object v2, Lcom/sigmob/sdk/base/common/b/b;->A:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v3}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v4}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Lcom/sigmob/sdk/splash/SplashAdView;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/util/Map;)V

    :goto_a4
    return-void

    :cond_a5
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "is_deeplink"

    const-string v2, "0"

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "target_url"

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "coordinate"

    iget-object v2, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->b:Ljava/lang/String;

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    sget-object v2, Lcom/sigmob/sdk/base/common/b/b;->A:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v3}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v4}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Lcom/sigmob/sdk/splash/SplashAdView;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/util/Map;)V

    iget v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->d:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_107

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->e:Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->macroProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v1, v0, v2}, Lcom/sigmob/sdk/base/common/t;->a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/SplashAdView;->e(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/splash/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/d;->l()Z

    move-result v0

    if-nez v0, :cond_105

    const/4 v0, 0x1

    :goto_101
    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Z)V

    goto :goto_a4

    :cond_105
    move v0, v6

    goto :goto_101

    :cond_107
    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13a

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "final_url"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    sget-object v2, Lcom/sigmob/sdk/base/common/b/b;->H:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v3}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v4}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadslot_id()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Lcom/sigmob/sdk/splash/SplashAdView;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/util/Map;)V

    :cond_13a
    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/SplashAdView;->f(Lcom/sigmob/sdk/splash/SplashAdView;)Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/sigmob/sdk/base/common/AdActivity;

    iget-object v2, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v2}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v3}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v0, v1, v2, v4, v5}, Lcom/sigmob/sdk/base/common/AdActivity;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/sigmob/sdk/base/models/BaseAdUnit;J)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-virtual {v0, v6}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Z)V

    goto/16 :goto_a4
.end method

.method public b(Ljava/lang/String;Lcom/sigmob/sdk/base/common/utils/ab;)V
    .registers 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "urlHandlingFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/common/utils/ab;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5a

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "final_url"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    const/4 v1, 0x0

    sget-object v2, Lcom/sigmob/sdk/base/common/b/b;->H:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v3}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v4}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadslot_id()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Lcom/sigmob/sdk/splash/SplashAdView;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/util/Map;)V

    :cond_5a
    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ab;->e:Lcom/sigmob/sdk/base/common/utils/ab;

    if-ne v0, p2, :cond_118

    :try_start_5e
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "is_deeplink"

    const-string v1, "0"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "target_url"

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "coordinate"

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->b:Ljava/lang/String;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    const-string v1, "0"

    sget-object v2, Lcom/sigmob/sdk/base/common/b/b;->A:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v3}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v4}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Lcom/sigmob/sdk/splash/SplashAdView;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->D:Lcom/sigmob/sdk/base/common/a;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    iget v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c9

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->e:Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->macroProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v1, v0, v2}, Lcom/sigmob/sdk/base/common/t;->a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/SplashAdView;->e(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/splash/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/d;->l()Z

    move-result v0

    if-nez v0, :cond_c7

    move v0, v6

    :goto_c3
    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Z)V

    :goto_c6
    return-void

    :cond_c7
    move v0, v7

    goto :goto_c3

    :cond_c9
    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v1}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->macroProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/splash/SplashAdView$4$1;

    invoke-direct {v1, p0, v0}, Lcom/sigmob/sdk/splash/SplashAdView$4$1;-><init>(Lcom/sigmob/sdk/splash/SplashAdView$4;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ag;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/utils/ah;)V
    :try_end_e7
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_e7} :catch_e8

    goto :goto_c6

    :catch_e8
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle Click Action error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/SplashAdView;->e(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/splash/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/d;->l()Z

    move-result v0

    if-nez v0, :cond_116

    move v0, v6

    :goto_112
    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Z)V

    goto :goto_c6

    :cond_116
    move v0, v7

    goto :goto_112

    :cond_118
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "is_deeplink"

    const-string v1, "0"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "target_url"

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "coordinate"

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->b:Ljava/lang/String;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    const-string v1, "0"

    sget-object v2, Lcom/sigmob/sdk/base/common/b/b;->A:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v3}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v4}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Lcom/sigmob/sdk/splash/SplashAdView;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v1}, Lcom/sigmob/sdk/splash/SplashAdView;->e(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/splash/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/splash/d;->l()Z

    move-result v1

    if-nez v1, :cond_160

    :goto_15b
    invoke-virtual {v0, v6}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Z)V

    goto/16 :goto_c6

    :cond_160
    move v6, v7

    goto :goto_15b
.end method
