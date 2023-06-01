.class Lcom/ssjj/fnsdk/core/share/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/share/FNShareListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/c;

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:Lcom/ssjj/fnsdk/core/share/FNShareListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/c;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/share/FNShareListener;)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/d;->a:Lcom/ssjj/fnsdk/core/share/c;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/d;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/share/d;->c:Lcom/ssjj/fnsdk/core/share/FNShareListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/ssjj/fnsdk/core/share/FNShareItem;)V
    .registers 5

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/ShareStat;->getInstance()Lcom/ssjj/fnsdk/core/share/ShareStat;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/d;->b:Landroid/app/Activity;

    const/4 v2, -0x2

    invoke-virtual {v0, v1, p1, v2}, Lcom/ssjj/fnsdk/core/share/ShareStat;->shareStat(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/FNShareItem;I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/d;->c:Lcom/ssjj/fnsdk/core/share/FNShareListener;

    if-eqz v0, :cond_11

    invoke-interface {v0, p1}, Lcom/ssjj/fnsdk/core/share/FNShareListener;->onCancel(Lcom/ssjj/fnsdk/core/share/FNShareItem;)V

    :cond_11
    return-void
.end method

.method public onFail(Lcom/ssjj/fnsdk/core/share/FNShareItem;Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/ShareStat;->getInstance()Lcom/ssjj/fnsdk/core/share/ShareStat;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/d;->b:Landroid/app/Activity;

    const/16 v2, -0x9

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/ssjj/fnsdk/core/share/ShareStat;->shareStat(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/FNShareItem;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/d;->c:Lcom/ssjj/fnsdk/core/share/FNShareListener;

    if-eqz v0, :cond_12

    invoke-interface {v0, p1, p2}, Lcom/ssjj/fnsdk/core/share/FNShareListener;->onFail(Lcom/ssjj/fnsdk/core/share/FNShareItem;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public onSucceed(Lcom/ssjj/fnsdk/core/share/FNShareItem;)V
    .registers 5

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/ShareStat;->getInstance()Lcom/ssjj/fnsdk/core/share/ShareStat;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/d;->b:Landroid/app/Activity;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, p1, v2}, Lcom/ssjj/fnsdk/core/share/ShareStat;->shareStat(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/FNShareItem;I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/d;->c:Lcom/ssjj/fnsdk/core/share/FNShareListener;

    if-eqz v0, :cond_12

    invoke-interface {v0, p1}, Lcom/ssjj/fnsdk/core/share/FNShareListener;->onSucceed(Lcom/ssjj/fnsdk/core/share/FNShareItem;)V

    :cond_12
    return-void
.end method
