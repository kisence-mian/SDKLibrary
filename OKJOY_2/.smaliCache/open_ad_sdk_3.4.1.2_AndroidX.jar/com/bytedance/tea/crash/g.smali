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

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/tea/crash/g;->b:Z

    .line 29
    sput-boolean v0, Lcom/bytedance/tea/crash/g;->c:Z

    .line 30
    sput-boolean v0, Lcom/bytedance/tea/crash/g;->d:Z

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/bytedance/tea/crash/d;ZZ)V
    .registers 6

    const-class v0, Lcom/bytedance/tea/crash/g;

    monitor-enter v0

    .line 125
    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, p1, p2, v1, p3}, Lcom/bytedance/tea/crash/g;->a(Landroid/content/Context;Lcom/bytedance/tea/crash/d;ZZZ)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    .line 126
    monitor-exit v0

    return-void

    .line 124
    :catchall_9
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/bytedance/tea/crash/d;ZZZ)V
    .registers 12

    const-class v0, Lcom/bytedance/tea/crash/g;

    monitor-enter v0

    .line 150
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p2

    move v5, p3

    move v6, p4

    :try_start_9
    invoke-static/range {v1 .. v6}, Lcom/bytedance/tea/crash/g;->a(Landroid/content/Context;Lcom/bytedance/tea/crash/d;ZZZZ)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_e

    .line 151
    monitor-exit v0

    return-void

    .line 149
    :catchall_e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/bytedance/tea/crash/d;ZZZZ)V
    .registers 8

    const-class v0, Lcom/bytedance/tea/crash/g;

    monitor-enter v0

    .line 167
    :try_start_3
    sget-boolean v1, Lcom/bytedance/tea/crash/g;->a:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_5d

    if-eqz v1, :cond_9

    .line 168
    monitor-exit v0

    return-void

    .line 170
    :cond_9
    if-eqz p0, :cond_55

    .line 173
    if-eqz p1, :cond_4d

    .line 176
    :try_start_d
    instance-of v1, p0, Landroid/app/Application;

    if-nez v1, :cond_15

    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 180
    :cond_15
    invoke-static {p0}, Lcom/bytedance/tea/crash/g/a;->c(Landroid/content/Context;)Z

    move-result v1
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_5d

    if-eqz v1, :cond_1d

    .line 181
    monitor-exit v0

    return-void

    .line 183
    :cond_1d
    :try_start_1d
    invoke-static {p0, p1}, Lcom/bytedance/tea/crash/h;->a(Landroid/content/Context;Lcom/bytedance/tea/crash/d;)V

    .line 184
    invoke-static {p0}, Lcom/bytedance/tea/crash/e/a/e;->a(Landroid/content/Context;)V

    .line 186
    const/4 p1, 0x1

    if-nez p2, :cond_28

    if-eqz p3, :cond_38

    .line 187
    :cond_28
    invoke-static {}, Lcom/bytedance/tea/crash/d/a;->a()Lcom/bytedance/tea/crash/d/a;

    move-result-object p3

    .line 188
    if-eqz p2, :cond_36

    .line 189
    new-instance p2, Lcom/bytedance/tea/crash/d/c;

    invoke-direct {p2, p0}, Lcom/bytedance/tea/crash/d/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p2}, Lcom/bytedance/tea/crash/d/a;->a(Lcom/bytedance/tea/crash/d/b;)V

    .line 191
    :cond_36
    sput-boolean p1, Lcom/bytedance/tea/crash/g;->b:Z

    .line 193
    :cond_38
    sput-boolean p4, Lcom/bytedance/tea/crash/g;->d:Z

    .line 195
    sput-boolean p1, Lcom/bytedance/tea/crash/g;->a:Z

    .line 196
    sput-boolean p5, Lcom/bytedance/tea/crash/g;->c:Z

    .line 197
    nop

    .line 198
    invoke-static {}, Lcom/bytedance/tea/crash/e/h;->b()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/bytedance/tea/crash/g$1;

    invoke-direct {p2, p0, p5}, Lcom/bytedance/tea/crash/g$1;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4b
    .catchall {:try_start_1d .. :try_end_4b} :catchall_5d

    .line 208
    monitor-exit v0

    return-void

    .line 174
    :cond_4d
    :try_start_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params must be not null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 171
    :cond_55
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context must be not null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5d
    .catchall {:try_start_4d .. :try_end_5d} :catchall_5d

    .line 166
    :catchall_5d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Lcom/bytedance/tea/crash/f;)V
    .registers 2

    .line 283
    invoke-static {}, Lcom/bytedance/tea/crash/h;->b()Lcom/bytedance/tea/crash/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/tea/crash/b;->a(Lcom/bytedance/tea/crash/f;)V

    .line 284
    return-void
.end method

.method public static a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 343
    if-eqz p0, :cond_f

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 344
    invoke-static {}, Lcom/bytedance/tea/crash/h;->b()Lcom/bytedance/tea/crash/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/tea/crash/b;->a(Ljava/util/Map;)V

    .line 346
    :cond_f
    return-void
.end method
