.class final Lcom/bytedance/sdk/a/b/x$a;
.super Lcom/bytedance/sdk/a/b/a/b;
.source "RealCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/a/b/x;

.field private final c:Lcom/bytedance/sdk/a/b/f;


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/x$a;->a:Lcom/bytedance/sdk/a/b/x;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/x;->c:Lcom/bytedance/sdk/a/b/y;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/y;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/s;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 155
    const/4 v2, 0x0

    .line 157
    :try_start_2
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/x$a;->a:Lcom/bytedance/sdk/a/b/x;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/x;->f()Lcom/bytedance/sdk/a/b/aa;

    move-result-object v0

    .line 158
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/x$a;->a:Lcom/bytedance/sdk/a/b/x;

    iget-object v3, v3, Lcom/bytedance/sdk/a/b/x;->b:Lcom/bytedance/sdk/a/b/a/c/j;

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/a/c/j;->a()Z
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_f} :catch_84
    .catchall {:try_start_2 .. :try_end_f} :catchall_77

    move-result v2

    if-eqz v2, :cond_2c

    .line 160
    :try_start_12
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/x$a;->c:Lcom/bytedance/sdk/a/b/f;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/x$a;->a:Lcom/bytedance/sdk/a/b/x;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Lcom/bytedance/sdk/a/b/f;->a(Lcom/bytedance/sdk/a/b/e;Ljava/io/IOException;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_20} :catch_34
    .catchall {:try_start_12 .. :try_end_20} :catchall_77

    .line 174
    :goto_20
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/x$a;->a:Lcom/bytedance/sdk/a/b/x;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/x;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/v;->s()Lcom/bytedance/sdk/a/b/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/a/b/n;->a(Lcom/bytedance/sdk/a/b/x$a;)V

    .line 176
    :goto_2b
    return-void

    .line 163
    :cond_2c
    :try_start_2c
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/x$a;->c:Lcom/bytedance/sdk/a/b/f;

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/x$a;->a:Lcom/bytedance/sdk/a/b/x;

    invoke-interface {v2, v3, v0}, Lcom/bytedance/sdk/a/b/f;->a(Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/aa;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_33} :catch_34
    .catchall {:try_start_2c .. :try_end_33} :catchall_77

    goto :goto_20

    .line 165
    :catch_34
    move-exception v0

    .line 166
    :goto_35
    if-eqz v1, :cond_64

    .line 168
    :try_start_37
    invoke-static {}, Lcom/bytedance/sdk/a/b/a/g/e;->b()Lcom/bytedance/sdk/a/b/a/g/e;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/x$a;->a:Lcom/bytedance/sdk/a/b/x;

    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/x;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/bytedance/sdk/a/b/a/g/e;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_58
    .catchall {:try_start_37 .. :try_end_58} :catchall_77

    .line 174
    :goto_58
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/x$a;->a:Lcom/bytedance/sdk/a/b/x;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/x;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/v;->s()Lcom/bytedance/sdk/a/b/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/a/b/n;->a(Lcom/bytedance/sdk/a/b/x$a;)V

    goto :goto_2b

    .line 170
    :cond_64
    :try_start_64
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/x$a;->a:Lcom/bytedance/sdk/a/b/x;

    invoke-static {v1}, Lcom/bytedance/sdk/a/b/x;->a(Lcom/bytedance/sdk/a/b/x;)Lcom/bytedance/sdk/a/b/p;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/x$a;->a:Lcom/bytedance/sdk/a/b/x;

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/a/b/p;->a(Lcom/bytedance/sdk/a/b/e;Ljava/io/IOException;)V

    .line 171
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/x$a;->c:Lcom/bytedance/sdk/a/b/f;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/x$a;->a:Lcom/bytedance/sdk/a/b/x;

    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/a/b/f;->a(Lcom/bytedance/sdk/a/b/e;Ljava/io/IOException;)V
    :try_end_76
    .catchall {:try_start_64 .. :try_end_76} :catchall_77

    goto :goto_58

    .line 174
    :catchall_77
    move-exception v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/x$a;->a:Lcom/bytedance/sdk/a/b/x;

    iget-object v1, v1, Lcom/bytedance/sdk/a/b/x;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/v;->s()Lcom/bytedance/sdk/a/b/n;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/a/b/n;->a(Lcom/bytedance/sdk/a/b/x$a;)V

    .line 175
    throw v0

    .line 165
    :catch_84
    move-exception v0

    move v1, v2

    goto :goto_35
.end method
