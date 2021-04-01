.class public Lcom/ss/android/socialbase/downloader/l/b;
.super Ljava/lang/Object;
.source "DownloadChunkRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/ss/android/socialbase/downloader/g/b;

.field private c:Lcom/ss/android/socialbase/downloader/g/b;

.field private d:Lcom/ss/android/socialbase/downloader/downloader/d;

.field private final e:Lcom/ss/android/socialbase/downloader/g/d;

.field private f:Lcom/ss/android/socialbase/downloader/g/c;

.field private final g:Lcom/ss/android/socialbase/downloader/l/e;

.field private h:Lcom/ss/android/socialbase/downloader/i/e;

.field private i:Lcom/ss/android/socialbase/downloader/downloader/k;

.field private volatile j:Z

.field private volatile k:Z

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcom/ss/android/socialbase/downloader/l/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/l/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/socialbase/downloader/g/b;Lcom/ss/android/socialbase/downloader/g/d;Lcom/ss/android/socialbase/downloader/i/e;Lcom/ss/android/socialbase/downloader/l/e;)V
    .registers 5

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p4}, Lcom/ss/android/socialbase/downloader/l/b;-><init>(Lcom/ss/android/socialbase/downloader/g/b;Lcom/ss/android/socialbase/downloader/g/d;Lcom/ss/android/socialbase/downloader/l/e;)V

    .line 55
    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/l/b;->h:Lcom/ss/android/socialbase/downloader/i/e;

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/ss/android/socialbase/downloader/g/b;Lcom/ss/android/socialbase/downloader/g/d;Lcom/ss/android/socialbase/downloader/l/e;)V
    .registers 5

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->l:Z

    .line 44
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/l/b;->c:Lcom/ss/android/socialbase/downloader/g/b;

    .line 45
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/l/b;->e:Lcom/ss/android/socialbase/downloader/g/d;

    .line 46
    if-eqz p2, :cond_12

    .line 47
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->f:Lcom/ss/android/socialbase/downloader/g/c;

    .line 48
    :cond_12
    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/l/b;->g:Lcom/ss/android/socialbase/downloader/l/e;

    .line 49
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->p()Lcom/ss/android/socialbase/downloader/downloader/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->i:Lcom/ss/android/socialbase/downloader/downloader/k;

    .line 50
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->c:Lcom/ss/android/socialbase/downloader/g/b;

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/g/b;->a(Lcom/ss/android/socialbase/downloader/l/b;)V

    .line 51
    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/g/b;J)V
    .registers 10

    .prologue
    .line 279
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/b;->d()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 280
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/b;->e()Lcom/ss/android/socialbase/downloader/g/b;

    move-result-object v0

    move-object v3, v0

    .line 285
    :goto_b
    if-eqz v3, :cond_38

    .line 286
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/b;->h()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 287
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->i:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/b;->k()I

    move-result v1

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/b;->b()I

    move-result v2

    invoke-interface {v0, v1, v2, p2, p3}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(IIJ)V

    .line 289
    :cond_20
    invoke-virtual {v3, p2, p3}, Lcom/ss/android/socialbase/downloader/g/b;->b(J)V

    .line 290
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->i:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/b;->k()I

    move-result v1

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/b;->s()I

    move-result v2

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/b;->b()I

    move-result v3

    move-wide v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(IIIJ)V

    .line 296
    :cond_35
    :goto_35
    return-void

    :cond_36
    move-object v3, p1

    .line 282
    goto :goto_b

    .line 292
    :cond_38
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/b;->d()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 293
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->i:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/b;->k()I

    move-result v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/b;->s()I

    move-result v2

    invoke-interface {v0, v1, v2, p2, p3}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(IIJ)V

    goto :goto_35
.end method

