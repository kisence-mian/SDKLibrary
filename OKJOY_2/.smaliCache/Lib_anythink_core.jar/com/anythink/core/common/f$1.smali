.class final Lcom/anythink/core/common/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/f;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/f;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    .line 108
    iget-object v0, p0, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f;

    monitor-enter v0

    .line 109
    :try_start_3
    iget-object v1, p0, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/anythink/core/common/f;->h:Z

    .line 112
    iget-object v1, p0, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f;

    iget-object v1, v1, Lcom/anythink/core/common/f;->C:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_83

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 113
    iget-object v4, p0, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f;

    iget-object v4, v4, Lcom/anythink/core/common/f;->D:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v4, p0, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f;

    iget-object v4, v4, Lcom/anythink/core/common/f;->C:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/core/common/f$b;

    .line 115
    iget-object v5, p0, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f;

    iget-object v5, v5, Lcom/anythink/core/common/f;->z:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 116
    iget-boolean v5, v4, Lcom/anythink/core/common/f$b;->b:Z

    if-nez v5, :cond_82

    .line 117
    iget-object v5, v4, Lcom/anythink/core/common/f$b;->a:Lcom/anythink/core/common/d/d;

    .line 118
    nop

    .line 1414
    const/4 v6, 0x2

    iput v6, v5, Lcom/anythink/core/common/d/d;->n:I

    .line 119
    const-string v6, "2001"

    const-string v7, ""

    const-string v8, ""

    invoke-static {v6, v7, v8}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v6

    .line 120
    iget-object v7, p0, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f;

    iget-object v7, v7, Lcom/anythink/core/common/f;->t:Lcom/anythink/core/api/AdError;

    invoke-virtual {v5}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/anythink/core/common/d/d;->y()I

    move-result v9

    invoke-virtual {v5}, Lcom/anythink/core/common/d/d;->C()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10, v6}, Lcom/anythink/core/api/AdError;->putNetworkErrorMsg(Ljava/lang/String;ILjava/lang/String;Lcom/anythink/core/api/AdError;)V

    .line 122
    iput-boolean v2, v4, Lcom/anythink/core/common/f$b;->b:Z

    .line 124
    iget-object v4, v4, Lcom/anythink/core/common/f$b;->a:Lcom/anythink/core/common/d/d;

    sget-object v7, Lcom/anythink/core/common/b/e$e;->b:Ljava/lang/String;

    sget-object v8, Lcom/anythink/core/common/b/e$e;->g:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v7, v8, v9}, Lcom/anythink/core/common/g/g;->a(Lcom/anythink/core/common/d/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    if-eqz v3, :cond_7d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v7, v3

    goto :goto_7f

    :cond_7d
    const-wide/16 v7, 0x0

    :goto_7f
    invoke-static {v5, v2, v6, v7, v8}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;ILcom/anythink/core/api/AdError;J)V

    .line 129
    :cond_82
    goto :goto_14

    .line 131
    :cond_83
    iget-object v1, p0, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f;

    iget-boolean v1, v1, Lcom/anythink/core/common/f;->g:Z

    if-nez v1, :cond_92

    .line 132
    iget-object v1, p0, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f;

    iput-boolean v2, v1, Lcom/anythink/core/common/f;->g:Z

    .line 133
    iget-object v1, p0, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f;

    invoke-static {v1}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f;)V

    .line 140
    :cond_92
    monitor-exit v0

    return-void

    :catchall_94
    move-exception v1

    monitor-exit v0
    :try_end_96
    .catchall {:try_start_3 .. :try_end_96} :catchall_94

    throw v1
.end method
