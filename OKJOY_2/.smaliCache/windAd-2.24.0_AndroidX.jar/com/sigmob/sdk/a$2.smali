.class Lcom/sigmob/sdk/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/sigmob/sdk/a;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/a;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/a$2;->b:Lcom/sigmob/sdk/a;

    iput-object p2, p0, Lcom/sigmob/sdk/a$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 4

    instance-of v0, p1, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/a$2;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setPermission(Ljava/lang/String;)V

    :cond_13
    return-void
.end method
