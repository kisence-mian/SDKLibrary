.class Lcom/sigmob/sdk/a/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/a/b;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/a/b;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/a/b$2;->a:Lcom/sigmob/sdk/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 3

    instance-of v0, p1, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;

    if-eqz v0, :cond_1a

    check-cast p1, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;

    iget-object v0, p0, Lcom/sigmob/sdk/a/b$2;->a:Lcom/sigmob/sdk/a/b;

    invoke-static {v0}, Lcom/sigmob/sdk/a/b;->b(Lcom/sigmob/sdk/a/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;->setPlacement_id(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;->setAdtype(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;->commit()V

    :cond_1a
    return-void
.end method
