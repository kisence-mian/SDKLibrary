.class final Lcom/anythink/core/b/j$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/j;->a(Lcom/anythink/core/c/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/c/a;

.field final synthetic b:Lcom/anythink/core/b/j;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/j;Lcom/anythink/core/c/a;)V
    .registers 3

    .prologue
    .line 105
    iput-object p1, p0, Lcom/anythink/core/b/j$2;->b:Lcom/anythink/core/b/j;

    iput-object p2, p0, Lcom/anythink/core/b/j$2;->a:Lcom/anythink/core/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/b/j$2;->a:Lcom/anythink/core/c/a;

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->l()Ljava/util/Map;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_1f

    const-string v1, "init"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    :goto_10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 112
    iget-object v1, p0, Lcom/anythink/core/b/j$2;->b:Lcom/anythink/core/b/j;

    invoke-static {v1}, Lcom/anythink/core/b/j;->a(Lcom/anythink/core/b/j;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_22

    .line 125
    :cond_1e
    :goto_1e
    return-void

    .line 110
    :cond_1f
    const-string v0, ""

    goto :goto_10

    .line 116
    :cond_22
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/anythink/core/b/j$2;->a:Lcom/anythink/core/c/a;

    invoke-virtual {v2}, Lcom/anythink/core/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    iget-object v0, p0, Lcom/anythink/core/b/j$2;->b:Lcom/anythink/core/b/j;

    invoke-static {v0}, Lcom/anythink/core/b/j;->a(Lcom/anythink/core/b/j;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    iget-object v0, p0, Lcom/anythink/core/b/j$2;->b:Lcom/anythink/core/b/j;

    invoke-static {v0}, Lcom/anythink/core/b/j;->a(Lcom/anythink/core/b/j;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_46} :catch_47

    goto :goto_1e

    .line 125
    :catch_47
    move-exception v0

    goto :goto_1e
.end method
