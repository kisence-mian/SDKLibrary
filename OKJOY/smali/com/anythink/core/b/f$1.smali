.class final Lcom/anythink/core/b/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/b/f;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/f;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/anythink/core/b/f$1;->a:Lcom/anythink/core/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 67
    iget-object v0, p0, Lcom/anythink/core/b/f$1;->a:Lcom/anythink/core/b/f;

    iget-object v0, v0, Lcom/anythink/core/b/f;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/a/b;

    .line 68
    iget-object v1, p0, Lcom/anythink/core/b/f$1;->a:Lcom/anythink/core/b/f;

    iget-object v1, v1, Lcom/anythink/core/b/f;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 69
    if-nez v1, :cond_d

    .line 70
    invoke-virtual {v0}, Lcom/anythink/core/b/a/b;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v3

    .line 1359
    const/4 v1, 0x2

    iput v1, v3, Lcom/anythink/core/b/c/b;->l:I

    .line 72
    iget-object v1, p0, Lcom/anythink/core/b/f$1;->a:Lcom/anythink/core/b/f;

    iget-object v1, v1, Lcom/anythink/core/b/f;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/anythink/core/b/f$1;->a:Lcom/anythink/core/b/f;

    iget-object v1, v1, Lcom/anythink/core/b/f;->e:Ljava/util/HashMap;

    .line 73
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_d

    .line 74
    const-string v1, "2001"

    const-string v4, ""

    const-string v5, ""

    invoke-static {v1, v4, v5}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    .line 76
    iget-object v4, p0, Lcom/anythink/core/b/f$1;->a:Lcom/anythink/core/b/f;

    iget-object v4, v4, Lcom/anythink/core/b/f;->e:Ljava/util/HashMap;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v4, Lcom/anythink/core/b/a/d$e;->b:Ljava/lang/String;

    sget-object v5, Lcom/anythink/core/b/a/d$e;->g:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/anythink/core/b/a/b;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-wide/16 v4, 0x0

    invoke-static {v3, v7, v1, v4, v5}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;ILcom/anythink/core/api/AdError;J)V

    goto :goto_d

    .line 91
    :cond_6e
    iget-object v0, p0, Lcom/anythink/core/b/f$1;->a:Lcom/anythink/core/b/f;

    iget-boolean v0, v0, Lcom/anythink/core/b/f;->h:Z

    if-nez v0, :cond_bd

    .line 92
    iget-object v0, p0, Lcom/anythink/core/b/f$1;->a:Lcom/anythink/core/b/f;

    iput-boolean v7, v0, Lcom/anythink/core/b/f;->h:Z

    .line 93
    iget-object v0, p0, Lcom/anythink/core/b/f$1;->a:Lcom/anythink/core/b/f;

    iput-boolean v7, v0, Lcom/anythink/core/b/f;->l:Z

    .line 94
    const-string v0, "2001"

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v7

    .line 96
    iget-object v0, p0, Lcom/anythink/core/b/f$1;->a:Lcom/anythink/core/b/f;

    iget-object v0, v0, Lcom/anythink/core/b/f;->v:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/core/b/f$1;->a:Lcom/anythink/core/b/f;

    iget-object v1, v1, Lcom/anythink/core/b/f;->u:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/b/f$1;->a:Lcom/anythink/core/b/f;

    iget-object v2, v2, Lcom/anythink/core/b/f;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/b/f$1;->a:Lcom/anythink/core/b/f;

    iget-object v3, v3, Lcom/anythink/core/b/f;->t:Lcom/anythink/core/c/c;

    iget-object v4, p0, Lcom/anythink/core/b/f$1;->a:Lcom/anythink/core/b/f;

    iget-object v4, v4, Lcom/anythink/core/b/f;->w:Ljava/lang/String;

    iget-object v5, p0, Lcom/anythink/core/b/f$1;->a:Lcom/anythink/core/b/f;

    iget v5, v5, Lcom/anythink/core/b/f;->r:I

    iget-object v6, p0, Lcom/anythink/core/b/f$1;->a:Lcom/anythink/core/b/f;

    iget-boolean v6, v6, Lcom/anythink/core/b/f;->p:Z

    invoke-static/range {v0 .. v6}, Lcom/anythink/core/b/g/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/lang/String;IZ)Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 97
    invoke-virtual {v7}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/anythink/core/b/f$1;->a:Lcom/anythink/core/b/f;

    iget-object v0, v0, Lcom/anythink/core/b/f;->t:Lcom/anythink/core/c/c;

    iget-object v1, p0, Lcom/anythink/core/b/f$1;->a:Lcom/anythink/core/b/f;

    iget-object v1, v1, Lcom/anythink/core/b/f;->s:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/c;->b(Ljava/util/List;)V

    .line 101
    iget-object v0, p0, Lcom/anythink/core/b/f$1;->a:Lcom/anythink/core/b/f;

    invoke-virtual {v0, v7}, Lcom/anythink/core/b/f;->a(Lcom/anythink/core/api/AdError;)V

    .line 104
    :cond_bd
    iget-object v0, p0, Lcom/anythink/core/b/f$1;->a:Lcom/anythink/core/b/f;

    iget-object v0, v0, Lcom/anythink/core/b/f;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/core/b/d;->a(Ljava/lang/String;)Lcom/anythink/core/b/d;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_ce

    .line 106
    iget-object v1, p0, Lcom/anythink/core/b/f$1;->a:Lcom/anythink/core/b/f;

    iget-object v1, v1, Lcom/anythink/core/b/f;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/d;->b(Ljava/lang/String;)V

    .line 108
    :cond_ce
    return-void
.end method
