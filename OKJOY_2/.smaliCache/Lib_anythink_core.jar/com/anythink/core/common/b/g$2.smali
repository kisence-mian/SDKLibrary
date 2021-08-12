.class final Lcom/anythink/core/common/b/g$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/b/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/anythink/core/common/b/g;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/b/g;Landroid/content/Context;Ljava/lang/String;Landroid/content/Context;)V
    .registers 5

    .line 425
    iput-object p1, p0, Lcom/anythink/core/common/b/g$2;->d:Lcom/anythink/core/common/b/g;

    iput-object p2, p0, Lcom/anythink/core/common/b/g$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/core/common/b/g$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/core/common/b/g$2;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 429
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/f/b;->a()Lcom/anythink/core/common/f/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/b/g$2;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/b;->a(Landroid/content/Context;)V

    .line 430
    iget-object v0, p0, Lcom/anythink/core/common/b/g$2;->d:Lcom/anythink/core/common/b/g;

    iget-object v1, p0, Lcom/anythink/core/common/b/g$2;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/core/common/b/g$2;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/core/common/b/g;->a(Landroid/content/Context;Ljava/lang/String;I)J

    .line 431
    iget-object v0, p0, Lcom/anythink/core/common/b/g$2;->d:Lcom/anythink/core/common/b/g;

    iget-object v1, p0, Lcom/anythink/core/common/b/g$2;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/anythink/core/common/b/g;->a(Lcom/anythink/core/common/b/g;Landroid/content/Context;)V

    .line 432
    iget-object v0, p0, Lcom/anythink/core/common/b/g$2;->d:Lcom/anythink/core/common/b/g;

    iget-object v1, p0, Lcom/anythink/core/common/b/g$2;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/anythink/core/common/b/g;->b(Lcom/anythink/core/common/b/g;Landroid/content/Context;)V

    .line 434
    iget-object v0, p0, Lcom/anythink/core/common/b/g$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/common/b/f;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/f;->a()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 439
    return-void

    .line 435
    :catch_2b
    move-exception v0

    .line 440
    return-void
.end method
