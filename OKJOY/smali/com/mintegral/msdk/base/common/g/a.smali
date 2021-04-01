.class public final Lcom/mintegral/msdk/base/common/g/a;
.super Ljava/lang/Object;
.source "ReportTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/mintegral/msdk/base/common/g/a;->a:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/mintegral/msdk/base/common/g/a;->b:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 37
    :try_start_0
    const-string v0, "ReportTask"

    const-string v1, "start report"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/mintegral/msdk/base/common/e/d/a;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/base/common/e/d/a;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/common/e/d/a;->c()V

    .line 40
    iget-object v1, p0, Lcom/mintegral/msdk/base/common/g/a;->a:Ljava/lang/String;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/base/common/g/a;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/mintegral/msdk/base/common/e/c;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/mintegral/msdk/base/common/net/l;

    move-result-object v1

    .line 41
    sget-object v2, Lcom/mintegral/msdk/base/common/a;->f:Ljava/lang/String;

    new-instance v3, Lcom/mintegral/msdk/base/common/g/a$1;

    invoke-direct {v3, p0}, Lcom/mintegral/msdk/base/common/g/a$1;-><init>(Lcom/mintegral/msdk/base/common/g/a;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/mintegral/msdk/base/common/e/d/a;->b(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_31} :catch_32

    .line 61
    :goto_31
    return-void

    .line 58
    :catch_32
    move-exception v0

    .line 59
    const-string v1, "ReportTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31
.end method
