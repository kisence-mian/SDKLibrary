.class public Lcom/ss/android/socialbase/downloader/network/c;
.super Ljava/lang/Object;
.source "DownloadDnsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/network/c$b;,
        Lcom/ss/android/socialbase/downloader/network/c$a;,
        Lcom/ss/android/socialbase/downloader/network/c$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/ss/android/socialbase/downloader/i/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/socialbase/downloader/i/g<",
            "Ljava/lang/String;",
            "Lcom/ss/android/socialbase/downloader/network/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/os/Handler;

.field private final c:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .registers 5

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g;

    const/4 v1, 0x4

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/i/g;-><init>(IIZ)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/network/c;->a:Lcom/ss/android/socialbase/downloader/i/g;

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/a/b;->a()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/network/c;->b:Landroid/os/Handler;

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/h/e;->a()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/network/c;->c:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/socialbase/downloader/network/c$1;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/network/c;-><init>()V

    return-void
.end method

.method public static a()Lcom/ss/android/socialbase/downloader/network/c;
    .registers 1

    .line 40
    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/c$c;->a()Lcom/ss/android/socialbase/downloader/network/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/network/c;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/c$a;J)V
    .registers 5

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/network/c;->b(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/c$a;J)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/c;->a:Lcom/ss/android/socialbase/downloader/i/g;

    monitor-enter v0

    .line 135
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/network/c;->a:Lcom/ss/android/socialbase/downloader/i/g;

    invoke-virtual {v1, p1}, Lcom/ss/android/socialbase/downloader/i/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/network/c$b;

    .line 136
    if-nez v1, :cond_18

    .line 137
    new-instance v1, Lcom/ss/android/socialbase/downloader/network/c$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/downloader/network/c$b;-><init>(Lcom/ss/android/socialbase/downloader/network/c$1;)V

    .line 138
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/network/c;->a:Lcom/ss/android/socialbase/downloader/i/g;

    invoke-virtual {v2, p1, v1}, Lcom/ss/android/socialbase/downloader/i/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_18
    iput-object p2, v1, Lcom/ss/android/socialbase/downloader/network/c$b;->a:Ljava/util/List;

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v1, Lcom/ss/android/socialbase/downloader/network/c$b;->b:J

    .line 142
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p1
.end method

.method private b(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/c$a;J)V
    .registers 12

    .line 63
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/network/c;->a:Lcom/ss/android/socialbase/downloader/i/g;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_95

    .line 68
    :try_start_b
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/network/c;->a:Lcom/ss/android/socialbase/downloader/i/g;

    invoke-virtual {v2, v0}, Lcom/ss/android/socialbase/downloader/i/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/network/c$b;

    .line 69
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_92

    .line 70
    if-eqz v2, :cond_3a

    .line 71
    :try_start_16
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v1

    const-string v3, "dns_expire_min"

    const/16 v4, 0xa

    invoke-virtual {v1, v3, v4}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v1

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/ss/android/socialbase/downloader/network/c$b;->b:J

    sub-long/2addr v3, v5

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-gez v1, :cond_3a

    .line 76
    if-eqz p2, :cond_39

    .line 77
    iget-object p3, v2, Lcom/ss/android/socialbase/downloader/network/c$b;->a:Ljava/util/List;

    invoke-interface {p2, p1, p3}, Lcom/ss/android/socialbase/downloader/network/c$a;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 79
    :cond_39
    return-void

    .line 83
    :cond_3a
    new-instance v1, Lcom/ss/android/socialbase/downloader/network/c$2;

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/ss/android/socialbase/downloader/network/c$2;-><init>(Lcom/ss/android/socialbase/downloader/network/c;Lcom/ss/android/socialbase/downloader/network/c$a;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/c$b;)V

    .line 92
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/network/c;->c:Landroid/os/Handler;

    invoke-virtual {v3, v1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    const/4 p3, 0x0

    .line 96
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p4

    const-string v3, "use_host_dns"

    const/4 v4, 0x1

    invoke-virtual {p4, v3, v4}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p4

    if-ne p4, v4, :cond_61

    .line 98
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->u()Lcom/ss/android/socialbase/downloader/network/f;

    move-result-object p4
    :try_end_56
    .catchall {:try_start_16 .. :try_end_56} :catchall_95

    .line 99
    if-eqz p4, :cond_61

    .line 101
    :try_start_58
    invoke-interface {p4, v0}, Lcom/ss/android/socialbase/downloader/network/f;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p3
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_5d

    .line 104
    goto :goto_61

    .line 102
    :catchall_5d
    move-exception p4

    .line 103
    :try_start_5e
    invoke-virtual {p4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    :cond_61
    :goto_61
    if-eqz p3, :cond_69

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_76

    .line 108
    :cond_69
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->v()Lcom/ss/android/socialbase/downloader/network/f;

    move-result-object p4
    :try_end_6d
    .catchall {:try_start_5e .. :try_end_6d} :catchall_95

    .line 110
    :try_start_6d
    invoke-interface {p4, v0}, Lcom/ss/android/socialbase/downloader/network/f;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p3
    :try_end_71
    .catchall {:try_start_6d .. :try_end_71} :catchall_72

    .line 113
    goto :goto_76

    .line 111
    :catchall_72
    move-exception p4

    .line 112
    :try_start_73
    invoke-virtual {p4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    :cond_76
    :goto_76
    if-eqz p3, :cond_83

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_7f

    goto :goto_83

    .line 120
    :cond_7f
    invoke-direct {p0, v0, p3}, Lcom/ss/android/socialbase/downloader/network/c;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_87

    .line 116
    :cond_83
    :goto_83
    if-eqz v2, :cond_87

    .line 117
    iget-object p3, v2, Lcom/ss/android/socialbase/downloader/network/c$b;->a:Ljava/util/List;

    .line 123
    :cond_87
    :goto_87
    iget-object p4, p0, Lcom/ss/android/socialbase/downloader/network/c;->c:Landroid/os/Handler;

    invoke-virtual {p4, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 124
    if-eqz p2, :cond_91

    .line 125
    invoke-interface {p2, p1, p3}, Lcom/ss/android/socialbase/downloader/network/c$a;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_91
    .catchall {:try_start_73 .. :try_end_91} :catchall_95

    .line 129
    :cond_91
    goto :goto_99

    .line 69
    :catchall_92
    move-exception p1

    :try_start_93
    monitor-exit v1
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    :try_start_94
    throw p1
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_95

    .line 127
    :catchall_95
    move-exception p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 130
    :goto_99
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/c$a;J)V
    .registers 13

    .line 53
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/c;->b:Landroid/os/Handler;

    new-instance v7, Lcom/ss/android/socialbase/downloader/network/c$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/network/c$1;-><init>(Lcom/ss/android/socialbase/downloader/network/c;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/c$a;J)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    return-void
.end method
