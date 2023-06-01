.class Lcom/ssjj/fnsdk/core/share/price/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/SsjjFNListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/price/d;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/price/d;Lcom/ssjj/fnsdk/core/SsjjFNListener;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/price/e;->a:Lcom/ssjj/fnsdk/core/share/price/d;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/price/e;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/share/price/e;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 5

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/share/price/e;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p3, :cond_25

    if-nez p1, :cond_19

    new-instance p1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const-string p3, "savePath"

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/price/e;->c:Ljava/lang/String;

    invoke-virtual {p1, p3, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/share/price/e;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const/4 v0, 0x0

    invoke-interface {p3, v0, p2, p1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_25

    :cond_19
    const-string p1, "\u5904\u7406\u56fe\u7247\u5931\u8d25"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/share/price/e;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-interface {p2, p3, p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_25
    :goto_25
    return-void
.end method
