.class Lcom/ssjj/fnsdk/core/share/c;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/FNShare;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/share/FNShareItem;

.field private final synthetic c:Lcom/ssjj/fnsdk/core/share/FNShareListener;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/FNShare;Lcom/ssjj/fnsdk/core/share/FNShareItem;Lcom/ssjj/fnsdk/core/share/FNShareListener;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 6

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/c;->a:Lcom/ssjj/fnsdk/core/share/FNShare;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/c;->b:Lcom/ssjj/fnsdk/core/share/FNShareItem;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/share/c;->c:Lcom/ssjj/fnsdk/core/share/FNShareListener;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/share/c;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/share/c;->e:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/c;->b:Lcom/ssjj/fnsdk/core/share/FNShareItem;

    if-nez v0, :cond_13

    const-string v0, "share fail: item is null"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/c;->c:Lcom/ssjj/fnsdk/core/share/FNShareListener;

    if-eqz v1, :cond_12

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/c;->b:Lcom/ssjj/fnsdk/core/share/FNShareItem;

    invoke-interface {v1, v2, v0}, Lcom/ssjj/fnsdk/core/share/FNShareListener;->onFail(Lcom/ssjj/fnsdk/core/share/FNShareItem;Ljava/lang/String;)V

    :cond_12
    return-void

    :cond_13
    iget-object v0, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->shareType:Ljava/lang/String;

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/c;->b:Lcom/ssjj/fnsdk/core/share/FNShareItem;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->shareType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_26

    goto :goto_7b

    :cond_26
    const-string v0, "all"

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "share -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/c;->a:Lcom/ssjj/fnsdk/core/share/FNShare;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/c;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/share/FNShare;->getSurportList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/c;->b:Lcom/ssjj/fnsdk/core/share/FNShareItem;

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/share/c;->c:Lcom/ssjj/fnsdk/core/share/FNShareListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ssjj/fnsdk/core/share/FNShare;->share(Landroid/app/Activity;Ljava/util/List;Lcom/ssjj/fnsdk/core/share/FNShareItem;Lcom/ssjj/fnsdk/core/share/FNShareListener;)V

    goto :goto_7a

    :cond_54
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/c;->b:Lcom/ssjj/fnsdk/core/share/FNShareItem;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/c;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->shareTo:Ljava/lang/String;

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/ShareStat;->getInstance()Lcom/ssjj/fnsdk/core/share/ShareStat;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/c;->e:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/c;->b:Lcom/ssjj/fnsdk/core/share/FNShareItem;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/ssjj/fnsdk/core/share/ShareStat;->shareStat(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/FNShareItem;I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/c;->a:Lcom/ssjj/fnsdk/core/share/FNShare;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/c;->e:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/c;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/c;->b:Lcom/ssjj/fnsdk/core/share/FNShareItem;

    new-instance v4, Lcom/ssjj/fnsdk/core/share/d;

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/share/c;->e:Landroid/app/Activity;

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/share/c;->c:Lcom/ssjj/fnsdk/core/share/FNShareListener;

    invoke-direct {v4, p0, v5, v6}, Lcom/ssjj/fnsdk/core/share/d;-><init>(Lcom/ssjj/fnsdk/core/share/c;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/share/FNShareListener;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ssjj/fnsdk/core/share/FNShare;->a(Lcom/ssjj/fnsdk/core/share/FNShare;Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/share/FNShareItem;Lcom/ssjj/fnsdk/core/share/FNShareListener;)V

    :goto_7a
    return-void

    :cond_7b
    :goto_7b
    const-string v0, "share fail: shareType is not set"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/c;->c:Lcom/ssjj/fnsdk/core/share/FNShareListener;

    if-eqz v1, :cond_89

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/c;->b:Lcom/ssjj/fnsdk/core/share/FNShareItem;

    invoke-interface {v1, v2, v0}, Lcom/ssjj/fnsdk/core/share/FNShareListener;->onFail(Lcom/ssjj/fnsdk/core/share/FNShareItem;Ljava/lang/String;)V

    :cond_89
    return-void
.end method
