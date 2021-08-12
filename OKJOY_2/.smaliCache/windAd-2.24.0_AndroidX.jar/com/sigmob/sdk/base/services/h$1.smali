.class Lcom/sigmob/sdk/base/services/h$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/services/h;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/services/h;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/services/h;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/base/services/h$1;->a:Lcom/sigmob/sdk/base/services/h;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    iget v0, p1, Landroid/os/Message;->what:I

    sget-object v1, Lcom/sigmob/sdk/base/services/f;->a:Lcom/sigmob/sdk/base/services/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/services/f;->a()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_55

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sigmob/sdk/base/services/i;

    iget-object v0, p0, Lcom/sigmob/sdk/base/services/h$1;->a:Lcom/sigmob/sdk/base/services/h;

    invoke-static {v0}, Lcom/sigmob/sdk/base/services/h;->a(Lcom/sigmob/sdk/base/services/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1e

    goto :goto_1f

    :cond_1e
    move v2, v0

    :goto_1f
    iget-object v0, p0, Lcom/sigmob/sdk/base/services/h$1;->a:Lcom/sigmob/sdk/base/services/h;

    invoke-static {v0}, Lcom/sigmob/sdk/base/services/h;->a(Lcom/sigmob/sdk/base/services/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/services/g;

    iput-object v0, p1, Lcom/sigmob/sdk/base/services/i;->a:Lcom/sigmob/sdk/base/services/g;

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    sget-object v1, Lcom/sigmob/sdk/base/services/f;->b:Lcom/sigmob/sdk/base/services/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/services/f;->a()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/sigmob/sdk/base/services/h;->b()Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/sigmob/sdk/base/services/h$1;->a:Lcom/sigmob/sdk/base/services/h;

    invoke-static {v1}, Lcom/sigmob/sdk/base/services/h;->b(Lcom/sigmob/sdk/base/services/h;)I

    move-result v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/services/h$1;->a:Lcom/sigmob/sdk/base/services/h;

    invoke-static {v2}, Lcom/sigmob/sdk/base/services/h;->c(Lcom/sigmob/sdk/base/services/h;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_14b

    :cond_55
    iget v0, p1, Landroid/os/Message;->what:I

    sget-object v1, Lcom/sigmob/sdk/base/services/f;->b:Lcom/sigmob/sdk/base/services/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/services/f;->a()I

    move-result v1

    if-ne v0, v1, :cond_e3

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sigmob/sdk/base/services/i;

    iget-object v0, p0, Lcom/sigmob/sdk/base/services/h$1;->a:Lcom/sigmob/sdk/base/services/h;

    invoke-static {v0}, Lcom/sigmob/sdk/base/services/h;->a(Lcom/sigmob/sdk/base/services/h;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lcom/sigmob/sdk/base/services/i;->a:Lcom/sigmob/sdk/base/services/g;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/services/h$1;->a:Lcom/sigmob/sdk/base/services/h;

    invoke-static {v1}, Lcom/sigmob/sdk/base/services/h;->c(Lcom/sigmob/sdk/base/services/h;)I

    move-result v1

    sub-int v1, v0, v1

    if-ltz v0, :cond_83

    iget-object v3, p0, Lcom/sigmob/sdk/base/services/h$1;->a:Lcom/sigmob/sdk/base/services/h;

    invoke-static {v3}, Lcom/sigmob/sdk/base/services/h;->c(Lcom/sigmob/sdk/base/services/h;)I

    move-result v3

    if-ge v0, v3, :cond_82

    goto :goto_83

    :cond_82
    move v2, v1

    :cond_83
    :goto_83
    iget-object v1, p0, Lcom/sigmob/sdk/base/services/h$1;->a:Lcom/sigmob/sdk/base/services/h;

    invoke-static {v1}, Lcom/sigmob/sdk/base/services/h;->c(Lcom/sigmob/sdk/base/services/h;)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v3, p0, Lcom/sigmob/sdk/base/services/h$1;->a:Lcom/sigmob/sdk/base/services/h;

    invoke-static {v3}, Lcom/sigmob/sdk/base/services/h;->a(Lcom/sigmob/sdk/base/services/h;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v1, v3, :cond_a4

    iget-object v1, p0, Lcom/sigmob/sdk/base/services/h$1;->a:Lcom/sigmob/sdk/base/services/h;

    invoke-static {v1}, Lcom/sigmob/sdk/base/services/h;->a(Lcom/sigmob/sdk/base/services/h;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :cond_a4
    iget-object v3, p0, Lcom/sigmob/sdk/base/services/h$1;->a:Lcom/sigmob/sdk/base/services/h;

    invoke-static {v3}, Lcom/sigmob/sdk/base/services/h;->a(Lcom/sigmob/sdk/base/services/h;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_14b

    const/4 v3, 0x0

    if-ge v2, v0, :cond_c3

    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v5, p0, Lcom/sigmob/sdk/base/services/h$1;->a:Lcom/sigmob/sdk/base/services/h;

    invoke-static {v5}, Lcom/sigmob/sdk/base/services/h;->a(Lcom/sigmob/sdk/base/services/h;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_c4

    :cond_c3
    move-object v4, v3

    :goto_c4
    if-ge v0, v1, :cond_d5

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lcom/sigmob/sdk/base/services/h$1;->a:Lcom/sigmob/sdk/base/services/h;

    invoke-static {v2}, Lcom/sigmob/sdk/base/services/h;->a(Lcom/sigmob/sdk/base/services/h;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    :cond_d5
    if-nez v4, :cond_d9

    if-eqz v3, :cond_14b

    :cond_d9
    iget-object v0, p0, Lcom/sigmob/sdk/base/services/h$1;->a:Lcom/sigmob/sdk/base/services/h;

    iget-object v1, p1, Lcom/sigmob/sdk/base/services/i;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/sigmob/sdk/base/services/i;->c:Ljava/lang/String;

    invoke-static {v0, v4, v3, v1, p1}, Lcom/sigmob/sdk/base/services/h;->a(Lcom/sigmob/sdk/base/services/h;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14b

    :cond_e3
    iget p1, p1, Landroid/os/Message;->what:I

    sget-object v0, Lcom/sigmob/sdk/base/services/f;->c:Lcom/sigmob/sdk/base/services/f;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/services/f;->a()I

    move-result v0

    if-ne p1, v0, :cond_14b

    :try_start_ed
    iget-object p1, p0, Lcom/sigmob/sdk/base/services/h$1;->a:Lcom/sigmob/sdk/base/services/h;

    invoke-static {p1}, Lcom/sigmob/sdk/base/services/h;->d(Lcom/sigmob/sdk/base/services/h;)Lcom/sigmob/sdk/base/services/g;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/sigmob/sdk/base/services/g;->g:J

    iget-object p1, p0, Lcom/sigmob/sdk/base/services/h$1;->a:Lcom/sigmob/sdk/base/services/h;

    invoke-static {p1}, Lcom/sigmob/sdk/base/services/h;->d(Lcom/sigmob/sdk/base/services/h;)Lcom/sigmob/sdk/base/services/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/services/g;->a()Lcom/sigmob/sdk/base/services/g;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/base/services/h$1;->a:Lcom/sigmob/sdk/base/services/h;

    invoke-static {v0}, Lcom/sigmob/sdk/base/services/h;->a(Lcom/sigmob/sdk/base/services/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/sigmob/sdk/base/services/h;->c()I

    move-result v1

    if-le v0, v1, :cond_11c

    iget-object v0, p0, Lcom/sigmob/sdk/base/services/h$1;->a:Lcom/sigmob/sdk/base/services/h;

    invoke-static {v0}, Lcom/sigmob/sdk/base/services/h;->a(Lcom/sigmob/sdk/base/services/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_11c
    if-eqz p1, :cond_130

    iget-object v0, p0, Lcom/sigmob/sdk/base/services/h$1;->a:Lcom/sigmob/sdk/base/services/h;

    invoke-static {v0}, Lcom/sigmob/sdk/base/services/h;->a(Lcom/sigmob/sdk/base/services/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_127
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_ed .. :try_end_127} :catch_128

    goto :goto_130

    :catch_128
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_130
    :goto_130
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/base/services/f;->c:Lcom/sigmob/sdk/base/services/f;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/services/f;->a()I

    move-result v0

    iput v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/sigmob/sdk/base/services/h;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/services/h$1;->a:Lcom/sigmob/sdk/base/services/h;

    invoke-static {v1}, Lcom/sigmob/sdk/base/services/h;->b(Lcom/sigmob/sdk/base/services/h;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_14b
    :goto_14b
    return-void
.end method
