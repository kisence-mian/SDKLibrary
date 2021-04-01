.class final Lcom/mintegral/msdk/mtgnative/c/c$4$1;
.super Ljava/lang/Object;
.source "NativePreloadController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgnative/c/c$4;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgnative/c/c$4;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgnative/c/c$4;)V
    .registers 2

    .prologue
    .line 2122
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/c$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    .prologue
    .line 2127
    const/4 v0, 0x0

    .line 2128
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/c$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$4;

    iget-object v1, v1, Lcom/mintegral/msdk/mtgnative/c/c$4;->i:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgnative/c/c;->e(Lcom/mintegral/msdk/mtgnative/c/c;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_165

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/c$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$4;

    iget-object v1, v1, Lcom/mintegral/msdk/mtgnative/c/c$4;->i:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgnative/c/c;->e(Lcom/mintegral/msdk/mtgnative/c/c;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_165

    .line 2129
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/c$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$4;

    iget-object v1, v1, Lcom/mintegral/msdk/mtgnative/c/c$4;->i:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgnative/c/c;->e(Lcom/mintegral/msdk/mtgnative/c/c;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/c$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$4;

    iget-object v3, v3, Lcom/mintegral/msdk/mtgnative/c/c$4;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/c$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$4;

    iget-boolean v3, v3, Lcom/mintegral/msdk/mtgnative/c/c$4;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_post"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 2130
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$4;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgnative/c/c$4;->i:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c;->e(Lcom/mintegral/msdk/mtgnative/c/c;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$4;

    iget-object v2, v2, Lcom/mintegral/msdk/mtgnative/c/c$4;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$4;

    iget-boolean v2, v2, Lcom/mintegral/msdk/mtgnative/c/c$4;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_post"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2131
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/c$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$4;

    iget-object v1, v1, Lcom/mintegral/msdk/mtgnative/c/c$4;->i:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgnative/c/c;->e(Lcom/mintegral/msdk/mtgnative/c/c;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/c$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$4;

    iget-object v3, v3, Lcom/mintegral/msdk/mtgnative/c/c$4;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/c$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$4;

    iget-boolean v3, v3, Lcom/mintegral/msdk/mtgnative/c/c$4;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_post"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2133
    :cond_b3
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/c$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$4;

    iget-object v1, v1, Lcom/mintegral/msdk/mtgnative/c/c$4;->i:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgnative/c/c;->e(Lcom/mintegral/msdk/mtgnative/c/c;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/c$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$4;

    iget-object v3, v3, Lcom/mintegral/msdk/mtgnative/c/c$4;->c:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/c$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$4;

    iget-object v3, v3, Lcom/mintegral/msdk/mtgnative/c/c$4;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/c$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$4;

    iget-boolean v3, v3, Lcom/mintegral/msdk/mtgnative/c/c$4;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_post"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 2134
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$4;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgnative/c/c$4;->i:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c;->e(Lcom/mintegral/msdk/mtgnative/c/c;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$4;

    iget-object v2, v2, Lcom/mintegral/msdk/mtgnative/c/c$4;->c:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$4;

    iget-object v2, v2, Lcom/mintegral/msdk/mtgnative/c/c$4;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$4;

    iget-boolean v2, v2, Lcom/mintegral/msdk/mtgnative/c/c$4;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_post"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2135
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/c$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$4;

    iget-object v1, v1, Lcom/mintegral/msdk/mtgnative/c/c$4;->i:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgnative/c/c;->e(Lcom/mintegral/msdk/mtgnative/c/c;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/c$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$4;

    iget-object v3, v3, Lcom/mintegral/msdk/mtgnative/c/c$4;->c:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/c$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$4;

    iget-object v3, v3, Lcom/mintegral/msdk/mtgnative/c/c$4;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/c$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$4;

    iget-boolean v3, v3, Lcom/mintegral/msdk/mtgnative/c/c$4;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_post"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2138
    :cond_165
    if-nez v0, :cond_191

    .line 2139
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$4;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgnative/c/c$4;->i:Lcom/mintegral/msdk/mtgnative/c/c;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/c$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$4;

    iget v1, v1, Lcom/mintegral/msdk/mtgnative/c/c$4;->d:I

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$4;

    iget-wide v2, v2, Lcom/mintegral/msdk/mtgnative/c/c$4;->e:J

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/c$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$4;

    iget v4, v4, Lcom/mintegral/msdk/mtgnative/c/c$4;->f:I

    iget-object v5, p0, Lcom/mintegral/msdk/mtgnative/c/c$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$4;

    iget-object v5, v5, Lcom/mintegral/msdk/mtgnative/c/c$4;->i:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v5}, Lcom/mintegral/msdk/mtgnative/c/c;->g(Lcom/mintegral/msdk/mtgnative/c/c;)Lcom/mintegral/msdk/c/d;

    iget-object v5, p0, Lcom/mintegral/msdk/mtgnative/c/c$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$4;

    iget-object v5, v5, Lcom/mintegral/msdk/mtgnative/c/c$4;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/mintegral/msdk/mtgnative/c/c$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$4;

    iget-object v6, v6, Lcom/mintegral/msdk/mtgnative/c/c$4;->g:Lcom/mintegral/msdk/b/a/a;

    iget-object v7, p0, Lcom/mintegral/msdk/mtgnative/c/c$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$4;

    iget-boolean v7, v7, Lcom/mintegral/msdk/mtgnative/c/c$4;->b:Z

    iget-object v8, p0, Lcom/mintegral/msdk/mtgnative/c/c$4$1;->a:Lcom/mintegral/msdk/mtgnative/c/c$4;

    iget-object v8, v8, Lcom/mintegral/msdk/mtgnative/c/c$4;->h:Lcom/mintegral/msdk/out/AdMobClickListener;

    invoke-virtual/range {v0 .. v8}, Lcom/mintegral/msdk/mtgnative/c/c;->a(IJILjava/lang/String;Lcom/mintegral/msdk/b/a/a;ZLcom/mintegral/msdk/out/AdMobClickListener;)V

    .line 2142
    :cond_191
    return-void
.end method
