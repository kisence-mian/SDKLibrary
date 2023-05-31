.class final Lcom/anythink/core/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/anythink/core/a/b;


# direct methods
.method constructor <init>(Lcom/anythink/core/a/b;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 56
    iput-object p1, p0, Lcom/anythink/core/a/b$1;->c:Lcom/anythink/core/a/b;

    iput-object p2, p0, Lcom/anythink/core/a/b$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/core/a/b$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    .line 60
    :try_start_0
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pacing_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/anythink/core/a/b$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/a/b$1;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 60
    invoke-static {v0, v1, v2, v4, v5}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 67
    :goto_2e
    return-void

    :catch_2f
    move-exception v0

    goto :goto_2e
.end method
