.class Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;
.super Ljava/lang/Object;
.source "DMLibManager.java"

# interfaces
.implements Lcom/ss/android/a/a/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 10

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 131
    const-string v0, "onIdle"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 134
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "onIdle"

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void

    .line 138
    :cond_21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 139
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->onIdle()V

    .line 141
    :cond_32
    return-void
.end method

.method public a(Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/a;)V
    .registers 11

    .line 145
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 146
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDownloadStart: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b(Ljava/lang/String;)V

    .line 148
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(J)V

    .line 150
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 151
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v1, "onIdle"

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void

    .line 155
    :cond_3f
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    move-result-object p1

    if-eqz p1, :cond_50

    .line 156
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->onIdle()V

    .line 158
    :cond_50
    return-void
.end method

.method public a(Lcom/ss/android/a/a/c/e;)V
    .registers 11

    .line 200
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 201
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-wide v1, p1, Lcom/ss/android/a/a/c/e;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(J)V

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/ss/android/a/a/c/e;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/ss/android/a/a/c/e;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b(Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 205
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-wide v3, p1, Lcom/ss/android/a/a/c/e;->c:J

    iget-wide v5, p1, Lcom/ss/android/a/a/c/e;->d:J

    iget-object v7, p1, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    .line 207
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v8

    .line 205
    const-string v2, "onDownloadFailed"

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void

    .line 211
    :cond_4f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 212
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    move-result-object v1

    iget-wide v2, p1, Lcom/ss/android/a/a/c/e;->c:J

    iget-wide v4, p1, Lcom/ss/android/a/a/c/e;->d:J

    iget-object v6, p1, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_6e
    return-void
.end method

.method public a(Lcom/ss/android/a/a/c/e;I)V
    .registers 11

    .line 162
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 163
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 164
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-wide v0, p1, Lcom/ss/android/a/a/c/e;->a:J

    invoke-virtual {p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(J)V

    .line 165
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDownloadActive: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v0, p1, Lcom/ss/android/a/a/c/e;->c:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v0, p1, Lcom/ss/android/a/a/c/e;->d:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result p2

    if-eqz p2, :cond_57

    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-wide v2, p1, Lcom/ss/android/a/a/c/e;->c:J

    iget-wide v4, p1, Lcom/ss/android/a/a/c/e;->d:J

    iget-object v6, p1, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    .line 170
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v7

    .line 168
    const-string v1, "onDownloadActive"

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void

    .line 174
    :cond_57
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    move-result-object p2

    if-eqz p2, :cond_76

    .line 175
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    move-result-object v0

    iget-wide v1, p1, Lcom/ss/android/a/a/c/e;->c:J

    iget-wide v3, p1, Lcom/ss/android/a/a/c/e;->d:J

    iget-object v5, p1, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_76
    return-void
.end method

.method public b(Lcom/ss/android/a/a/c/e;)V
    .registers 11

    .line 218
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 219
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 220
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-wide v1, p1, Lcom/ss/android/a/a/c/e;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(J)V

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInstalled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/ss/android/a/a/c/e;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/ss/android/a/a/c/e;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b(Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 224
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-wide v3, p1, Lcom/ss/android/a/a/c/e;->c:J

    iget-wide v5, p1, Lcom/ss/android/a/a/c/e;->d:J

    iget-object v7, p1, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    .line 226
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v8

    .line 224
    const-string v2, "onInstalled"

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void

    .line 230
    :cond_57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 231
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    move-result-object v0

    iget-object p1, p1, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->onInstalled(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_72
    return-void
.end method

.method public b(Lcom/ss/android/a/a/c/e;I)V
    .registers 11

    .line 181
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 182
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 183
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-wide v0, p1, Lcom/ss/android/a/a/c/e;->a:J

    invoke-virtual {p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(J)V

    .line 184
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDownloadPaused: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v0, p1, Lcom/ss/android/a/a/c/e;->c:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v0, p1, Lcom/ss/android/a/a/c/e;->d:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b(Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result p2

    if-eqz p2, :cond_57

    .line 187
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-wide v2, p1, Lcom/ss/android/a/a/c/e;->c:J

    iget-wide v4, p1, Lcom/ss/android/a/a/c/e;->d:J

    iget-object v6, p1, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    .line 189
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v7

    .line 187
    const-string v1, "onDownloadPaused"

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void

    .line 193
    :cond_57
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    move-result-object p2

    if-eqz p2, :cond_76

    .line 194
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    move-result-object v0

    iget-wide v1, p1, Lcom/ss/android/a/a/c/e;->c:J

    iget-wide v3, p1, Lcom/ss/android/a/a/c/e;->d:J

    iget-object v5, p1, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_76
    return-void
.end method

.method public c(Lcom/ss/android/a/a/c/e;)V
    .registers 11

    .line 237
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 238
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-wide v1, p1, Lcom/ss/android/a/a/c/e;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(J)V

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadFinished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/ss/android/a/a/c/e;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/ss/android/a/a/c/e;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b(Ljava/lang/String;)V

    .line 241
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 242
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-wide v3, p1, Lcom/ss/android/a/a/c/e;->c:J

    iget-wide v5, p1, Lcom/ss/android/a/a/c/e;->d:J

    iget-object v7, p1, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    .line 244
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v8

    .line 242
    const-string v2, "onDownloadFinished"

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void

    .line 248
    :cond_4f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    move-result-object v0

    if-eqz v0, :cond_6c

    .line 249
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    move-result-object v0

    iget-wide v1, p1, Lcom/ss/android/a/a/c/e;->c:J

    iget-object p1, p1, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_6c
    return-void
.end method
