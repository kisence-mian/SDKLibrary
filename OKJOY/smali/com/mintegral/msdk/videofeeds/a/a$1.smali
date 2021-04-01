.class final Lcom/mintegral/msdk/videofeeds/a/a$1;
.super Landroid/os/Handler;
.source "VideofeedsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/videofeeds/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/videofeeds/a/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/videofeeds/a/a;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 119
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/a/a$1;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 124
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_ac

    .line 158
    :cond_5
    :goto_5
    return-void

    .line 127
    :pswitch_6
    const-string v0, "VideofeedsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handler id\u83b7\u53d6\u6210\u529f \u5f00\u59cbload mTtcIds:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/a/a$1;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-static {v2}, Lcom/mintegral/msdk/videofeeds/a/a;->a(Lcom/mintegral/msdk/videofeeds/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mExcludes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/a/a$1;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-static {v2}, Lcom/mintegral/msdk/videofeeds/a/a;->b(Lcom/mintegral/msdk/videofeeds/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a$1;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videofeeds/a/a;->b()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    goto :goto_5

    .line 156
    :catch_36
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 132
    :pswitch_3b
    :try_start_3b
    const-string v0, "VideofeedsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handler id\u83b7\u53d6\u8d85\u65f6  \u5f00\u59cbload mTtcIds:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/a/a$1;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-static {v2}, Lcom/mintegral/msdk/videofeeds/a/a;->a(Lcom/mintegral/msdk/videofeeds/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mExcludes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/a/a$1;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-static {v2}, Lcom/mintegral/msdk/videofeeds/a/a;->b(Lcom/mintegral/msdk/videofeeds/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a$1;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videofeeds/a/a;->b()V

    goto :goto_5

    .line 137
    :pswitch_6b
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a$1;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/a/a;->c(Lcom/mintegral/msdk/videofeeds/a/a;)Lcom/mintegral/msdk/videofeeds/c/b;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 138
    const-string v0, "VideofeedsAdapter"

    const-string v1, "handler \u6570\u636eload\u6210\u529f"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a$1;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/a/a;->c(Lcom/mintegral/msdk/videofeeds/a/a;)Lcom/mintegral/msdk/videofeeds/c/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/videofeeds/c/b;->a()V

    goto :goto_5

    .line 143
    :pswitch_84
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a$1;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/a/a;->c(Lcom/mintegral/msdk/videofeeds/a/a;)Lcom/mintegral/msdk/videofeeds/c/b;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 144
    const-string v0, "VideofeedsAdapter"

    const-string v1, "handler \u6570\u636eload\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 146
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/a/a$1;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-static {v1}, Lcom/mintegral/msdk/videofeeds/a/a;->c(Lcom/mintegral/msdk/videofeeds/a/a;)Lcom/mintegral/msdk/videofeeds/c/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/videofeeds/c/b;->a(Ljava/lang/String;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_aa} :catch_36

    goto/16 :goto_5

    .line 124
    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_6
        :pswitch_3b
        :pswitch_6b
        :pswitch_84
    .end packed-switch
.end method
