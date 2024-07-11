.class final Lcom/anythink/core/common/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/a;->a(Landroid/content/Context;Lcom/anythink/core/common/d/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/d/d;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/anythink/core/common/d/b;

.field final synthetic d:Lcom/anythink/core/api/ATBaseAdAdapter;

.field final synthetic e:Lcom/anythink/core/common/a;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/a;Lcom/anythink/core/common/d/d;Landroid/content/Context;Lcom/anythink/core/common/d/b;Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .registers 6

    .line 592
    iput-object p1, p0, Lcom/anythink/core/common/a$1;->e:Lcom/anythink/core/common/a;

    iput-object p2, p0, Lcom/anythink/core/common/a$1;->a:Lcom/anythink/core/common/d/d;

    iput-object p3, p0, Lcom/anythink/core/common/a$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/anythink/core/common/a$1;->c:Lcom/anythink/core/common/d/b;

    iput-object p5, p0, Lcom/anythink/core/common/a$1;->d:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 595
    iget-object v0, p0, Lcom/anythink/core/common/a$1;->e:Lcom/anythink/core/common/a;

    monitor-enter v0

    .line 597
    :try_start_3
    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/a$1;->a:Lcom/anythink/core/common/d/d;

    invoke-virtual {v2}, Lcom/anythink/core/common/d/d;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/o;->a(Ljava/lang/String;)Lcom/anythink/core/common/d;

    move-result-object v1

    .line 598
    iget-object v2, p0, Lcom/anythink/core/common/a$1;->a:Lcom/anythink/core/common/d/d;

    invoke-virtual {v2}, Lcom/anythink/core/common/d/d;->F()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/a$1;->a:Lcom/anythink/core/common/d/d;

    invoke-virtual {v3}, Lcom/anythink/core/common/d/d;->n()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/anythink/core/common/d;->a(Ljava/lang/String;D)V

    .line 600
    iget-object v1, p0, Lcom/anythink/core/common/a$1;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/a$1;->a:Lcom/anythink/core/common/d/d;

    invoke-virtual {v2}, Lcom/anythink/core/common/d/d;->G()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/a$1;->a:Lcom/anythink/core/common/d/d;

    invoke-virtual {v3}, Lcom/anythink/core/common/d/d;->E()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/core/common/a$1;->a:Lcom/anythink/core/common/d/d;

    invoke-virtual {v4}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/anythink/core/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-static {}, Lcom/anythink/core/a/c;->a()Lcom/anythink/core/a/c;

    iget-object v1, p0, Lcom/anythink/core/common/a$1;->a:Lcom/anythink/core/common/d/d;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/d;->E()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/a/c;->a(Ljava/lang/String;)V

    .line 603
    invoke-static {}, Lcom/anythink/core/a/c;->a()Lcom/anythink/core/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/a$1;->a:Lcom/anythink/core/common/d/d;

    invoke-virtual {v2}, Lcom/anythink/core/common/d/d;->E()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/a$1;->a:Lcom/anythink/core/common/d/d;

    invoke-virtual {v3}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v1, p0, Lcom/anythink/core/common/a$1;->e:Lcom/anythink/core/common/a;

    iget-object v2, p0, Lcom/anythink/core/common/a$1;->a:Lcom/anythink/core/common/d/d;

    invoke-virtual {v2}, Lcom/anythink/core/common/d/d;->E()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/a$1;->a:Lcom/anythink/core/common/d/d;

    invoke-virtual {v3}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/core/common/a$1;->c:Lcom/anythink/core/common/d/b;

    invoke-virtual {v1, v2, v3, v4}, Lcom/anythink/core/common/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/d/b;)V

    .line 611
    invoke-static {}, Lcom/anythink/core/b/e;->a()Lcom/anythink/core/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/e;->b()Lcom/anythink/core/api/MediationBidManager;

    move-result-object v1

    .line 612
    if-eqz v1, :cond_86

    .line 613
    iget-object v2, p0, Lcom/anythink/core/common/a$1;->a:Lcom/anythink/core/common/d/d;

    invoke-virtual {v2}, Lcom/anythink/core/common/d/d;->E()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/a$1;->d:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v3}, Lcom/anythink/core/api/ATBaseAdAdapter;->getmUnitgroupInfo()Lcom/anythink/core/c/c$b;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/api/MediationBidManager;->notifyWinnerDisplay(Ljava/lang/String;Lcom/anythink/core/c/c$b;)V

    .line 615
    :cond_86
    monitor-exit v0

    return-void

    :catchall_88
    move-exception v1

    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_3 .. :try_end_8a} :catchall_88

    throw v1
.end method
