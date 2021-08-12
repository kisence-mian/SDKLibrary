.class Lcom/sigmob/sdk/mraid/i$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/i$3;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/i$3;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/i$3;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/i$3$1;->a:Lcom/sigmob/sdk/mraid/i$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8e

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const v1, 0x3f7fbe77    # 0.999f

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    if-gez v0, :cond_30

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$3$1;->a:Lcom/sigmob/sdk/mraid/i$3;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/i;->k(Lcom/sigmob/sdk/mraid/i;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$3$1;->a:Lcom/sigmob/sdk/mraid/i$3;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid/i;->b(Lcom/sigmob/sdk/mraid/i;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$3$1;->a:Lcom/sigmob/sdk/mraid/i$3;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    sget-object v2, Lcom/sigmob/sdk/base/common/a;->m:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/common/a;)V

    :cond_30
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$3$1;->a:Lcom/sigmob/sdk/mraid/i$3;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/i;->e(Lcom/sigmob/sdk/mraid/i;)Z

    move-result v0

    if-nez v0, :cond_8e

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$3$1;->a:Lcom/sigmob/sdk/mraid/i$3;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_8e

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$3$1;->a:Lcom/sigmob/sdk/mraid/i$3;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRvAdSetting()Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->finished:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_8e

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$3$1;->a:Lcom/sigmob/sdk/mraid/i$3;

    iget-object p1, p1, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {p1, v1}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/mraid/i;Z)Z

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$3$1;->a:Lcom/sigmob/sdk/mraid/i$3;

    iget-object p1, p1, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    iget-object p1, p1, Lcom/sigmob/sdk/mraid/i;->g:Lcom/sigmob/sdk/base/common/p;

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->b:Lcom/sigmob/sdk/base/common/a;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/i$3$1;->a:Lcom/sigmob/sdk/mraid/i$3;

    iget-object v1, v1, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/i;->c(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/mraid/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid/c;->e()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/sigmob/sdk/base/common/p;->a(Lcom/sigmob/sdk/base/common/a;I)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$3$1;->a:Lcom/sigmob/sdk/mraid/i$3;

    iget-object p1, p1, Lcom/sigmob/sdk/mraid/i$3;->a:Lcom/sigmob/sdk/mraid/i;

    const-string v0, "com.sigmob.action.rewardedvideo.complete"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/mraid/i;->f(Lcom/sigmob/sdk/mraid/i;Ljava/lang/String;)V

    :cond_8e
    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/i$3$1;->a(Ljava/lang/String;)V

    return-void
.end method
