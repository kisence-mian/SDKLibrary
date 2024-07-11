.class public Lcom/ksad/download/h$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwai/filedownloader/f/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksad/download/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lokhttp3/OkHttpClient;

.field private b:Lokhttp3/OkHttpClient$Builder;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/ksad/download/h;->g()Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    goto :goto_e

    :cond_a
    invoke-static {}, Lcom/ksad/download/h;->h()Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    :goto_e
    iput-object p1, p0, Lcom/ksad/download/h$a;->b:Lokhttp3/OkHttpClient$Builder;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/kwai/filedownloader/a/b;
    .registers 5

    iget-object v0, p0, Lcom/ksad/download/h$a;->a:Lokhttp3/OkHttpClient;

    const/4 v1, 0x0

    if-nez v0, :cond_23

    const-class v0, Lcom/ksad/download/h$a;

    monitor-enter v0

    :try_start_8
    iget-object v2, p0, Lcom/ksad/download/h$a;->a:Lokhttp3/OkHttpClient;

    if-nez v2, :cond_1e

    iget-object v2, p0, Lcom/ksad/download/h$a;->b:Lokhttp3/OkHttpClient$Builder;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    goto :goto_1a

    :cond_15
    new-instance v2, Lokhttp3/OkHttpClient;

    invoke-direct {v2}, Lokhttp3/OkHttpClient;-><init>()V

    :goto_1a
    iput-object v2, p0, Lcom/ksad/download/h$a;->a:Lokhttp3/OkHttpClient;

    iput-object v1, p0, Lcom/ksad/download/h$a;->b:Lokhttp3/OkHttpClient$Builder;

    :cond_1e
    monitor-exit v0

    goto :goto_23

    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_20

    throw p1

    :cond_23
    :goto_23
    new-instance v0, Lcom/ksad/download/h;

    iget-object v2, p0, Lcom/ksad/download/h$a;->a:Lokhttp3/OkHttpClient;

    invoke-direct {v0, p1, v2, v1}, Lcom/ksad/download/h;-><init>(Ljava/lang/String;Lokhttp3/OkHttpClient;Lcom/ksad/download/h$1;)V

    return-object v0
.end method
