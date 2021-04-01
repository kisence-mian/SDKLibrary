.class public Lcom/ksad/download/h$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwai/filedownloader/h0/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksad/download/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
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
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_c

    invoke-static {}, Lcom/ksad/download/h;->g()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/download/h$b;->b:Lokhttp3/OkHttpClient$Builder;

    :goto_b
    return-void

    :cond_c
    invoke-static {}, Lcom/ksad/download/h;->h()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/download/h$b;->b:Lokhttp3/OkHttpClient$Builder;

    goto :goto_b
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/kwai/filedownloader/c0/b;
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ksad/download/h$b;->a:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_1c

    const-class v1, Lcom/ksad/download/h$b;

    monitor-enter v1

    :try_start_8
    iget-object v0, p0, Lcom/ksad/download/h$b;->a:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/ksad/download/h$b;->b:Lokhttp3/OkHttpClient$Builder;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/ksad/download/h$b;->b:Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    :goto_16
    iput-object v0, p0, Lcom/ksad/download/h$b;->a:Lokhttp3/OkHttpClient;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ksad/download/h$b;->b:Lokhttp3/OkHttpClient$Builder;

    :cond_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_2a

    :cond_1c
    new-instance v0, Lcom/ksad/download/h;

    iget-object v1, p0, Lcom/ksad/download/h$b;->a:Lokhttp3/OkHttpClient;

    invoke-direct {v0, p1, v1, v2}, Lcom/ksad/download/h;-><init>(Ljava/lang/String;Lokhttp3/OkHttpClient;Lcom/ksad/download/h$a;)V

    return-object v0

    :cond_24
    :try_start_24
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    goto :goto_16

    :catchall_2a
    move-exception v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2a

    throw v0
.end method