.method private a(Lcom/ss/android/socialbase/downloader/g/b;)Z
    .registers 16

    .prologue
    .line 116
    :goto_0
    const/4 v8, 0x0

    .line 118
    const/4 v1, 0x0

    .line 119
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/b;->d()Z

    move-result v0

    if-eqz v0, :cond_2a7

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2a7

    .line 120
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/b;->e()Lcom/ss/android/socialbase/downloader/g/b;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_2a7

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->s()I

    move-result v2

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/b;->s()I

    move-result v3

    if-ne v2, v3, :cond_2a7

    move-object v9, v0

    .line 125
    :goto_1f
    if-eqz v9, :cond_29

    invoke-virtual {v9}, Lcom/ss/android/socialbase/downloader/g/b;->i()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 126
    const/4 v0, 0x1

    .line 274
    :goto_28
    return v0

    .line 129
    :cond_29
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/b;->n()J

    move-result-wide v2

    .line 130
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/b;->p()J

    move-result-wide v4

    .line 131
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/b;->n()J

    move-result-wide v0

    .line 132
    if-eqz v9, :cond_2a4

    .line 133
    invoke-virtual {v9}, Lcom/ss/android/socialbase/downloader/g/b;->n()J

    move-result-wide v0

    .line 134
    invoke-virtual {v9}, Lcom/ss/android/socialbase/downloader/g/b;->n()J

    move-result-wide v2

    .line 135
    invoke-virtual {v9}, Lcom/ss/android/socialbase/downloader/g/b;->p()J

    move-result-wide v4

    move-wide v10, v0

    .line 138
    :goto_44
    :try_start_44
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/b;->e()Z
    :try_end_47
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_44 .. :try_end_47} :catch_c7
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_47} :catch_f6
    .catchall {:try_start_44 .. :try_end_47} :catchall_12c

    move-result v0

    if-eqz v0, :cond_4f

    .line 139
    const/4 v0, 0x0

    .line 271
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/b;->d()V

    goto :goto_28

    .line 141
    :cond_4f
    :try_start_4f
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/b;->c()Ljava/lang/String;

    move-result-object v6

    .line 143
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->h:Lcom/ss/android/socialbase/downloader/i/e;

    if-eqz v0, :cond_c0

    const/4 v0, 0x1

    :goto_58
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->l:Z

    .line 144
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->l:Z

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/g/b;->b(Z)V
    :try_end_5f
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_4f .. :try_end_5f} :catch_c7
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_5f} :catch_f6
    .catchall {:try_start_4f .. :try_end_5f} :catchall_12c

    .line 146
    :try_start_5f
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->l:Z

    if-nez v0, :cond_97

    .line 147
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->f:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->B()Ljava/util/List;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/b;->f:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/m/f;->a(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    .line 149
    new-instance v1, Lcom/ss/android/socialbase/downloader/g/e;

    const-string v7, "Chunk-Index"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/b;->s()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v7, v12}, Lcom/ss/android/socialbase/downloader/g/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/b;->f:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->o()Z

    move-result v1

    iget-object v7, p0, Lcom/ss/android/socialbase/downloader/l/b;->f:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v7}, Lcom/ss/android/socialbase/downloader/g/c;->C()I

    move-result v7

    invoke-static {v1, v7, v6, v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(ZILjava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/i/e;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->h:Lcom/ss/android/socialbase/downloader/i/e;
    :try_end_97
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_5f .. :try_end_97} :catch_d5
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_97} :catch_103
    .catchall {:try_start_5f .. :try_end_97} :catchall_d7

    .line 157
    :cond_97
    :try_start_97
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->h:Lcom/ss/android/socialbase/downloader/i/e;

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->g:Lcom/ss/android/socialbase/downloader/l/e;
    :try_end_9d
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_97 .. :try_end_9d} :catch_c7
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_9d} :catch_f6
    .catchall {:try_start_97 .. :try_end_9d} :catchall_12c

    if-eqz v0, :cond_b4

    .line 159
    :try_start_9f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->h:Lcom/ss/android/socialbase/downloader/i/e;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/i/e;->b()I

    move-result v0

    .line 160
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_ad

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_b4

    .line 161
    :cond_ad
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->g:Lcom/ss/android/socialbase/downloader/l/e;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/b;->h:Lcom/ss/android/socialbase/downloader/i/e;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/l/e;->a(Lcom/ss/android/socialbase/downloader/i/c;)V
    :try_end_b4
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_b4} :catch_c2
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_9f .. :try_end_b4} :catch_c7
    .catchall {:try_start_9f .. :try_end_b4} :catchall_12c

    .line 169
    :cond_b4
    :goto_b4
    :try_start_b4
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/b;->e()Z
    :try_end_b7
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_b4 .. :try_end_b7} :catch_c7
    .catch Ljava/lang/Throwable; {:try_start_b4 .. :try_end_b7} :catch_f6
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_12c

    move-result v0

    if-eqz v0, :cond_136

    .line 170
    const/4 v0, 0x0

    .line 271
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/b;->d()V

    goto/16 :goto_28

    .line 143
    :cond_c0
    const/4 v0, 0x0

    goto :goto_58

    .line 163
    :catch_c2
    move-exception v0

    .line 164
    :try_start_c3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c6
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_c3 .. :try_end_c6} :catch_c7
    .catch Ljava/lang/Throwable; {:try_start_c3 .. :try_end_c6} :catch_f6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_12c

    goto :goto_b4

    .line 202
    :catch_c7
    move-exception v0

    move v1, v8

    .line 204
    :goto_c9
    :try_start_c9
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/b;->e()Z
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_12c

    move-result v2

    if-eqz v2, :cond_1b6

    .line 206
    const/4 v0, 0x1

    .line 271
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/b;->d()V

    goto/16 :goto_28

    .line 152
    :catch_d5
    move-exception v0

    .line 153
    :try_start_d6
    throw v0
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d7

    .line 157
    :catchall_d7
    move-exception v0

    :try_start_d8
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/b;->h:Lcom/ss/android/socialbase/downloader/i/e;

    if-eqz v1, :cond_f5

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/b;->g:Lcom/ss/android/socialbase/downloader/l/e;
    :try_end_de
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_d8 .. :try_end_de} :catch_c7
    .catch Ljava/lang/Throwable; {:try_start_d8 .. :try_end_de} :catch_f6
    .catchall {:try_start_d8 .. :try_end_de} :catchall_12c

    if-eqz v1, :cond_f5

    .line 159
    :try_start_e0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/b;->h:Lcom/ss/android/socialbase/downloader/i/e;

    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/i/e;->b()I

    move-result v1

    .line 160
    const/16 v2, 0xc8

    if-lt v1, v2, :cond_ee

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_f5

    .line 161
    :cond_ee
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/b;->g:Lcom/ss/android/socialbase/downloader/l/e;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/b;->h:Lcom/ss/android/socialbase/downloader/i/e;

    invoke-interface {v1, v2}, Lcom/ss/android/socialbase/downloader/l/e;->a(Lcom/ss/android/socialbase/downloader/i/c;)V
    :try_end_f5
    .catch Ljava/lang/Throwable; {:try_start_e0 .. :try_end_f5} :catch_131
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_e0 .. :try_end_f5} :catch_c7
    .catchall {:try_start_e0 .. :try_end_f5} :catchall_12c

    .line 165
    :cond_f5
    :goto_f5
    :try_start_f5
    throw v0
    :try_end_f6
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_f5 .. :try_end_f6} :catch_c7
    .catch Ljava/lang/Throwable; {:try_start_f5 .. :try_end_f6} :catch_f6
    .catchall {:try_start_f5 .. :try_end_f6} :catchall_12c

    .line 261
    :catch_f6
    move-exception v0

    .line 262
    :try_start_f7
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/b;->e()Z
    :try_end_fa
    .catchall {:try_start_f7 .. :try_end_fa} :catchall_12c

    move-result v1

    if-eqz v1, :cond_28f

    .line 263
    const/4 v0, 0x1

    .line 271
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/b;->d()V

    goto/16 :goto_28

    .line 154
    :catch_103
    move-exception v0

    .line 155
    :try_start_104
    const-string v1, "ChunkRunnableConnection"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/m/f;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_109
    .catchall {:try_start_104 .. :try_end_109} :catchall_d7

    .line 157
    :try_start_109
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->h:Lcom/ss/android/socialbase/downloader/i/e;

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->g:Lcom/ss/android/socialbase/downloader/l/e;
    :try_end_10f
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_109 .. :try_end_10f} :catch_c7
    .catch Ljava/lang/Throwable; {:try_start_109 .. :try_end_10f} :catch_f6
    .catchall {:try_start_109 .. :try_end_10f} :catchall_12c

    if-eqz v0, :cond_b4

    .line 159
    :try_start_111
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->h:Lcom/ss/android/socialbase/downloader/i/e;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/i/e;->b()I

    move-result v0

    .line 160
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_11f

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_b4

    .line 161
    :cond_11f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->g:Lcom/ss/android/socialbase/downloader/l/e;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/b;->h:Lcom/ss/android/socialbase/downloader/i/e;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/l/e;->a(Lcom/ss/android/socialbase/downloader/i/c;)V
    :try_end_126
    .catch Ljava/lang/Throwable; {:try_start_111 .. :try_end_126} :catch_127
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_111 .. :try_end_126} :catch_c7
    .catchall {:try_start_111 .. :try_end_126} :catchall_12c

    goto :goto_b4

    .line 163
    :catch_127
    move-exception v0

    .line 164
    :try_start_128
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_12b
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_128 .. :try_end_12b} :catch_c7
    .catch Ljava/lang/Throwable; {:try_start_128 .. :try_end_12b} :catch_f6
    .catchall {:try_start_128 .. :try_end_12b} :catchall_12c

    goto :goto_b4

    .line 271
    :catchall_12c
    move-exception v0

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/b;->d()V

    throw v0

    .line 163
    :catch_131
    move-exception v1

    .line 164
    :try_start_132
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f5

    .line 172
    :cond_136
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->h:Lcom/ss/android/socialbase/downloader/i/e;

    if-nez v0, :cond_149

    .line 173
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v1, 0x3fe

    new-instance v2, Ljava/io/IOException;

    const-string v3, "download can\'t continue, chunk connection is null"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 175
    :cond_149
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->l:Z
    :try_end_14b
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_132 .. :try_end_14b} :catch_c7
    .catch Ljava/lang/Throwable; {:try_start_132 .. :try_end_14b} :catch_f6
    .catchall {:try_start_132 .. :try_end_14b} :catchall_12c

    if-nez v0, :cond_179

    .line 177
    :try_start_14d
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->h:Lcom/ss/android/socialbase/downloader/i/e;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/i/e;->b()I

    move-result v0

    .line 179
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->b(I)Z

    move-result v1

    if-nez v1, :cond_179

    .line 180
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v6, 0x3ea

    const-string v7, "Http response error , code is : %s "

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v12, v13

    invoke-static {v7, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_171
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_14d .. :try_end_171} :catch_171
    .catch Ljava/lang/Throwable; {:try_start_14d .. :try_end_171} :catch_173
    .catchall {:try_start_14d .. :try_end_171} :catchall_12c

    .line 181
    :catch_171
    move-exception v0

    .line 182
    :try_start_172
    throw v0

    .line 183
    :catch_173
    move-exception v0

    .line 184
    const-string v1, "ChunkRunnableGetResponseCode"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/m/f;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 188
    :cond_179
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/d;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/b;->f:Lcom/ss/android/socialbase/downloader/g/c;

    iget-object v6, p0, Lcom/ss/android/socialbase/downloader/l/b;->h:Lcom/ss/android/socialbase/downloader/i/e;

    iget-object v7, p0, Lcom/ss/android/socialbase/downloader/l/b;->g:Lcom/ss/android/socialbase/downloader/l/e;

    invoke-direct {v0, v1, v6, p1, v7}, Lcom/ss/android/socialbase/downloader/downloader/d;-><init>(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/i/e;Lcom/ss/android/socialbase/downloader/g/b;Lcom/ss/android/socialbase/downloader/l/e;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->d:Lcom/ss/android/socialbase/downloader/downloader/d;

    .line 190
    if-eqz v9, :cond_1aa

    .line 191
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/ss/android/socialbase/downloader/g/b;->c(Z)J

    move-result-wide v6

    .line 192
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_19d

    cmp-long v0, v4, v2

    if-ltz v0, :cond_19d

    .line 193
    sub-long v0, v4, v2

    const-wide/16 v2, 0x1

    add-long v6, v0, v2

    .line 194
    :cond_19d
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/b;->d:Lcom/ss/android/socialbase/downloader/downloader/d;

    invoke-virtual {v9}, Lcom/ss/android/socialbase/downloader/g/b;->n()J

    move-result-wide v2

    invoke-virtual {v9}, Lcom/ss/android/socialbase/downloader/g/b;->p()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v7}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(JJJ)V
    :try_end_1aa
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_172 .. :try_end_1aa} :catch_c7
    .catch Ljava/lang/Throwable; {:try_start_172 .. :try_end_1aa} :catch_f6
    .catchall {:try_start_172 .. :try_end_1aa} :catchall_12c

    .line 196
    :cond_1aa
    const/4 v1, 0x1

    .line 198
    :try_start_1ab
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->d:Lcom/ss/android/socialbase/downloader/downloader/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->d()V
    :try_end_1b0
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_1ab .. :try_end_1b0} :catch_2a1
    .catch Ljava/lang/Throwable; {:try_start_1ab .. :try_end_1b0} :catch_f6
    .catchall {:try_start_1ab .. :try_end_1b0} :catchall_12c

    .line 271
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/b;->d()V

    .line 274
    const/4 v0, 0x1

    goto/16 :goto_28

    .line 208
    :cond_1b6
    :try_start_1b6
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->b(Lcom/ss/android/socialbase/downloader/e/a;)Z

    move-result v2

    if-eqz v2, :cond_1c8

    .line 210
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/b;->g:Lcom/ss/android/socialbase/downloader/l/e;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/ss/android/socialbase/downloader/l/e;->a(Lcom/ss/android/socialbase/downloader/e/a;Z)V
    :try_end_1c2
    .catchall {:try_start_1b6 .. :try_end_1c2} :catchall_12c

    .line 211
    const/4 v0, 0x0

    .line 271
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/b;->d()V

    goto/16 :goto_28

    .line 212
    :cond_1c8
    :try_start_1c8
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/b;->g:Lcom/ss/android/socialbase/downloader/l/e;

    invoke-interface {v2, v0}, Lcom/ss/android/socialbase/downloader/l/e;->a(Lcom/ss/android/socialbase/downloader/e/a;)Z

    move-result v2

    if-eqz v2, :cond_258

    .line 214
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->a(Lcom/ss/android/socialbase/downloader/e/a;)Z

    move-result v2

    if-eqz v2, :cond_1e2

    .line 215
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/b;->g:Lcom/ss/android/socialbase/downloader/l/e;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/ss/android/socialbase/downloader/l/e;->a(Lcom/ss/android/socialbase/downloader/e/a;Z)V
    :try_end_1dc
    .catchall {:try_start_1c8 .. :try_end_1dc} :catchall_12c

    .line 216
    const/4 v0, 0x0

    .line 271
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/b;->d()V

    goto/16 :goto_28

    .line 218
    :cond_1e2
    const-wide/16 v2, 0x0

    .line 219
    if-eqz v1, :cond_20e

    .line 220
    :try_start_1e6
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/b;->d:Lcom/ss/android/socialbase/downloader/downloader/d;

    if-eqz v1, :cond_23a

    .line 221
    const/16 v1, 0x20

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_22f

    .line 222
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/b;->d:Lcom/ss/android/socialbase/downloader/downloader/d;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()J

    move-result-wide v2

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/b;->d:Lcom/ss/android/socialbase/downloader/downloader/d;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/downloader/d;->e()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 223
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_226

    .line 224
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/b;->d:Lcom/ss/android/socialbase/downloader/downloader/d;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/downloader/d;->e()J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5}, Lcom/ss/android/socialbase/downloader/l/b;->a(Lcom/ss/android/socialbase/downloader/g/b;J)V

    .line 238
    :cond_20e
    :goto_20e
    const/16 v1, 0x10

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_245

    .line 239
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/b;->g:Lcom/ss/android/socialbase/downloader/l/e;

    invoke-interface {v1, p1, v0, v2, v3}, Lcom/ss/android/socialbase/downloader/l/e;->a(Lcom/ss/android/socialbase/downloader/g/b;Lcom/ss/android/socialbase/downloader/e/a;J)Lcom/ss/android/socialbase/downloader/e/g;

    move-result-object v0

    .line 243
    :goto_21c
    sget-object v1, Lcom/ss/android/socialbase/downloader/e/g;->a:Lcom/ss/android/socialbase/downloader/e/g;
    :try_end_21e
    .catchall {:try_start_1e6 .. :try_end_21e} :catchall_12c

    if-ne v0, v1, :cond_24c

    .line 244
    const/4 v0, 0x0

    .line 271
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/b;->d()V

    goto/16 :goto_28

    .line 225
    :cond_226
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_20e

    .line 226
    const-wide/16 v2, 0x0

    goto :goto_20e

    .line 229
    :cond_22f
    :try_start_22f
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/b;->d:Lcom/ss/android/socialbase/downloader/downloader/d;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()J

    move-result-wide v2

    sub-long/2addr v2, v10

    .line 230
    invoke-direct {p0, p1, v10, v11}, Lcom/ss/android/socialbase/downloader/l/b;->a(Lcom/ss/android/socialbase/downloader/g/b;J)V

    goto :goto_20e

    .line 233
    :cond_23a
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/b;->g:Lcom/ss/android/socialbase/downloader/l/e;

    invoke-interface {v1, v0}, Lcom/ss/android/socialbase/downloader/l/e;->b(Lcom/ss/android/socialbase/downloader/e/a;)V
    :try_end_23f
    .catchall {:try_start_22f .. :try_end_23f} :catchall_12c

    .line 234
    const/4 v0, 0x0

    .line 271
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/b;->d()V

    goto/16 :goto_28

    .line 241
    :cond_245
    :try_start_245
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/b;->g:Lcom/ss/android/socialbase/downloader/l/e;

    invoke-interface {v1, v0, v2, v3}, Lcom/ss/android/socialbase/downloader/l/e;->a(Lcom/ss/android/socialbase/downloader/e/a;J)Lcom/ss/android/socialbase/downloader/e/g;

    move-result-object v0

    goto :goto_21c

    .line 246
    :cond_24c
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/g/b;->b(Z)V

    .line 247
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/b;->d()V
    :try_end_253
    .catchall {:try_start_245 .. :try_end_253} :catchall_12c

    .line 271
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/b;->d()V

    goto/16 :goto_0

    .line 250
    :cond_258
    :try_start_258
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/b;->f:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->ao()Z

    move-result v1

    if-eqz v1, :cond_284

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/b;->f:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->ap()Z

    move-result v1

    if-nez v1, :cond_284

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/b;->f:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->aV()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_284

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/b;->f:Lcom/ss/android/socialbase/downloader/g/c;

    .line 251
    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/m/f;->a(Lcom/ss/android/socialbase/downloader/e/a;Lcom/ss/android/socialbase/downloader/g/c;)Z

    move-result v1

    if-eqz v1, :cond_284

    .line 253
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/b;->g:Lcom/ss/android/socialbase/downloader/l/e;

    invoke-interface {v1, v0}, Lcom/ss/android/socialbase/downloader/l/e;->c(Lcom/ss/android/socialbase/downloader/e/a;)V
    :try_end_27e
    .catchall {:try_start_258 .. :try_end_27e} :catchall_12c

    .line 254
    const/4 v0, 0x0

    .line 271
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/b;->d()V

    goto/16 :goto_28

    .line 257
    :cond_284
    :try_start_284
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/b;->g:Lcom/ss/android/socialbase/downloader/l/e;

    invoke-interface {v1, v0}, Lcom/ss/android/socialbase/downloader/l/e;->b(Lcom/ss/android/socialbase/downloader/e/a;)V
    :try_end_289
    .catchall {:try_start_284 .. :try_end_289} :catchall_12c

    .line 258
    const/4 v0, 0x0

    .line 271
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/b;->d()V

    goto/16 :goto_28

    .line 265
    :cond_28f
    :try_start_28f
    const-string v1, "downloadChunkInner"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/m/f;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_294
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_28f .. :try_end_294} :catch_29a
    .catchall {:try_start_28f .. :try_end_294} :catchall_12c

    .line 269
    :goto_294
    const/4 v0, 0x0

    .line 271
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/b;->d()V

    goto/16 :goto_28

    .line 266
    :catch_29a
    move-exception v0

    .line 267
    :try_start_29b
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/b;->g:Lcom/ss/android/socialbase/downloader/l/e;

    invoke-interface {v1, v0}, Lcom/ss/android/socialbase/downloader/l/e;->b(Lcom/ss/android/socialbase/downloader/e/a;)V
    :try_end_2a0
    .catchall {:try_start_29b .. :try_end_2a0} :catchall_12c

    goto :goto_294

    .line 202
    :catch_2a1
    move-exception v0

    goto/16 :goto_c9

    :cond_2a4
    move-wide v10, v0

    goto/16 :goto_44

    :cond_2a7
    move-object v9, v1

    goto/16 :goto_1f
