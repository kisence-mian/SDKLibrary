.class public abstract Lcom/bytedance/sdk/openadsdk/core/video/d/a;
.super Ljava/lang/Object;
.source "AbstractMediaPlayer.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/d/c;


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/video/d/c$e;

.field private b:Lcom/bytedance/sdk/openadsdk/core/video/d/c$b;

.field private c:Lcom/bytedance/sdk/openadsdk/core/video/d/c$a;

.field private d:Lcom/bytedance/sdk/openadsdk/core/video/d/c$f;

.field private e:Lcom/bytedance/sdk/openadsdk/core/video/d/c$g;

.field private f:Lcom/bytedance/sdk/openadsdk/core/video/d/c$c;

.field private g:Lcom/bytedance/sdk/openadsdk/core/video/d/c$d;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c$e;

    .line 65
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->c:Lcom/bytedance/sdk/openadsdk/core/video/d/c$a;

    .line 66
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->b:Lcom/bytedance/sdk/openadsdk/core/video/d/c$b;

    .line 67
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/d/c$f;

    .line 68
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->e:Lcom/bytedance/sdk/openadsdk/core/video/d/c$g;

    .line 69
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->f:Lcom/bytedance/sdk/openadsdk/core/video/d/c$c;

    .line 70
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/c$d;

    .line 71
    return-void
.end method

.method protected final a(I)V
    .registers 4

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->c:Lcom/bytedance/sdk/openadsdk/core/video/d/c$a;

    if-eqz v0, :cond_7

    .line 94
    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/c$a;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c;I)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    .line 97
    :cond_7
    goto :goto_10

    .line 95
    :catchall_8
    move-exception p1

    .line 96
    const-string v0, "AbstractMediaPlayer"

    const-string v1, "AbstractMediaPlayer.notifyOnBufferingUpdate error: "

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    :goto_10
    return-void
.end method

.method protected final a(IIII)V
    .registers 11

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->e:Lcom/bytedance/sdk/openadsdk/core/video/d/c$g;

    if-eqz v0, :cond_c

    .line 114
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/video/d/c$g;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c;IIII)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    .line 118
    :cond_c
    goto :goto_15

    .line 116
    :catchall_d
    move-exception p1

    .line 117
    const-string p2, "AbstractMediaPlayer"

    const-string p3, "AbstractMediaPlayer.notifyOnVideoSizeChanged error: "

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    :goto_15
    return-void
.end method

.method public final a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$a;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->c:Lcom/bytedance/sdk/openadsdk/core/video/d/c$a;

    .line 44
    return-void
.end method

.method public final a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$b;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->b:Lcom/bytedance/sdk/openadsdk/core/video/d/c$b;

    .line 39
    return-void
.end method

.method public final a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$c;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->f:Lcom/bytedance/sdk/openadsdk/core/video/d/c$c;

    .line 52
    return-void
.end method

.method public final a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$d;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/c$d;

    .line 56
    return-void
.end method

.method public final a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$e;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c$e;

    .line 35
    return-void
.end method

.method public final a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$f;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/d/c$f;

    .line 48
    return-void
.end method

.method public final a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$g;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->e:Lcom/bytedance/sdk/openadsdk/core/video/d/c$g;

    .line 60
    return-void
.end method

.method protected final a(II)Z
    .registers 5

    .line 123
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->f:Lcom/bytedance/sdk/openadsdk/core/video/d/c$c;

    if-eqz v1, :cond_c

    invoke-interface {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/c$c;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c;II)Z

    move-result p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_d

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0

    .line 124
    :catchall_d
    move-exception p1

    .line 125
    const-string p2, "AbstractMediaPlayer"

    const-string v1, "AbstractMediaPlayer.notifyOnError error: "

    invoke-static {p2, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    return v0
.end method

.method protected final b()V
    .registers 4

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c$e;

    if-eqz v0, :cond_7

    .line 76
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c$e;->b(Lcom/bytedance/sdk/openadsdk/core/video/d/c;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    .line 79
    :cond_7
    goto :goto_10

    .line 77
    :catchall_8
    move-exception v0

    .line 78
    const-string v1, "AbstractMediaPlayer"

    const-string v2, "AbstractMediaPlayer.notifyOnPrepared error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    :goto_10
    return-void
.end method

.method protected final b(II)Z
    .registers 5

    .line 132
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/c$d;

    if-eqz v1, :cond_c

    invoke-interface {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/c$d;->b(Lcom/bytedance/sdk/openadsdk/core/video/d/c;II)Z

    move-result p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_d

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0

    .line 133
    :catchall_d
    move-exception p1

    .line 134
    const-string p2, "AbstractMediaPlayer"

    const-string v1, "AbstractMediaPlayer.notifyOnInfo error: "

    invoke-static {p2, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    return v0
.end method

.method protected final c()V
    .registers 4

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->b:Lcom/bytedance/sdk/openadsdk/core/video/d/c$b;

    if-eqz v0, :cond_7

    .line 85
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c$b;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    .line 88
    :cond_7
    goto :goto_10

    .line 86
    :catchall_8
    move-exception v0

    .line 87
    const-string v1, "AbstractMediaPlayer"

    const-string v2, "AbstractMediaPlayer.notifyOnCompletion error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    :goto_10
    return-void
.end method

.method protected final d()V
    .registers 4

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/d/c$f;

    if-eqz v0, :cond_7

    .line 103
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c$f;->c(Lcom/bytedance/sdk/openadsdk/core/video/d/c;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    .line 106
    :cond_7
    goto :goto_10

    .line 104
    :catchall_8
    move-exception v0

    .line 105
    const-string v1, "AbstractMediaPlayer"

    const-string v2, "AbstractMediaPlayer.notifyOnSeekComplete error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    :goto_10
    return-void
.end method
