.class final Lcom/tds/common/region/TdsRegionHelper$2;
.super Ljava/lang/Object;
.source "TdsRegionHelper.java"

# interfaces
.implements Lcom/tds/common/reactor/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/region/TdsRegionHelper;->getRemoteRegion(ILjava/lang/String;)Lcom/tds/common/reactor/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/functions/Func1<",
        "Lcom/tds/common/net/ResponseBean<",
        "Lcom/tds/common/region/RegionBean;",
        ">;",
        "Lcom/tds/common/region/RegionBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/tds/common/net/ResponseBean;)Lcom/tds/common/region/RegionBean;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/net/ResponseBean<",
            "Lcom/tds/common/region/RegionBean;",
            ">;)",
            "Lcom/tds/common/region/RegionBean;"
        }
    .end annotation

    .line 107
    .local p1, "response":Lcom/tds/common/net/ResponseBean;, "Lcom/tds/common/net/ResponseBean<Lcom/tds/common/region/RegionBean;>;"
    iget-object v0, p1, Lcom/tds/common/net/ResponseBean;->data:Ljava/lang/Object;

    check-cast v0, Lcom/tds/common/region/RegionBean;

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 104
    check-cast p1, Lcom/tds/common/net/ResponseBean;

    invoke-virtual {p0, p1}, Lcom/tds/common/region/TdsRegionHelper$2;->call(Lcom/tds/common/net/ResponseBean;)Lcom/tds/common/region/RegionBean;

    move-result-object p1

    return-object p1
.end method
