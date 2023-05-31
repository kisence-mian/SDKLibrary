.class Lcom/pgl/a/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pgl/a/a/b;->a(II[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pgl/a/a/b;


# direct methods
.method constructor <init>(Lcom/pgl/a/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/pgl/a/a/b$1;->a:Lcom/pgl/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/pgl/a/a/b$1;->a:Lcom/pgl/a/a/b;

    invoke-static {v2}, Lcom/pgl/a/a/b;->a(Lcom/pgl/a/a/b;)I

    move-result v2

    iget-object v3, p0, Lcom/pgl/a/a/b$1;->a:Lcom/pgl/a/a/b;

    invoke-static {v3}, Lcom/pgl/a/a/b;->b(Lcom/pgl/a/a/b;)I

    move-result v3

    if-lt v2, v3, :cond_24

    iget-object v1, p0, Lcom/pgl/a/a/b$1;->a:Lcom/pgl/a/a/b;

    invoke-static {v1, v0}, Lcom/pgl/a/a/b;->a(Lcom/pgl/a/a/b;Z)Z

    iget-object v1, p0, Lcom/pgl/a/a/b$1;->a:Lcom/pgl/a/a/b;

    invoke-static {v1, v0}, Lcom/pgl/a/a/b;->a(Lcom/pgl/a/a/b;I)I

    iget-object v1, p0, Lcom/pgl/a/a/b$1;->a:Lcom/pgl/a/a/b;

    invoke-static {v1}, Lcom/pgl/a/a/b;->c(Lcom/pgl/a/a/b;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    :goto_23
    return v0

    :cond_24
    iget-object v2, p0, Lcom/pgl/a/a/b$1;->a:Lcom/pgl/a/a/b;

    invoke-static {v2}, Lcom/pgl/a/a/b;->d(Lcom/pgl/a/a/b;)Z

    move-result v2

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/pgl/a/a/b$1;->a:Lcom/pgl/a/a/b;

    invoke-static {v2, v0}, Lcom/pgl/a/a/b;->a(Lcom/pgl/a/a/b;Z)Z

    iget-object v2, p0, Lcom/pgl/a/a/b$1;->a:Lcom/pgl/a/a/b;

    invoke-static {v2, v0}, Lcom/pgl/a/a/b;->a(Lcom/pgl/a/a/b;I)I

    iget-object v0, p0, Lcom/pgl/a/a/b$1;->a:Lcom/pgl/a/a/b;

    invoke-static {v0}, Lcom/pgl/a/a/b;->c(Lcom/pgl/a/a/b;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    move v0, v1

    goto :goto_23

    :cond_41
    iget-object v2, p0, Lcom/pgl/a/a/b$1;->a:Lcom/pgl/a/a/b;

    invoke-static {v2}, Lcom/pgl/a/a/b;->f(Lcom/pgl/a/a/b;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/pgl/a/a/b$1;->a:Lcom/pgl/a/a/b;

    invoke-static {v3}, Lcom/pgl/a/a/b;->e(Lcom/pgl/a/a/b;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    int-to-long v4, v3

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/pgl/a/a/b$1;->a:Lcom/pgl/a/a/b;

    invoke-static {v1}, Lcom/pgl/a/a/b;->g(Lcom/pgl/a/a/b;)I

    goto :goto_23
.end method
