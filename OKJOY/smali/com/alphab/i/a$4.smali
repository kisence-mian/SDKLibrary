.class final Lcom/alphab/i/a$4;
.super Lcom/mintegral/msdk/base/common/f/a;
.source "AlphabImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alphab/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alphab/i/a;


# direct methods
.method constructor <init>(Lcom/alphab/i/a;)V
    .registers 2

    .prologue
    .line 506
    iput-object p1, p0, Lcom/alphab/i/a$4;->a:Lcom/alphab/i/a;

    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 509
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 510
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/c/b;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 511
    sget-object v0, Lcom/alphab/i/a;->a:Ljava/lang/String;

    const-string v1, "request setting"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/alphab/i/a$4;->a:Lcom/alphab/i/a;

    invoke-static {v0}, Lcom/alphab/i/a;->d(Lcom/alphab/i/a;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 514
    :cond_36
    iget-object v0, p0, Lcom/alphab/i/a$4;->a:Lcom/alphab/i/a;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alphab/i/a;->a(Lcom/alphab/i/a;Lcom/mintegral/msdk/c/a;)Lcom/mintegral/msdk/c/a;

    .line 515
    return-void
.end method

.method public final b()V
    .registers 1

    .prologue
    .line 520
    return-void
.end method
