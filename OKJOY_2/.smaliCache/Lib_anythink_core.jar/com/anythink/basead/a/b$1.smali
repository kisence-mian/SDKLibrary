.class final Lcom/anythink/basead/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/c/h;Lcom/anythink/basead/a/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/c/h;

.field final synthetic b:Lcom/anythink/basead/a/b$a;

.field final synthetic c:Lcom/anythink/basead/a/b;


# direct methods
.method constructor <init>(Lcom/anythink/basead/a/b;Lcom/anythink/basead/c/h;Lcom/anythink/basead/a/b$a;)V
    .registers 4

    .line 92
    iput-object p1, p0, Lcom/anythink/basead/a/b$1;->c:Lcom/anythink/basead/a/b;

    iput-object p2, p0, Lcom/anythink/basead/a/b$1;->a:Lcom/anythink/basead/c/h;

    iput-object p3, p0, Lcom/anythink/basead/a/b$1;->b:Lcom/anythink/basead/a/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 96
    iget-object v0, p0, Lcom/anythink/basead/a/b$1;->c:Lcom/anythink/basead/a/b;

    iget-object v1, p0, Lcom/anythink/basead/a/b$1;->a:Lcom/anythink/basead/c/h;

    iget-object v2, p0, Lcom/anythink/basead/a/b$1;->b:Lcom/anythink/basead/a/b$a;

    invoke-static {v0, v1, v2}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/a/b;Lcom/anythink/basead/c/h;Lcom/anythink/basead/a/b$a;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 97
    return-void

    .line 100
    :cond_d
    const/4 v0, 0x0

    .line 102
    iget-object v1, p0, Lcom/anythink/basead/a/b$1;->c:Lcom/anythink/basead/a/b;

    iget-object v1, v1, Lcom/anythink/basead/a/b;->h:Lcom/anythink/core/common/d/i;

    iget-object v1, v1, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/j;->b()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2b

    .line 103
    iget-object v0, p0, Lcom/anythink/basead/a/b$1;->c:Lcom/anythink/basead/a/b;

    iget-object v1, p0, Lcom/anythink/basead/a/b$1;->a:Lcom/anythink/basead/c/h;

    iget-object v4, p0, Lcom/anythink/basead/a/b$1;->b:Lcom/anythink/basead/a/b$a;

    invoke-static {v0, v1, v4}, Lcom/anythink/basead/a/b;->b(Lcom/anythink/basead/a/b;Lcom/anythink/basead/c/h;Lcom/anythink/basead/a/b$a;)Z

    move-result v0

    .line 104
    if-eqz v0, :cond_2a

    move v0, v3

    goto :goto_2b

    :cond_2a
    move v0, v2

    .line 110
    :cond_2b
    :goto_2b
    if-ne v0, v3, :cond_3a

    iget-object v1, p0, Lcom/anythink/basead/a/b$1;->c:Lcom/anythink/basead/a/b;

    iget-object v1, v1, Lcom/anythink/basead/a/b;->h:Lcom/anythink/core/common/d/i;

    iget-object v1, v1, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/j;->b()I

    move-result v1

    if-ne v1, v3, :cond_3a

    .line 111
    return-void

    .line 115
    :cond_3a
    iget-object v1, p0, Lcom/anythink/basead/a/b$1;->c:Lcom/anythink/basead/a/b;

    iget-object v2, p0, Lcom/anythink/basead/a/b$1;->a:Lcom/anythink/basead/c/h;

    iget-object v3, p0, Lcom/anythink/basead/a/b$1;->b:Lcom/anythink/basead/a/b$a;

    invoke-static {v1, v0, v2, v3}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/a/b;ILcom/anythink/basead/c/h;Lcom/anythink/basead/a/b$a;)V

    .line 117
    return-void
.end method
