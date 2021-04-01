.class public Lcom/bytedance/sdk/adnet/b/j;
.super Lcom/bytedance/sdk/adnet/core/Request;
.source "StringRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/adnet/core/Request",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Ljava/lang/Object;

.field private d:Lcom/bytedance/sdk/adnet/core/n$a;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/adnet/core/n$a",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/n$a;)V
    .registers 5
    .param p3    # Lcom/bytedance/sdk/adnet/core/n$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/adnet/core/n$a",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/adnet/core/Request;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/n$a;)V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/b/j;->c:Ljava/lang/Object;

    .line 56
    iput-object p3, p0, Lcom/bytedance/sdk/adnet/b/j;->d:Lcom/bytedance/sdk/adnet/core/n$a;

    .line 57
    return-void
.end method


# virtual methods
.method protected a(Lcom/bytedance/sdk/adnet/core/j;)Lcom/bytedance/sdk/adnet/core/n;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/j;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/bytedance/sdk/adnet/core/j;->b:[B

    iget-object v2, p1, Lcom/bytedance/sdk/adnet/core/j;->c:Ljava/util/Map;

    invoke-static {v2}, Lcom/bytedance/sdk/adnet/d/c;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_d} :catch_16

    .line 101
    :goto_d
    invoke-static {p1}, Lcom/bytedance/sdk/adnet/d/c;->a(Lcom/bytedance/sdk/adnet/core/j;)Lcom/bytedance/sdk/adnet/face/a$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/core/n;->a(Ljava/lang/Object;Lcom/bytedance/sdk/adnet/face/a$a;)Lcom/bytedance/sdk/adnet/core/n;

    move-result-object v0

    return-object v0

    .line 95
    :catch_16
    move-exception v0

    .line 99
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/bytedance/sdk/adnet/core/j;->b:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_d
.end method

.method protected a(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/j;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_3
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/j;->d:Lcom/bytedance/sdk/adnet/core/n$a;

    .line 83
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    .line 84
    if-eqz v0, :cond_b

    .line 85
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/adnet/core/n$a;->a(Lcom/bytedance/sdk/adnet/core/n;)V

    .line 87
    :cond_b
    return-void

    .line 83
    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method

.method public cancel()V
    .registers 3

    .prologue
    .line 72
    invoke-super {p0}, Lcom/bytedance/sdk/adnet/core/Request;->cancel()V

    .line 73
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/j;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    const/4 v0, 0x0

    :try_start_7
    iput-object v0, p0, Lcom/bytedance/sdk/adnet/b/j;->d:Lcom/bytedance/sdk/adnet/core/n$a;

    .line 75
    monitor-exit v1

    .line 76
    return-void

    .line 75
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v0
.end method
