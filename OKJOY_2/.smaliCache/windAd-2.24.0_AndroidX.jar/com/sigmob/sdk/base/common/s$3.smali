.class final Lcom/sigmob/sdk/base/common/s$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/common/e;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/volley/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/volley/t;


# direct methods
.method constructor <init>(Lcom/sigmob/volley/t;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/s$3;->a:Lcom/sigmob/volley/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 4

    instance-of v0, p1, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;

    if-eqz v0, :cond_1d

    check-cast p1, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;

    const-string v0, "-1"

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setHttp_code(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/s$3;->a:Lcom/sigmob/volley/t;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/sigmob/volley/t;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_18
    const-string v0, "0"

    :goto_1a
    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setTime_spend(Ljava/lang/String;)V

    :cond_1d
    return-void
.end method
