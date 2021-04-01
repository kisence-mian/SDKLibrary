.class final Lcom/mintegral/msdk/base/common/e/b$4;
.super Lcom/mintegral/msdk/base/common/e/d/b;
.source "ReportController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/base/common/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/out/Frame;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mintegral/msdk/base/common/e/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/base/common/e/b;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 464
    iput-object p1, p0, Lcom/mintegral/msdk/base/common/e/b$4;->b:Lcom/mintegral/msdk/base/common/e/b;

    iput-object p2, p0, Lcom/mintegral/msdk/base/common/e/b$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/e/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 501
    sget-object v0, Lcom/mintegral/msdk/base/common/e/b;->a:Ljava/lang/String;

    const-string v1, "report success"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 468
    sget-object v0, Lcom/mintegral/msdk/base/common/e/b;->a:Ljava/lang/String;

    const-string v1, "report success"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v0, "net_time_stats"

    iget-object v1, p0, Lcom/mintegral/msdk/base/common/e/b$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 474
    const-string v0, "click_duration"

    iget-object v1, p0, Lcom/mintegral/msdk/base/common/e/b$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 475
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->a()Lcom/mintegral/msdk/base/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/b;->c()V

    .line 483
    :cond_22
    :goto_22
    return-void

    .line 476
    :cond_23
    const-string v0, "load_duration"

    iget-object v1, p0, Lcom/mintegral/msdk/base/common/e/b$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 477
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->a()Lcom/mintegral/msdk/base/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/b;->c()V

    .line 481
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->a()Lcom/mintegral/msdk/base/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/b;->c()V

    goto :goto_22
.end method
