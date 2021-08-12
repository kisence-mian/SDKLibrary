.class public Lcom/ss/android/socialbase/downloader/h/b;
.super Ljava/lang/Object;
.source "DownloadChunkRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/ss/android/socialbase/downloader/model/b;

.field private c:Lcom/ss/android/socialbase/downloader/model/b;

.field private d:Lcom/ss/android/socialbase/downloader/downloader/d;

.field private final e:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

.field private f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field private final g:Lcom/ss/android/socialbase/downloader/h/f;

.field private h:Lcom/ss/android/socialbase/downloader/network/i;

.field private i:Lcom/ss/android/socialbase/downloader/downloader/i;

.field private volatile j:Z

.field private volatile k:Z

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-class v0, Lcom/ss/android/socialbase/downloader/h/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/h/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/socialbase/downloader/model/b;Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/h/f;)V
    .registers 5

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/h/b;->l:Z

    .line 45
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/h/b;->c:Lcom/ss/android/socialbase/downloader/model/b;

    .line 46
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/h/b;->e:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 47
    if-eqz p2, :cond_12

    .line 48
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/h/b;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 49
    :cond_12
    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/h/b;->g:Lcom/ss/android/socialbase/downloader/h/f;

    .line 50
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->x()Lcom/ss/android/socialbase/downloader/downloader/i;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/h/b;->i:Lcom/ss/android/socialbase/downloader/downloader/i;

    .line 51
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/h/b;->c:Lcom/ss/android/socialbase/downloader/model/b;

    invoke-virtual {p1, p0}, Lcom/ss/android/socialbase/downloader/model/b;->a(Lcom/ss/android/socialbase/downloader/h/b;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/ss/android/socialbase/downloader/model/b;Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/network/i;Lcom/ss/android/socialbase/downloader/h/f;)V
    .registers 5

    .line 55
    invoke-direct {p0, p1, p2, p4}, Lcom/ss/android/socialbase/downloader/h/b;-><init>(Lcom/ss/android/socialbase/downloader/model/b;Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/h/f;)V

    .line 56
    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/h/b;->h:Lcom/ss/android/socialbase/downloader/network/i;

    .line 57
    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/b;J)V
    .registers 13

    .line 281
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/b;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 282
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/b;->e()Lcom/ss/android/socialbase/downloader/model/b;

    move-result-object v0

    goto :goto_c

    .line 284
    :cond_b
    move-object v0, p1

    .line 287
    :goto_c
    if-eqz v0, :cond_37

    .line 288
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/b;->h()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 289
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/h/b;->i:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/b;->k()I

    move-result v1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/b;->b()I

    move-result v2

    invoke-interface {p1, v1, v2, p2, p3}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(IIJ)V

    .line 291
    :cond_21
    invoke-virtual {v0, p2, p3}, Lcom/ss/android/socialbase/downloader/model/b;->b(J)V

    .line 292
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/h/b;->i:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/b;->k()I

    move-result v4

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/b;->s()I

    move-result v5

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/b;->b()I

    move-result v6

    move-wide v7, p2

    invoke-interface/range {v3 .. v8}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(IIIJ)V

    goto :goto_4a

    .line 294
    :cond_37
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/b;->d()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 295
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/b;->i:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/b;->k()I

    move-result v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/b;->s()I

    move-result p1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(IIJ)V

    .line 298
    :cond_4a
    :goto_4a
    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/b;)Z
    .registers 32

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    .line 117
    :goto_4
    nop

    .line 119
    const/4 v0, 0x0

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/model/b;->d()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/model/b;->f()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/model/b;->e()Lcom/ss/android/socialbase/downloader/model/b;

    move-result-object v2

    .line 122
    if-eqz v2, :cond_24

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/b;->s()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/model/b;->s()I

    move-result v4

    if-ne v3, v4, :cond_24

    .line 123
    move-object v9, v2

    goto :goto_25

    .line 126
    :cond_24
    move-object v9, v0

    :goto_25
    const/4 v10, 0x1

    if-eqz v9, :cond_2f

    invoke-virtual {v9}, Lcom/ss/android/socialbase/downloader/model/b;->i()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 127
    return v10

    .line 130
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/model/b;->n()J

    move-result-wide v2

    .line 131
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/model/b;->p()J

    move-result-wide v4

    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/model/b;->n()J

    move-result-wide v6

    .line 133
    if-eqz v9, :cond_4e

    .line 134
    invoke-virtual {v9}, Lcom/ss/android/socialbase/downloader/model/b;->n()J

    move-result-wide v6

    .line 135
    invoke-virtual {v9}, Lcom/ss/android/socialbase/downloader/model/b;->n()J

    move-result-wide v2

    .line 136
    invoke-virtual {v9}, Lcom/ss/android/socialbase/downloader/model/b;->p()J

    move-result-wide v4

    move-wide/from16 v17, v2

    move-wide/from16 v19, v4

    goto :goto_52

    .line 133
    :cond_4e
    move-wide/from16 v17, v2

    move-wide/from16 v19, v4

    .line 139
    :goto_52
    const-wide/16 v21, 0x0

    const/4 v5, 0x0

    :try_start_55
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/b;->e()Z

    move-result v0
    :try_end_59
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_55 .. :try_end_59} :catch_1d4
    .catchall {:try_start_55 .. :try_end_59} :catchall_1b6

    if-eqz v0, :cond_60

    .line 140
    nop

    .line 273
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/b;->d()V

    .line 140
    return v5

    .line 142
    :cond_60
    :try_start_60
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/b;->c()Ljava/lang/String;

    move-result-object v4

    .line 144
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/b;->h:Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v0, :cond_6a

    move v0, v10

    goto :goto_6b

    :cond_6a
    move v0, v5

    :goto_6b
    iput-boolean v0, v1, Lcom/ss/android/socialbase/downloader/h/b;->l:Z

    .line 145
    invoke-virtual {v8, v0}, Lcom/ss/android/socialbase/downloader/model/b;->b(Z)V
    :try_end_70
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_60 .. :try_end_70} :catch_1d4
    .catchall {:try_start_60 .. :try_end_70} :catchall_1b6

    .line 147
    const/16 v2, 0x12c

    const/16 v3, 0xc8

    :try_start_74
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/h/b;->l:Z

    if-nez v0, :cond_b5

    .line 148
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/b;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExtraHeaders()Ljava/util/List;

    move-result-object v11

    .line 149
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/b;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->geteTag()Ljava/lang/String;

    move-result-object v12

    move-wide/from16 v13, v17

    move-wide/from16 v15, v19

    invoke-static/range {v11 .. v16}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    .line 150
    new-instance v11, Lcom/ss/android/socialbase/downloader/model/c;

    const-string v12, "Chunk-Index"

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/model/b;->s()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/ss/android/socialbase/downloader/model/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v11, v1, Lcom/ss/android/socialbase/downloader/h/b;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v0, v11}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/util/List;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 152
    iget-object v11, v1, Lcom/ss/android/socialbase/downloader/h/b;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v11}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedDefaultHttpServiceBackUp()Z

    move-result v11

    iget-object v12, v1, Lcom/ss/android/socialbase/downloader/h/b;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v12}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMaxBytes()I

    move-result v12

    invoke-static {v11, v12, v4, v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(ZILjava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/i;

    move-result-object v0

    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/h/b;->h:Lcom/ss/android/socialbase/downloader/network/i;
    :try_end_b5
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_74 .. :try_end_b5} :catch_18e
    .catchall {:try_start_74 .. :try_end_b5} :catchall_d2

    .line 159
    :cond_b5
    :try_start_b5
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/b;->h:Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v0, :cond_f2

    iget-object v11, v1, Lcom/ss/android/socialbase/downloader/h/b;->g:Lcom/ss/android/socialbase/downloader/h/f;
    :try_end_bb
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_b5 .. :try_end_bb} :catch_1d4
    .catchall {:try_start_b5 .. :try_end_bb} :catchall_1b6

    if-eqz v11, :cond_f2

    .line 161
    :try_start_bd
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/i;->b()I

    move-result v0

    .line 162
    if-lt v0, v3, :cond_c5

    if-lt v0, v2, :cond_d1

    .line 163
    :cond_c5
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/b;->g:Lcom/ss/android/socialbase/downloader/h/f;

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/h/b;->h:Lcom/ss/android/socialbase/downloader/network/i;

    invoke-interface {v0, v2}, Lcom/ss/android/socialbase/downloader/h/f;->a(Lcom/ss/android/socialbase/downloader/network/g;)V
    :try_end_cc
    .catchall {:try_start_bd .. :try_end_cc} :catchall_cd

    goto :goto_d1

    .line 165
    :catchall_cd
    move-exception v0

    .line 166
    :goto_ce
    :try_start_ce
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d1
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_ce .. :try_end_d1} :catch_1d4
    .catchall {:try_start_ce .. :try_end_d1} :catchall_1b6

    .line 167
    :cond_d1
    :goto_d1
    goto :goto_f2

    .line 156
    :catchall_d2
    move-exception v0

    .line 157
    :try_start_d3
    const-string v11, "ChunkRunnableConnection"

    invoke-static {v0, v11}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_d8
    .catchall {:try_start_d3 .. :try_end_d8} :catchall_18a

    .line 159
    :try_start_d8
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/b;->h:Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v0, :cond_f2

    iget-object v11, v1, Lcom/ss/android/socialbase/downloader/h/b;->g:Lcom/ss/android/socialbase/downloader/h/f;
    :try_end_de
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_d8 .. :try_end_de} :catch_1d4
    .catchall {:try_start_d8 .. :try_end_de} :catchall_1b6

    if-eqz v11, :cond_f2

    .line 161
    :try_start_e0
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/i;->b()I

    move-result v0

    .line 162
    if-lt v0, v3, :cond_e8

    if-lt v0, v2, :cond_d1

    .line 163
    :cond_e8
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/b;->g:Lcom/ss/android/socialbase/downloader/h/f;

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/h/b;->h:Lcom/ss/android/socialbase/downloader/network/i;

    invoke-interface {v0, v2}, Lcom/ss/android/socialbase/downloader/h/f;->a(Lcom/ss/android/socialbase/downloader/network/g;)V
    :try_end_ef
    .catchall {:try_start_e0 .. :try_end_ef} :catchall_f0

    goto :goto_d1

    .line 165
    :catchall_f0
    move-exception v0

    goto :goto_ce

    .line 171
    :cond_f2
    :goto_f2
    :try_start_f2
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/b;->e()Z

    move-result v0
    :try_end_f6
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_f2 .. :try_end_f6} :catch_1d4
    .catchall {:try_start_f2 .. :try_end_f6} :catchall_1b6

    if-eqz v0, :cond_fd

    .line 172
    nop

    .line 273
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/b;->d()V

    .line 172
    return v5

    .line 174
    :cond_fd
    :try_start_fd
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/b;->h:Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v0, :cond_179

    .line 177
    iget-boolean v2, v1, Lcom/ss/android/socialbase/downloader/h/b;->l:Z
    :try_end_103
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_fd .. :try_end_103} :catch_1d4
    .catchall {:try_start_fd .. :try_end_103} :catchall_1b6

    if-nez v2, :cond_12f

    .line 179
    :try_start_105
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/i;->b()I

    move-result v0

    .line 181
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->d(I)Z

    move-result v2

    if-eqz v2, :cond_110

    .line 187
    goto :goto_12f

    .line 182
    :cond_110
    new-instance v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v3, 0x3ea

    const-string v11, "Http response error , code is : %s "

    new-array v12, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v12, v5

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_126
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_105 .. :try_end_126} :catch_12d
    .catchall {:try_start_105 .. :try_end_126} :catchall_126

    .line 185
    :catchall_126
    move-exception v0

    .line 186
    :try_start_127
    const-string v2, "ChunkRunnableGetResponseCode"

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_12f

    .line 183
    :catch_12d
    move-exception v0

    .line 184
    throw v0

    .line 190
    :cond_12f
    :goto_12f
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/d;

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/h/b;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v11, v1, Lcom/ss/android/socialbase/downloader/h/b;->h:Lcom/ss/android/socialbase/downloader/network/i;

    iget-object v12, v1, Lcom/ss/android/socialbase/downloader/h/b;->g:Lcom/ss/android/socialbase/downloader/h/f;
    :try_end_137
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_127 .. :try_end_137} :catch_1d4
    .catchall {:try_start_127 .. :try_end_137} :catchall_1b6

    move-object v2, v0

    move v13, v5

    move-object v5, v11

    move-wide v14, v6

    move-object/from16 v6, p1

    move-object v7, v12

    :try_start_13e
    invoke-direct/range {v2 .. v7}, Lcom/ss/android/socialbase/downloader/downloader/d;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/i;Lcom/ss/android/socialbase/downloader/model/b;Lcom/ss/android/socialbase/downloader/h/f;)V

    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/h/b;->d:Lcom/ss/android/socialbase/downloader/downloader/d;

    .line 192
    if-eqz v9, :cond_16b

    .line 193
    invoke-virtual {v9, v13}, Lcom/ss/android/socialbase/downloader/model/b;->c(Z)J

    move-result-wide v2

    .line 194
    cmp-long v0, v19, v21

    if-eqz v0, :cond_15a

    cmp-long v0, v19, v17

    if-ltz v0, :cond_15a

    .line 195
    sub-long v19, v19, v17

    const-wide/16 v2, 0x1

    add-long v2, v19, v2

    move-wide/from16 v28, v2

    goto :goto_15c

    .line 196
    :cond_15a
    move-wide/from16 v28, v2

    :goto_15c
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/b;->d:Lcom/ss/android/socialbase/downloader/downloader/d;

    invoke-virtual {v9}, Lcom/ss/android/socialbase/downloader/model/b;->n()J

    move-result-wide v24

    invoke-virtual {v9}, Lcom/ss/android/socialbase/downloader/model/b;->p()J

    move-result-wide v26

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v29}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(JJJ)V
    :try_end_16b
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_13e .. :try_end_16b} :catch_1b3
    .catchall {:try_start_13e .. :try_end_16b} :catchall_1b1

    .line 198
    :cond_16b
    nop

    .line 200
    :try_start_16c
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/b;->d:Lcom/ss/android/socialbase/downloader/downloader/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->d()V
    :try_end_171
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_16c .. :try_end_171} :catch_175
    .catchall {:try_start_16c .. :try_end_171} :catchall_1b1

    .line 273
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/b;->d()V

    .line 276
    return v10

    .line 204
    :catch_175
    move-exception v0

    move v5, v10

    goto/16 :goto_1d7

    .line 175
    :cond_179
    move v13, v5

    move-wide v14, v6

    :try_start_17b
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v2, 0x3fe

    new-instance v3, Ljava/io/IOException;

    const-string v4, "download can\'t continue, chunk connection is null"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_18a
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_17b .. :try_end_18a} :catch_1b3
    .catchall {:try_start_17b .. :try_end_18a} :catchall_1b1

    .line 159
    :catchall_18a
    move-exception v0

    move v13, v5

    move-wide v14, v6

    goto :goto_193

    .line 154
    :catch_18e
    move-exception v0

    move v13, v5

    move-wide v14, v6

    .line 155
    :try_start_191
    throw v0
    :try_end_192
    .catchall {:try_start_191 .. :try_end_192} :catchall_192

    .line 159
    :catchall_192
    move-exception v0

    :goto_193
    move-object v4, v0

    :try_start_194
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/b;->h:Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v0, :cond_1b0

    iget-object v5, v1, Lcom/ss/android/socialbase/downloader/h/b;->g:Lcom/ss/android/socialbase/downloader/h/f;
    :try_end_19a
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_194 .. :try_end_19a} :catch_1b3
    .catchall {:try_start_194 .. :try_end_19a} :catchall_1b1

    if-eqz v5, :cond_1b0

    .line 161
    :try_start_19c
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/i;->b()I

    move-result v0

    .line 162
    if-lt v0, v3, :cond_1a4

    if-lt v0, v2, :cond_1ab

    .line 163
    :cond_1a4
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/b;->g:Lcom/ss/android/socialbase/downloader/h/f;

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/h/b;->h:Lcom/ss/android/socialbase/downloader/network/i;

    invoke-interface {v0, v2}, Lcom/ss/android/socialbase/downloader/h/f;->a(Lcom/ss/android/socialbase/downloader/network/g;)V
    :try_end_1ab
    .catchall {:try_start_19c .. :try_end_1ab} :catchall_1ac

    .line 167
    :cond_1ab
    goto :goto_1b0

    .line 165
    :catchall_1ac
    move-exception v0

    .line 166
    :try_start_1ad
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 167
    :cond_1b0
    :goto_1b0
    throw v4
    :try_end_1b1
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_1ad .. :try_end_1b1} :catch_1b3
    .catchall {:try_start_1ad .. :try_end_1b1} :catchall_1b1

    .line 263
    :catchall_1b1
    move-exception v0

    goto :goto_1b8

    .line 204
    :catch_1b3
    move-exception v0

    move v5, v13

    goto :goto_1d7

    .line 263
    :catchall_1b6
    move-exception v0

    move v13, v5

    .line 264
    :goto_1b8
    :try_start_1b8
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/b;->e()Z

    move-result v2
    :try_end_1bc
    .catchall {:try_start_1b8 .. :try_end_1bc} :catchall_2b1

    if-eqz v2, :cond_1c3

    .line 265
    nop

    .line 273
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/b;->d()V

    .line 265
    return v10

    .line 267
    :cond_1c3
    :try_start_1c3
    const-string v2, "downloadChunkInner"

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1c8
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_1c3 .. :try_end_1c8} :catch_1c9
    .catchall {:try_start_1c3 .. :try_end_1c8} :catchall_2b1

    .line 270
    goto :goto_1cf

    .line 268
    :catch_1c9
    move-exception v0

    .line 269
    :try_start_1ca
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/h/b;->g:Lcom/ss/android/socialbase/downloader/h/f;

    invoke-interface {v2, v0}, Lcom/ss/android/socialbase/downloader/h/f;->b(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    :try_end_1cf
    .catchall {:try_start_1ca .. :try_end_1cf} :catchall_2b1

    .line 271
    :goto_1cf
    nop

    .line 273
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/b;->d()V

    .line 271
    return v13

    .line 204
    :catch_1d4
    move-exception v0

    move v13, v5

    move-wide v14, v6

    .line 206
    :goto_1d7
    :try_start_1d7
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/b;->e()Z

    move-result v2
    :try_end_1db
    .catchall {:try_start_1d7 .. :try_end_1db} :catchall_2b1

    if-eqz v2, :cond_1e2

    .line 208
    nop

    .line 273
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/b;->d()V

    .line 208
    return v10

    .line 210
    :cond_1e2
    :try_start_1e2
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->b(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z

    move-result v2

    if-eqz v2, :cond_1f2

    .line 212
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/h/b;->g:Lcom/ss/android/socialbase/downloader/h/f;

    invoke-interface {v2, v0, v13}, Lcom/ss/android/socialbase/downloader/h/f;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V
    :try_end_1ed
    .catchall {:try_start_1e2 .. :try_end_1ed} :catchall_2b1

    .line 213
    nop

    .line 273
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/b;->d()V

    .line 213
    return v13

    .line 214
    :cond_1f2
    :try_start_1f2
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/h/b;->g:Lcom/ss/android/socialbase/downloader/h/f;

    invoke-interface {v2, v0}, Lcom/ss/android/socialbase/downloader/h/f;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z

    move-result v2

    if-eqz v2, :cond_27d

    .line 216
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z

    move-result v2

    if-eqz v2, :cond_20a

    .line 217
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/h/b;->g:Lcom/ss/android/socialbase/downloader/h/f;

    invoke-interface {v2, v0, v10}, Lcom/ss/android/socialbase/downloader/h/f;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V
    :try_end_205
    .catchall {:try_start_1f2 .. :try_end_205} :catchall_2b1

    .line 218
    nop

    .line 273
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/b;->d()V

    .line 218
    return v13

    .line 220
    :cond_20a
    nop

    .line 221
    if-eqz v5, :cond_251

    .line 222
    :try_start_20d
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/h/b;->d:Lcom/ss/android/socialbase/downloader/downloader/d;

    if-eqz v2, :cond_247

    .line 223
    const/16 v2, 0x20

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_239

    .line 224
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/h/b;->d:Lcom/ss/android/socialbase/downloader/downloader/d;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()J

    move-result-wide v2

    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/h/b;->d:Lcom/ss/android/socialbase/downloader/downloader/d;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/downloader/d;->e()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 225
    cmp-long v4, v2, v21

    if-lez v4, :cond_234

    .line 226
    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/h/b;->d:Lcom/ss/android/socialbase/downloader/downloader/d;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/downloader/d;->e()J

    move-result-wide v4

    invoke-direct {v1, v8, v4, v5}, Lcom/ss/android/socialbase/downloader/h/b;->a(Lcom/ss/android/socialbase/downloader/model/b;J)V

    goto :goto_253

    .line 227
    :cond_234
    if-gez v4, :cond_253

    .line 228
    move-wide/from16 v2, v21

    goto :goto_253

    .line 231
    :cond_239
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/h/b;->d:Lcom/ss/android/socialbase/downloader/downloader/d;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()J

    move-result-wide v2

    sub-long v21, v2, v14

    .line 232
    invoke-direct {v1, v8, v14, v15}, Lcom/ss/android/socialbase/downloader/h/b;->a(Lcom/ss/android/socialbase/downloader/model/b;J)V

    move-wide/from16 v2, v21

    goto :goto_253

    .line 235
    :cond_247
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/h/b;->g:Lcom/ss/android/socialbase/downloader/h/f;

    invoke-interface {v2, v0}, Lcom/ss/android/socialbase/downloader/h/f;->b(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    :try_end_24c
    .catchall {:try_start_20d .. :try_end_24c} :catchall_2b1

    .line 236
    nop

    .line 273
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/b;->d()V

    .line 236
    return v13

    .line 221
    :cond_251
    move-wide/from16 v2, v21

    .line 239
    :cond_253
    :goto_253
    nop

    .line 240
    const/16 v4, 0x10

    :try_start_256
    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_263

    .line 241
    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/h/b;->g:Lcom/ss/android/socialbase/downloader/h/f;

    invoke-interface {v4, v8, v0, v2, v3}, Lcom/ss/android/socialbase/downloader/h/f;->a(Lcom/ss/android/socialbase/downloader/model/b;Lcom/ss/android/socialbase/downloader/exception/BaseException;J)Lcom/ss/android/socialbase/downloader/exception/g;

    move-result-object v0

    goto :goto_269

    .line 243
    :cond_263
    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/h/b;->g:Lcom/ss/android/socialbase/downloader/h/f;

    invoke-interface {v4, v0, v2, v3}, Lcom/ss/android/socialbase/downloader/h/f;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;J)Lcom/ss/android/socialbase/downloader/exception/g;

    move-result-object v0

    .line 245
    :goto_269
    sget-object v2, Lcom/ss/android/socialbase/downloader/exception/g;->a:Lcom/ss/android/socialbase/downloader/exception/g;
    :try_end_26b
    .catchall {:try_start_256 .. :try_end_26b} :catchall_2b1

    if-ne v0, v2, :cond_272

    .line 246
    nop

    .line 273
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/b;->d()V

    .line 246
    return v13

    .line 248
    :cond_272
    :try_start_272
    invoke-virtual {v8, v13}, Lcom/ss/android/socialbase/downloader/model/b;->b(Z)V

    .line 249
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/b;->d()V
    :try_end_278
    .catchall {:try_start_272 .. :try_end_278} :catchall_2b1

    .line 273
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/b;->d()V

    goto/16 :goto_4

    .line 252
    :cond_27d
    :try_start_27d
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/h/b;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedChunkDowngradeRetry()Z

    move-result v2

    if-eqz v2, :cond_2a7

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/h/b;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isChunkDowngradeRetryUsed()Z

    move-result v2

    if-nez v2, :cond_2a7

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/h/b;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result v2

    if-le v2, v10, :cond_2a7

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/h/b;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 253
    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/i/e;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v2

    if-eqz v2, :cond_2a7

    .line 255
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/h/b;->g:Lcom/ss/android/socialbase/downloader/h/f;

    invoke-interface {v2, v0}, Lcom/ss/android/socialbase/downloader/h/f;->c(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    :try_end_2a2
    .catchall {:try_start_27d .. :try_end_2a2} :catchall_2b1

    .line 256
    nop

    .line 273
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/b;->d()V

    .line 256
    return v13

    .line 259
    :cond_2a7
    :try_start_2a7
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/h/b;->g:Lcom/ss/android/socialbase/downloader/h/f;

    invoke-interface {v2, v0}, Lcom/ss/android/socialbase/downloader/h/f;->b(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    :try_end_2ac
    .catchall {:try_start_2a7 .. :try_end_2ac} :catchall_2b1

    .line 260
    nop

    .line 273
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/b;->d()V

    .line 260
    return v13

    .line 273
    :catchall_2b1
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/b;->d()V

    throw v0
.end method

.method private c()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/b;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getConnectionUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .registers 2

    .line 302
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/b;->h:Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v0, :cond_a

    .line 303
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/i;->d()V

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/b;->h:Lcom/ss/android/socialbase/downloader/network/i;

    .line 306
    :cond_a
    return-void
.end method

.method private e()Z
    .registers 2

    .line 309
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/h/b;->j:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/h/b;->k:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/h/b;->j:Z

    .line 314
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/b;->d:Lcom/ss/android/socialbase/downloader/downloader/d;

    if-eqz v0, :cond_a

    .line 315
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->b()V

    .line 316
    :cond_a
    return-void
.end method

.method public a(JJ)V
    .registers 6

    .line 107
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/b;->d:Lcom/ss/android/socialbase/downloader/downloader/d;

    if-nez v0, :cond_5

    .line 108
    return-void

    .line 109
    :cond_5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(JJ)V

    .line 110
    return-void
.end method

.method public b()V
    .registers 2

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/h/b;->k:Z

    .line 320
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/b;->d:Lcom/ss/android/socialbase/downloader/downloader/d;

    if-eqz v0, :cond_a

    .line 321
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->c()V

    .line 322
    :cond_a
    return-void
.end method

.method public run()V
    .registers 4

    .line 71
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 73
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/b;->c:Lcom/ss/android/socialbase/downloader/model/b;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/b;->b:Lcom/ss/android/socialbase/downloader/model/b;

    .line 76
    :goto_9
    const/4 v0, 0x0

    :try_start_a
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/b;->b:Lcom/ss/android/socialbase/downloader/model/b;

    invoke-virtual {v1, p0}, Lcom/ss/android/socialbase/downloader/model/b;->a(Lcom/ss/android/socialbase/downloader/h/b;)V

    .line 77
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/b;->b:Lcom/ss/android/socialbase/downloader/model/b;

    invoke-direct {p0, v1}, Lcom/ss/android/socialbase/downloader/h/b;->a(Lcom/ss/android/socialbase/downloader/model/b;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 78
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/b;->b:Lcom/ss/android/socialbase/downloader/model/b;

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/model/b;->a(Z)V

    .line 79
    goto :goto_4d

    .line 81
    :cond_1d
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/b;->b:Lcom/ss/android/socialbase/downloader/model/b;

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/model/b;->a(Z)V

    .line 83
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/b;->e()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 84
    goto :goto_4d

    .line 86
    :cond_29
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/b;->g:Lcom/ss/android/socialbase/downloader/h/f;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/b;->b:Lcom/ss/android/socialbase/downloader/model/b;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/b;->s()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/ss/android/socialbase/downloader/h/f;->a(I)Lcom/ss/android/socialbase/downloader/model/b;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/h/b;->b:Lcom/ss/android/socialbase/downloader/model/b;

    .line 88
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/b;->e()Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/b;->b:Lcom/ss/android/socialbase/downloader/model/b;
    :try_end_3f
    .catchall {:try_start_a .. :try_end_3f} :catchall_5e

    if-nez v1, :cond_42

    .line 89
    goto :goto_4d

    .line 92
    :cond_42
    const-wide/16 v1, 0x32

    :try_start_44
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    .line 95
    goto :goto_9

    .line 93
    :catchall_48
    move-exception v1

    .line 94
    :try_start_49
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_5e

    .line 97
    goto :goto_9

    .line 99
    :cond_4d
    :goto_4d
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/b;->b:Lcom/ss/android/socialbase/downloader/model/b;

    if-eqz v1, :cond_54

    .line 100
    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/model/b;->a(Z)V

    .line 101
    :cond_54
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/b;->d()V

    .line 102
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/b;->g:Lcom/ss/android/socialbase/downloader/h/f;

    invoke-interface {v0, p0}, Lcom/ss/android/socialbase/downloader/h/f;->a(Lcom/ss/android/socialbase/downloader/h/b;)V

    .line 103
    nop

    .line 104
    return-void

    .line 99
    :catchall_5e
    move-exception v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/b;->b:Lcom/ss/android/socialbase/downloader/model/b;

    if-eqz v2, :cond_66

    .line 100
    invoke-virtual {v2, v0}, Lcom/ss/android/socialbase/downloader/model/b;->a(Z)V

    .line 101
    :cond_66
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/b;->d()V

    .line 102
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/b;->g:Lcom/ss/android/socialbase/downloader/h/f;

    invoke-interface {v0, p0}, Lcom/ss/android/socialbase/downloader/h/f;->a(Lcom/ss/android/socialbase/downloader/h/b;)V

    throw v1
.end method
