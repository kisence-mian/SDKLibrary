.class Lcom/sigmob/windad/WindAds$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/common/SDKConfig$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/WindAds;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/windad/WindAds;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/WindAds;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/WindAds$3;->a:Lcom/sigmob/windad/WindAds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/WindAds$3;->a:Lcom/sigmob/windad/WindAds;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAds;->b()V

    invoke-static {}, Lcom/sigmob/sdk/common/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/SDKConfig;->isDisable_up_location()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {}, Lcom/sigmob/windad/WindAds;->c()V

    :cond_18
    invoke-static {}, Lcom/sigmob/windad/WindAds;->d()V

    invoke-static {}, Lcom/sigmob/sdk/base/services/b;->b()V

    :cond_1e
    return-void
.end method
