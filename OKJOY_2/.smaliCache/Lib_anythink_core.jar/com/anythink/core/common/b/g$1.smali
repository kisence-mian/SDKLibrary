.class final Lcom/anythink/core/common/b/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/b/g;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/b/g;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/b/g;)V
    .registers 2

    .line 346
    iput-object p1, p0, Lcom/anythink/core/common/b/g$1;->a:Lcom/anythink/core/common/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/b/g$1;->a:Lcom/anythink/core/common/b/g;

    invoke-static {v0}, Lcom/anythink/core/common/b/g;->a(Lcom/anythink/core/common/b/g;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/g/d;->a(Landroid/content/Context;)V

    .line 353
    iget-object v0, p0, Lcom/anythink/core/common/b/g$1;->a:Lcom/anythink/core/common/b/g;

    invoke-static {v0}, Lcom/anythink/core/common/b/g;->a(Lcom/anythink/core/common/b/g;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/g/d;->m(Landroid/content/Context;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 376
    goto :goto_14

    .line 375
    :catch_13
    move-exception v0

    .line 378
    :goto_14
    iget-object v0, p0, Lcom/anythink/core/common/b/g$1;->a:Lcom/anythink/core/common/b/g;

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->p()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 379
    sget-object v0, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    const-string v1, "********************************** UA_5.7.8 *************************************"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    sget-object v0, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GAID(ADID): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/core/common/g/d;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , AndroidID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/b/g$1;->a:Lcom/anythink/core/common/b/g;

    invoke-static {v3}, Lcom/anythink/core/common/b/g;->a(Lcom/anythink/core/common/b/g;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/anythink/core/common/g/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    sget-object v0, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_54
    return-void
.end method
