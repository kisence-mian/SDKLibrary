.class public Lcom/ssjj/fnsdk/core/SsjjFNParams;
.super Lcom/ssjj/fnsdk/lib/core/FNEntity;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1dd5063d50dd70eeL


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/lib/core/FNEntity;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 2

    invoke-direct {p0}, Lcom/ssjj/fnsdk/lib/core/FNEntity;-><init>()V

    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->copyFrom(Lcom/ssjj/fnsdk/lib/core/FNEntity;)V

    :cond_8
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addObj(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->putObj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public clone()Lcom/ssjj/fnsdk/core/SsjjFNParams;
    .registers 2

    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->copyFrom(Lcom/ssjj/fnsdk/lib/core/FNEntity;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->clone()Lcom/ssjj/fnsdk/core/SsjjFNParams;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/SsjjFNParams;
    .registers 3

    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->fromJson(Ljava/lang/String;)V

    return-object v0
.end method
