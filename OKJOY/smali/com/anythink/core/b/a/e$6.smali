.class final Lcom/anythink/core/b/a/e$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/a/e;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/anythink/core/b/a/e;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/a/e;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 515
    iput-object p1, p0, Lcom/anythink/core/b/a/e$6;->c:Lcom/anythink/core/b/a/e;

    iput-object p2, p0, Lcom/anythink/core/b/a/e$6;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/core/b/a/e$6;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 518
    iget-object v0, p0, Lcom/anythink/core/b/a/e$6;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/b/a/e$6;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v0

    .line 519
    if-eqz v0, :cond_33

    iget-object v1, p0, Lcom/anythink/core/b/a/e$6;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/b/a/e$6;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anythink/core/c/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 521
    iget-object v1, p0, Lcom/anythink/core/b/a/e$6;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/b/a/e$6;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;Lcom/anythink/core/c/a;)V

    .line 523
    :cond_33
    return-void
.end method
