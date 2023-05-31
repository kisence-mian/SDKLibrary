.class final Lcom/mintegral/msdk/mtgnative/c/b$e;
.super Landroid/os/Handler;
.source "NativeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgnative/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mintegral/msdk/mtgnative/c/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/mtgnative/c/b;)V
    .registers 3

    .prologue
    .line 184
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 185
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$e;->a:Ljava/lang/ref/WeakReference;

    .line 186
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 7

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 192
    :try_start_3
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_28

    .line 193
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$e;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 194
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Lcom/mintegral/msdk/mtgnative/c/b;)Lcom/mintegral/msdk/base/common/e/b;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/mintegral/msdk/base/common/e/b;->a(ILjava/lang/String;)V

    .line 197
    :cond_28
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_64

    .line 198
    const/4 v0, 0x0

    .line 199
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$e;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 200
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/mtgnative/c/b;

    .line 202
    :cond_42
    if-eqz v0, :cond_64

    .line 203
    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->b(Lcom/mintegral/msdk/mtgnative/c/b;)Z

    .line 204
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/b;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "time out return"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->c(Lcom/mintegral/msdk/mtgnative/c/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->d(Lcom/mintegral/msdk/mtgnative/c/b;)I

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->e(Lcom/mintegral/msdk/mtgnative/c/b;)Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 206
    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->f(Lcom/mintegral/msdk/mtgnative/c/b;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 216
    :cond_64
    :goto_64
    return-void

    .line 209
    :cond_65
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/b;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "time out return isReturn = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->f(Lcom/mintegral/msdk/mtgnative/c/b;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Lcom/mintegral/msdk/mtgnative/c/b;Ljava/util/List;)Z
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_82} :catch_83

    goto :goto_64

    .line 213
    :catch_83
    move-exception v0

    .line 214
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64
.end method
