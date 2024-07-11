.class Lcom/sigmob/sdk/splash/g$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/splash/g;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/sigmob/sdk/splash/g;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/splash/g;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    iput-object p1, p0, Lcom/sigmob/sdk/splash/g$2;->d:Lcom/sigmob/sdk/splash/g;

    iput-object p2, p0, Lcom/sigmob/sdk/splash/g$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/splash/g$2;->b:Ljava/lang/String;

    iput p4, p0, Lcom/sigmob/sdk/splash/g$2;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 3

    instance-of v0, p1, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;

    if-eqz v0, :cond_19

    check-cast p1, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g$2;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;->setRequest_id(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g$2;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;->setPlacement_id(Ljava/lang/String;)V

    iget v0, p0, Lcom/sigmob/sdk/splash/g$2;->c:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;->setAdtype(Ljava/lang/String;)V

    :cond_19
    return-void
.end method
