.class public final Lcom/tapjoy/internal/ii;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/ii$a;,
        Lcom/tapjoy/internal/ii$b;
    }
.end annotation


# instance fields
.field private a:Lcom/tapjoy/internal/ie;

.field private b:Landroid/graphics/Bitmap;

.field private final c:Landroid/os/Handler;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/Thread;

.field private h:Lcom/tapjoy/internal/ii$b;

.field private i:J

.field private j:Lcom/tapjoy/internal/ii$a;

.field private final k:Ljava/lang/Runnable;

.field private final l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/tapjoy/internal/ii;->c:Landroid/os/Handler;

    .line 24
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tapjoy/internal/ii;->h:Lcom/tapjoy/internal/ii$b;

    .line 25
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tapjoy/internal/ii;->i:J

    .line 26
    iput-object p1, p0, Lcom/tapjoy/internal/ii;->j:Lcom/tapjoy/internal/ii$a;

    .line 28
    new-instance p1, Lcom/tapjoy/internal/ii$1;

    invoke-direct {p1, p0}, Lcom/tapjoy/internal/ii$1;-><init>(Lcom/tapjoy/internal/ii;)V

    iput-object p1, p0, Lcom/tapjoy/internal/ii;->k:Ljava/lang/Runnable;

    .line 37
    new-instance p1, Lcom/tapjoy/internal/ii$2;

    invoke-direct {p1, p0}, Lcom/tapjoy/internal/ii$2;-><init>(Lcom/tapjoy/internal/ii;)V

    iput-object p1, p0, Lcom/tapjoy/internal/ii;->l:Ljava/lang/Runnable;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/ii;)Landroid/graphics/Bitmap;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/tapjoy/internal/ii;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic b(Lcom/tapjoy/internal/ii;)Landroid/graphics/Bitmap;
    .registers 2

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/ii;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic c(Lcom/tapjoy/internal/ii;)Lcom/tapjoy/internal/ie;
    .registers 2

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/ii;->a:Lcom/tapjoy/internal/ie;

    return-object v0
.end method

.method static synthetic d(Lcom/tapjoy/internal/ii;)Ljava/lang/Thread;
    .registers 2

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/ii;->g:Ljava/lang/Thread;

    return-object v0
.end method

.method private d()V
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/tapjoy/internal/ii;->a:Lcom/tapjoy/internal/ie;

    .line 1294
    iget v0, v0, Lcom/tapjoy/internal/ie;->a:I

    .line 122
    if-nez v0, :cond_7

    return-void

    .line 123
    :cond_7
    iget-object v0, p0, Lcom/tapjoy/internal/ii;->a:Lcom/tapjoy/internal/ie;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ie;->a()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/tapjoy/internal/ii;->d:Z

    if-nez v0, :cond_19

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/ii;->e:Z

    .line 125
    invoke-direct {p0}, Lcom/tapjoy/internal/ii;->f()V

    .line 127
    :cond_19
    return-void
.end method

.method private e()Z
    .registers 2

    .line 143
    iget-boolean v0, p0, Lcom/tapjoy/internal/ii;->d:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/tapjoy/internal/ii;->e:Z

    if-eqz v0, :cond_12

    :cond_8
    iget-object v0, p0, Lcom/tapjoy/internal/ii;->a:Lcom/tapjoy/internal/ie;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/tapjoy/internal/ii;->g:Ljava/lang/Thread;

    if-nez v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic e(Lcom/tapjoy/internal/ii;)Z
    .registers 2

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/ii;->f:Z

    return v0
.end method

.method private f()V
    .registers 2

    .line 237
    invoke-direct {p0}, Lcom/tapjoy/internal/ii;->e()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 238
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tapjoy/internal/ii;->g:Ljava/lang/Thread;

    .line 239
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 241
    :cond_10
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/ii;->d:Z

    .line 105
    invoke-direct {p0}, Lcom/tapjoy/internal/ii;->f()V

    .line 106
    return-void
.end method

