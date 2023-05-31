.class final Lcom/mintegral/msdk/videocommon/download/a$2;
.super Landroid/os/Handler;
.source "CampaignDownLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/videocommon/download/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/videocommon/download/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/videocommon/download/a;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 162
    iput-object p1, p0, Lcom/mintegral/msdk/videocommon/download/a$2;->a:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 7

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 166
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a$2;->a:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/v;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/v;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/download/a;Lcom/mintegral/msdk/base/b/v;)Lcom/mintegral/msdk/base/b/v;

    .line 167
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_b4

    .line 198
    :cond_1d
    :goto_1d
    return-void

    .line 169
    :pswitch_1e
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a$2;->a:Lcom/mintegral/msdk/videocommon/download/a;

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$2;->a:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v1}, Lcom/mintegral/msdk/videocommon/download/a;->b(Lcom/mintegral/msdk/videocommon/download/a;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$2;->a:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v1}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v1

    invoke-static {v0, v2, v3, v1}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/download/a;JI)V

    goto :goto_1d

    .line 173
    :pswitch_30
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a$2;->a:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v0

    if-eq v0, v2, :cond_1d

    .line 174
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a$2;->a:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v0, v2}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/download/a;I)I

    .line 175
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a$2;->a:Lcom/mintegral/msdk/videocommon/download/a;

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$2;->a:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v1}, Lcom/mintegral/msdk/videocommon/download/a;->b(Lcom/mintegral/msdk/videocommon/download/a;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$2;->a:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v1}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v1

    invoke-static {v0, v2, v3, v1}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/download/a;JI)V

    .line 176
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a$2;->a:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/a;->p()V

    goto :goto_1d

    .line 180
    :pswitch_54
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a$2;->a:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v0

    if-eq v0, v3, :cond_1d

    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a$2;->a:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v0

    if-eq v0, v2, :cond_1d

    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a$2;->a:Lcom/mintegral/msdk/videocommon/download/a;

    .line 181
    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v0

    if-eq v0, v4, :cond_1d

    .line 182
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a$2;->a:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v0, v3}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/download/a;I)I

    .line 183
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a$2;->a:Lcom/mintegral/msdk/videocommon/download/a;

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$2;->a:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v1}, Lcom/mintegral/msdk/videocommon/download/a;->b(Lcom/mintegral/msdk/videocommon/download/a;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$2;->a:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v1}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v1

    invoke-static {v0, v2, v3, v1}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/download/a;JI)V

    .line 184
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a$2;->a:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/a;->p()V

    goto :goto_1d

    .line 188
    :pswitch_88
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a$2;->a:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v0, v4}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/download/a;I)I

    .line 189
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a$2;->a:Lcom/mintegral/msdk/videocommon/download/a;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/download/a;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a$2;->a:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/download/a;->d(Lcom/mintegral/msdk/videocommon/download/a;)Z

    .line 191
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a$2;->a:Lcom/mintegral/msdk/videocommon/download/a;

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$2;->a:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v1}, Lcom/mintegral/msdk/videocommon/download/a;->b(Lcom/mintegral/msdk/videocommon/download/a;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$2;->a:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v1}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v1

    invoke-static {v0, v2, v3, v1}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/download/a;JI)V

    goto/16 :goto_1d

    .line 194
    :pswitch_ac
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a$2;->a:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/a;->f()V

    goto/16 :goto_1d

    .line 167
    nop

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_30
        :pswitch_54
        :pswitch_88
        :pswitch_ac
    .end packed-switch
.end method
