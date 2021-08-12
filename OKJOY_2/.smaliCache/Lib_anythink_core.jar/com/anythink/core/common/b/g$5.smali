.class final Lcom/anythink/core/common/b/g$5;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/b/g;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/b/g;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/b/g;)V
    .registers 2

    .line 575
    iput-object p1, p0, Lcom/anythink/core/common/b/g$5;->a:Lcom/anythink/core/common/b/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 578
    invoke-static {p1}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_23

    .line 579
    invoke-static {}, Lcom/anythink/core/common/n;->a()Lcom/anythink/core/common/n;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/core/common/n;->b()V

    .line 580
    invoke-static {}, Lcom/anythink/core/common/f/b;->a()Lcom/anythink/core/common/f/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/core/common/f/b;->b()V

    .line 581
    iget-object p2, p0, Lcom/anythink/core/common/b/g$5;->a:Lcom/anythink/core/common/b/g;

    invoke-virtual {p2}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/b/g$5;->a:Lcom/anythink/core/common/b/g;

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/anythink/core/common/b/g;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :cond_23
    return-void
.end method
