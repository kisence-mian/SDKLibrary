.class final Lcom/mintegral/msdk/mtgnative/c/c$2;
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

.field final synthetic b:Ljava/util/UUID;

.field final synthetic c:Z

.field final synthetic d:Lcom/mintegral/msdk/mtgnative/c/c;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgnative/c/c;Ljava/lang/String;Ljava/util/UUID;Z)V
    .registers 5

    .prologue
    .line 2032
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/c$2;->d:Lcom/mintegral/msdk/mtgnative/c/c;

    iput-object p2, p0, Lcom/mintegral/msdk/mtgnative/c/c$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mintegral/msdk/mtgnative/c/c$2;->b:Ljava/util/UUID;

    iput-boolean p4, p0, Lcom/mintegral/msdk/mtgnative/c/c$2;->c:Z

    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 2036
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$2;->d:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c;->d(Lcom/mintegral/msdk/mtgnative/c/c;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 2037
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$2;->d:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgnative/c/c;->a(Lcom/mintegral/msdk/mtgnative/c/c;Lcom/mintegral/msdk/base/b/i;)Lcom/mintegral/msdk/base/b/i;

    .line 2039
    :cond_1a
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$2;->d:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c;->d(Lcom/mintegral/msdk/mtgnative/c/c;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/d;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/d;

    move-result-object v0

    .line 2041
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/b/d;->c()V

    .line 2042
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/c$2;->d:Lcom/mintegral/msdk/mtgnative/c/c;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/mtgnative/c/c;->a(Lcom/mintegral/msdk/mtgnative/c/c;Ljava/lang/String;)Ljava/lang/String;

    .line 2043
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$2;->d:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c;->e(Lcom/mintegral/msdk/mtgnative/c/c;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_a5

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$2;->d:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c;->e(Lcom/mintegral/msdk/mtgnative/c/c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a5

    .line 2044
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$2;->b:Ljava/util/UUID;

    if-nez v0, :cond_a6

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$2;->d:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c;->e(Lcom/mintegral/msdk/mtgnative/c/c;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$2;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ttc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 2045
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$2;->d:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c;->e(Lcom/mintegral/msdk/mtgnative/c/c;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$2;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ttc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2050
    :cond_a5
    :goto_a5
    return-void

    .line 2046
    :cond_a6
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$2;->b:Ljava/util/UUID;

    if-eqz v0, :cond_a5

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$2;->d:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c;->e(Lcom/mintegral/msdk/mtgnative/c/c;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$2;->b:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$2;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ttc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 2047
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$2;->d:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c;->e(Lcom/mintegral/msdk/mtgnative/c/c;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$2;->b:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$2;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ttc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a5
.end method

.method public final b()V
    .registers 1

    .prologue
    .line 2060
    return-void
.end method
