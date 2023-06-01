.class Lcom/ssjj/fnsdk/core/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/SsjjFNListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNCfg2;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNCfg2;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/ah;->a:Lcom/ssjj/fnsdk/core/SsjjFNCfg2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 4

    if-eqz p3, :cond_16

    :try_start_2
    const-string p1, "data"

    invoke-virtual {p3, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/ah;->a:Lcom/ssjj/fnsdk/core/SsjjFNCfg2;

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->a(Lcom/ssjj/fnsdk/core/SsjjFNCfg2;)Ljava/util/Map;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->a(Lcom/ssjj/fnsdk/core/SsjjFNCfg2;Ljava/util/Map;Ljava/lang/String;)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_16
    :goto_16
    return-void
.end method
