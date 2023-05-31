.class public final Lcom/alphab/i/c$b;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alphab/i/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alphab/i/c;

.field private b:Lcom/mintegral/msdk/base/common/f/b;


# direct methods
.method public constructor <init>(Lcom/alphab/i/c;)V
    .registers 2

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alphab/i/c$b;->a:Lcom/alphab/i/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/mintegral/msdk/base/common/f/a;)V
    .registers 5

    .prologue
    .line 119
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/alphab/i/c$b;->b:Lcom/mintegral/msdk/base/common/f/b;

    if-nez v0, :cond_1d

    .line 120
    iget-object v0, p0, Lcom/alphab/i/c$b;->a:Lcom/alphab/i/c;

    invoke-static {v0}, Lcom/alphab/i/c;->a(Lcom/alphab/i/c;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 121
    if-eqz v0, :cond_1d

    .line 122
    new-instance v1, Lcom/mintegral/msdk/base/common/f/b;

    sget-object v2, Lcom/alphab/i/c;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/mintegral/msdk/base/common/f/b;-><init>(Landroid/content/Context;B)V

    iput-object v1, p0, Lcom/alphab/i/c$b;->b:Lcom/mintegral/msdk/base/common/f/b;

    .line 125
    :cond_1d
    iget-object v0, p0, Lcom/alphab/i/c$b;->b:Lcom/mintegral/msdk/base/common/f/b;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/base/common/f/b;->b(Lcom/mintegral/msdk/base/common/f/a;)V
    :try_end_22
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_22} :catch_24
    .catchall {:try_start_1 .. :try_end_22} :catchall_29

    .line 130
    :goto_22
    monitor-exit p0

    return-void

    .line 127
    :catch_24
    move-exception v0

    :try_start_25
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_22

    .line 119
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/mintegral/msdk/base/common/f/a;Lcom/mintegral/msdk/base/common/f/a$b;)V
    .registers 6

    .prologue
    .line 139
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/alphab/i/c$b;->b:Lcom/mintegral/msdk/base/common/f/b;

    if-nez v0, :cond_1d

    .line 140
    iget-object v0, p0, Lcom/alphab/i/c$b;->a:Lcom/alphab/i/c;

    invoke-static {v0}, Lcom/alphab/i/c;->a(Lcom/alphab/i/c;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 141
    if-eqz v0, :cond_1d

    .line 142
    new-instance v1, Lcom/mintegral/msdk/base/common/f/b;

    sget-object v2, Lcom/alphab/i/c;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/mintegral/msdk/base/common/f/b;-><init>(Landroid/content/Context;B)V

    iput-object v1, p0, Lcom/alphab/i/c$b;->b:Lcom/mintegral/msdk/base/common/f/b;

    .line 145
    :cond_1d
    iget-object v0, p0, Lcom/alphab/i/c$b;->b:Lcom/mintegral/msdk/base/common/f/b;

    invoke-virtual {v0, p1, p2}, Lcom/mintegral/msdk/base/common/f/b;->a(Lcom/mintegral/msdk/base/common/f/a;Lcom/mintegral/msdk/base/common/f/a$b;)V
    :try_end_22
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_22} :catch_24
    .catchall {:try_start_1 .. :try_end_22} :catchall_29

    .line 150
    :goto_22
    monitor-exit p0

    return-void

    .line 147
    :catch_24
    move-exception v0

    :try_start_25
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_22

    .line 139
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method