.end method

.method private c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->f:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->I()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->h:Lcom/ss/android/socialbase/downloader/i/e;

    if-eqz v0, :cond_c

    .line 301
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->h:Lcom/ss/android/socialbase/downloader/i/e;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/i/e;->d()V

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->h:Lcom/ss/android/socialbase/downloader/i/e;

    .line 304
    :cond_c
    return-void
.end method

.method private e()Z
    .registers 2

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->j:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->k:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->j:Z

    .line 312
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->d:Lcom/ss/android/socialbase/downloader/downloader/d;

    if-eqz v0, :cond_c

    .line 313
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->d:Lcom/ss/android/socialbase/downloader/downloader/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->b()V

    .line 314
    :cond_c
    return-void
.end method

.method public a(JJ)V
    .registers 6

    .prologue
    .line 106
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->d:Lcom/ss/android/socialbase/downloader/downloader/d;

    if-nez v0, :cond_5

    .line 109
    :goto_4
    return-void

    .line 108
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->d:Lcom/ss/android/socialbase/downloader/downloader/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(JJ)V

    goto :goto_4
.end method

.method public b()V
    .registers 2

    .prologue
    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->k:Z

    .line 318
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->d:Lcom/ss/android/socialbase/downloader/downloader/d;

    if-eqz v0, :cond_c

    .line 319
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->d:Lcom/ss/android/socialbase/downloader/downloader/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->c()V

    .line 320
    :cond_c
    return-void
