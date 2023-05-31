.class final Lcom/anythink/core/b/f$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/f;->a(Lcom/anythink/core/b/a/b;Lcom/anythink/core/c/c$b;J)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/c/c$b;

.field final synthetic b:Lcom/anythink/core/b/a/b;

.field final synthetic c:Lcom/anythink/core/b/f;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/f;Lcom/anythink/core/c/c$b;Lcom/anythink/core/b/a/b;)V
    .registers 4

    .prologue
    .line 607
    iput-object p1, p0, Lcom/anythink/core/b/f$3;->c:Lcom/anythink/core/b/f;

    iput-object p2, p0, Lcom/anythink/core/b/f$3;->a:Lcom/anythink/core/c/c$b;

    iput-object p3, p0, Lcom/anythink/core/b/f$3;->b:Lcom/anythink/core/b/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 610
    iget-object v1, p0, Lcom/anythink/core/b/f$3;->c:Lcom/anythink/core/b/f;

    monitor-enter v1

    .line 612
    :try_start_3
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v2

    iget-object v0, p0, Lcom/anythink/core/b/f$3;->c:Lcom/anythink/core/b/f;

    iget-object v0, v0, Lcom/anythink/core/b/f;->d:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/anythink/core/b/f$3;->a:Lcom/anythink/core/c/c$b;

    iget-object v3, v3, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v2, v0}, Lcom/anythink/core/b/a/e;->c(Ljava/lang/Runnable;)V

    .line 613
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v2

    iget-object v0, p0, Lcom/anythink/core/b/f$3;->c:Lcom/anythink/core/b/f;

    iget-object v0, v0, Lcom/anythink/core/b/f;->f:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/anythink/core/b/f$3;->a:Lcom/anythink/core/c/c$b;

    iget-object v3, v3, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v2, v0}, Lcom/anythink/core/b/a/e;->c(Ljava/lang/Runnable;)V

    .line 614
    iget-object v0, p0, Lcom/anythink/core/b/f$3;->c:Lcom/anythink/core/b/f;

    iget-object v0, v0, Lcom/anythink/core/b/f;->e:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/anythink/core/b/f$3;->b:Lcom/anythink/core/b/a/b;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 615
    if-eqz v0, :cond_41

    .line 616
    monitor-exit v1

    .line 630
    :goto_40
    return-void

    .line 618
    :cond_41
    iget-object v0, p0, Lcom/anythink/core/b/f$3;->c:Lcom/anythink/core/b/f;

    iget-object v0, v0, Lcom/anythink/core/b/f;->g:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/anythink/core/b/f$3;->b:Lcom/anythink/core/b/a/b;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    iget-object v0, p0, Lcom/anythink/core/b/f$3;->c:Lcom/anythink/core/b/f;

    iget v2, v0, Lcom/anythink/core/b/f;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/anythink/core/b/f;->i:I

    .line 620
    iget-object v0, p0, Lcom/anythink/core/b/f$3;->c:Lcom/anythink/core/b/f;

    iget-boolean v0, v0, Lcom/anythink/core/b/f;->h:Z

    if-nez v0, :cond_97

    .line 621
    iget-object v0, p0, Lcom/anythink/core/b/f$3;->c:Lcom/anythink/core/b/f;

    iget v0, v0, Lcom/anythink/core/b/f;->i:I

    iget-object v2, p0, Lcom/anythink/core/b/f$3;->c:Lcom/anythink/core/b/f;

    iget v2, v2, Lcom/anythink/core/b/f;->q:I

    iget-object v3, p0, Lcom/anythink/core/b/f$3;->c:Lcom/anythink/core/b/f;

    iget v3, v3, Lcom/anythink/core/b/f;->r:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_77

    iget-object v0, p0, Lcom/anythink/core/b/f$3;->c:Lcom/anythink/core/b/f;

    iget v0, v0, Lcom/anythink/core/b/f;->i:I

    iget-object v2, p0, Lcom/anythink/core/b/f$3;->c:Lcom/anythink/core/b/f;

    iget-object v2, v2, Lcom/anythink/core/b/f;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_97

    .line 622
    :cond_77
    iget-object v0, p0, Lcom/anythink/core/b/f$3;->c:Lcom/anythink/core/b/f;

    iget v0, v0, Lcom/anythink/core/b/f;->i:I

    iget-object v2, p0, Lcom/anythink/core/b/f$3;->c:Lcom/anythink/core/b/f;

    iget-object v2, v2, Lcom/anythink/core/b/f;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_9c

    .line 623
    iget-object v0, p0, Lcom/anythink/core/b/f$3;->c:Lcom/anythink/core/b/f;

    iget-object v2, p0, Lcom/anythink/core/b/f$3;->c:Lcom/anythink/core/b/f;

    iget v2, v2, Lcom/anythink/core/b/f;->q:I

    iget-object v3, p0, Lcom/anythink/core/b/f$3;->c:Lcom/anythink/core/b/f;

    iget v3, v3, Lcom/anythink/core/b/f;->r:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/anythink/core/b/f$3;->c:Lcom/anythink/core/b/f;

    iget v3, v3, Lcom/anythink/core/b/f;->r:I

    invoke-static {v0, v2, v3}, Lcom/anythink/core/b/f;->a(Lcom/anythink/core/b/f;II)V

    .line 630
    :cond_97
    :goto_97
    monitor-exit v1

    goto :goto_40

    :catchall_99
    move-exception v0

    monitor-exit v1
    :try_end_9b
    .catchall {:try_start_3 .. :try_end_9b} :catchall_99

    throw v0

    .line 625
    :cond_9c
    :try_start_9c
    iget-object v0, p0, Lcom/anythink/core/b/f$3;->c:Lcom/anythink/core/b/f;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/anythink/core/b/f;->l:Z
    :try_end_a1
    .catchall {:try_start_9c .. :try_end_a1} :catchall_99

    goto :goto_97
.end method
