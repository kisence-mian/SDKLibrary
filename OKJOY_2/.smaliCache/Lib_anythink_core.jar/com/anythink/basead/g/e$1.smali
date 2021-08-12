.class final Lcom/anythink/basead/g/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/basead/g/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/g/e;


# direct methods
.method constructor <init>(Lcom/anythink/basead/g/e;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/anythink/basead/g/e$1;->a:Lcom/anythink/basead/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    .line 48
    iget-object p1, p0, Lcom/anythink/basead/g/e$1;->a:Lcom/anythink/basead/g/e;

    iget-object p1, p1, Lcom/anythink/basead/g/e;->l:Lcom/anythink/basead/a/b;

    if-nez p1, :cond_1b

    .line 49
    iget-object p1, p0, Lcom/anythink/basead/g/e$1;->a:Lcom/anythink/basead/g/e;

    new-instance v0, Lcom/anythink/basead/a/b;

    iget-object v1, p0, Lcom/anythink/basead/g/e$1;->a:Lcom/anythink/basead/g/e;

    iget-object v1, v1, Lcom/anythink/basead/g/e;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/basead/g/e$1;->a:Lcom/anythink/basead/g/e;

    iget-object v2, v2, Lcom/anythink/basead/g/e;->d:Lcom/anythink/core/common/d/i;

    iget-object v3, p0, Lcom/anythink/basead/g/e$1;->a:Lcom/anythink/basead/g/e;

    iget-object v3, v3, Lcom/anythink/basead/g/e;->g:Lcom/anythink/core/common/d/p;

    invoke-direct {v0, v1, v2, v3}, Lcom/anythink/basead/a/b;-><init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/h;)V

    iput-object v0, p1, Lcom/anythink/basead/g/e;->l:Lcom/anythink/basead/a/b;

    .line 52
    :cond_1b
    iget-object p1, p0, Lcom/anythink/basead/g/e$1;->a:Lcom/anythink/basead/g/e;

    iget-object p1, p1, Lcom/anythink/basead/g/e;->a:Lcom/anythink/basead/f/a;

    if-eqz p1, :cond_28

    .line 53
    iget-object p1, p0, Lcom/anythink/basead/g/e$1;->a:Lcom/anythink/basead/g/e;

    iget-object p1, p1, Lcom/anythink/basead/g/e;->a:Lcom/anythink/basead/f/a;

    invoke-interface {p1}, Lcom/anythink/basead/f/a;->onAdClick()V

    .line 56
    :cond_28
    const/16 p1, 0x9

    iget-object v0, p0, Lcom/anythink/basead/g/e$1;->a:Lcom/anythink/basead/g/e;

    iget-object v0, v0, Lcom/anythink/basead/g/e;->g:Lcom/anythink/core/common/d/p;

    new-instance v1, Lcom/anythink/basead/c/h;

    iget-object v2, p0, Lcom/anythink/basead/g/e$1;->a:Lcom/anythink/basead/g/e;

    iget-object v2, v2, Lcom/anythink/basead/g/e;->d:Lcom/anythink/core/common/d/i;

    iget-object v2, v2, Lcom/anythink/core/common/d/i;->d:Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/anythink/basead/c/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 57
    iget-object p1, p0, Lcom/anythink/basead/g/e$1;->a:Lcom/anythink/basead/g/e;

    iget-object p1, p1, Lcom/anythink/basead/g/e;->l:Lcom/anythink/basead/a/b;

    new-instance v0, Lcom/anythink/basead/c/h;

    iget-object v1, p0, Lcom/anythink/basead/g/e$1;->a:Lcom/anythink/basead/g/e;

    iget-object v1, v1, Lcom/anythink/basead/g/e;->d:Lcom/anythink/core/common/d/i;

    iget-object v1, v1, Lcom/anythink/core/common/d/i;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/anythink/basead/c/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/anythink/basead/g/e$1$1;

    invoke-direct {v1, p0}, Lcom/anythink/basead/g/e$1$1;-><init>(Lcom/anythink/basead/g/e$1;)V

    invoke-virtual {p1, v0, v1}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/c/h;Lcom/anythink/basead/a/b$a;)V

    .line 74
    return-void
.end method
