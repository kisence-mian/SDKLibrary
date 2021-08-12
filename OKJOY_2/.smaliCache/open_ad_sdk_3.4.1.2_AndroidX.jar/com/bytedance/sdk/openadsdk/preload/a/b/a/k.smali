.class public final Lcom/bytedance/sdk/openadsdk/preload/a/b/a/k;
.super Lcom/bytedance/sdk/openadsdk/preload/a/v;
.source "TimeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
        "Ljava/sql/Time;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/bytedance/sdk/openadsdk/preload/a/w;


# instance fields
.field private final b:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/k$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/k$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/k;->a:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/v;-><init>()V

    .line 49
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/k;->b:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/sql/Time;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 52
    :try_start_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->i:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    if-ne v0, v1, :cond_f

    .line 53
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->j()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_2b

    .line 54
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    .line 57
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/k;->b:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 58
    new-instance v0, Ljava/sql/Time;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Time;-><init>(J)V
    :try_end_22
    .catch Ljava/text/ParseException; {:try_start_f .. :try_end_22} :catch_24
    .catchall {:try_start_f .. :try_end_22} :catchall_2b

    monitor-exit p0

    return-object v0

    .line 59
    :catch_24
    move-exception p1

    .line 60
    :try_start_25
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/t;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/t;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_2b

    .line 51
    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    check-cast p2, Ljava/sql/Time;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/k;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/sql/Time;)V

    return-void
.end method

.method public declared-synchronized a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/sql/Time;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 65
    if-nez p2, :cond_5

    const/4 p2, 0x0

    goto :goto_b

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/k;->b:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    :goto_b
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_10

    .line 66
    monitor-exit p0

    return-void

    .line 64
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/k;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/sql/Time;

    move-result-object p1

    return-object p1
.end method
