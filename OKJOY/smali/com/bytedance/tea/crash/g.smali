.class public final Lcom/bytedance/tea/crash/g;
.super Ljava/lang/Object;
.source "Npth.java"


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Z

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 28
    sput-boolean v0, Lcom/bytedance/tea/crash/g;->b:Z

    .line 29
    sput-boolean v0, Lcom/bytedance/tea/crash/g;->c:Z

    .line 30
    sput-boolean v0, Lcom/bytedance/tea/crash/g;->d:Z

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/bytedance/tea/crash/d;ZZ)V
    .registers 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bytedance/tea/crash/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 125
    const-class v0, Lcom/bytedance/tea/crash/g;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, p1, p2, v1, p3}, Lcom/bytedance/tea/crash/g;->a(Landroid/content/Context;Lcom/bytedance/tea/crash/d;ZZZ)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    .line 126
    monitor-exit v0

    return-void

    .line 125
    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/bytedance/tea/crash/d;ZZZ)V
    .registers 12
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bytedance/tea/crash/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 150
    const-class v6, Lcom/bytedance/tea/crash/g;

    monitor-enter v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p2

    move v4, p3

    move v5, p4

    :try_start_9
    invoke-static/range {v0 .. v5}, Lcom/bytedance/tea/crash/g;->a(Landroid/content/Context;Lcom/bytedance/tea/crash/d;ZZZZ)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_e

    .line 151
    monitor-exit v6

    return-void

    .line 150
    :catchall_e
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/bytedance/tea/crash/d;ZZZZ)V
    .registers 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bytedance/tea/crash/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 167
    const-class v1, Lcom/bytedance/tea/crash/g;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/bytedance/tea/crash/g;->a:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_13

    if-eqz v0, :cond_9

    .line 208
    :cond_7
    :goto_7
    monitor-exit v1

    return-void

    .line 170
    :cond_9
    if-nez p0, :cond_16

    .line 171
    :try_start_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "context must be not null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_13

    .line 167
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0

    .line 173
    :cond_16
    if-nez p1, :cond_20

    .line 174
    :try_start_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "params must be not null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_20
    instance-of v0, p0, Landroid/app/Application;

    if-nez v0, :cond_28

    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 180
    :cond_28
    invoke-static {p0}, Lcom/bytedance/tea/crash/g/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 183
    invoke-static {p0, p1}, Lcom/bytedance/tea/crash/h;->a(Landroid/content/Context;Lcom/bytedance/tea/crash/d;)V

    .line 184
    invoke-static {p0}, Lcom/bytedance/tea/crash/e/a/e;->a(Landroid/content/Context;)V

    .line 186
    if-nez p2, :cond_38

    if-eqz p3, :cond_49

    .line 187
    :cond_38
    invoke-static {}, Lcom/bytedance/tea/crash/d/a;->a()Lcom/bytedance/tea/crash/d/a;

    move-result-object v0

    .line 188
    if-eqz p2, :cond_46

    .line 189
    new-instance v2, Lcom/bytedance/tea/crash/d/c;

    invoke-direct {v2, p0}, Lcom/bytedance/tea/crash/d/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/tea/crash/d/a;->a(Lcom/bytedance/tea/crash/d/b;)V

    .line 191
    :cond_46
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/tea/crash/g;->b:Z

    .line 193
    :cond_49
    sput-boolean p4, Lcom/bytedance/tea/crash/g;->d:Z

    .line 195
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/tea/crash/g;->a:Z

    .line 196
    sput-boolean p5, Lcom/bytedance/tea/crash/g;->c:Z

    .line 198
    invoke-static {}, Lcom/bytedance/tea/crash/e/h;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/bytedance/tea/crash/g$1;

    invoke-direct {v2, p0, p5}, Lcom/bytedance/tea/crash/g$1;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5c
    .catchall {:try_start_18 .. :try_end_5c} :catchall_13

    goto :goto_7
.end method

.method public static a(Lcom/bytedance/tea/crash/f;)V
    .registers 2

    .prologue
    .line 283
    invoke-static {}, Lcom/bytedance/tea/crash/h;->b()Lcom/bytedance/tea/crash/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/tea/crash/b;->a(Lcom/bytedance/tea/crash/f;)V

    .line 284
    return-void
.end method