.end method

.method public run()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 70
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 72
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->c:Lcom/ss/android/socialbase/downloader/g/b;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->b:Lcom/ss/android/socialbase/downloader/g/b;

    .line 75
    :goto_a
    :try_start_a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->b:Lcom/ss/android/socialbase/downloader/g/b;

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/g/b;->a(Lcom/ss/android/socialbase/downloader/l/b;)V

    .line 76
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->b:Lcom/ss/android/socialbase/downloader/g/b;

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/l/b;->a(Lcom/ss/android/socialbase/downloader/g/b;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 77
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->b:Lcom/ss/android/socialbase/downloader/g/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/b;->a(Z)V
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_5e

    .line 98
    :cond_1d
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->b:Lcom/ss/android/socialbase/downloader/g/b;

    if-eqz v0, :cond_26

    .line 99
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->b:Lcom/ss/android/socialbase/downloader/g/b;

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/g/b;->a(Z)V

    .line 100
    :cond_26
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/b;->d()V

    .line 101
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->g:Lcom/ss/android/socialbase/downloader/l/e;

    invoke-interface {v0, p0}, Lcom/ss/android/socialbase/downloader/l/e;->a(Lcom/ss/android/socialbase/downloader/l/b;)V

    .line 103
    return-void

    .line 80
    :cond_2f
    :try_start_2f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->b:Lcom/ss/android/socialbase/downloader/g/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/b;->a(Z)V

    .line 82
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/b;->e()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 85
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->g:Lcom/ss/android/socialbase/downloader/l/e;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/b;->b:Lcom/ss/android/socialbase/downloader/g/b;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/b;->s()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/l/e;->a(I)Lcom/ss/android/socialbase/downloader/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->b:Lcom/ss/android/socialbase/downloader/g/b;

    .line 87
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/b;->e()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/b;->b:Lcom/ss/android/socialbase/downloader/g/b;
    :try_end_51
    .catchall {:try_start_2f .. :try_end_51} :catchall_5e

    if-eqz v0, :cond_1d

    .line 91
    const-wide/16 v0, 0x32

    :try_start_55
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_58} :catch_59
    .catchall {:try_start_55 .. :try_end_58} :catchall_5e

    goto :goto_a

    .line 92
    :catch_59
    move-exception v0

    .line 93
    :try_start_5a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    goto :goto_a

    .line 98
    :catchall_5e
    move-exception v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/b;->b:Lcom/ss/android/socialbase/downloader/g/b;

    if-eqz v1, :cond_68

    .line 99
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/b;->b:Lcom/ss/android/socialbase/downloader/g/b;

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/g/b;->a(Z)V

    .line 100
    :cond_68
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/b;->d()V

    .line 101
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/b;->g:Lcom/ss/android/socialbase/downloader/l/e;

    invoke-interface {v1, p0}, Lcom/ss/android/socialbase/downloader/l/e;->a(Lcom/ss/android/socialbase/downloader/l/b;)V

    throw v0
.end method
