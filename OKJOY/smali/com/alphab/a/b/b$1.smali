.class final Lcom/alphab/a/b/b$1;
.super Landroid/os/Handler;
.source "AlphabReqImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alphab/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alphab/a/b/b;


# direct methods
.method constructor <init>(Lcom/alphab/a/b/b;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alphab/a/b/b$1;->a:Lcom/alphab/a/b/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/alphab/a/b/b$1;->a:Lcom/alphab/a/b/b;

    iget v1, v1, Lcom/alphab/a/b/b;->c:I

    if-ne v0, v1, :cond_44

    .line 51
    iget-object v0, p0, Lcom/alphab/a/b/b$1;->a:Lcom/alphab/a/b/b;

    iget-object v0, v0, Lcom/alphab/a/b/b;->a:Landroid/content/Context;

    if-nez v0, :cond_f

    .line 81
    :cond_e
    :goto_e
    return-void

    .line 54
    :cond_f
    new-instance v0, Lcom/alphab/a/b/e;

    iget-object v1, p0, Lcom/alphab/a/b/b$1;->a:Lcom/alphab/a/b/b;

    iget-object v1, v1, Lcom/alphab/a/b/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/alphab/a/b/b$1;->a:Lcom/alphab/a/b/b;

    iget-object v2, v2, Lcom/alphab/a/b/b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/alphab/i/c;->a(Landroid/content/Context;)Lcom/alphab/i/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alphab/i/c;->b()Lcom/alphab/i/c$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alphab/i/c$a;->a()Lcom/mintegral/msdk/base/common/f/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alphab/a/b/e;-><init>(Landroid/content/Context;Lcom/mintegral/msdk/base/common/f/b;)V

    .line 55
    iget-object v1, p0, Lcom/alphab/a/b/b$1;->a:Lcom/alphab/a/b/b;

    iget-object v1, v1, Lcom/alphab/a/b/b;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 56
    iget-object v1, p0, Lcom/alphab/a/b/b$1;->a:Lcom/alphab/a/b/b;

    iget-object v1, v1, Lcom/alphab/a/b/b;->b:Ljava/lang/String;

    new-instance v2, Lcom/mintegral/msdk/base/common/net/l;

    invoke-direct {v2}, Lcom/mintegral/msdk/base/common/net/l;-><init>()V

    new-instance v3, Lcom/alphab/a/b/b$1$1;

    invoke-direct {v3, p0}, Lcom/alphab/a/b/b$1$1;-><init>(Lcom/alphab/a/b/b$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alphab/a/b/e;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;

    goto :goto_e

    .line 74
    :cond_44
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/alphab/a/b/b$1;->a:Lcom/alphab/a/b/b;

    iget v1, v1, Lcom/alphab/a/b/b;->d:I

    if-ne v0, v1, :cond_e

    .line 75
    new-instance v0, Lcom/alphab/a/b/e;

    iget-object v1, p0, Lcom/alphab/a/b/b$1;->a:Lcom/alphab/a/b/b;

    iget-object v1, v1, Lcom/alphab/a/b/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/alphab/a/b/b$1;->a:Lcom/alphab/a/b/b;

    iget-object v2, v2, Lcom/alphab/a/b/b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/alphab/i/c;->a(Landroid/content/Context;)Lcom/alphab/i/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alphab/i/c;->b()Lcom/alphab/i/c$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alphab/i/c$a;->a()Lcom/mintegral/msdk/base/common/f/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alphab/a/b/e;-><init>(Landroid/content/Context;Lcom/mintegral/msdk/base/common/f/b;)V

    .line 77
    const-string v1, "AlphabReqImpl"

    const-string v2, "setting  is request"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object v1, Lcom/alphab/a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alphab/a/b/b$1;->a:Lcom/alphab/a/b/b;

    iget-object v2, v2, Lcom/alphab/a/b/b;->f:Lcom/mintegral/msdk/base/common/net/l;

    iget-object v3, p0, Lcom/alphab/a/b/b$1;->a:Lcom/alphab/a/b/b;

    iget-object v3, v3, Lcom/alphab/a/b/b;->g:Lcom/alphab/a/b/f;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alphab/a/b/e;->b(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;

    goto :goto_e
.end method
