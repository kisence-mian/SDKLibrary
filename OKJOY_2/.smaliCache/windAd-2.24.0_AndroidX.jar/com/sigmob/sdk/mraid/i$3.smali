.class Lcom/sigmob/sdk/mraid/i$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/mraid/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/i;->k()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/i;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/i;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const-string v0, "MraidActivity failed to load. Finishing the activity"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/i;->g(Lcom/sigmob/sdk/mraid/i;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    const-string v1, "com.sigmob.action.interstitial.fail"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid/i;->d(Lcom/sigmob/sdk/mraid/i;Ljava/lang/String;)V

    :cond_14
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/i;->h(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/base/common/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/h;->a()V

    return-void
.end method

.method public a(F)V
    .registers 3

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/i;->e(Lcom/sigmob/sdk/mraid/i;)Z

    move-result p1

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/mraid/i;Z)Z

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->b:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/common/a;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    const-string v0, "com.sigmob.action.rewardedvideo.complete"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/mraid/i;->h(Lcom/sigmob/sdk/mraid/i;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->a:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/common/a;)V

    const-string p1, "onLoaded() called"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/common/models/SigmobError;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finishing the activity due to a problem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->E:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/common/a;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/i;->i(Lcom/sigmob/sdk/mraid/i;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    const-string v0, "com.sigmob.action.interstitial.fail"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/mraid/i;->e(Lcom/sigmob/sdk/mraid/i;Ljava/lang/String;)V

    :cond_2c
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/i;->j(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/base/common/h;

    move-result-object p1

    invoke-interface {p1}, Lcom/sigmob/sdk/base/common/h;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 12

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4f

    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "type"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string v2, "x"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "y"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {v3}, Lcom/sigmob/sdk/mraid/i;->c(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/mraid/c;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/sigmob/sdk/mraid/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p1, v1, :cond_39

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->o:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/common/a;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_38} :catch_3c

    goto :goto_4f

    :cond_39
    const/4 p1, 0x0

    move v1, p1

    goto :goto_4f

    :catch_3c
    move-exception p1

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/i;->c(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/mraid/c;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0, v0}, Lcom/sigmob/sdk/mraid/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->o:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/common/a;)V

    :cond_4f
    :goto_4f
    move v9, v1

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/i;->d(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v2

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/i;->m(Lcom/sigmob/sdk/mraid/i;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/i;->c(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/mraid/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/c;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v2 .. v9}, Lcom/sigmob/sdk/videoAd/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/videoAd/f;ZLjava/lang/String;Z)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    const-string v0, "com.sigmob.action.interstitial.click"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/mraid/i;->j(Lcom/sigmob/sdk/mraid/i;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/net/URI;Lcom/sigmob/sdk/videoAd/f;Ljava/lang/String;)V
    .registers 15

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "0"

    const/4 v2, 0x1

    if-nez v0, :cond_3f

    :try_start_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "type"

    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p3

    const-string v3, "x"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "y"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iget-object v4, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {v4}, Lcom/sigmob/sdk/mraid/i;->c(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/mraid/c;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lcom/sigmob/sdk/mraid/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p3, v2, :cond_3b

    iget-object p3, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->c:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {p3, v0}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/common/a;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3a} :catch_3e

    goto :goto_4f

    :cond_3b
    const/4 p3, 0x0

    move v2, p3

    goto :goto_4f

    :catch_3e
    move-exception p3

    :cond_3f
    iget-object p3, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {p3}, Lcom/sigmob/sdk/mraid/i;->c(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/mraid/c;

    move-result-object p3

    invoke-virtual {p3, v1, v1}, Lcom/sigmob/sdk/mraid/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->c:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {p3, v0}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/common/a;)V

    :goto_4f
    move v10, v2

    iget-object p3, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {p3}, Lcom/sigmob/sdk/mraid/i;->d(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v3

    iget-object p3, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {p3}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v4

    iget-object p3, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {p3}, Lcom/sigmob/sdk/mraid/i;->n(Lcom/sigmob/sdk/mraid/i;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/i;->c(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/mraid/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/c;->a()Ljava/lang/String;

    move-result-object v9

    move-object v7, p2

    invoke-virtual/range {v3 .. v10}, Lcom/sigmob/sdk/videoAd/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/videoAd/f;ZLjava/lang/String;Z)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    const-string p2, "com.sigmob.action.interstitial.click"

    invoke-static {p1, p2}, Lcom/sigmob/sdk/mraid/i;->k(Lcom/sigmob/sdk/mraid/i;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->v:Lcom/sigmob/sdk/base/common/a;

    goto :goto_b

    :cond_7
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->w:Lcom/sigmob/sdk/base/common/a;

    :goto_b
    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/common/a;)V

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/i;->c(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/mraid/c;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/mraid/i$3$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid/i$3$1;-><init>(Lcom/sigmob/sdk/mraid/i$3;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/c;->a(Landroid/webkit/ValueCallback;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    const-string v1, "com.sigmob.action.rewardedvideo.Close"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid/i;->g(Lcom/sigmob/sdk/mraid/i;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid/i;->c(Lcom/sigmob/sdk/mraid/i;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/i;->l(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/base/common/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/h;->a()V

    return-void
.end method

.method public b(F)V
    .registers 3

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/i;->k(Lcom/sigmob/sdk/mraid/i;)Z

    move-result p1

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sigmob/sdk/mraid/i;->b(Lcom/sigmob/sdk/mraid/i;Z)Z

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->m:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/common/a;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    const-string v0, "com.sigmob.action.rewardedvideo.skip"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/mraid/i;->i(Lcom/sigmob/sdk/mraid/i;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->d:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/common/a;)V

    return-void
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->F:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/common/a;)V

    return-void
.end method
