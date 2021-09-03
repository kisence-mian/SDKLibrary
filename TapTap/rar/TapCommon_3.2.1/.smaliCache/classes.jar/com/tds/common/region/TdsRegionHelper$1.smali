.class final Lcom/tds/common/region/TdsRegionHelper$1;
.super Lcom/tds/common/reactor/Subscriber;
.source "TdsRegionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/region/TdsRegionHelper;->getRegionCode(Landroid/content/Context;Lcom/tds/common/region/TdsRegionHelper$RegionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tds/common/reactor/Subscriber<",
        "Lcom/tds/common/region/RegionBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/tds/common/region/TdsRegionHelper$RegionCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$operatorInfo:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/tds/common/region/TdsRegionHelper$RegionCallback;I)V
    .registers 4

    .line 43
    iput-object p1, p0, Lcom/tds/common/region/TdsRegionHelper$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/tds/common/region/TdsRegionHelper$1;->val$callback:Lcom/tds/common/region/TdsRegionHelper$RegionCallback;

    iput p3, p0, Lcom/tds/common/region/TdsRegionHelper$1;->val$operatorInfo:I

    invoke-direct {p0}, Lcom/tds/common/reactor/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 1

    .line 47
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 51
    iget-object v0, p0, Lcom/tds/common/region/TdsRegionHelper$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/tds/common/region/TdsRegionHelper$1;->val$callback:Lcom/tds/common/region/TdsRegionHelper$RegionCallback;

    iget v2, p0, Lcom/tds/common/region/TdsRegionHelper$1;->val$operatorInfo:I

    # invokes: Lcom/tds/common/region/TdsRegionHelper;->doLocalJudge(Landroid/content/Context;Lcom/tds/common/region/TdsRegionHelper$RegionCallback;I)V
    invoke-static {v0, v1, v2}, Lcom/tds/common/region/TdsRegionHelper;->access$000(Landroid/content/Context;Lcom/tds/common/region/TdsRegionHelper$RegionCallback;I)V

    .line 52
    return-void
.end method

.method public onNext(Lcom/tds/common/region/RegionBean;)V
    .registers 5
    .param p1, "regionBean"    # Lcom/tds/common/region/RegionBean;

    .line 56
    if-eqz p1, :cond_1b

    iget v0, p1, Lcom/tds/common/region/RegionBean;->regionCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    .line 57
    iget-object v0, p0, Lcom/tds/common/region/TdsRegionHelper$1;->val$context:Landroid/content/Context;

    iget v1, p1, Lcom/tds/common/region/RegionBean;->regionCode:I

    # invokes: Lcom/tds/common/region/TdsRegionHelper;->setLocalRegion(Landroid/content/Context;I)V
    invoke-static {v0, v1}, Lcom/tds/common/region/TdsRegionHelper;->access$100(Landroid/content/Context;I)V

    .line 58
    iget-object v0, p0, Lcom/tds/common/region/TdsRegionHelper$1;->val$callback:Lcom/tds/common/region/TdsRegionHelper$RegionCallback;

    iget v1, p1, Lcom/tds/common/region/RegionBean;->regionCode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    invoke-interface {v0, v2}, Lcom/tds/common/region/TdsRegionHelper$RegionCallback;->onRegion(Z)V

    goto :goto_24

    .line 60
    :cond_1b
    iget-object v0, p0, Lcom/tds/common/region/TdsRegionHelper$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/tds/common/region/TdsRegionHelper$1;->val$callback:Lcom/tds/common/region/TdsRegionHelper$RegionCallback;

    iget v2, p0, Lcom/tds/common/region/TdsRegionHelper$1;->val$operatorInfo:I

    # invokes: Lcom/tds/common/region/TdsRegionHelper;->doLocalJudge(Landroid/content/Context;Lcom/tds/common/region/TdsRegionHelper$RegionCallback;I)V
    invoke-static {v0, v1, v2}, Lcom/tds/common/region/TdsRegionHelper;->access$000(Landroid/content/Context;Lcom/tds/common/region/TdsRegionHelper$RegionCallback;I)V

    .line 62
    :goto_24
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 43
    check-cast p1, Lcom/tds/common/region/RegionBean;

    invoke-virtual {p0, p1}, Lcom/tds/common/region/TdsRegionHelper$1;->onNext(Lcom/tds/common/region/RegionBean;)V

    return-void
.end method
