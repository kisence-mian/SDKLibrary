.class final Lcom/anythink/core/b/a/e$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/a/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/anythink/core/b/a/e;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/a/e;Landroid/content/Context;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 336
    iput-object p1, p0, Lcom/anythink/core/b/a/e$4;->c:Lcom/anythink/core/b/a/e;

    iput-object p2, p0, Lcom/anythink/core/b/a/e$4;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/core/b/a/e$4;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 339
    iget-object v0, p0, Lcom/anythink/core/b/a/e$4;->c:Lcom/anythink/core/b/a/e;

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->b()Lcom/anythink/core/api/IATChinaSDKHandler;

    .line 341
    iget-object v0, p0, Lcom/anythink/core/b/a/e$4;->c:Lcom/anythink/core/b/a/e;

    invoke-static {v0}, Lcom/anythink/core/b/a/e;->b(Lcom/anythink/core/b/a/e;)Lcom/anythink/core/api/IATChinaSDKHandler;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 342
    iget-object v0, p0, Lcom/anythink/core/b/a/e$4;->c:Lcom/anythink/core/b/a/e;

    invoke-static {v0}, Lcom/anythink/core/b/a/e;->b(Lcom/anythink/core/b/a/e;)Lcom/anythink/core/api/IATChinaSDKHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/b/a/e$4;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/anythink/core/api/IATChinaSDKHandler;->initDeviceInfo(Landroid/content/Context;)V

    .line 344
    :cond_18
    iget-object v0, p0, Lcom/anythink/core/b/a/e$4;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/c/d;->a()V

    .line 345
    return-void
.end method