.method public final a(Lcom/tapjoy/internal/ig;[B)V
    .registers 5

    .line 57
    :try_start_0
    new-instance v0, Lcom/tapjoy/internal/ie;

    new-instance v1, Lcom/tapjoy/internal/ij;

    invoke-direct {v1}, Lcom/tapjoy/internal/ij;-><init>()V

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-direct {v0, v1, p1, p2}, Lcom/tapjoy/internal/ie;-><init>(Lcom/tapjoy/internal/ie$a;Lcom/tapjoy/internal/ig;Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/tapjoy/internal/ii;->a:Lcom/tapjoy/internal/ie;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_1d

    .line 62
    nop

    .line 64
    iget-boolean p1, p0, Lcom/tapjoy/internal/ii;->d:Z

    if-eqz p1, :cond_19

    .line 65
    invoke-direct {p0}, Lcom/tapjoy/internal/ii;->f()V

    return-void

    .line 67
    :cond_19
    invoke-direct {p0}, Lcom/tapjoy/internal/ii;->d()V

    .line 69
    return-void

    .line 58
    :catch_1d
    move-exception p1

    .line 59
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/tapjoy/internal/ii;->a:Lcom/tapjoy/internal/ie;

    .line 60
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    .line 61
    return-void
.end method

.method public final b()V
    .registers 2

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/ii;->d:Z

    .line 115
    iget-object v0, p0, Lcom/tapjoy/internal/ii;->g:Ljava/lang/Thread;

    if-eqz v0, :cond_d

    .line 116
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/ii;->g:Ljava/lang/Thread;

    .line 119
    :cond_d
    return-void
.end method

.method public final c()V
    .registers 3

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/ii;->d:Z

    .line 136
    iput-boolean v0, p0, Lcom/tapjoy/internal/ii;->e:Z

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/ii;->f:Z

    .line 138
    invoke-virtual {p0}, Lcom/tapjoy/internal/ii;->b()V

    .line 139
    iget-object v0, p0, Lcom/tapjoy/internal/ii;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tapjoy/internal/ii;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    return-void
.end method

.method public final getFramesDisplayDuration()J
    .registers 3

    .line 89
    iget-wide v0, p0, Lcom/tapjoy/internal/ii;->i:J

    return-wide v0
.end method

.method public final getGifHeight()I
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/tapjoy/internal/ii;->a:Lcom/tapjoy/internal/ie;

    .line 2214
    iget-object v0, v0, Lcom/tapjoy/internal/ie;->c:Lcom/tapjoy/internal/ig;

    iget v0, v0, Lcom/tapjoy/internal/ig;->g:I

    .line 151
    return v0
.end method

.method public final getGifWidth()I
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/tapjoy/internal/ii;->a:Lcom/tapjoy/internal/ie;

    .line 2210
    iget-object v0, v0, Lcom/tapjoy/internal/ie;->c:Lcom/tapjoy/internal/ig;

    iget v0, v0, Lcom/tapjoy/internal/ig;->f:I

    .line 147
    return v0
.end method

.method public final getOnAnimationStop()Lcom/tapjoy/internal/ii$a;
    .registers 2

    .line 219
    iget-object v0, p0, Lcom/tapjoy/internal/ii;->j:Lcom/tapjoy/internal/ii$a;

    return-object v0
.end method

.method public final getOnFrameAvailable()Lcom/tapjoy/internal/ii$b;
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/tapjoy/internal/ii;->h:Lcom/tapjoy/internal/ii$b;

    return-object v0
.end method

.method protected final onDetachedFromWindow()V
    .registers 1

    .line 232
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 233
    invoke-virtual {p0}, Lcom/tapjoy/internal/ii;->c()V

    .line 234
    return-void
.end method

.method public final run()V
    .registers 12

    .line 156
    :cond_0
    iget-boolean v0, p0, Lcom/tapjoy/internal/ii;->d:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/tapjoy/internal/ii;->e:Z

    if-eqz v0, :cond_c5

    .line 159
    :cond_8
    iget-object v0, p0, Lcom/tapjoy/internal/ii;->a:Lcom/tapjoy/internal/ie;

    .line 2238
    iget-object v1, v0, Lcom/tapjoy/internal/ie;->c:Lcom/tapjoy/internal/ig;

    iget v1, v1, Lcom/tapjoy/internal/ig;->c:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gtz v1, :cond_15

    .line 2239
    const/4 v0, 0x0

    goto :goto_3e

    .line 2242
    :cond_15
    iget v1, v0, Lcom/tapjoy/internal/ie;->a:I

    .line 2285
    iget-object v5, v0, Lcom/tapjoy/internal/ie;->c:Lcom/tapjoy/internal/ig;

    iget v5, v5, Lcom/tapjoy/internal/ig;->c:I

    .line 2242
    sub-int/2addr v5, v3

    if-ne v1, v5, :cond_23

    .line 2243
    iget v1, v0, Lcom/tapjoy/internal/ie;->b:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/tapjoy/internal/ie;->b:I

    .line 2246
    :cond_23
    iget-object v1, v0, Lcom/tapjoy/internal/ie;->c:Lcom/tapjoy/internal/ig;

    iget v1, v1, Lcom/tapjoy/internal/ig;->m:I

    if-eq v1, v2, :cond_33

    iget v1, v0, Lcom/tapjoy/internal/ie;->b:I

    iget-object v5, v0, Lcom/tapjoy/internal/ie;->c:Lcom/tapjoy/internal/ig;

    iget v5, v5, Lcom/tapjoy/internal/ig;->m:I

    if-le v1, v5, :cond_33

    .line 2247
    const/4 v0, 0x0

    goto :goto_3e

    .line 2250
    :cond_33
    iget v1, v0, Lcom/tapjoy/internal/ie;->a:I

    add-int/2addr v1, v3

    iget-object v5, v0, Lcom/tapjoy/internal/ie;->c:Lcom/tapjoy/internal/ig;

    iget v5, v5, Lcom/tapjoy/internal/ig;->c:I

    rem-int/2addr v1, v5

    iput v1, v0, Lcom/tapjoy/internal/ie;->a:I

    .line 2251
    const/4 v0, 0x1

    .line 159
    :goto_3e
    nop

    .line 162
    nop

    .line 164
    const-wide/16 v5, 0x0

    :try_start_42
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 165
    iget-object v1, p0, Lcom/tapjoy/internal/ii;->a:Lcom/tapjoy/internal/ie;

    invoke-virtual {v1}, Lcom/tapjoy/internal/ie;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/ii;->b:Landroid/graphics/Bitmap;

    .line 166
    iget-object v1, p0, Lcom/tapjoy/internal/ii;->h:Lcom/tapjoy/internal/ii$b;

    if-eqz v1, :cond_58

    .line 167
    invoke-interface {v1}, Lcom/tapjoy/internal/ii$b;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/ii;->b:Landroid/graphics/Bitmap;

    .line 169
    :cond_58
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v9, v7

    const-wide/32 v7, 0xf4240

    div-long/2addr v9, v7
    :try_end_61
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_42 .. :try_end_61} :catch_74
    .catch Ljava/lang/IllegalArgumentException; {:try_start_42 .. :try_end_61} :catch_6d

    .line 170
    :try_start_61
    iget-object v1, p0, Lcom/tapjoy/internal/ii;->c:Landroid/os/Handler;

    iget-object v7, p0, Lcom/tapjoy/internal/ii;->k:Ljava/lang/Runnable;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_68
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_61 .. :try_end_68} :catch_6b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_61 .. :try_end_68} :catch_69

    goto :goto_7a

    .line 173
    :catch_69
    move-exception v1

    goto :goto_6f

    .line 171
    :catch_6b
    move-exception v1

    goto :goto_76

    .line 173
    :catch_6d
    move-exception v1

    move-wide v9, v5

    .line 174
    :goto_6f
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    goto :goto_7b

    .line 171
    :catch_74
    move-exception v1

    move-wide v9, v5

    .line 172
    :goto_76
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    .line 175
    :goto_7a
    nop

    .line 177
    :goto_7b
    iput-boolean v4, p0, Lcom/tapjoy/internal/ii;->e:Z

    .line 178
    iget-boolean v1, p0, Lcom/tapjoy/internal/ii;->d:Z

    if-eqz v1, :cond_c2

    if-nez v0, :cond_84

    goto :goto_c2

    .line 183
    :cond_84
    :try_start_84
    iget-object v0, p0, Lcom/tapjoy/internal/ii;->a:Lcom/tapjoy/internal/ie;

    .line 3272
    iget-object v1, v0, Lcom/tapjoy/internal/ie;->c:Lcom/tapjoy/internal/ig;

    iget v1, v1, Lcom/tapjoy/internal/ig;->c:I

    if-lez v1, :cond_aa

    iget v1, v0, Lcom/tapjoy/internal/ie;->a:I

    if-gez v1, :cond_91

    goto :goto_aa

    .line 3276
    :cond_91
    iget v1, v0, Lcom/tapjoy/internal/ie;->a:I

    .line 4261
    nop

    .line 4262
    if-ltz v1, :cond_a8

    iget-object v3, v0, Lcom/tapjoy/internal/ie;->c:Lcom/tapjoy/internal/ig;

    iget v3, v3, Lcom/tapjoy/internal/ig;->c:I

    if-ge v1, v3, :cond_a8

    .line 4263
    iget-object v0, v0, Lcom/tapjoy/internal/ie;->c:Lcom/tapjoy/internal/ig;

    iget-object v0, v0, Lcom/tapjoy/internal/ig;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/if;

    iget v2, v0, Lcom/tapjoy/internal/if;->i:I

    .line 4265
    :cond_a8
    move v4, v2

    goto :goto_ab

    .line 3273
    :cond_aa
    :goto_aa
    nop

    .line 187
    :goto_ab
    int-to-long v0, v4

    sub-long/2addr v0, v9

    long-to-int v1, v0

    .line 188
    if-lez v1, :cond_bb

    .line 189
    iget-wide v2, p0, Lcom/tapjoy/internal/ii;->i:J

    cmp-long v0, v2, v5

    if-lez v0, :cond_b7

    goto :goto_b8

    :cond_b7
    int-to-long v2, v1

    :goto_b8
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_bb
    .catch Ljava/lang/InterruptedException; {:try_start_84 .. :try_end_bb} :catch_bc

    .line 193
    :cond_bb
    goto :goto_bd

    .line 191
    :catch_bc
    move-exception v0

    .line 194
    :goto_bd
    iget-boolean v0, p0, Lcom/tapjoy/internal/ii;->d:Z

    if-nez v0, :cond_0

    goto :goto_c5

    .line 179
    :cond_c2
    :goto_c2
    iput-boolean v4, p0, Lcom/tapjoy/internal/ii;->d:Z

    .line 180
    nop

    .line 196
    :cond_c5
    :goto_c5
    iget-boolean v0, p0, Lcom/tapjoy/internal/ii;->f:Z

    if-eqz v0, :cond_d0

    .line 197
    iget-object v0, p0, Lcom/tapjoy/internal/ii;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tapjoy/internal/ii;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    :cond_d0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/ii;->g:Ljava/lang/Thread;

    .line 204
    return-void
