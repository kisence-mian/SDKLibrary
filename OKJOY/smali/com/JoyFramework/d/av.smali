.class Lcom/JoyFramework/d/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/remote/b/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/JoyFramework/remote/b/c/c",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:Lcom/JoyFramework/d/au;


# direct methods
.method constructor <init>(Lcom/JoyFramework/d/au;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)V
    .registers 8

    .prologue
    .line 77
    iput-object p1, p0, Lcom/JoyFramework/d/av;->f:Lcom/JoyFramework/d/au;

    iput-object p2, p0, Lcom/JoyFramework/d/av;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/JoyFramework/d/av;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/JoyFramework/d/av;->c:J

    iput-object p6, p0, Lcom/JoyFramework/d/av;->d:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/JoyFramework/d/av;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 80
    const-string v0, "PaymentUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestPaymentResult2 -> onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/a/a;->a(Landroid/content/Context;)Lcom/JoyFramework/d/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/d/av;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/JoyFramework/d/a/a;->a(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 86
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/JoyFramework/remote/bean/ai;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/ai;

    .line 87
    const-string v1, "PaymentUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "order checking back info = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/ai;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/ai;->a()Ljava/lang/String;

    move-result-object v4

    .line 89
    const/4 v1, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_1be

    :cond_37
    :goto_37
    packed-switch v1, :pswitch_data_1c6

    .line 184
    :cond_3a
    :goto_3a
    return-void

    .line 89
    :pswitch_3b
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    move v1, v3

    goto :goto_37

    :pswitch_45
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    move v1, v2

    goto :goto_37

    .line 91
    :pswitch_4f
    const-string v1, "PaymentUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "paySuccess: orderId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/JoyFramework/d/av;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sput-boolean v3, Lcom/JoyFramework/a/a;->K:Z

    .line 94
    const-string v1, ""

    sput-object v1, Lcom/JoyFramework/a/a;->L:Ljava/lang/String;

    .line 95
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v1

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/ai;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/JoyFramework/c/e;->c(Ljava/lang/String;)V

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 101
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/isNew"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_11e

    .line 103
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/JoyFramework/d/bw;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 104
    if-eqz v4, :cond_10e

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_10e

    .line 106
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1ba

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 107
    iget-object v6, p0, Lcom/JoyFramework/d/av;->b:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c6

    move v1, v2

    .line 113
    :goto_db
    if-nez v1, :cond_e7

    .line 114
    iget-object v1, p0, Lcom/JoyFramework/d/av;->b:Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    const-string v1, "isNew"

    invoke-static {v4, v1}, Lcom/JoyFramework/d/bw;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 131
    :cond_e7
    :goto_e7
    sget-boolean v1, Lcom/JoyFramework/a/a;->I:Z

    if-eqz v1, :cond_f3

    .line 132
    new-instance v1, Lcom/JoyFramework/d/ao;

    invoke-direct {v1}, Lcom/JoyFramework/d/ao;-><init>()V

    invoke-virtual {v1, v0}, Lcom/JoyFramework/d/ao;->a(Lcom/JoyFramework/remote/bean/ai;)V

    .line 135
    :cond_f3
    sget-boolean v1, Lcom/JoyFramework/a/a;->H:Z

    if-eqz v1, :cond_ff

    .line 136
    new-instance v1, Lcom/JoyFramework/d/ao;

    invoke-direct {v1}, Lcom/JoyFramework/d/ao;-><init>()V

    invoke-virtual {v1, v0}, Lcom/JoyFramework/d/ao;->b(Lcom/JoyFramework/remote/bean/ai;)V

    .line 140
    :cond_ff
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/a/a;->a(Landroid/content/Context;)Lcom/JoyFramework/d/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/d/av;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/JoyFramework/d/a/a;->a(Ljava/lang/String;)V

    goto/16 :goto_3a

    .line 118
    :cond_10e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 119
    iget-object v2, p0, Lcom/JoyFramework/d/av;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    const-string v2, "isNew"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/bw;->a(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_e7

    .line 124
    :cond_11e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    iget-object v2, p0, Lcom/JoyFramework/d/av;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    const-string v2, "isNew"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/bw;->a(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_e7

    .line 144
    :pswitch_12e
    iget-wide v0, p0, Lcom/JoyFramework/d/av;->c:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_158

    iget-wide v0, p0, Lcom/JoyFramework/d/av;->c:J

    iget-object v2, p0, Lcom/JoyFramework/d/av;->f:Lcom/JoyFramework/d/au;

    invoke-static {v2}, Lcom/JoyFramework/d/au;->a(Lcom/JoyFramework/d/au;)I

    move-result v2

    int-to-long v4, v2

    cmp-long v0, v0, v4

    if-gez v0, :cond_158

    .line 146
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/JoyFramework/d/aw;

    invoke-direct {v1, p0}, Lcom/JoyFramework/d/aw;-><init>(Lcom/JoyFramework/d/av;)V

    iget-wide v2, p0, Lcom/JoyFramework/d/av;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3a

    .line 156
    :cond_158
    iget-wide v0, p0, Lcom/JoyFramework/d/av;->c:J

    iget-object v2, p0, Lcom/JoyFramework/d/av;->f:Lcom/JoyFramework/d/au;

    invoke-static {v2}, Lcom/JoyFramework/d/au;->a(Lcom/JoyFramework/d/au;)I

    move-result v2

    int-to-long v4, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_17a

    .line 157
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/JoyFramework/d/ax;

    invoke-direct {v1, p0}, Lcom/JoyFramework/d/ax;-><init>(Lcom/JoyFramework/d/av;)V

    iget-wide v2, p0, Lcom/JoyFramework/d/av;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3a

    .line 165
    :cond_17a
    iget-wide v0, p0, Lcom/JoyFramework/d/av;->c:J

    iget-object v2, p0, Lcom/JoyFramework/d/av;->f:Lcom/JoyFramework/d/au;

    invoke-static {v2}, Lcom/JoyFramework/d/au;->a(Lcom/JoyFramework/d/au;)I

    move-result v2

    int-to-long v4, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_3a

    .line 168
    sput-boolean v3, Lcom/JoyFramework/a/a;->K:Z

    .line 169
    const-string v0, ""

    sput-object v0, Lcom/JoyFramework/a/a;->L:Ljava/lang/String;

    .line 171
    iget-boolean v0, p0, Lcom/JoyFramework/d/av;->e:Z

    if-eqz v0, :cond_3a

    .line 174
    const-string v0, "PaymentUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNext: delete orderId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/d/av;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/a/a;->a(Landroid/content/Context;)Lcom/JoyFramework/d/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/d/av;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/JoyFramework/d/a/a;->a(Ljava/lang/String;)V

    goto/16 :goto_3a

    :cond_1ba
    move v1, v3

    goto/16 :goto_db

    .line 89
    nop

    :pswitch_data_1be
    .packed-switch 0x30
        :pswitch_3b
        :pswitch_45
    .end packed-switch

    :pswitch_data_1c6
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_12e
    .end packed-switch
.end method
