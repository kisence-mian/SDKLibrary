.class final Lcom/mintegral/msdk/base/common/e/b/a$1;
.super Landroid/os/Handler;
.source "CrashHandlerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/base/common/e/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/base/common/e/b/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/base/common/e/b/a;)V
    .registers 2

    .prologue
    .line 124
    iput-object p1, p0, Lcom/mintegral/msdk/base/common/e/b/a$1;->a:Lcom/mintegral/msdk/base/common/e/b/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 128
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3c

    .line 143
    :cond_8
    :goto_8
    return-void

    .line 130
    :pswitch_9
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/e/b/a$1;->a:Lcom/mintegral/msdk/base/common/e/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/e/b/a;->a(Lcom/mintegral/msdk/base/common/e/b/a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 131
    if-eqz v0, :cond_8

    .line 132
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/util/HashMap;

    if-eqz v1, :cond_8

    .line 133
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    .line 134
    if-eqz v1, :cond_8

    .line 135
    new-instance v2, Lcom/mintegral/msdk/base/common/e/b;

    invoke-direct {v2, v0}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;)V

    const-string v0, "crashinfo"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "file"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v2, v0, v1}, Lcom/mintegral/msdk/base/common/e/b;->a(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_8

    .line 128
    :pswitch_data_3c
    .packed-switch 0x65
        :pswitch_9
    .end packed-switch
.end method
