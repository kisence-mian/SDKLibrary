.class Lcom/ssjj/fnsdk/core/share/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/share/ShareDialog$ShareDialogListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/e;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/share/FNShareItem;

.field private final synthetic c:Lcom/ssjj/fnsdk/core/share/FNShareDialogListener;

.field private final synthetic d:Lcom/ssjj/fnsdk/core/share/FNShareListener;

.field private final synthetic e:Ljava/util/List;

.field private final synthetic f:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/e;Lcom/ssjj/fnsdk/core/share/FNShareItem;Lcom/ssjj/fnsdk/core/share/FNShareDialogListener;Lcom/ssjj/fnsdk/core/share/FNShareListener;Ljava/util/List;Landroid/app/Activity;)V
    .registers 7

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/f;->a:Lcom/ssjj/fnsdk/core/share/e;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/f;->b:Lcom/ssjj/fnsdk/core/share/FNShareItem;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/share/f;->c:Lcom/ssjj/fnsdk/core/share/FNShareDialogListener;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/share/f;->d:Lcom/ssjj/fnsdk/core/share/FNShareListener;

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/share/f;->e:Ljava/util/List;

    iput-object p6, p0, Lcom/ssjj/fnsdk/core/share/f;->f:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkShare(Ljava/lang/String;)Z
    .registers 3

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/FNShare;->getInstance()Lcom/ssjj/fnsdk/core/share/FNShare;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/share/FNShare;->checkShare(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onCancel()V
    .registers 5

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/ShareStat;->getInstance()Lcom/ssjj/fnsdk/core/share/ShareStat;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/f;->f:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/f;->b:Lcom/ssjj/fnsdk/core/share/FNShareItem;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ssjj/fnsdk/core/share/ShareStat;->shareStat(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/FNShareItem;I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/f;->c:Lcom/ssjj/fnsdk/core/share/FNShareDialogListener;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/f;->b:Lcom/ssjj/fnsdk/core/share/FNShareItem;

    invoke-interface {v0, v1}, Lcom/ssjj/fnsdk/core/share/FNShareDialogListener;->onCancel(Lcom/ssjj/fnsdk/core/share/FNShareItem;)V

    goto :goto_1f

    :cond_16
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/f;->d:Lcom/ssjj/fnsdk/core/share/FNShareListener;

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/f;->b:Lcom/ssjj/fnsdk/core/share/FNShareItem;

    invoke-interface {v0, v1}, Lcom/ssjj/fnsdk/core/share/FNShareListener;->onCancel(Lcom/ssjj/fnsdk/core/share/FNShareItem;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public onClick(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/f;->b:Lcom/ssjj/fnsdk/core/share/FNShareItem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->shareTo:Ljava/lang/String;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/f;->c:Lcom/ssjj/fnsdk/core/share/FNShareDialogListener;

    if-eqz v0, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/f;->b:Lcom/ssjj/fnsdk/core/share/FNShareItem;

    invoke-interface {v0, v1, v2}, Lcom/ssjj/fnsdk/core/share/FNShareDialogListener;->onClickShareTo(Ljava/lang/String;Lcom/ssjj/fnsdk/core/share/FNShareItem;)V

    :cond_27
    if-nez p1, :cond_4d

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/f;->d:Lcom/ssjj/fnsdk/core/share/FNShareListener;

    if-eqz p1, :cond_5a

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u53c2\u6570shareToList "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/f;->e:Ljava/util/List;

    if-nez v0, :cond_3b

    const-string v0, "\u4e3a\u7a7a"

    goto :goto_3d

    :cond_3b
    const-string v0, "size \u4e3a 0"

    :goto_3d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/f;->d:Lcom/ssjj/fnsdk/core/share/FNShareListener;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/f;->b:Lcom/ssjj/fnsdk/core/share/FNShareItem;

    invoke-interface {v0, v1, p1}, Lcom/ssjj/fnsdk/core/share/FNShareListener;->onFail(Lcom/ssjj/fnsdk/core/share/FNShareItem;Ljava/lang/String;)V

    goto :goto_5a

    :cond_4d
    invoke-static {}, Lcom/ssjj/fnsdk/core/share/FNShare;->getInstance()Lcom/ssjj/fnsdk/core/share/FNShare;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/f;->f:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/f;->b:Lcom/ssjj/fnsdk/core/share/FNShareItem;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/f;->d:Lcom/ssjj/fnsdk/core/share/FNShareListener;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/ssjj/fnsdk/core/share/FNShare;->share(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/share/FNShareItem;Lcom/ssjj/fnsdk/core/share/FNShareListener;)V

    :cond_5a
    :goto_5a
    return-void
.end method

.method public onGetIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/FNShare;->getInstance()Lcom/ssjj/fnsdk/core/share/FNShare;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/share/FNShare;->getIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public onGetName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/FNShare;->getInstance()Lcom/ssjj/fnsdk/core/share/FNShare;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/share/FNShare;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
