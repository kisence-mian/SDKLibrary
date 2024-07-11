.class public final Lcom/efs/sdk/base/a/b/c;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/base/a/b/c$a;
    }
.end annotation


# instance fields
.field public a:Z


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 53
    sget-object v0, Lcom/efs/sdk/base/a/h/a/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/efs/sdk/base/a/b/c;->a:Z

    .line 54
    const/4 v0, 0x2

    const-wide/32 v1, 0xea60

    invoke-virtual {p0, v0, v1, v2}, Lcom/efs/sdk/base/a/b/c;->sendEmptyMessageDelayed(IJ)Z

    .line 55
    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 24
    invoke-direct {p0}, Lcom/efs/sdk/base/a/b/c;-><init>()V

    return-void
.end method

.method public static a()Lcom/efs/sdk/base/a/b/c;
    .registers 1

    .line 68
    invoke-static {}, Lcom/efs/sdk/base/a/b/c$a;->a()Lcom/efs/sdk/base/a/b/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_22

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "disk listener not support command: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2025
    const/4 v0, 0x0

    const-string v1, "efs.cache"

    invoke-static {v1, p1, v0}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    return-void

    .line 89
    :pswitch_1d
    nop

    .line 1077
    invoke-static {p0}, Lcom/efs/sdk/base/a/h/a/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 90
    return-void

    :pswitch_data_22
    .packed-switch 0x2
        :pswitch_1d
    .end packed-switch
.end method

.method public final run()V
    .registers 7

    .line 3075
    invoke-static {}, Lcom/efs/sdk/base/a/b/a$b;->a()Lcom/efs/sdk/base/a/b/a;

    .line 3306
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a;->c:Landroid/content/Context;

    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v1

    .line 4113
    iget-object v1, v1, Lcom/efs/sdk/base/a/c/a;->a:Ljava/lang/String;

    .line 3306
    invoke-static {v0, v1}, Lcom/efs/sdk/base/a/h/a;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3308
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 3312
    invoke-static {v0}, Lcom/efs/sdk/base/a/h/b;->d(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 3314
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 3315
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/efs/sdk/base/a/b/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 3316
    invoke-static {v1}, Lcom/efs/sdk/base/a/b/a;->c(Ljava/io/File;)V

    .line 3318
    :cond_3a
    goto :goto_21

    .line 101
    :cond_3b
    nop

    .line 5107
    invoke-static {}, Lcom/efs/sdk/base/a/c/a/c;->a()Lcom/efs/sdk/base/a/c/a/c;

    move-result-object v0

    const-string v1, "disk_bytes"

    const-string v2, "4194304"

    .line 5159
    nop

    .line 5161
    iget-object v3, v0, Lcom/efs/sdk/base/a/c/a/c;->d:Lcom/efs/sdk/base/a/c/a/b;

    .line 6136
    iget-object v3, v3, Lcom/efs/sdk/base/a/c/a/b;->e:Ljava/util/Map;

    .line 5161
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 5162
    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a/c;->d:Lcom/efs/sdk/base/a/c/a/b;

    .line 7136
    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a/b;->e:Ljava/util/Map;

    .line 5162
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_5b

    .line 5161
    :cond_5a
    move-object v0, v2

    .line 5165
    :goto_5b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 5166
    goto :goto_63

    .line 5169
    :cond_62
    move-object v2, v0

    .line 5108
    :goto_63
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 5109
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v2

    iget-object v2, v2, Lcom/efs/sdk/base/a/c/a;->c:Landroid/content/Context;

    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v3

    .line 8113
    iget-object v3, v3, Lcom/efs/sdk/base/a/c/a;->a:Ljava/lang/String;

    .line 5109
    invoke-static {v2, v3}, Lcom/efs/sdk/base/a/h/a;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 5110
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v3

    iget-object v3, v3, Lcom/efs/sdk/base/a/c/a;->c:Landroid/content/Context;

    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v4

    .line 9113
    iget-object v4, v4, Lcom/efs/sdk/base/a/c/a;->a:Ljava/lang/String;

    .line 5110
    invoke-static {v3, v4}, Lcom/efs/sdk/base/a/h/a;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 5111
    invoke-static {v2}, Lcom/efs/sdk/base/a/h/b;->c(Ljava/io/File;)J

    move-result-wide v4

    invoke-static {v3}, Lcom/efs/sdk/base/a/h/b;->c(Ljava/io/File;)J

    move-result-wide v2

    add-long/2addr v4, v2

    .line 5113
    cmp-long v2, v4, v0

    if-gez v2, :cond_96

    const/4 v2, 0x1

    goto :goto_97

    :cond_96
    const/4 v2, 0x0

    :goto_97
    iput-boolean v2, p0, Lcom/efs/sdk/base/a/b/c;->a:Z

    .line 5115
    if-nez v2, :cond_c0

    .line 5116
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cache Limited! curr "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "byte, max "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " byte."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10025
    const/4 v1, 0x0

    const-string v2, "efs.cache"

    invoke-static {v2, v0, v1}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    :cond_c0
    const/4 v0, 0x2

    const-wide/32 v1, 0x927c0

    invoke-virtual {p0, v0, v1, v2}, Lcom/efs/sdk/base/a/b/c;->sendEmptyMessageDelayed(IJ)Z

    .line 104
    return-void
.end method
