.class final Lcom/mintegral/msdk/mtgnative/c/b$3$1;
.super Ljava/lang/Object;
.source "NativeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgnative/c/b$3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgnative/c/b$3;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgnative/c/b$3;)V
    .registers 2

    .prologue
    .line 2847
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/b$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 2851
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$3;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgnative/c/b$3;->k:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->v(Lcom/mintegral/msdk/mtgnative/c/b;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_f7

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$3;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgnative/c/b$3;->k:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->v(Lcom/mintegral/msdk/mtgnative/c/b;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f7

    .line 2852
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$3;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgnative/c/b$3;->k:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->v(Lcom/mintegral/msdk/mtgnative/c/b;)Ljava/util/Map;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$3;

    iget-object v3, v3, Lcom/mintegral/msdk/mtgnative/c/b$3;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$3;

    iget-boolean v3, v3, Lcom/mintegral/msdk/mtgnative/c/b$3;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_post"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 2853
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$3;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgnative/c/b$3;->k:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->v(Lcom/mintegral/msdk/mtgnative/c/b;)Ljava/util/Map;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$3;

    iget-object v3, v3, Lcom/mintegral/msdk/mtgnative/c/b$3;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$3;

    iget-boolean v3, v3, Lcom/mintegral/msdk/mtgnative/c/b$3;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_post"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2855
    :cond_80
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$3;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgnative/c/b$3;->k:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->v(Lcom/mintegral/msdk/mtgnative/c/b;)Ljava/util/Map;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$3;

    iget-object v3, v3, Lcom/mintegral/msdk/mtgnative/c/b$3;->c:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$3;

    iget-object v3, v3, Lcom/mintegral/msdk/mtgnative/c/b$3;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$3;

    iget-boolean v3, v3, Lcom/mintegral/msdk/mtgnative/c/b$3;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_post"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 2856
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$3;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgnative/c/b$3;->k:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->v(Lcom/mintegral/msdk/mtgnative/c/b;)Ljava/util/Map;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$3;

    iget-object v3, v3, Lcom/mintegral/msdk/mtgnative/c/b$3;->c:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$3;

    iget-object v3, v3, Lcom/mintegral/msdk/mtgnative/c/b$3;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$3;

    iget-boolean v3, v3, Lcom/mintegral/msdk/mtgnative/c/b$3;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_post"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2859
    :cond_f7
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$3;

    iget-boolean v0, v0, Lcom/mintegral/msdk/mtgnative/c/b$3;->b:Z

    if-eqz v0, :cond_131

    .line 2860
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$3;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgnative/c/b$3;->k:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Lcom/mintegral/msdk/mtgnative/c/b;Z)Z

    .line 2864
    :goto_104
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$3;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgnative/c/b$3;->k:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->w(Lcom/mintegral/msdk/mtgnative/c/b;)Lcom/mintegral/msdk/base/common/f/b;

    move-result-object v0

    if-eqz v0, :cond_11d

    .line 2865
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$3;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgnative/c/b$3;->k:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->w(Lcom/mintegral/msdk/mtgnative/c/b;)Lcom/mintegral/msdk/base/common/f/b;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$3;

    iget-object v2, v2, Lcom/mintegral/msdk/mtgnative/c/b$3;->d:Lcom/mintegral/msdk/base/common/f/a;

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/common/f/b;->a(Lcom/mintegral/msdk/base/common/f/a;)V

    .line 2867
    :cond_11d
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$3;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgnative/c/b$3;->k:Lcom/mintegral/msdk/mtgnative/c/b;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$3;

    iget-wide v2, v2, Lcom/mintegral/msdk/mtgnative/c/b$3;->e:J

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$3;

    iget v4, v4, Lcom/mintegral/msdk/mtgnative/c/b$3;->f:I

    iget-object v5, p0, Lcom/mintegral/msdk/mtgnative/c/b$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$3;

    iget-object v5, v5, Lcom/mintegral/msdk/mtgnative/c/b$3;->g:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/mtgnative/c/b;->a(IJILjava/lang/String;)V

    .line 2868
    return-void

    .line 2862
    :cond_131
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$3;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgnative/c/b$3;->k:Lcom/mintegral/msdk/mtgnative/c/b;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Lcom/mintegral/msdk/mtgnative/c/b;Z)Z

    goto :goto_104
.end method
