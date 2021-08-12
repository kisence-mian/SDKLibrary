.class Lcom/sigmob/sdk/splash/g$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/splash/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/sigmob/sdk/splash/g;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/splash/g;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/sigmob/sdk/splash/g$4;->c:Lcom/sigmob/sdk/splash/g;

    iput-object p2, p0, Lcom/sigmob/sdk/splash/g$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/splash/g$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 3

    instance-of v0, p1, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;

    if-eqz v0, :cond_18

    check-cast p1, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g$4;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setPlacement_id(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setAdtype(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g$4;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setRequest_id(Ljava/lang/String;)V

    :cond_18
    return-void
.end method
