.class public Lcom/ssjj/fnsdk/unity/sdk/FNChatUnity;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Lcom/ssjj/chat/sdk/kit/ChatParam;Lcom/ssjj/chat/sdk/kit/ChatBack;)V
    .registers 3

    invoke-static {}, Lcom/ssjj/fnsdk/unity/sdk/a;->a()Lcom/ssjj/fnsdk/unity/sdk/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ssjj/fnsdk/unity/sdk/a;->a(Lcom/ssjj/chat/sdk/kit/ChatParam;Lcom/ssjj/chat/sdk/kit/ChatBack;)V

    return-void
.end method

.method public static invoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/ssjj/fnsdk/unity/sdk/a;->a()Lcom/ssjj/fnsdk/unity/sdk/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ssjj/fnsdk/unity/sdk/a;->invoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isSupport(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Lcom/ssjj/fnsdk/unity/sdk/a;->a()Lcom/ssjj/fnsdk/unity/sdk/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ssjj/fnsdk/unity/sdk/a;->isSupport(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setCallbackDefault(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-static {}, Lcom/ssjj/fnsdk/unity/sdk/a;->a()Lcom/ssjj/fnsdk/unity/sdk/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ssjj/fnsdk/unity/sdk/a;->setCallbackDefault(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
