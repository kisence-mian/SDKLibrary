.class final Lcom/anythink/basead/a/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/a/b;->a(Ljava/lang/String;ILcom/anythink/basead/c/h;Lcom/anythink/basead/a/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/a/b;


# direct methods
.method constructor <init>(Lcom/anythink/basead/a/b;)V
    .registers 2

    .line 502
    iput-object p1, p0, Lcom/anythink/basead/a/b$2;->a:Lcom/anythink/basead/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 506
    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/a/b$2;->a:Lcom/anythink/basead/a/b;

    iget-object v0, v0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/h;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_3d

    const/4 v1, 0x0

    const-string v2, "string"

    if-eqz v0, :cond_27

    .line 507
    :try_start_11
    iget-object v0, p0, Lcom/anythink/basead/a/b$2;->a:Lcom/anythink/basead/a/b;

    iget-object v0, v0, Lcom/anythink/basead/a/b;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/anythink/basead/a/b$2;->a:Lcom/anythink/basead/a/b;

    iget-object v3, v3, Lcom/anythink/basead/a/b;->f:Landroid/content/Context;

    const-string v4, "basead_click_empty"

    invoke-static {v3, v4, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 509
    :cond_27
    iget-object v0, p0, Lcom/anythink/basead/a/b$2;->a:Lcom/anythink/basead/a/b;

    iget-object v0, v0, Lcom/anythink/basead/a/b;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/anythink/basead/a/b$2;->a:Lcom/anythink/basead/a/b;

    iget-object v3, v3, Lcom/anythink/basead/a/b;->f:Landroid/content/Context;

    const-string v4, "basead_click_fail"

    invoke-static {v3, v4, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_3c
    .catchall {:try_start_11 .. :try_end_3c} :catchall_3d

    .line 513
    return-void

    .line 511
    :catchall_3d
    move-exception v0

    .line 515
    return-void
.end method
