.class final Lcom/mintegral/msdk/mtgnative/c/c$3$1;
.super Ljava/lang/Object;
.source "NativePreloadController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgnative/c/c$3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgnative/c/c$3;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgnative/c/c$3;)V
    .registers 2

    .prologue
    .line 2078
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/c$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    .prologue
    const/4 v3, 0x1

    .line 2082
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$3;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgnative/c/c$3;->m:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c;->e(Lcom/mintegral/msdk/mtgnative/c/c;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_f7

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$3;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgnative/c/c$3;->m:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c;->e(Lcom/mintegral/msdk/mtgnative/c/c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f7

    .line 2083
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$3;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgnative/c/c$3;->m:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c;->e(Lcom/mintegral/msdk/mtgnative/c/c;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$3;

    iget-object v2, v2, Lcom/mintegral/msdk/mtgnative/c/c$3;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$3;

    iget-boolean v2, v2, Lcom/mintegral/msdk/mtgnative/c/c$3;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_post"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 2084
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$3;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgnative/c/c$3;->m:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c;->e(Lcom/mintegral/msdk/mtgnative/c/c;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$3;

    iget-object v2, v2, Lcom/mintegral/msdk/mtgnative/c/c$3;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$3;

    iget-boolean v2, v2, Lcom/mintegral/msdk/mtgnative/c/c$3;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_post"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2086
    :cond_80
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$3;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgnative/c/c$3;->m:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c;->e(Lcom/mintegral/msdk/mtgnative/c/c;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$3;

    iget-object v2, v2, Lcom/mintegral/msdk/mtgnative/c/c$3;->c:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$3;

    iget-object v2, v2, Lcom/mintegral/msdk/mtgnative/c/c$3;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$3;

    iget-boolean v2, v2, Lcom/mintegral/msdk/mtgnative/c/c$3;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_post"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 2087
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$3;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgnative/c/c$3;->m:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c;->e(Lcom/mintegral/msdk/mtgnative/c/c;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$3;

    iget-object v2, v2, Lcom/mintegral/msdk/mtgnative/c/c$3;->c:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$3;

    iget-object v2, v2, Lcom/mintegral/msdk/mtgnative/c/c$3;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$3;

    iget-boolean v2, v2, Lcom/mintegral/msdk/mtgnative/c/c$3;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_post"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2093
    :cond_f7
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$3;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgnative/c/c$3;->m:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c;->f(Lcom/mintegral/msdk/mtgnative/c/c;)Lcom/mintegral/msdk/base/common/f/b;

    move-result-object v0

    if-eqz v0, :cond_110

    .line 2094
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$3;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgnative/c/c$3;->m:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c;->f(Lcom/mintegral/msdk/mtgnative/c/c;)Lcom/mintegral/msdk/base/common/f/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/c$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$3;

    iget-object v1, v1, Lcom/mintegral/msdk/mtgnative/c/c$3;->d:Lcom/mintegral/msdk/base/common/f/a;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/common/f/b;->a(Lcom/mintegral/msdk/base/common/f/a;)V

    .line 2096
    :cond_110
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$3;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgnative/c/c$3;->m:Lcom/mintegral/msdk/mtgnative/c/c;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/c$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$3;

    iget v1, v1, Lcom/mintegral/msdk/mtgnative/c/c$3;->e:I

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$3;

    iget-wide v2, v2, Lcom/mintegral/msdk/mtgnative/c/c$3;->f:J

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/c$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$3;

    iget v4, v4, Lcom/mintegral/msdk/mtgnative/c/c$3;->g:I

    iget-object v5, p0, Lcom/mintegral/msdk/mtgnative/c/c$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$3;

    iget-object v5, v5, Lcom/mintegral/msdk/mtgnative/c/c$3;->m:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v5}, Lcom/mintegral/msdk/mtgnative/c/c;->g(Lcom/mintegral/msdk/mtgnative/c/c;)Lcom/mintegral/msdk/c/d;

    iget-object v5, p0, Lcom/mintegral/msdk/mtgnative/c/c$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$3;

    iget-object v5, v5, Lcom/mintegral/msdk/mtgnative/c/c$3;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/mintegral/msdk/mtgnative/c/c$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$3;

    iget-object v6, v6, Lcom/mintegral/msdk/mtgnative/c/c$3;->k:Lcom/mintegral/msdk/b/a/a;

    iget-object v7, p0, Lcom/mintegral/msdk/mtgnative/c/c$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$3;

    iget-boolean v7, v7, Lcom/mintegral/msdk/mtgnative/c/c$3;->b:Z

    iget-object v8, p0, Lcom/mintegral/msdk/mtgnative/c/c$3$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$3;

    iget-object v8, v8, Lcom/mintegral/msdk/mtgnative/c/c$3;->l:Lcom/mintegral/msdk/out/AdMobClickListener;

    invoke-virtual/range {v0 .. v8}, Lcom/mintegral/msdk/mtgnative/c/c;->a(IJILjava/lang/String;Lcom/mintegral/msdk/b/a/a;ZLcom/mintegral/msdk/out/AdMobClickListener;)V

    .line 2099
    return-void
.end method
