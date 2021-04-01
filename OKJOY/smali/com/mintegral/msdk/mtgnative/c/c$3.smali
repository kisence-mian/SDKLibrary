.class final Lcom/mintegral/msdk/mtgnative/c/c$3;
.super Lcom/mintegral/msdk/base/common/f/a;
.source "NativePreloadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgnative/c/c;->a(IJILjava/lang/String;ZLcom/mintegral/msdk/b/a/a;Lcom/mintegral/msdk/out/AdMobClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Ljava/util/UUID;

.field final synthetic d:Lcom/mintegral/msdk/base/common/f/a;

.field final synthetic e:I

.field final synthetic f:J

.field final synthetic g:I

.field final synthetic k:Lcom/mintegral/msdk/b/a/a;

.field final synthetic l:Lcom/mintegral/msdk/out/AdMobClickListener;

.field final synthetic m:Lcom/mintegral/msdk/mtgnative/c/c;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgnative/c/c;Ljava/lang/String;ZLjava/util/UUID;Lcom/mintegral/msdk/base/common/f/a;IJILcom/mintegral/msdk/b/a/a;Lcom/mintegral/msdk/out/AdMobClickListener;)V
    .registers 13

    .prologue
    .line 2062
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->m:Lcom/mintegral/msdk/mtgnative/c/c;

    iput-object p2, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->b:Z

    iput-object p4, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->c:Ljava/util/UUID;

    iput-object p5, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->d:Lcom/mintegral/msdk/base/common/f/a;

    iput p6, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->e:I

    iput-wide p7, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->f:J

    iput p9, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->g:I

    iput-object p10, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->k:Lcom/mintegral/msdk/b/a/a;

    iput-object p11, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->l:Lcom/mintegral/msdk/out/AdMobClickListener;

    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .prologue
    .line 2066
    const/4 v0, 0x0

    .line 2067
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->m:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgnative/c/c;->e(Lcom/mintegral/msdk/mtgnative/c/c;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_137

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->m:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgnative/c/c;->e(Lcom/mintegral/msdk/mtgnative/c/c;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_137

    .line 2068
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->m:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgnative/c/c;->e(Lcom/mintegral/msdk/mtgnative/c/c;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_ttc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 2069
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->m:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c;->e(Lcom/mintegral/msdk/mtgnative/c/c;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ttc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2070
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->m:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgnative/c/c;->e(Lcom/mintegral/msdk/mtgnative/c/c;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_ttc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2072
    :cond_9d
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->m:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgnative/c/c;->e(Lcom/mintegral/msdk/mtgnative/c/c;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->c:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_ttc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_137

    .line 2073
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->m:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c;->e(Lcom/mintegral/msdk/mtgnative/c/c;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->c:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ttc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2074
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->m:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgnative/c/c;->e(Lcom/mintegral/msdk/mtgnative/c/c;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->c:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_ttc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2077
    :cond_137
    if-nez v0, :cond_147

    .line 2078
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$3;->m:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c;->b(Lcom/mintegral/msdk/mtgnative/c/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mintegral/msdk/mtgnative/c/c$3$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/mtgnative/c/c$3$1;-><init>(Lcom/mintegral/msdk/mtgnative/c/c$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2102
    :cond_147
    return-void
.end method

.method public final b()V
    .registers 1

    .prologue
    .line 2114
    return-void
.end method
