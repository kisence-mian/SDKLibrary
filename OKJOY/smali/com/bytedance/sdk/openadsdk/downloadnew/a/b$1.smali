.class Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;
.super Ljava/lang/Object;
.source "DMLibManager.java"

# interfaces
.implements Lcom/ss/android/a/a/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)V
    .registers 2

    .prologue
    .line 117
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 9

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    .line 120
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 121
    const-string v0, "onIdle"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    const-string v1, "onIdle"

    move-wide v4, v2

    move-object v7, v6

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_21
    :goto_21
    return-void

    .line 128
    :cond_22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 129
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->onIdle()V

    goto :goto_21
.end method

.method public a(Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/a;)V
    .registers 11
    .param p1    # Lcom/ss/android/a/a/b/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ss/android/a/a/b/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(J)V

    .line 140
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 141
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    const-string v1, "onIdle"

    move-wide v4, v2

    move-object v7, v6

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_3f
    :goto_3f
    return-void

    .line 145
    :cond_40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 146
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->onIdle()V

    goto :goto_3f
.end method

.method public a(Lcom/ss/android/a/a/c/e;)V
    .registers 10

    .prologue
    .line 190
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 191
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    iget-wide v2, p1, Lcom/ss/android/a/a/c/e;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(J)V

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/ss/android/a/a/c/e;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/ss/android/a/a/c/e;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 195
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    const-string v1, "onDownloadFailed"

    iget-wide v2, p1, Lcom/ss/android/a/a/c/e;->c:J

    iget-wide v4, p1, Lcom/ss/android/a/a/c/e;->d:J

    iget-object v6, p1, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    .line 197
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v7

    .line 195
    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_52
    :goto_52
    return-void

    .line 201
    :cond_53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 202
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    move-result-object v1

    iget-wide v2, p1, Lcom/ss/android/a/a/c/e;->c:J

    iget-wide v4, p1, Lcom/ss/android/a/a/c/e;->d:J

    iget-object v6, p1, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_52
.end method

.method public a(Lcom/ss/android/a/a/c/e;I)V
    .registers 11

    .prologue
    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 153
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 154
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    iget-wide v2, p1, Lcom/ss/android/a/a/c/e;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(J)V

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadActive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/ss/android/a/a/c/e;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/ss/android/a/a/c/e;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 158
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    const-string v1, "onDownloadActive"

    iget-wide v2, p1, Lcom/ss/android/a/a/c/e;->c:J

    iget-wide v4, p1, Lcom/ss/android/a/a/c/e;->d:J

    iget-object v6, p1, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    .line 160
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v7

    .line 158
    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_5c
    :goto_5c
    return-void

    .line 164
    :cond_5d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 165
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    move-result-object v1

    iget-wide v2, p1, Lcom/ss/android/a/a/c/e;->c:J

    iget-wide v4, p1, Lcom/ss/android/a/a/c/e;->d:J

    iget-object v6, p1, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_5c
.end method

.method public b(Lcom/ss/android/a/a/c/e;)V
    .registers 10

    .prologue
    .line 208
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 209
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 210
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    iget-wide v2, p1, Lcom/ss/android/a/a/c/e;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(J)V

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInstalled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/ss/android/a/a/c/e;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/ss/android/a/a/c/e;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 214
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    const-string v1, "onInstalled"

    iget-wide v2, p1, Lcom/ss/android/a/a/c/e;->c:J

    iget-wide v4, p1, Lcom/ss/android/a/a/c/e;->d:J

    iget-object v6, p1, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    .line 216
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v7

    .line 214
    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_5c
    :goto_5c
    return-void

    .line 220
    :cond_5d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 221
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    move-result-object v0

    iget-object v1, p1, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->onInstalled(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c
.end method

.method public b(Lcom/ss/android/a/a/c/e;I)V
    .registers 11

    .prologue
    .line 171
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 172
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    iget-wide v2, p1, Lcom/ss/android/a/a/c/e;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(J)V

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/ss/android/a/a/c/e;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/ss/android/a/a/c/e;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 177
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    const-string v1, "onDownloadPaused"

    iget-wide v2, p1, Lcom/ss/android/a/a/c/e;->c:J

    iget-wide v4, p1, Lcom/ss/android/a/a/c/e;->d:J

    iget-object v6, p1, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    .line 179
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v7

    .line 177
    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_5c
    :goto_5c
    return-void

    .line 183
    :cond_5d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 184
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    move-result-object v1

    iget-wide v2, p1, Lcom/ss/android/a/a/c/e;->c:J

    iget-wide v4, p1, Lcom/ss/android/a/a/c/e;->d:J

    iget-object v6, p1, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_5c
.end method

.method public c(Lcom/ss/android/a/a/c/e;)V
    .registers 10

    .prologue
    .line 227
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 228
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    iget-wide v2, p1, Lcom/ss/android/a/a/c/e;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(J)V

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadFinished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/ss/android/a/a/c/e;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/ss/android/a/a/c/e;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 232
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    const-string v1, "onDownloadFinished"

    iget-wide v2, p1, Lcom/ss/android/a/a/c/e;->c:J

    iget-wide v4, p1, Lcom/ss/android/a/a/c/e;->d:J

    iget-object v6, p1, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    .line 234
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v7

    .line 232
    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_52
    :goto_52
    return-void

    .line 238
    :cond_53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 239
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    move-result-object v0

    iget-wide v2, p1, Lcom/ss/android/a/a/c/e;->c:J

    iget-object v1, p1, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_52
.end method
