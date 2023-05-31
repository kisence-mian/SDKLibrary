.class public abstract Lcom/bytedance/sdk/adnet/b/g;
.super Lcom/bytedance/sdk/adnet/core/Request;
.source "JsonRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bytedance/sdk/adnet/core/Request",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private final d:Ljava/lang/Object;

.field private e:Lcom/bytedance/sdk/adnet/core/n$a;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/adnet/core/n$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 45
    const-string v0, "application/json; charset=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "utf-8"

    aput-object v3, v1, v2

    .line 46
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/adnet/b/g;->c:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/n$a;)V
    .registers 6
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/bytedance/sdk/adnet/core/n$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/adnet/core/n$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p4}, Lcom/bytedance/sdk/adnet/core/Request;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/n$a;)V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/b/g;->d:Ljava/lang/Object;

    .line 78
    iput-object p4, p0, Lcom/bytedance/sdk/adnet/b/g;->e:Lcom/bytedance/sdk/adnet/core/n$a;

    .line 79
    iput-object p3, p0, Lcom/bytedance/sdk/adnet/b/g;->f:Ljava/lang/String;

    .line 80
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/bytedance/sdk/adnet/core/j;)Lcom/bytedance/sdk/adnet/core/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/j;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected a(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/g;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_3
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/g;->e:Lcom/bytedance/sdk/adnet/core/n$a;

    .line 95
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    .line 96
    if-eqz v0, :cond_b

    .line 97
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/adnet/core/n$a;->a(Lcom/bytedance/sdk/adnet/core/n;)V

    .line 99
    :cond_b
    return-void

    .line 95
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
    .line 84
    invoke-super {p0}, Lcom/bytedance/sdk/adnet/core/Request;->cancel()V

    .line 85
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/g;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    const/4 v0, 0x0

    :try_start_7
    iput-object v0, p0, Lcom/bytedance/sdk/adnet/b/g;->e:Lcom/bytedance/sdk/adnet/core/n$a;

    .line 87
    monitor-exit v1

    .line 88
    return-void

    .line 87
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public getBody()[B
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 121
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/g;->f:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 126
    :goto_5
    return-object v0

    .line 121
    :cond_6
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/g;->f:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_d} :catch_f

    move-result-object v0

    goto :goto_5

    .line 122
    :catch_f
    move-exception v1

    .line 123
    const-string v1, "Unsupported Encoding while trying to get the bytes of %s using %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bytedance/sdk/adnet/b/g;->f:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "utf-8"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/bytedance/sdk/adnet/core/p;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public getBodyContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    sget-object v0, Lcom/bytedance/sdk/adnet/b/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPostBody()[B
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/b/g;->getBody()[B

    move-result-object v0

    return-object v0
.end method
