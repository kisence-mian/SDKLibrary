.class final Lcom/anythink/basead/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/a/a;->a(Landroid/content/Context;Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/h;Lcom/anythink/basead/c/e;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/d/h;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/d/h;Landroid/content/Context;)V
    .registers 3

    .line 79
    iput-object p1, p0, Lcom/anythink/basead/a/a$1;->a:Lcom/anythink/core/common/d/h;

    iput-object p2, p0, Lcom/anythink/basead/a/a$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 82
    iget-object v0, p0, Lcom/anythink/basead/a/a$1;->a:Lcom/anythink/core/common/d/h;

    instance-of v0, v0, Lcom/anythink/core/common/d/u;

    if-eqz v0, :cond_28

    .line 83
    iget-object v0, p0, Lcom/anythink/basead/a/a$1;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/basead/a/f;->a(Landroid/content/Context;)Lcom/anythink/basead/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/basead/a/f;->a()V

    .line 84
    iget-object v0, p0, Lcom/anythink/basead/a/a$1;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/basead/a/f;->a(Landroid/content/Context;)Lcom/anythink/basead/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/a/a$1;->a:Lcom/anythink/core/common/d/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/h;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/basead/a/a$1;->a:Lcom/anythink/core/common/d/h;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/basead/a/f;->a(Ljava/lang/String;Lcom/anythink/core/common/d/h;)V

    .line 86
    :cond_28
    return-void
.end method
