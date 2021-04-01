.class public abstract Lcom/bytedance/sdk/openadsdk/core/video/c/a;
.super Ljava/lang/Object;
.source "AbstractMediaPlayer.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/c/c;


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/video/c/c$e;

.field private b:Lcom/bytedance/sdk/openadsdk/core/video/c/c$b;

.field private c:Lcom/bytedance/sdk/openadsdk/core/video/c/c$a;

.field private d:Lcom/bytedance/sdk/openadsdk/core/video/c/c$f;

.field private e:Lcom/bytedance/sdk/openadsdk/core/video/c/c$g;

.field private f:Lcom/bytedance/sdk/openadsdk/core/video/c/c$c;

.field private g:Lcom/bytedance/sdk/openadsdk/core/video/c/c$d;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c$e;

    .line 65
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bytedance/sdk/openadsdk/core/video/c/c$a;

    .line 66
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/c$b;

    .line 67
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/c/c$f;

    .line 68
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/video/c/c$g;

    .line 69
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f:Lcom/bytedance/sdk/openadsdk/core/video/c/c$c;

    .line 70
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/c$d;

    .line 71
    return-void
.end method

.method protected final a(I)V
    .registers 5

    .prologue
    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bytedance/sdk/openadsdk/core/video/c/c$a;

    if-eqz v0, :cond_9

    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bytedance/sdk/openadsdk/core/video/c/c$a;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/c$a;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c;I)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 98
    :cond_9
    :goto_9
    return-void

    .line 95
    :catch_a
    move-exception v0

    .line 96
    const-string v1, "AbstractMediaPlayer"

    const-string v2, "AbstractMediaPlayer.notifyOnBufferingUpdate error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method protected final a(IIII)V
    .registers 11

    .prologue
    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/video/c/c$g;

    if-eqz v0, :cond_e

    .line 114
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/video/c/c$g;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/video/c/c$g;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c;IIII)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_f

    .line 119
    :cond_e
    :goto_e
    return-void

    .line 116
    :catch_f
    move-exception v0

    .line 117
    const-string v1, "AbstractMediaPlayer"

    const-string v2, "AbstractMediaPlayer.notifyOnVideoSizeChanged error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method public final a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$a;)V
    .registers 2

    .prologue
    .line 43
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bytedance/sdk/openadsdk/core/video/c/c$a;

    .line 44
    return-void
.end method

.method public final a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$b;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/c$b;

    .line 39
    return-void
.end method

.method public final a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$c;)V
    .registers 2

    .prologue
    .line 51
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f:Lcom/bytedance/sdk/openadsdk/core/video/c/c$c;

    .line 52
    return-void
.end method

.method public final a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$d;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/c$d;

    .line 56
    return-void
.end method

.method public final a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$e;)V
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c$e;

    .line 35
    return-void
.end method

.method public final a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$f;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/c/c$f;

    .line 48
    return-void
.end method

.method public final a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$g;)V
    .registers 2

    .prologue
    .line 59
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/video/c/c$g;

    .line 60
    return-void
.end method

.method protected final a(II)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 123
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f:Lcom/bytedance/sdk/openadsdk/core/video/c/c$c;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f:Lcom/bytedance/sdk/openadsdk/core/video/c/c$c;

    invoke-interface {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/c/c$c;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c;II)Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_f

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    .line 127
    :cond_e
    :goto_e
    return v0

    .line 124
    :catch_f
    move-exception v1

    .line 125
    const-string v2, "AbstractMediaPlayer"

    const-string v3, "AbstractMediaPlayer.notifyOnError error: "

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method protected final b()V
    .registers 4

    .prologue
    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c$e;

    if-eqz v0, :cond_9

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c$e;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c$e;->b(Lcom/bytedance/sdk/openadsdk/core/video/c/c;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 80
    :cond_9
    :goto_9
    return-void

    .line 77
    :catch_a
    move-exception v0

    .line 78
    const-string v1, "AbstractMediaPlayer"

    const-string v2, "AbstractMediaPlayer.notifyOnPrepared error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method protected final b(II)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 132
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/c$d;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/c$d;

    invoke-interface {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/c/c$d;->b(Lcom/bytedance/sdk/openadsdk/core/video/c/c;II)Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_f

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    .line 136
    :cond_e
    :goto_e
    return v0

    .line 133
    :catch_f
    move-exception v1

    .line 134
    const-string v2, "AbstractMediaPlayer"

    const-string v3, "AbstractMediaPlayer.notifyOnInfo error: "

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method protected final c()V
    .registers 4

    .prologue
    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/c$b;

    if-eqz v0, :cond_9

    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/c$b;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c$b;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 89
    :cond_9
    :goto_9
    return-void

    .line 86
    :catch_a
    move-exception v0

    .line 87
    const-string v1, "AbstractMediaPlayer"

    const-string v2, "AbstractMediaPlayer.notifyOnCompletion error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method protected final d()V
    .registers 4

    .prologue
    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/c/c$f;

    if-eqz v0, :cond_9

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/c/c$f;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c$f;->c(Lcom/bytedance/sdk/openadsdk/core/video/c/c;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 107
    :cond_9
    :goto_9
    return-void

    .line 104
    :catch_a
    move-exception v0

    .line 105
    const-string v1, "AbstractMediaPlayer"

    const-string v2, "AbstractMediaPlayer.notifyOnSeekComplete error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method
