.class Lcom/ssjj/fnsdk/core/share/process/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/SsjjFNListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/process/ShareManager;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Lcom/ssjj/fnsdk/core/SsjjFNParams;

.field private final synthetic d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

.field private final synthetic e:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/process/ShareManager;Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;Ljava/util/List;)V
    .registers 6

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/process/f;->a:Lcom/ssjj/fnsdk/core/share/process/ShareManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/process/f;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/share/process/f;->c:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/share/process/f;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/share/process/f;->e:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 6

    if-nez p1, :cond_12

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/page/SharePage;->getInstance()Lcom/ssjj/fnsdk/core/share/page/SharePage;

    move-result-object p1

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/share/process/f;->b:Landroid/content/Context;

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/share/process/f;->c:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/process/f;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/process/f;->e:Ljava/util/List;

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/ssjj/fnsdk/core/share/page/SharePage;->mergeTextToImage(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;Ljava/util/List;)V

    goto :goto_2d

    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "\u4e0b\u8f7d\u8d44\u6e90\u5931\u8d25 "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/share/process/f;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p2, :cond_2d

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-interface {p2, p3, p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_2d
    :goto_2d
    return-void
.end method
