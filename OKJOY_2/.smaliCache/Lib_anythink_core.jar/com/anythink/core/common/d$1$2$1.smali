.class final Lcom/anythink/core/common/d$1$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/d$1$2;->a(Lcom/anythink/core/c/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/c/c;

.field final synthetic b:Lcom/anythink/core/common/d$1$2;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/d$1$2;Lcom/anythink/core/c/c;)V
    .registers 3

    .line 314
    iput-object p1, p0, Lcom/anythink/core/common/d$1$2$1;->b:Lcom/anythink/core/common/d$1$2;

    iput-object p2, p0, Lcom/anythink/core/common/d$1$2$1;->a:Lcom/anythink/core/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    .line 318
    iget-object v0, p0, Lcom/anythink/core/common/d$1$2$1;->b:Lcom/anythink/core/common/d$1$2;

    iget-object v0, v0, Lcom/anythink/core/common/d$1$2;->g:Lcom/anythink/core/common/d$1;

    iget-object v0, v0, Lcom/anythink/core/common/d$1;->e:Lcom/anythink/core/common/d;

    monitor-enter v0

    .line 319
    :try_start_7
    iget-object v1, p0, Lcom/anythink/core/common/d$1$2$1;->b:Lcom/anythink/core/common/d$1$2;

    iget-object v1, v1, Lcom/anythink/core/common/d$1$2;->g:Lcom/anythink/core/common/d$1;

    iget-object v1, v1, Lcom/anythink/core/common/d$1;->e:Lcom/anythink/core/common/d;

    iget-object v2, p0, Lcom/anythink/core/common/d$1$2$1;->a:Lcom/anythink/core/c/c;

    invoke-virtual {v2}, Lcom/anythink/core/c/c;->t()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/d;->a(Lcom/anythink/core/common/d;J)J

    .line 320
    iget-object v1, p0, Lcom/anythink/core/common/d$1$2$1;->b:Lcom/anythink/core/common/d$1$2;

    iget-object v1, v1, Lcom/anythink/core/common/d$1$2;->a:Lcom/anythink/core/common/d/d;

    iget-object v2, p0, Lcom/anythink/core/common/d$1$2$1;->a:Lcom/anythink/core/c/c;

    invoke-virtual {v2}, Lcom/anythink/core/c/c;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/d/d;->p(Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/anythink/core/common/d$1$2$1;->a:Lcom/anythink/core/c/c;

    invoke-virtual {v1}, Lcom/anythink/core/c/c;->y()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/d$1$2$1;->b:Lcom/anythink/core/common/d$1$2;

    iget-object v2, v2, Lcom/anythink/core/common/d$1$2;->g:Lcom/anythink/core/common/d$1;

    iget-object v2, v2, Lcom/anythink/core/common/d$1;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_97

    .line 324
    const-string v1, "3003"

    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Format corresponding to API: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/anythink/core/common/d$1$2$1;->b:Lcom/anythink/core/common/d$1$2;

    iget-object v4, v4, Lcom/anythink/core/common/d$1$2;->g:Lcom/anythink/core/common/d$1;

    iget-object v4, v4, Lcom/anythink/core/common/d$1;->d:Ljava/lang/String;

    .line 325
    invoke-static {v4}, Lcom/anythink/core/common/g/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Format corresponding to placement strategy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/core/common/d$1$2$1;->a:Lcom/anythink/core/c/c;

    .line 326
    invoke-virtual {v4}, Lcom/anythink/core/c/c;->y()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/anythink/core/common/g/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 324
    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    .line 327
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v2

    new-instance v3, Lcom/anythink/core/common/d$1$2$1$1;

    invoke-direct {v3, p0, v1}, Lcom/anythink/core/common/d$1$2$1$1;-><init>(Lcom/anythink/core/common/d$1$2$1;Lcom/anythink/core/api/AdError;)V

    invoke-virtual {v2, v3}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 334
    iget-object v2, p0, Lcom/anythink/core/common/d$1$2$1;->b:Lcom/anythink/core/common/d$1$2;

    iget-object v2, v2, Lcom/anythink/core/common/d$1$2;->a:Lcom/anythink/core/common/d/d;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/anythink/core/common/d/d;->b(Z)V

    .line 337
    iget-object v2, p0, Lcom/anythink/core/common/d$1$2$1;->b:Lcom/anythink/core/common/d$1$2;

    iget-object v2, v2, Lcom/anythink/core/common/d$1$2;->a:Lcom/anythink/core/common/d/d;

    invoke-static {v2, v1}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;Lcom/anythink/core/api/AdError;)V

    .line 338
    iget-object v1, p0, Lcom/anythink/core/common/d$1$2$1;->b:Lcom/anythink/core/common/d$1$2;

    iget-object v1, v1, Lcom/anythink/core/common/d$1$2;->g:Lcom/anythink/core/common/d$1;

    iget-object v1, v1, Lcom/anythink/core/common/d$1;->e:Lcom/anythink/core/common/d;

    iput-boolean v3, v1, Lcom/anythink/core/common/d;->g:Z

    .line 339
    monitor-exit v0

    return-void

    .line 342
    :cond_97
    iget-object v1, p0, Lcom/anythink/core/common/d$1$2$1;->b:Lcom/anythink/core/common/d$1$2;

    iget-object v1, v1, Lcom/anythink/core/common/d$1$2;->g:Lcom/anythink/core/common/d$1;

    iget-object v2, v1, Lcom/anythink/core/common/d$1;->e:Lcom/anythink/core/common/d;

    iget-object v1, p0, Lcom/anythink/core/common/d$1$2$1;->b:Lcom/anythink/core/common/d$1$2;

    iget-object v3, v1, Lcom/anythink/core/common/d$1$2;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/core/common/d$1$2$1;->b:Lcom/anythink/core/common/d$1$2;

    iget-object v1, v1, Lcom/anythink/core/common/d$1$2;->g:Lcom/anythink/core/common/d$1;

    iget-object v4, v1, Lcom/anythink/core/common/d$1;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/core/common/d$1$2$1;->b:Lcom/anythink/core/common/d$1$2;

    iget-object v5, v1, Lcom/anythink/core/common/d$1$2;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/anythink/core/common/d$1$2$1;->a:Lcom/anythink/core/c/c;

    iget-object v1, p0, Lcom/anythink/core/common/d$1$2$1;->b:Lcom/anythink/core/common/d$1$2;

    iget-object v7, v1, Lcom/anythink/core/common/d$1$2;->a:Lcom/anythink/core/common/d/d;

    iget-object v1, p0, Lcom/anythink/core/common/d$1$2$1;->b:Lcom/anythink/core/common/d$1$2;

    iget-object v1, v1, Lcom/anythink/core/common/d$1$2;->g:Lcom/anythink/core/common/d$1;

    iget-object v8, v1, Lcom/anythink/core/common/d$1;->c:Lcom/anythink/core/common/g;

    invoke-static/range {v2 .. v8}, Lcom/anythink/core/common/d;->a(Lcom/anythink/core/common/d;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Lcom/anythink/core/common/d/d;Lcom/anythink/core/common/g;)V

    .line 343
    monitor-exit v0

    return-void

    :catchall_bc
    move-exception v1

    monitor-exit v0
    :try_end_be
    .catchall {:try_start_7 .. :try_end_be} :catchall_bc

    throw v1
.end method
