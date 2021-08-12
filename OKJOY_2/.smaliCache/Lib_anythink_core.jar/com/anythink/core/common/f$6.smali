.class final Lcom/anythink/core/common/f$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/f;->a(Lcom/anythink/core/c/c$b;JZ)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/c/c$b;

.field final synthetic b:Z

.field final synthetic c:Lcom/anythink/core/common/f;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/f;Lcom/anythink/core/c/c$b;Z)V
    .registers 4

    .line 1051
    iput-object p1, p0, Lcom/anythink/core/common/f$6;->c:Lcom/anythink/core/common/f;

    iput-object p2, p0, Lcom/anythink/core/common/f$6;->a:Lcom/anythink/core/c/c$b;

    iput-boolean p3, p0, Lcom/anythink/core/common/f$6;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1054
    iget-object v0, p0, Lcom/anythink/core/common/f$6;->c:Lcom/anythink/core/common/f;

    monitor-enter v0

    .line 1056
    :try_start_3
    iget-object v1, p0, Lcom/anythink/core/common/f$6;->c:Lcom/anythink/core/common/f;

    iget-boolean v1, v1, Lcom/anythink/core/common/f;->h:Z

    if-eqz v1, :cond_b

    .line 1057
    monitor-exit v0

    return-void

    .line 1061
    :cond_b
    iget-object v1, p0, Lcom/anythink/core/common/f$6;->c:Lcom/anythink/core/common/f;

    iget-object v1, v1, Lcom/anythink/core/common/f;->A:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/anythink/core/common/f$6;->a:Lcom/anythink/core/c/c$b;

    iget-object v2, v2, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 1062
    iget-object v2, p0, Lcom/anythink/core/common/f$6;->c:Lcom/anythink/core/common/f;

    iget-object v2, v2, Lcom/anythink/core/common/f;->B:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/anythink/core/common/f$6;->a:Lcom/anythink/core/c/c$b;

    iget-object v3, v3, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 1064
    if-eqz v1, :cond_30

    .line 1065
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/anythink/core/common/b/g;->c(Ljava/lang/Runnable;)V

    .line 1068
    :cond_30
    if-eqz v2, :cond_39

    .line 1069
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/b/g;->c(Ljava/lang/Runnable;)V

    .line 1073
    :cond_39
    iget-object v1, p0, Lcom/anythink/core/common/f$6;->c:Lcom/anythink/core/common/f;

    iget-object v1, v1, Lcom/anythink/core/common/f;->A:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/anythink/core/common/f$6;->a:Lcom/anythink/core/c/c$b;

    iget-object v2, v2, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    iget-object v1, p0, Lcom/anythink/core/common/f$6;->c:Lcom/anythink/core/common/f;

    iget-object v1, v1, Lcom/anythink/core/common/f;->B:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/anythink/core/common/f$6;->a:Lcom/anythink/core/c/c$b;

    iget-object v2, v2, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    iget-boolean v1, p0, Lcom/anythink/core/common/f$6;->b:Z

    if-eqz v1, :cond_60

    .line 1078
    iget-object v1, p0, Lcom/anythink/core/common/f$6;->c:Lcom/anythink/core/common/f;

    iget-object v2, v1, Lcom/anythink/core/common/f;->m:Ljava/util/List;

    iget-object v3, p0, Lcom/anythink/core/common/f$6;->c:Lcom/anythink/core/common/f;

    iget-object v3, v3, Lcom/anythink/core/common/f;->n:Ljava/util/List;

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f;Ljava/util/List;Ljava/util/List;Z)V

    goto :goto_6c

    .line 1080
    :cond_60
    iget-object v1, p0, Lcom/anythink/core/common/f$6;->c:Lcom/anythink/core/common/f;

    iget-object v2, v1, Lcom/anythink/core/common/f;->k:Ljava/util/List;

    iget-object v3, p0, Lcom/anythink/core/common/f$6;->c:Lcom/anythink/core/common/f;

    iget-object v3, v3, Lcom/anythink/core/common/f;->l:Ljava/util/List;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f;Ljava/util/List;Ljava/util/List;Z)V

    .line 1083
    :goto_6c
    monitor-exit v0

    return-void

    :catchall_6e
    move-exception v1

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_3 .. :try_end_70} :catchall_6e

    throw v1
.end method
