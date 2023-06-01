.class public Lcom/ssjj/fnsdk/lib/sdk/FNParam;
.super Lcom/ssjj/fnsdk/lib/core/FNEntity;


# static fields
.field public static final KEY_RESULT:Ljava/lang/String; = "_result_"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/lib/core/FNEntity;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V
    .registers 2

    invoke-direct {p0}, Lcom/ssjj/fnsdk/lib/core/FNEntity;-><init>()V

    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->copyFrom(Lcom/ssjj/fnsdk/lib/core/FNEntity;)V

    :cond_8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/ssjj/fnsdk/lib/core/FNEntity;-><init>()V

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    :try_start_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->fromJson(Lorg/json/JSONObject;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception v0

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->putResult(Ljava/lang/String;)V

    :cond_18
    :goto_18
    return-void
.end method


# virtual methods
.method public getResult(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    const-string v0, "_result_"

    invoke-virtual {p0, v0, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getResult()Ljava/lang/String;
    .registers 2

    const-string v0, "_result_"

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResultObj()Ljava/lang/Object;
    .registers 2

    const-string v0, "_result_"

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->getObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putResult(Ljava/lang/String;)V
    .registers 3

    const-string v0, "_result_"

    invoke-virtual {p0, v0, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putResultObj(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "_result_"

    invoke-virtual {p0, v0, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->putObj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
