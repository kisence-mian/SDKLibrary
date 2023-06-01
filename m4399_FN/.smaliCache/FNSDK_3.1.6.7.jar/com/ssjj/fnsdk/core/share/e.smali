.class Lcom/ssjj/fnsdk/core/share/e;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/FNShare;

.field private final synthetic b:Ljava/util/List;

.field private final synthetic c:Lcom/ssjj/fnsdk/core/share/FNShareDialogListener;

.field private final synthetic d:Lcom/ssjj/fnsdk/core/share/FNShareItem;

.field private final synthetic e:Lcom/ssjj/fnsdk/core/share/FNShareListener;

.field private final synthetic f:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/FNShare;Ljava/util/List;Lcom/ssjj/fnsdk/core/share/FNShareDialogListener;Lcom/ssjj/fnsdk/core/share/FNShareItem;Lcom/ssjj/fnsdk/core/share/FNShareListener;Landroid/app/Activity;)V
    .registers 7

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/e;->a:Lcom/ssjj/fnsdk/core/share/FNShare;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/e;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/share/e;->c:Lcom/ssjj/fnsdk/core/share/FNShareDialogListener;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/share/e;->d:Lcom/ssjj/fnsdk/core/share/FNShareItem;

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/share/e;->e:Lcom/ssjj/fnsdk/core/share/FNShareListener;

    iput-object p6, p0, Lcom/ssjj/fnsdk/core/share/e;->f:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/e;->b:Ljava/util/List;

    if-eqz v0, :cond_46

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_46

    :cond_b
    invoke-static {}, Lcom/ssjj/fnsdk/core/share/ShareStat;->getInstance()Lcom/ssjj/fnsdk/core/share/ShareStat;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/e;->f:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/e;->d:Lcom/ssjj/fnsdk/core/share/FNShareItem;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ssjj/fnsdk/core/share/ShareStat;->shareStat(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/FNShareItem;I)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/ShareDialog;->getInstance()Lcom/ssjj/fnsdk/core/share/ShareDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/e;->d:Lcom/ssjj/fnsdk/core/share/FNShareItem;

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/share/ShareDialog;->setShareItem(Lcom/ssjj/fnsdk/core/share/FNShareItem;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/ShareDialog;->getInstance()Lcom/ssjj/fnsdk/core/share/ShareDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/e;->f:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/e;->b:Ljava/util/List;

    new-instance v10, Lcom/ssjj/fnsdk/core/share/f;

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/share/e;->d:Lcom/ssjj/fnsdk/core/share/FNShareItem;

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/share/e;->c:Lcom/ssjj/fnsdk/core/share/FNShareDialogListener;

    iget-object v7, p0, Lcom/ssjj/fnsdk/core/share/e;->e:Lcom/ssjj/fnsdk/core/share/FNShareListener;

    iget-object v8, p0, Lcom/ssjj/fnsdk/core/share/e;->b:Ljava/util/List;

    iget-object v9, p0, Lcom/ssjj/fnsdk/core/share/e;->f:Landroid/app/Activity;

    move-object v3, v10

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/ssjj/fnsdk/core/share/f;-><init>(Lcom/ssjj/fnsdk/core/share/e;Lcom/ssjj/fnsdk/core/share/FNShareItem;Lcom/ssjj/fnsdk/core/share/FNShareDialogListener;Lcom/ssjj/fnsdk/core/share/FNShareListener;Ljava/util/List;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2, v10}, Lcom/ssjj/fnsdk/core/share/ShareDialog;->showShareTo(Landroid/app/Activity;Ljava/util/List;Lcom/ssjj/fnsdk/core/share/ShareDialog$ShareDialogListener;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/e;->c:Lcom/ssjj/fnsdk/core/share/FNShareDialogListener;

    if-eqz v0, :cond_45

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/e;->d:Lcom/ssjj/fnsdk/core/share/FNShareItem;

    invoke-interface {v0, v1}, Lcom/ssjj/fnsdk/core/share/FNShareDialogListener;->onShowSucc(Lcom/ssjj/fnsdk/core/share/FNShareItem;)V

    :cond_45
    return-void

    :cond_46
    :goto_46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u4f20\u5165shareToList "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/e;->b:Ljava/util/List;

    if-nez v1, :cond_54

    const-string v1, "\u4e3anull"

    goto :goto_56

    :cond_54
    const-string v1, "size \u4e3a 0"

    :goto_56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/e;->c:Lcom/ssjj/fnsdk/core/share/FNShareDialogListener;

    if-eqz v1, :cond_68

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/e;->d:Lcom/ssjj/fnsdk/core/share/FNShareItem;

    invoke-interface {v1, v2, v0}, Lcom/ssjj/fnsdk/core/share/FNShareDialogListener;->onShowFail(Lcom/ssjj/fnsdk/core/share/FNShareItem;Ljava/lang/String;)V

    goto :goto_71

    :cond_68
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/e;->e:Lcom/ssjj/fnsdk/core/share/FNShareListener;

    if-eqz v1, :cond_71

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/e;->d:Lcom/ssjj/fnsdk/core/share/FNShareItem;

    invoke-interface {v1, v2, v0}, Lcom/ssjj/fnsdk/core/share/FNShareListener;->onFail(Lcom/ssjj/fnsdk/core/share/FNShareItem;Ljava/lang/String;)V

    :cond_71
    :goto_71
    return-void
.end method
