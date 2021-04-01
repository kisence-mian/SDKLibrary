.class Lcom/sigmob/sdk/base/common/utils/ClientMetadata$3;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->M()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$3;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sget-object v2, Lcom/sigmob/sdk/base/common/ac;->a:Lcom/sigmob/sdk/base/common/ac;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/ac;->a()I

    move-result v2

    if-ne v0, v2, :cond_53

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sigmob/sdk/base/common/utils/z;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$3;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->d(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_14c

    :goto_1e
    iget-object v2, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$3;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->d(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/base/common/utils/y;

    iput-object v1, v0, Lcom/sigmob/sdk/base/common/utils/z;->a:Lcom/sigmob/sdk/base/common/utils/y;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    sget-object v2, Lcom/sigmob/sdk/base/common/ac;->b:Lcom/sigmob/sdk/base/common/ac;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/ac;->a()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ay()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$3;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->e(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)I

    move-result v2

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$3;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {v3}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->f(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_52
    :goto_52
    return-void

    :cond_53
    iget v0, p1, Landroid/os/Message;->what:I

    sget-object v2, Lcom/sigmob/sdk/base/common/ac;->b:Lcom/sigmob/sdk/base/common/ac;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/ac;->a()I

    move-result v2

    if-ne v0, v2, :cond_dd

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sigmob/sdk/base/common/utils/z;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$3;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->d(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)Ljava/util/List;

    move-result-object v2

    iget-object v4, v0, Lcom/sigmob/sdk/base/common/utils/z;->a:Lcom/sigmob/sdk/base/common/utils/y;

    invoke-interface {v2, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$3;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->f(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)I

    move-result v2

    sub-int v2, v5, v2

    if-ltz v5, :cond_7f

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$3;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {v4}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->f(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)I

    move-result v4

    if-ge v5, v4, :cond_149

    :cond_7f
    :goto_7f
    iget-object v2, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$3;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->f(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)I

    move-result v2

    add-int/2addr v2, v5

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$3;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {v4}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->d(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-le v2, v4, :cond_a0

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$3;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->d(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :cond_a0
    iget-object v4, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$3;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {v4}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->d(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_52

    if-ge v1, v5, :cond_146

    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v6, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$3;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {v6}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->d(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    :goto_bd
    if-ge v5, v2, :cond_144

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$3;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {v3}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->d(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    :goto_ce
    if-nez v4, :cond_d2

    if-eqz v1, :cond_52

    :cond_d2
    iget-object v2, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$3;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    iget-object v3, v0, Lcom/sigmob/sdk/base/common/utils/z;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/sigmob/sdk/base/common/utils/z;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v2, v4, v1, v3, v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto/16 :goto_52

    :cond_dd
    iget v0, p1, Landroid/os/Message;->what:I

    sget-object v1, Lcom/sigmob/sdk/base/common/ac;->c:Lcom/sigmob/sdk/base/common/ac;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/ac;->a()I

    move-result v1

    if-ne v0, v1, :cond_52

    :try_start_e7
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$3;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)Lcom/sigmob/sdk/base/common/utils/y;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/sigmob/sdk/base/common/utils/y;->g:J

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$3;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)Lcom/sigmob/sdk/base/common/utils/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/y;->a()Lcom/sigmob/sdk/base/common/utils/y;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$3;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->d(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->az()I

    move-result v2

    if-le v1, v2, :cond_117

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$3;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->d(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_117
    if-eqz v0, :cond_122

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$3;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->d(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_122
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_e7 .. :try_end_122} :catch_13f

    :cond_122
    :goto_122
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    sget-object v1, Lcom/sigmob/sdk/base/common/ac;->c:Lcom/sigmob/sdk/base/common/ac;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/ac;->a()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ay()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$3;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->e(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_52

    :catch_13f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_122

    :cond_144
    move-object v1, v3

    goto :goto_ce

    :cond_146
    move-object v4, v3

    goto/16 :goto_bd

    :cond_149
    move v1, v2

    goto/16 :goto_7f

    :cond_14c
    move v1, v2

    goto/16 :goto_1e
.end method
