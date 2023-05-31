.class final Lcom/anythink/core/activity/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/activity/a/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/activity/a/b;


# direct methods
.method constructor <init>(Lcom/anythink/core/activity/a/b;)V
    .registers 2

    .prologue
    .line 86
    iput-object p1, p0, Lcom/anythink/core/activity/a/b$1;->a:Lcom/anythink/core/activity/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/activity/a/b$1;->a:Lcom/anythink/core/activity/a/b;

    iget-object v0, v0, Lcom/anythink/core/activity/a/b;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/anythink/core/activity/a/b$1;->a:Lcom/anythink/core/activity/a/b;

    iget-boolean v0, v0, Lcom/anythink/core/activity/a/b;->k:Z

    if-nez v0, :cond_23

    .line 92
    iget-object v0, p0, Lcom/anythink/core/activity/a/b$1;->a:Lcom/anythink/core/activity/a/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/core/activity/a/b;->j:Z

    .line 93
    invoke-static {}, Lcom/anythink/core/activity/a/b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reload......."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/anythink/core/activity/a/b$1;->a:Lcom/anythink/core/activity/a/b;

    iget-object v1, p0, Lcom/anythink/core/activity/a/b$1;->a:Lcom/anythink/core/activity/a/b;

    iget-object v1, v1, Lcom/anythink/core/activity/a/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/activity/a/b;->a(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_23} :catch_24

    .line 103
    :cond_23
    :goto_23
    return-void

    :catch_24
    move-exception v0

    goto :goto_23
.end method
