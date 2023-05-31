.class Lcom/sigmob/sdk/mraid/x$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/x$4;->c()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/x$4;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/x$4;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/x$4$1;->a:Lcom/sigmob/sdk/mraid/x$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8e

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const v2, 0x3f7fbe77    # 0.999f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_30

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/x$4$1;->a:Lcom/sigmob/sdk/mraid/x$4;

    iget-object v1, v1, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/x;->k(Lcom/sigmob/sdk/mraid/x;)Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/x$4$1;->a:Lcom/sigmob/sdk/mraid/x$4;

    iget-object v1, v1, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v1, v3}, Lcom/sigmob/sdk/mraid/x;->b(Lcom/sigmob/sdk/mraid/x;Z)Z

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/x$4$1;->a:Lcom/sigmob/sdk/mraid/x$4;

    iget-object v1, v1, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    sget-object v2, Lcom/sigmob/sdk/base/common/a;->m:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/base/common/a;)V

    :cond_30
    iget-object v1, p0, Lcom/sigmob/sdk/mraid/x$4$1;->a:Lcom/sigmob/sdk/mraid/x$4;

    iget-object v1, v1, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/x;->e(Lcom/sigmob/sdk/mraid/x;)Z

    move-result v1

    if-nez v1, :cond_8e

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/x$4$1;->a:Lcom/sigmob/sdk/mraid/x$4;

    iget-object v1, v1, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/mraid/x;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_8e

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/x$4$1;->a:Lcom/sigmob/sdk/mraid/x$4;

    iget-object v1, v1, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/mraid/x;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRvAdSetting()Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->finished:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8e

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4$1;->a:Lcom/sigmob/sdk/mraid/x$4;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v0, v3}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/mraid/x;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4$1;->a:Lcom/sigmob/sdk/mraid/x$4;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid/x;->g:Lcom/sigmob/sdk/base/common/w;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->b:Lcom/sigmob/sdk/base/common/a;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/x$4$1;->a:Lcom/sigmob/sdk/mraid/x$4;

    iget-object v2, v2, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v2}, Lcom/sigmob/sdk/mraid/x;->c(Lcom/sigmob/sdk/mraid/x;)Lcom/sigmob/sdk/mraid/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/mraid/h;->e()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/a;I)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4$1;->a:Lcom/sigmob/sdk/mraid/x$4;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    const-string v1, "com.sigmob.action.rewardedvideo.complete"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid/x;->f(Lcom/sigmob/sdk/mraid/x;Ljava/lang/String;)V

    :cond_8e
    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/x$4$1;->a(Ljava/lang/String;)V

    return-void
.end method
