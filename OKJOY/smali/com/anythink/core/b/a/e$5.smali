.class final Lcom/anythink/core/b/a/e$5;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/a/e;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/b/a/e;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/a/e;)V
    .registers 2

    .prologue
    .line 410
    iput-object p1, p0, Lcom/anythink/core/b/a/e$5;->a:Lcom/anythink/core/b/a/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 413
    invoke-static {p1}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 414
    invoke-static {}, Lcom/anythink/core/b/l;->a()Lcom/anythink/core/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/l;->b()V

    .line 416
    :cond_d
    return-void
.end method
