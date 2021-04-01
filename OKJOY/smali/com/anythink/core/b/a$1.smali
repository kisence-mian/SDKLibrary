.class final Lcom/anythink/core/b/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/a;->a(Landroid/content/Context;Lcom/anythink/core/b/c/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/anythink/core/b/c/b;

.field final synthetic c:Lcom/anythink/core/b/c/a;

.field final synthetic d:Lcom/anythink/core/b/a;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/a;Landroid/content/Context;Lcom/anythink/core/b/c/b;Lcom/anythink/core/b/c/a;)V
    .registers 5

    .prologue
    .line 482
    iput-object p1, p0, Lcom/anythink/core/b/a$1;->d:Lcom/anythink/core/b/a;

    iput-object p2, p0, Lcom/anythink/core/b/a$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/core/b/a$1;->b:Lcom/anythink/core/b/c/b;

    iput-object p4, p0, Lcom/anythink/core/b/a$1;->c:Lcom/anythink/core/b/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 485
    iget-object v1, p0, Lcom/anythink/core/b/a$1;->d:Lcom/anythink/core/b/a;

    monitor-enter v1

    .line 487
    :try_start_3
    iget-object v0, p0, Lcom/anythink/core/b/a$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/core/b/a$1;->b:Lcom/anythink/core/b/c/b;

    invoke-virtual {v2}, Lcom/anythink/core/b/c/b;->F()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/b/a$1;->b:Lcom/anythink/core/b/c/b;

    invoke-virtual {v3}, Lcom/anythink/core/b/c/b;->D()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/core/b/a$1;->b:Lcom/anythink/core/b/c/b;

    invoke-virtual {v4}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/anythink/core/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-static {}, Lcom/anythink/core/a/b;->a()Lcom/anythink/core/a/b;

    iget-object v0, p0, Lcom/anythink/core/b/a$1;->b:Lcom/anythink/core/b/c/b;

    invoke-virtual {v0}, Lcom/anythink/core/b/c/b;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/a/b;->a(Ljava/lang/String;)V

    .line 490
    invoke-static {}, Lcom/anythink/core/a/b;->a()Lcom/anythink/core/a/b;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/core/b/a$1;->b:Lcom/anythink/core/b/c/b;

    invoke-virtual {v2}, Lcom/anythink/core/b/c/b;->D()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/b/a$1;->b:Lcom/anythink/core/b/c/b;

    invoke-virtual {v3}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/anythink/core/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/anythink/core/b/a$1;->c:Lcom/anythink/core/b/c/a;

    invoke-virtual {v0}, Lcom/anythink/core/b/c/a;->d()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 493
    invoke-static {}, Lcom/anythink/core/b/a;->a()Lcom/anythink/core/b/a;

    .line 496
    :cond_48
    monitor-exit v1

    return-void

    :catchall_4a
    move-exception v0

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw v0
.end method
