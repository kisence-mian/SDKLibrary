.class final Lcom/mintegral/msdk/mtgnative/c/b$4$1;
.super Ljava/lang/Object;
.source "NativeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgnative/c/b$4;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgnative/c/b$4;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgnative/c/b$4;)V
    .registers 2

    .prologue
    .line 2890
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/b$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 2894
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$4;

    iget-boolean v0, v0, Lcom/mintegral/msdk/mtgnative/c/b$4;->a:Z

    if-eqz v0, :cond_e

    .line 2895
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$4;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgnative/c/b$4;->g:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Lcom/mintegral/msdk/mtgnative/c/b;Z)Z

    .line 2897
    :cond_e
    const/4 v0, 0x0

    .line 2898
    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$4;

    iget-object v2, v2, Lcom/mintegral/msdk/mtgnative/c/b$4;->g:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgnative/c/b;->v(Lcom/mintegral/msdk/mtgnative/c/b;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_173

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$4;

    iget-object v2, v2, Lcom/mintegral/msdk/mtgnative/c/b$4;->g:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgnative/c/b;->v(Lcom/mintegral/msdk/mtgnative/c/b;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_173

    .line 2899
    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$4;

    iget-object v2, v2, Lcom/mintegral/msdk/mtgnative/c/b$4;->g:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgnative/c/b;->v(Lcom/mintegral/msdk/mtgnative/c/b;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$4;

    iget-object v4, v4, Lcom/mintegral/msdk/mtgnative/c/b$4;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$4;

    iget-boolean v4, v4, Lcom/mintegral/msdk/mtgnative/c/b$4;->a:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_post"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 2900
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$4;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgnative/c/b$4;->g:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->v(Lcom/mintegral/msdk/mtgnative/c/b;)Ljava/util/Map;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$4;

    iget-object v3, v3, Lcom/mintegral/msdk/mtgnative/c/b$4;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$4;

    iget-boolean v3, v3, Lcom/mintegral/msdk/mtgnative/c/b$4;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_post"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2901
    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$4;

    iget-object v2, v2, Lcom/mintegral/msdk/mtgnative/c/b$4;->g:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgnative/c/b;->v(Lcom/mintegral/msdk/mtgnative/c/b;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$4;

    iget-object v4, v4, Lcom/mintegral/msdk/mtgnative/c/b$4;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$4;

    iget-boolean v4, v4, Lcom/mintegral/msdk/mtgnative/c/b$4;->a:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_post"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2903
    :cond_c1
    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$4;

    iget-object v2, v2, Lcom/mintegral/msdk/mtgnative/c/b$4;->g:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgnative/c/b;->v(Lcom/mintegral/msdk/mtgnative/c/b;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$4;

    iget-object v4, v4, Lcom/mintegral/msdk/mtgnative/c/b$4;->c:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$4;

    iget-object v4, v4, Lcom/mintegral/msdk/mtgnative/c/b$4;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$4;

    iget-boolean v4, v4, Lcom/mintegral/msdk/mtgnative/c/b$4;->a:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_post"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_173

    .line 2904
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$4;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgnative/c/b$4;->g:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->v(Lcom/mintegral/msdk/mtgnative/c/b;)Ljava/util/Map;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$4;

    iget-object v3, v3, Lcom/mintegral/msdk/mtgnative/c/b$4;->c:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$4;

    iget-object v3, v3, Lcom/mintegral/msdk/mtgnative/c/b$4;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$4;

    iget-boolean v3, v3, Lcom/mintegral/msdk/mtgnative/c/b$4;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_post"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2905
    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$4;

    iget-object v2, v2, Lcom/mintegral/msdk/mtgnative/c/b$4;->g:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgnative/c/b;->v(Lcom/mintegral/msdk/mtgnative/c/b;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$4;

    iget-object v4, v4, Lcom/mintegral/msdk/mtgnative/c/b$4;->c:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$4;

    iget-object v4, v4, Lcom/mintegral/msdk/mtgnative/c/b$4;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$4;

    iget-boolean v4, v4, Lcom/mintegral/msdk/mtgnative/c/b$4;->a:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_post"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2908
    :cond_173
    if-nez v0, :cond_188

    .line 2909
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$4;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgnative/c/b$4;->g:Lcom/mintegral/msdk/mtgnative/c/b;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$4;

    iget-wide v2, v2, Lcom/mintegral/msdk/mtgnative/c/b$4;->d:J

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$4;

    iget v4, v4, Lcom/mintegral/msdk/mtgnative/c/b$4;->e:I

    iget-object v5, p0, Lcom/mintegral/msdk/mtgnative/c/b$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/b$4;

    iget-object v5, v5, Lcom/mintegral/msdk/mtgnative/c/b$4;->f:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/mtgnative/c/b;->a(IJILjava/lang/String;)V

    .line 2911
    :cond_188
    return-void
.end method