.end method

.method public final setBytes([B)V
    .registers 5
    .param p1, "bytes"    # [B

    .line 72
    new-instance v0, Lcom/tapjoy/internal/ie;

    invoke-direct {v0}, Lcom/tapjoy/internal/ie;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ii;->a:Lcom/tapjoy/internal/ie;

    .line 74
    :try_start_7
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/ie;->a([B)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_17

    .line 79
    nop

    .line 81
    iget-boolean v0, p0, Lcom/tapjoy/internal/ii;->d:Z

    if-eqz v0, :cond_13

    .line 82
    invoke-direct {p0}, Lcom/tapjoy/internal/ii;->f()V

    return-void

    .line 84
    :cond_13
    invoke-direct {p0}, Lcom/tapjoy/internal/ii;->d()V

    .line 86
    return-void

    .line 75
    :catch_17
    move-exception v0

    .line 76
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tapjoy/internal/ii;->a:Lcom/tapjoy/internal/ie;

    .line 77
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 78
    return-void
.end method

.method public final setFramesDisplayDuration(J)V
    .registers 3
    .param p1, "framesDisplayDuration"    # J

    .line 100
    iput-wide p1, p0, Lcom/tapjoy/internal/ii;->i:J

    .line 101
    return-void
.end method

.method public final setOnAnimationStop(Lcom/tapjoy/internal/ii$a;)V
    .registers 2
    .param p1, "animationStop"    # Lcom/tapjoy/internal/ii$a;

    .line 223
    iput-object p1, p0, Lcom/tapjoy/internal/ii;->j:Lcom/tapjoy/internal/ii$a;

    .line 224
    return-void
.end method

.method public final setOnFrameAvailable(Lcom/tapjoy/internal/ii$b;)V
    .registers 2
    .param p1, "frameProcessor"    # Lcom/tapjoy/internal/ii$b;

    .line 211
    iput-object p1, p0, Lcom/tapjoy/internal/ii;->h:Lcom/tapjoy/internal/ii$b;

    .line 212
    return-void
.end method
