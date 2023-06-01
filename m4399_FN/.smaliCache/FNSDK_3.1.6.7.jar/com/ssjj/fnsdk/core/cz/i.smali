.class Lcom/ssjj/fnsdk/core/cz/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/cz/h;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

.field private final synthetic c:Z

.field private final synthetic d:Lcom/ssjj/fnsdk/core/SsjjFNParams;

.field private final synthetic e:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/cz/h;Lcom/ssjj/fnsdk/core/SsjjFNListener;ZLcom/ssjj/fnsdk/core/SsjjFNParams;Lorg/json/JSONObject;)V
    .registers 6

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/cz/i;->a:Lcom/ssjj/fnsdk/core/cz/h;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/cz/i;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    iput-boolean p3, p0, Lcom/ssjj/fnsdk/core/cz/i;->c:Z

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/cz/i;->d:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/cz/i;->e:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cz/i;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v1, p0, Lcom/ssjj/fnsdk/core/cz/i;->c:Z

    if-eqz v1, :cond_1e

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cz/i;->a:Lcom/ssjj/fnsdk/core/cz/h;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/cz/h;->a(Lcom/ssjj/fnsdk/core/cz/h;)Lcom/ssjj/fnsdk/core/cz/g;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/cz/i;->d:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/cz/i;->e:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/ssjj/fnsdk/core/cz/g;->a(Lcom/ssjj/fnsdk/core/cz/g;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cz/i;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const-string v1, "\u83b7\u53d6\u5386\u53f2\u8ba2\u5355\u6210\u529f"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/cz/i;->d:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    const/4 v3, 0x0

    goto :goto_23

    :cond_1e
    const-string v1, "sign\u6821\u9a8c\u5931\u8d25!"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/cz/i;->d:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    const/4 v3, 0x1

    :goto_23
    invoke-interface {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void
.end method
