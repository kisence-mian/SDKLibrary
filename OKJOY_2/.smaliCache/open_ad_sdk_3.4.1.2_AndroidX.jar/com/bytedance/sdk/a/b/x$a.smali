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
    .registers 7

    .line 155
    nop

    .line 157
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/x$a;->a:Lcom/bytedance/sdk/a/b/x;

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/x;->f()Lcom/bytedance/sdk/a/b/aa;

    move-result-object v2

    .line 158
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/x$a;->a:Lcom/bytedance/sdk/a/b/x;

    iget-object v3, v3, Lcom/bytedance/sdk/a/b/x;->b:Lcom/bytedance/sdk/a/b/a/c/j;

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/a/c/j;->a()Z

    move-result v1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_11} :catch_3b
    .catchall {:try_start_3 .. :try_end_11} :catchall_39

    if-eqz v1, :cond_23

    .line 159
    nop

    .line 160
    :try_start_14
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/x$a;->c:Lcom/bytedance/sdk/a/b/f;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/x$a;->a:Lcom/bytedance/sdk/a/b/x;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/a/b/f;->a(Lcom/bytedance/sdk/a/b/e;Ljava/io/IOException;)V

    goto :goto_2b

    .line 162
    :cond_23
    nop

    .line 163
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/x$a;->c:Lcom/bytedance/sdk/a/b/f;

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/x$a;->a:Lcom/bytedance/sdk/a/b/x;

    invoke-interface {v1, v3, v2}, Lcom/bytedance/sdk/a/b/f;->a(Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/aa;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_2b} :catch_37
    .catchall {:try_start_14 .. :try_end_2b} :catchall_39

    .line 174
    :goto_2b
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/x$a;->a:Lcom/bytedance/sdk/a/b/x;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/x;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/v;->s()Lcom/bytedance/sdk/a/b/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/a/b/n;->a(Lcom/bytedance/sdk/a/b/x$a;)V

    .line 175
    goto :goto_76

    .line 165
    :catch_37
    move-exception v1

    goto :goto_3f

    .line 174
    :catchall_39
    move-exception v0

    goto :goto_77

    .line 165
    :catch_3b
    move-exception v0

    move v5, v1

    move-object v1, v0

    move v0, v5

    .line 166
    :goto_3f
    if-eqz v0, :cond_63

    .line 168
    :try_start_41
    invoke-static {}, Lcom/bytedance/sdk/a/b/a/g/e;->b()Lcom/bytedance/sdk/a/b/a/g/e;

    move-result-object v0

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

    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/a/b/a/g/e;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2b

    .line 170
    :cond_63
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/x$a;->a:Lcom/bytedance/sdk/a/b/x;

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/x;->a(Lcom/bytedance/sdk/a/b/x;)Lcom/bytedance/sdk/a/b/p;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/x$a;->a:Lcom/bytedance/sdk/a/b/x;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/a/b/p;->a(Lcom/bytedance/sdk/a/b/e;Ljava/io/IOException;)V

    .line 171
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/x$a;->c:Lcom/bytedance/sdk/a/b/f;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/x$a;->a:Lcom/bytedance/sdk/a/b/x;

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/a/b/f;->a(Lcom/bytedance/sdk/a/b/e;Ljava/io/IOException;)V
    :try_end_75
    .catchall {:try_start_41 .. :try_end_75} :catchall_39

    goto :goto_2b

    .line 176
    :goto_76
    return-void

    .line 174
    :goto_77
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/x$a;->a:Lcom/bytedance/sdk/a/b/x;

    iget-object v1, v1, Lcom/bytedance/sdk/a/b/x;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/v;->s()Lcom/bytedance/sdk/a/b/n;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/a/b/n;->a(Lcom/bytedance/sdk/a/b/x$a;)V

    .line 175
    throw v0
.end method
