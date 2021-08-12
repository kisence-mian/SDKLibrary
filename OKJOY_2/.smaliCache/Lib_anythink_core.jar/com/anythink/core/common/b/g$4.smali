.class final Lcom/anythink/core/common/b/g$4;
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

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/anythink/core/common/b/g;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/b/g;Landroid/content/Context;Landroid/content/Context;)V
    .registers 4

    .line 455
    iput-object p1, p0, Lcom/anythink/core/common/b/g$4;->c:Lcom/anythink/core/common/b/g;

    iput-object p2, p0, Lcom/anythink/core/common/b/g$4;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/core/common/b/g$4;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 458
    iget-object v0, p0, Lcom/anythink/core/common/b/g$4;->c:Lcom/anythink/core/common/b/g;

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->b()Lcom/anythink/core/api/IExHandler;

    .line 460
    iget-object v0, p0, Lcom/anythink/core/common/b/g$4;->c:Lcom/anythink/core/common/b/g;

    invoke-static {v0}, Lcom/anythink/core/common/b/g;->b(Lcom/anythink/core/common/b/g;)Lcom/anythink/core/api/IExHandler;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 461
    iget-object v0, p0, Lcom/anythink/core/common/b/g$4;->c:Lcom/anythink/core/common/b/g;

    invoke-static {v0}, Lcom/anythink/core/common/b/g;->b(Lcom/anythink/core/common/b/g;)Lcom/anythink/core/api/IExHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/b/g$4;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/anythink/core/api/IExHandler;->initDeviceInfo(Landroid/content/Context;)V

    .line 463
    :cond_18
    iget-object v0, p0, Lcom/anythink/core/common/b/g$4;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/c/d;->a()V

    .line 464
    return-void
.end method
