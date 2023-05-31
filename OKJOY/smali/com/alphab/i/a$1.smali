.class final Lcom/alphab/i/a$1;
.super Landroid/os/Handler;
.source "AlphabImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alphab/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alphab/i/a;


# direct methods
.method constructor <init>(Lcom/alphab/i/a;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alphab/i/a$1;->a:Lcom/alphab/i/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 85
    :try_start_4
    iget v0, p1, Landroid/os/Message;->what:I

    .line 86
    packed-switch v0, :pswitch_data_9e

    .line 131
    :cond_9
    :goto_9
    return-void

    .line 88
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_9

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_9

    .line 89
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 90
    if-eqz v0, :cond_9

    .line 93
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    move v2, v1

    .line 95
    :goto_21
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_40

    .line 96
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alphab/a/a/a;

    .line 97
    if-nez v3, :cond_33

    .line 98
    invoke-virtual {v1}, Lcom/alphab/a/a/a;->b()I

    move-result v2

    .line 100
    :cond_33
    if-eqz v1, :cond_3c

    .line 101
    invoke-virtual {v1}, Lcom/alphab/a/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_3c
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_21

    .line 104
    :cond_40
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 105
    sget-object v0, Lcom/alphab/i/a;->a:Ljava/lang/String;

    const-string v1, "do load in handler"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/alphab/i/a$1;->a:Lcom/alphab/i/a;

    invoke-static {v0, v4, v2}, Lcom/alphab/i/a;->a(Lcom/alphab/i/a;Ljava/util/List;I)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_52} :catch_53

    goto :goto_9

    .line 126
    :catch_53
    move-exception v0

    .line 127
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_9

    .line 128
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 111
    :pswitch_5c
    :try_start_5c
    iget-object v0, p0, Lcom/alphab/i/a$1;->a:Lcom/alphab/i/a;

    invoke-static {v0}, Lcom/alphab/i/a;->a(Lcom/alphab/i/a;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 112
    new-instance v0, Lcom/mintegral/msdk/c/c;

    invoke-direct {v0}, Lcom/mintegral/msdk/c/c;-><init>()V

    iget-object v1, p0, Lcom/alphab/i/a$1;->a:Lcom/alphab/i/a;

    invoke-static {v1}, Lcom/alphab/i/a;->a(Lcom/alphab/i/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/controller/a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mintegral/msdk/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 116
    :pswitch_83
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 117
    const/4 v1, 0x0

    .line 118
    instance-of v2, v0, Lcom/alphab/c/b;

    if-eqz v2, :cond_9b

    .line 119
    check-cast v0, Lcom/alphab/c/b;

    .line 121
    :goto_8c
    if-eqz v0, :cond_9

    .line 122
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alphab/c/a;->a(Landroid/content/Context;Lcom/alphab/c/b;)V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_99} :catch_53

    goto/16 :goto_9

    :cond_9b
    move-object v0, v1

    goto :goto_8c

    .line 86
    nop

    :pswitch_data_9e
    .packed-switch 0x65
        :pswitch_a
        :pswitch_5c
        :pswitch_83
    .end packed-switch
.end method
