.class Lcom/ssjj/fnsdk/unity/sdk/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/chat/sdk/kit/ChatBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/unity/sdk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/ssjj/fnsdk/unity/core/FNUnityBack;

.field final synthetic b:Lcom/ssjj/fnsdk/unity/sdk/a;


# direct methods
.method public constructor <init>(Lcom/ssjj/fnsdk/unity/sdk/a;Ljava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V
    .registers 5

    iput-object p1, p0, Lcom/ssjj/fnsdk/unity/sdk/a$b;->b:Lcom/ssjj/fnsdk/unity/sdk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/unity/sdk/a$b;->a:Lcom/ssjj/fnsdk/unity/core/FNUnityBack;

    invoke-static {p1, p2, p3}, Lcom/ssjj/fnsdk/unity/sdk/a;->a(Lcom/ssjj/fnsdk/unity/sdk/a;Ljava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Lcom/ssjj/fnsdk/unity/core/FNUnityBack;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/unity/sdk/a$b;->a:Lcom/ssjj/fnsdk/unity/core/FNUnityBack;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/unity/sdk/a$b;->a:Lcom/ssjj/fnsdk/unity/core/FNUnityBack;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/unity/core/FNUnityBack;->setKeep(Z)V

    return-void
.end method

.method public onBack(ILjava/lang/String;Lcom/ssjj/chat/sdk/kit/ChatParam;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/unity/sdk/a$b;->a:Lcom/ssjj/fnsdk/unity/core/FNUnityBack;

    if-eqz v0, :cond_19

    if-eqz p3, :cond_13

    new-instance v0, Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;-><init>()V

    invoke-virtual {p3}, Lcom/ssjj/chat/sdk/kit/ChatParam;->toJson()Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->fromJson(Lorg/json/JSONObject;)V

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iget-object p3, p0, Lcom/ssjj/fnsdk/unity/sdk/a$b;->a:Lcom/ssjj/fnsdk/unity/core/FNUnityBack;

    invoke-virtual {p3, p1, p2, v0}, Lcom/ssjj/fnsdk/unity/core/FNUnityBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_19
    return-void
.end method
