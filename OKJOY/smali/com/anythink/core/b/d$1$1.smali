.class final Lcom/anythink/core/b/d$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/d$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/anythink/core/c/c;

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Lcom/anythink/core/b/d$1;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/d$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 179
    iput-object p1, p0, Lcom/anythink/core/b/d$1$1;->f:Lcom/anythink/core/b/d$1;

    iput-object p2, p0, Lcom/anythink/core/b/d$1$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/core/b/d$1$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/core/b/d$1$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/anythink/core/b/d$1$1;->d:Lcom/anythink/core/c/c;

    iput-object p6, p0, Lcom/anythink/core/b/d$1$1;->e:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 182
    const-string v0, "2005"

    const-string v2, ""

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    .line 183
    iget-object v0, p0, Lcom/anythink/core/b/d$1$1;->f:Lcom/anythink/core/b/d$1;

    iget-object v0, v0, Lcom/anythink/core/b/d$1;->c:Lcom/anythink/core/b/d$a;

    if-eqz v0, :cond_18

    .line 184
    iget-object v0, p0, Lcom/anythink/core/b/d$1$1;->f:Lcom/anythink/core/b/d$1;

    iget-object v0, v0, Lcom/anythink/core/b/d$1;->c:Lcom/anythink/core/b/d$a;

    invoke-interface {v0, v2}, Lcom/anythink/core/b/d$a;->a(Lcom/anythink/core/api/AdError;)V

    .line 192
    :cond_18
    iget-object v0, p0, Lcom/anythink/core/b/d$1$1;->f:Lcom/anythink/core/b/d$1;

    iget-object v3, v0, Lcom/anythink/core/b/d$1;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/core/b/d$1$1;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/core/b/d$1$1;->f:Lcom/anythink/core/b/d$1;

    iget-object v5, v0, Lcom/anythink/core/b/d$1;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/anythink/core/b/d$1$1;->d:Lcom/anythink/core/c/c;

    iget-object v0, p0, Lcom/anythink/core/b/d$1$1;->f:Lcom/anythink/core/b/d$1;

    iget-boolean v0, v0, Lcom/anythink/core/b/d$1;->e:Z

    if-eqz v0, :cond_49

    const/4 v0, 0x1

    :goto_2b
    invoke-static {v3, v4, v5, v6, v0}, Lcom/anythink/core/b/g/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;I)Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 193
    invoke-virtual {v0, v1}, Lcom/anythink/core/b/c/b;->a(Z)V

    .line 194
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/c/b;->p(I)V

    .line 196
    iget-object v1, p0, Lcom/anythink/core/b/d$1$1;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v0}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 198
    invoke-virtual {v2}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;Ljava/lang/String;)V

    .line 199
    return-void

    :cond_49
    move v0, v1

    .line 192
    goto :goto_2b
.end method
