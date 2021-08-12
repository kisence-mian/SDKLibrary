.class final Lcom/anythink/core/common/f/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;ZIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/d/d;

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:I

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Z

.field final synthetic k:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/d/d;ZIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 12

    .line 212
    iput-object p1, p0, Lcom/anythink/core/common/f/c$1;->a:Lcom/anythink/core/common/d/d;

    iput-boolean p2, p0, Lcom/anythink/core/common/f/c$1;->b:Z

    iput p3, p0, Lcom/anythink/core/common/f/c$1;->c:I

    iput p4, p0, Lcom/anythink/core/common/f/c$1;->d:I

    iput-object p5, p0, Lcom/anythink/core/common/f/c$1;->e:Ljava/lang/String;

    iput p6, p0, Lcom/anythink/core/common/f/c$1;->f:I

    iput-object p7, p0, Lcom/anythink/core/common/f/c$1;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/anythink/core/common/f/c$1;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/anythink/core/common/f/c$1;->i:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/anythink/core/common/f/c$1;->j:Z

    iput-object p11, p0, Lcom/anythink/core/common/f/c$1;->k:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 215
    new-instance v0, Lcom/anythink/core/common/d/g;

    invoke-direct {v0}, Lcom/anythink/core/common/d/g;-><init>()V

    .line 216
    const-string v1, "1004632"

    iput-object v1, v0, Lcom/anythink/core/common/d/g;->a:Ljava/lang/String;

    .line 217
    iget-object v1, p0, Lcom/anythink/core/common/f/c$1;->a:Lcom/anythink/core/common/d/d;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/d;->F()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/d/g;->b:Ljava/lang/String;

    .line 218
    iget-object v1, p0, Lcom/anythink/core/common/f/c$1;->a:Lcom/anythink/core/common/d/d;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/d;->E()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/d/g;->c:Ljava/lang/String;

    .line 221
    iget-object v1, p0, Lcom/anythink/core/common/f/c$1;->a:Lcom/anythink/core/common/d/d;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/d;->z()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/d/g;->f:Ljava/lang/String;

    .line 222
    iget-object v1, p0, Lcom/anythink/core/common/f/c$1;->a:Lcom/anythink/core/common/d/d;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/d;->w()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/d/g;->j:Ljava/lang/String;

    .line 223
    iget-object v1, p0, Lcom/anythink/core/common/f/c$1;->a:Lcom/anythink/core/common/d/d;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/d;->D()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/d/g;->k:Ljava/lang/String;

    .line 224
    iget-boolean v1, p0, Lcom/anythink/core/common/f/c$1;->b:Z

    const-string v2, "1"

    const-string v3, "0"

    if-eqz v1, :cond_47

    move-object v1, v2

    goto :goto_48

    :cond_47
    move-object v1, v3

    :goto_48
    iput-object v1, v0, Lcom/anythink/core/common/d/g;->l:Ljava/lang/String;

    .line 225
    iget v1, p0, Lcom/anythink/core/common/f/c$1;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/d/g;->m:Ljava/lang/String;

    .line 226
    iget v1, p0, Lcom/anythink/core/common/f/c$1;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/d/g;->n:Ljava/lang/String;

    .line 227
    iget-object v1, p0, Lcom/anythink/core/common/f/c$1;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/d/g;->o:Ljava/lang/String;

    .line 228
    iget v1, p0, Lcom/anythink/core/common/f/c$1;->f:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/d/g;->p:Ljava/lang/String;

    .line 229
    iget-object v1, p0, Lcom/anythink/core/common/f/c$1;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/d/g;->q:Ljava/lang/String;

    .line 230
    iget-object v1, p0, Lcom/anythink/core/common/f/c$1;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/d/g;->r:Ljava/lang/String;

    .line 231
    iget-object v1, p0, Lcom/anythink/core/common/f/c$1;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/d/g;->s:Ljava/lang/String;

    .line 234
    iget-object v1, p0, Lcom/anythink/core/common/f/c$1;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/core/common/f/c$1;->a:Lcom/anythink/core/common/d/d;

    invoke-virtual {v4}, Lcom/anythink/core/common/d/d;->F()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 235
    iput-object v3, v0, Lcom/anythink/core/common/d/g;->t:Ljava/lang/String;

    goto :goto_85

    .line 237
    :cond_83
    iput-object v2, v0, Lcom/anythink/core/common/d/g;->t:Ljava/lang/String;

    .line 240
    :goto_85
    iget-boolean v1, p0, Lcom/anythink/core/common/f/c$1;->j:Z

    if-eqz v1, :cond_8c

    .line 241
    iput-object v2, v0, Lcom/anythink/core/common/d/g;->u:Ljava/lang/String;

    goto :goto_8e

    .line 243
    :cond_8c
    iput-object v3, v0, Lcom/anythink/core/common/d/g;->u:Ljava/lang/String;

    .line 246
    :goto_8e
    iget-object v1, p0, Lcom/anythink/core/common/f/c$1;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/d/g;->v:Ljava/lang/String;

    .line 248
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/f/c$1;->a:Lcom/anythink/core/common/d/d;

    invoke-virtual {v2}, Lcom/anythink/core/common/d/d;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/c/d;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v1

    .line 249
    if-eqz v1, :cond_af

    invoke-virtual {v1}, Lcom/anythink/core/c/c;->v()Ljava/lang/String;

    move-result-object v1

    goto :goto_b1

    :cond_af
    const-string v1, ""

    :goto_b1
    iput-object v1, v0, Lcom/anythink/core/common/d/g;->i:Ljava/lang/String;

    .line 251
    iget-object v1, p0, Lcom/anythink/core/common/f/c$1;->a:Lcom/anythink/core/common/d/d;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/d;->G()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/d/g;->x:Ljava/lang/String;

    .line 253
    invoke-static {v0}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/g;)V

    .line 254
    return-void
.end method
