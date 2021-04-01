.class public Lcom/alphab/i/c$a;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alphab/i/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alphab/i/c;

.field private b:Lcom/mintegral/msdk/base/common/f/b;


# direct methods
.method public constructor <init>(Lcom/alphab/i/c;)V
    .registers 2

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alphab/i/c$a;->a:Lcom/alphab/i/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/mintegral/msdk/base/common/f/b;
    .registers 5

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alphab/i/c$a;->b:Lcom/mintegral/msdk/base/common/f/b;

    if-nez v0, :cond_22

    .line 94
    const-class v1, Lcom/alphab/i/c$a;

    monitor-enter v1

    .line 95
    :try_start_7
    iget-object v0, p0, Lcom/alphab/i/c$a;->b:Lcom/mintegral/msdk/base/common/f/b;

    if-nez v0, :cond_21

    .line 96
    iget-object v0, p0, Lcom/alphab/i/c$a;->a:Lcom/alphab/i/c;

    invoke-static {v0}, Lcom/alphab/i/c;->a(Lcom/alphab/i/c;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 97
    if-eqz v0, :cond_21

    .line 98
    new-instance v2, Lcom/mintegral/msdk/base/common/f/b;

    const/4 v3, 0x5

    invoke-direct {v2, v0, v3}, Lcom/mintegral/msdk/base/common/f/b;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/alphab/i/c$a;->b:Lcom/mintegral/msdk/base/common/f/b;

    .line 101
    :cond_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_25

    .line 103
    :cond_22
    iget-object v0, p0, Lcom/alphab/i/c$a;->b:Lcom/mintegral/msdk/base/common/f/b;

    return-object v0

    .line 101
    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method
