.class final Lcom/anythink/core/b/a/e$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/a/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/anythink/core/b/a/e;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/a/e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 768
    iput-object p1, p0, Lcom/anythink/core/b/a/e$8;->d:Lcom/anythink/core/b/a/e;

    iput-object p2, p0, Lcom/anythink/core/b/a/e$8;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/core/b/a/e$8;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/core/b/a/e$8;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 771
    iget-object v0, p0, Lcom/anythink/core/b/a/e$8;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/b/a/e$8;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 772
    iget-object v0, p0, Lcom/anythink/core/b/a/e$8;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/b/a/e$8;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/b/a/e$8;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    :cond_1b
    return-void
.end method
