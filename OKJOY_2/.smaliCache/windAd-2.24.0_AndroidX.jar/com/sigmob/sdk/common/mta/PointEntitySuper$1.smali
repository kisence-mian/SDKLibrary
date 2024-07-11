.class Lcom/sigmob/sdk/common/mta/PointEntitySuper$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/common/mta/PointEntitySuper;->commit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/common/mta/PointEntitySuper;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/common/mta/PointEntitySuper;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper$1;->a:Lcom/sigmob/sdk/common/mta/PointEntitySuper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper$1;->a:Lcom/sigmob/sdk/common/mta/PointEntitySuper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->insertToDB(Lcom/sigmob/sdk/common/a/c$a;)V

    return-void
.end method
