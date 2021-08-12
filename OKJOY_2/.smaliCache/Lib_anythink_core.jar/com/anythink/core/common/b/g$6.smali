.class final Lcom/anythink/core/common/b/g$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/b/g;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/anythink/core/common/b/g;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/b/g;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 687
    iput-object p1, p0, Lcom/anythink/core/common/b/g$6;->c:Lcom/anythink/core/common/b/g;

    iput-object p2, p0, Lcom/anythink/core/common/b/g$6;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/core/common/b/g$6;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 690
    iget-object v0, p0, Lcom/anythink/core/common/b/g$6;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/b/g$6;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v0

    .line 691
    if-eqz v0, :cond_46

    .line 692
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->p()Z

    move-result v1

    if-nez v1, :cond_25

    .line 693
    iget-object v1, p0, Lcom/anythink/core/common/b/g$6;->c:Lcom/anythink/core/common/b/g;

    invoke-static {v1}, Lcom/anythink/core/common/b/g;->a(Lcom/anythink/core/common/b/g;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/l;->a(Landroid/content/Context;)Lcom/anythink/core/common/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/l;->a(Lcom/anythink/core/c/a;)V

    .line 696
    :cond_25
    iget-object v1, p0, Lcom/anythink/core/common/b/g$6;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/b/g$6;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anythink/core/c/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 698
    iget-object v1, p0, Lcom/anythink/core/common/b/g$6;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/b/g$6;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;Lcom/anythink/core/c/a;)V

    .line 701
    :cond_46
    return-void
.end method
