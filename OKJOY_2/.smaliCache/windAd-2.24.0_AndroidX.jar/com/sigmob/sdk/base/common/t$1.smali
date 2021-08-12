.class Lcom/sigmob/sdk/base/common/t$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/t;->a(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/sigmob/sdk/base/common/t;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/t;ILjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/t$1;->c:Lcom/sigmob/sdk/base/common/t;

    iput p2, p0, Lcom/sigmob/sdk/base/common/t$1;->a:I

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/t$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 6

    instance-of v0, p1, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;

    if-eqz v0, :cond_96

    check-cast p1, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/t$1;->c:Lcom/sigmob/sdk/base/common/t;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/t;->a(Lcom/sigmob/sdk/base/common/t;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/t;->a(Lcom/sigmob/sdk/base/common/t;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setVtime(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/t$1;->c:Lcom/sigmob/sdk/base/common/t;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/t;->b(Lcom/sigmob/sdk/base/common/t;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/t;->a(Lcom/sigmob/sdk/base/common/t;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setSkip_show_time(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/t$1;->c:Lcom/sigmob/sdk/base/common/t;

    iget v1, p0, Lcom/sigmob/sdk/base/common/t$1;->a:I

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/t;->a(Lcom/sigmob/sdk/base/common/t;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setCurrent_time(Ljava/lang/String;)V

    iget v0, p0, Lcom/sigmob/sdk/base/common/t$1;->a:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/t$1;->c:Lcom/sigmob/sdk/base/common/t;

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/t;->c(Lcom/sigmob/sdk/base/common/t;)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setPlay_process(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/t$1;->b:Ljava/lang/String;

    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/t$1;->c:Lcom/sigmob/sdk/base/common/t;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/t;->d(Lcom/sigmob/sdk/base/common/t;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setAd_scene(Ljava/lang/String;)V

    :cond_53
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/t$1;->c:Lcom/sigmob/sdk/base/common/t;

    iget v1, p0, Lcom/sigmob/sdk/base/common/t$1;->a:I

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/t;->b(Lcom/sigmob/sdk/base/common/t;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setPlay_time(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/t$1;->c:Lcom/sigmob/sdk/base/common/t;

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/t;->e(Lcom/sigmob/sdk/base/common/t;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setSet_close_time(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/t$1;->c:Lcom/sigmob/sdk/base/common/t;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/t;->f(Lcom/sigmob/sdk/base/common/t;)Z

    move-result v0

    const-string v1, "1"

    const-string v2, "0"

    if-eqz v0, :cond_85

    move-object v0, v1

    goto :goto_86

    :cond_85
    move-object v0, v2

    :goto_86
    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setIs_truncation(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/t$1;->c:Lcom/sigmob/sdk/base/common/t;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/t;->g(Lcom/sigmob/sdk/base/common/t;)Z

    move-result v0

    if-eqz v0, :cond_92

    goto :goto_93

    :cond_92
    move-object v1, v2

    :goto_93
    invoke-virtual {p1, v1}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setIs_force(Ljava/lang/String;)V

    :cond_96
    return-void
.end method
