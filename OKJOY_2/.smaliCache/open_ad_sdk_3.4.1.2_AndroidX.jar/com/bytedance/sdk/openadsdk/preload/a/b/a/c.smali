.class public final Lcom/bytedance/sdk/openadsdk/preload/a/b/a/c;
.super Lcom/bytedance/sdk/openadsdk/preload/a/v;
.source "DateTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/bytedance/sdk/openadsdk/preload/a/w;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/c$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/c$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/c;->a:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 60
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/v;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/c;->b:Ljava/util/List;

    .line 61
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    invoke-static {v2, v2, v1}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 63
    invoke-static {v2, v2}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_27
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/a/b/e;->b()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 66
    invoke-static {v2, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/j;->a(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_34
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;)Ljava/util/Date;
    .registers 4

    monitor-enter p0

    .line 79
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DateFormat;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_2e

    .line 81
    :try_start_13
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_17
    .catch Ljava/text/ParseException; {:try_start_13 .. :try_end_17} :catch_19
    .catchall {:try_start_13 .. :try_end_17} :catchall_2e

    monitor-exit p0

    return-object p1

    .line 82
    :catch_19
    move-exception v1

    .line 83
    goto :goto_7

    .line 85
    :cond_1b
    :try_start_1b
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/a/a;->a(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p1
    :try_end_25
    .catch Ljava/text/ParseException; {:try_start_1b .. :try_end_25} :catch_27
    .catchall {:try_start_1b .. :try_end_25} :catchall_2e

    monitor-exit p0

    return-object p1

    .line 86
    :catch_27
    move-exception v0

    .line 87
    :try_start_28
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/a/t;

    invoke-direct {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/t;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_2e

    .line 78
    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/util/Date;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->i:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    if-ne v0, v1, :cond_d

    .line 72
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->j()V

    .line 73
    const/4 p1, 0x0

    return-object p1

    .line 75
    :cond_d
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->h()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/c;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    check-cast p2, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/c;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/util/Date;)V

    return-void
.end method

.method public declared-synchronized a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/util/Date;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 92
    if-nez p2, :cond_8

    .line 93
    :try_start_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1a

    .line 94
    monitor-exit p0

    return-void

    .line 96
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/c;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 97
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1a

    .line 98
    monitor-exit p0

    return-void

    .line 91
    :catchall_1a
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

    .line 46
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/c;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method
