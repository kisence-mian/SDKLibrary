.class final Lcom/anythink/basead/g/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/g/a/b;->a(Lcom/anythink/core/common/d/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/c/d;

.field final synthetic b:Lcom/anythink/basead/g/a/b;


# direct methods
.method constructor <init>(Lcom/anythink/basead/g/a/b;Lcom/anythink/basead/c/d;)V
    .registers 3

    .line 66
    iput-object p1, p0, Lcom/anythink/basead/g/a/b$1;->b:Lcom/anythink/basead/g/a/b;

    iput-object p2, p0, Lcom/anythink/basead/g/a/b$1;->a:Lcom/anythink/basead/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/anythink/basead/g/a/b$1;->b:Lcom/anythink/basead/g/a/b;

    invoke-static {v0}, Lcom/anythink/basead/g/a/b;->a(Lcom/anythink/basead/g/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/basead/b/c;->a(Landroid/content/Context;)Lcom/anythink/basead/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/g/a/b$1;->a:Lcom/anythink/basead/c/d;

    iget-object v1, v1, Lcom/anythink/basead/c/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/b/c;->c(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/anythink/basead/g/a/b$1;->b:Lcom/anythink/basead/g/a/b;

    invoke-static {v0}, Lcom/anythink/basead/g/a/b;->a(Lcom/anythink/basead/g/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/basead/b/c;->a(Landroid/content/Context;)Lcom/anythink/basead/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/g/a/b$1;->a:Lcom/anythink/basead/c/d;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/b/c;->a(Lcom/anythink/basead/c/d;)J

    .line 74
    return-void
.end method
