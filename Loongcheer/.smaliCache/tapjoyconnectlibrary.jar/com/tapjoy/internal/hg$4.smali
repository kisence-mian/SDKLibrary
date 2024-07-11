.class final Lcom/tapjoy/internal/hg$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/is$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/hg;->a(Landroid/app/Activity;Lcom/tapjoy/internal/hc;Lcom/tapjoy/internal/fx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/tapjoy/internal/hc;

.field final synthetic c:Lcom/tapjoy/internal/hg;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/hg;Landroid/app/Activity;Lcom/tapjoy/internal/hc;)V
    .registers 4

    .line 215
    iput-object p1, p0, Lcom/tapjoy/internal/hg$4;->c:Lcom/tapjoy/internal/hg;

    iput-object p2, p0, Lcom/tapjoy/internal/hg$4;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/tapjoy/internal/hg$4;->b:Lcom/tapjoy/internal/hc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/tapjoy/internal/hg$4;->c:Lcom/tapjoy/internal/hg;

    invoke-static {v0}, Lcom/tapjoy/internal/hg;->e(Lcom/tapjoy/internal/hg;)Lcom/tapjoy/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/c;->cancel()V

    .line 219
    return-void
.end method

.method public final a(Lcom/tapjoy/internal/hu;)V
    .registers 6

    .line 223
    iget-object v0, p0, Lcom/tapjoy/internal/hg$4;->c:Lcom/tapjoy/internal/hg;

    iget-object v0, v0, Lcom/tapjoy/internal/hg;->g:Lcom/tapjoy/internal/fr;

    instance-of v0, v0, Lcom/tapjoy/internal/fv;

    if-eqz v0, :cond_19

    .line 224
    iget-object v0, p0, Lcom/tapjoy/internal/hg$4;->c:Lcom/tapjoy/internal/hg;

    iget-object v0, v0, Lcom/tapjoy/internal/hg;->g:Lcom/tapjoy/internal/fr;

    check-cast v0, Lcom/tapjoy/internal/fv;

    .line 225
    if-eqz v0, :cond_19

    iget-object v1, v0, Lcom/tapjoy/internal/fv;->b:Lcom/tapjoy/internal/fn;

    if-eqz v1, :cond_19

    .line 226
    iget-object v0, v0, Lcom/tapjoy/internal/fv;->b:Lcom/tapjoy/internal/fn;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fn;->a()Lcom/tapjoy/internal/gh$a;

    .line 230
    :cond_19
    iget-object v0, p0, Lcom/tapjoy/internal/hg$4;->c:Lcom/tapjoy/internal/hg;

    invoke-static {v0}, Lcom/tapjoy/internal/hg;->c(Lcom/tapjoy/internal/hg;)Lcom/tapjoy/internal/hb;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/hg$4;->c:Lcom/tapjoy/internal/hg;

    iget-object v1, v1, Lcom/tapjoy/internal/hg;->b:Lcom/tapjoy/internal/hw;

    iget-object v1, v1, Lcom/tapjoy/internal/hw;->k:Ljava/util/Map;

    iget-object v2, p1, Lcom/tapjoy/internal/hu;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/hb;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/tapjoy/internal/hg$4;->a:Landroid/app/Activity;

    iget-object v1, p1, Lcom/tapjoy/internal/hu;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/hi;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 234
    iget-object v0, p1, Lcom/tapjoy/internal/hu;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 235
    iget-object v0, p0, Lcom/tapjoy/internal/hg$4;->c:Lcom/tapjoy/internal/hg;

    iget-object v0, v0, Lcom/tapjoy/internal/hg;->e:Lcom/tapjoy/internal/gu;

    iget-object v1, p0, Lcom/tapjoy/internal/hg$4;->a:Landroid/app/Activity;

    iget-object v2, p1, Lcom/tapjoy/internal/hu;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/hu;->f:Ljava/lang/String;

    invoke-static {v3}, Lcom/tapjoy/internal/js;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/tapjoy/internal/gu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/tapjoy/internal/hg$4;->c:Lcom/tapjoy/internal/hg;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tapjoy/internal/hg;->d:Z

    .line 239
    :cond_4f
    iget-object v0, p0, Lcom/tapjoy/internal/hg$4;->b:Lcom/tapjoy/internal/hc;

    iget-object v1, p0, Lcom/tapjoy/internal/hg$4;->c:Lcom/tapjoy/internal/hg;

    iget-object v1, v1, Lcom/tapjoy/internal/hg;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/tapjoy/internal/hu;->g:Lcom/tapjoy/internal/gn;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/hc;->a(Ljava/lang/String;Lcom/tapjoy/internal/gn;)V

    .line 241
    iget-boolean p1, p1, Lcom/tapjoy/internal/hu;->c:Z

    if-eqz p1, :cond_67

    .line 242
    iget-object p1, p0, Lcom/tapjoy/internal/hg$4;->c:Lcom/tapjoy/internal/hg;

    invoke-static {p1}, Lcom/tapjoy/internal/hg;->e(Lcom/tapjoy/internal/hg;)Lcom/tapjoy/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tapjoy/internal/c;->dismiss()V

    .line 244
    :cond_67
    return-void
.end method

.method public final b()V
    .registers 3

    .line 248
    iget-object v0, p0, Lcom/tapjoy/internal/hg$4;->c:Lcom/tapjoy/internal/hg;

    invoke-static {v0}, Lcom/tapjoy/internal/hg;->d(Lcom/tapjoy/internal/hg;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/tapjoy/internal/hg;->a(Lcom/tapjoy/internal/hg;Z)Z

    .line 249
    return-void
.end method
