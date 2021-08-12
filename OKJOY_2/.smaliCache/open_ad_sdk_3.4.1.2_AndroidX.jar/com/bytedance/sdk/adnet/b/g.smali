.class public abstract Lcom/bytedance/sdk/adnet/b/g;
.super Lcom/bytedance/sdk/adnet/core/Request;
.source "JsonRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bytedance/sdk/adnet/core/Request<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private final d:Ljava/lang/Object;

.field private e:Lcom/bytedance/sdk/adnet/core/m$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/adnet/core/m$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "utf-8"

    aput-object v2, v0, v1

    .line 46
    const-string v1, "application/json; charset=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/adnet/b/g;->c:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/adnet/core/m$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2, p4}, Lcom/bytedance/sdk/adnet/core/Request;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;)V

    .line 51
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/g;->d:Ljava/lang/Object;

    .line 78
    iput-object p4, p0, Lcom/bytedance/sdk/adnet/b/g;->e:Lcom/bytedance/sdk/adnet/core/m$a;

    .line 79
    iput-object p3, p0, Lcom/bytedance/sdk/adnet/b/g;->f:Ljava/lang/String;

    .line 80
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/bytedance/sdk/adnet/core/i;)Lcom/bytedance/sdk/adnet/core/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/i;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected a(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "TT;>;)V"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/g;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/g;->e:Lcom/bytedance/sdk/adnet/core/m$a;

    .line 95
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    .line 96
    if-eqz v1, :cond_b

    .line 97
    invoke-interface {v1, p1}, Lcom/bytedance/sdk/adnet/core/m$a;->a(Lcom/bytedance/sdk/adnet/core/m;)V

    .line 99
    :cond_b
    return-void

    .line 95
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public cancel()V
    .registers 3

    .line 84
    invoke-super {p0}, Lcom/bytedance/sdk/adnet/core/Request;->cancel()V

    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/g;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    const/4 v1, 0x0

    :try_start_7
    iput-object v1, p0, Lcom/bytedance/sdk/adnet/b/g;->e:Lcom/bytedance/sdk/adnet/core/m$a;

    .line 87
    monitor-exit v0

    .line 88
    return-void

    .line 87
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getBody()[B
    .registers 6

    .line 121
    const-string v0, "utf-8"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/b/g;->f:Ljava/lang/String;

    if-nez v2, :cond_8

    :goto_7
    goto :goto_d

    :cond_8
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_c} :catch_e

    goto :goto_7

    :goto_d
    return-object v1

    .line 122
    :catch_e
    move-exception v2

    .line 123
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bytedance/sdk/adnet/b/g;->f:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "Unsupported Encoding while trying to get the bytes of %s using %s"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/adnet/core/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    return-object v1
.end method

.method public getBodyContentType()Ljava/lang/String;
    .registers 2

    .line 115
    sget-object v0, Lcom/bytedance/sdk/adnet/b/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPostBody()[B
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/b/g;->getBody()[B

    move-result-object v0

    return-object v0
.end method
