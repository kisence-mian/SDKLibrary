.class Lcom/ss/android/socialbase/downloader/b/e$1;
.super Ljava/lang/Object;
.source "SqlDownloadCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/b/e;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/b/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/util/SparseArray;

.field final synthetic b:Landroid/util/SparseArray;

.field final synthetic c:Lcom/ss/android/socialbase/downloader/b/d;

.field final synthetic d:Lcom/ss/android/socialbase/downloader/b/e;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/b/e;Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/b/d;)V
    .registers 5

    .line 104
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/b/e$1;->d:Lcom/ss/android/socialbase/downloader/b/e;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/b/e$1;->a:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/b/e$1;->b:Landroid/util/SparseArray;

    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/b/e$1;->c:Lcom/ss/android/socialbase/downloader/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    .line 108
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/b/e$1;->d:Lcom/ss/android/socialbase/downloader/b/e;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/b/e;->a(Lcom/ss/android/socialbase/downloader/b/e;)V

    .line 110
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/e;->f()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_e

    .line 111
    return-void

    .line 113
    :cond_e
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/b/e$1;->a:Landroid/util/SparseArray;

    .line 114
    if-nez v0, :cond_19

    .line 115
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v8, v0

    goto :goto_1a

    .line 114
    :cond_19
    move-object v8, v0

    .line 117
    :goto_1a
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/b/e$1;->b:Landroid/util/SparseArray;

    .line 118
    if-nez v0, :cond_25

    .line 119
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v9, v0

    goto :goto_26

    .line 118
    :cond_25
    move-object v9, v0

    .line 122
    :goto_26
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Lcom/ss/android/socialbase/downloader/downloader/j;

    move-result-object v0

    .line 124
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 125
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 126
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 127
    nop

    .line 130
    const/4 v2, 0x0

    const/16 v10, 0x2000

    const/4 v11, -0x3

    const/4 v12, 0x0

    const/4 v13, 0x1

    :try_start_40
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/e;->f()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "SELECT * FROM downloader"

    invoke-virtual {v6, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 131
    :goto_4a
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_123

    .line 132
    nop

    .line 133
    new-instance v6, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-direct {v6, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;-><init>(Landroid/database/Cursor;)V

    .line 135
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRealStatus()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatusAtDbInit(I)V

    .line 136
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isCanResumeFromBreakPointStatus()Z

    move-result v7

    const/4 v14, -0x5

    if-eqz v7, :cond_7a

    .line 137
    invoke-virtual {v6, v14}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 139
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v7

    const-string v15, "status_not_update_to_db"

    invoke-virtual {v7, v15, v13}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_7a

    .line 140
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v7

    invoke-virtual {v5, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    :cond_7a
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e2

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8f

    goto :goto_e2

    .line 148
    :cond_8f
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v7

    const/16 v15, 0xb

    if-ne v7, v13, :cond_a3

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v7, v16, v18

    if-gtz v7, :cond_a3

    .line 149
    move v7, v13

    goto :goto_b9

    .line 150
    :cond_a3
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v7

    if-eq v7, v11, :cond_b8

    .line 151
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v7

    if-eq v7, v15, :cond_b8

    .line 152
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isFileDataValid()Z

    move-result v7

    if-nez v7, :cond_b8

    .line 154
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->reset()V

    .line 156
    :cond_b8
    move v7, v12

    :goto_b9
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v11

    if-ne v11, v15, :cond_c2

    .line 157
    invoke-virtual {v6, v14}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 160
    :cond_c2
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v11

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v14, v15}, Lcom/ss/android/socialbase/downloader/i/e;->a(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e3

    .line 161
    const/high16 v11, 0x2000000

    invoke-static {v11}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result v11

    if-eqz v11, :cond_de

    .line 162
    move v7, v13

    goto :goto_e3

    .line 164
    :cond_de
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->erase()V

    goto :goto_e3

    .line 144
    :cond_e2
    :goto_e2
    move v7, v13

    .line 169
    :cond_e3
    :goto_e3
    if-eqz v7, :cond_f4

    .line 170
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_120

    .line 173
    :cond_f4
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v7

    .line 174
    nop

    .line 175
    if-eqz v0, :cond_108

    .line 176
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v11, v14}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    goto :goto_109

    .line 175
    :cond_108
    move v11, v12

    .line 177
    :goto_109
    if-eq v11, v7, :cond_111

    .line 178
    invoke-virtual {v6, v11}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setId(I)V

    .line 179
    invoke-virtual {v5, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 182
    :cond_111
    if-eqz v8, :cond_120

    .line 183
    monitor-enter v8
    :try_end_114
    .catchall {:try_start_40 .. :try_end_114} :catchall_1e0

    .line 184
    :try_start_114
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v7

    invoke-virtual {v8, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 185
    monitor-exit v8

    goto :goto_120

    :catchall_11d
    move-exception v0

    monitor-exit v8
    :try_end_11f
    .catchall {:try_start_114 .. :try_end_11f} :catchall_11d

    :try_start_11f
    throw v0
    :try_end_120
    .catchall {:try_start_11f .. :try_end_120} :catchall_1e0

    .line 187
    :cond_120
    :goto_120
    const/4 v11, -0x3

    goto/16 :goto_4a

    .line 192
    :cond_123
    new-array v0, v13, [Ljava/io/Closeable;

    aput-object v2, v0, v12

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    .line 195
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/b/e$1;->d:Lcom/ss/android/socialbase/downloader/b/e;

    invoke-static {v0, v3}, Lcom/ss/android/socialbase/downloader/b/e;->a(Lcom/ss/android/socialbase/downloader/b/e;Ljava/util/List;)V

    .line 197
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/b/e$1;->d:Lcom/ss/android/socialbase/downloader/b/e;

    move-object v6, v8

    move-object v7, v9

    invoke-static/range {v2 .. v7}, Lcom/ss/android/socialbase/downloader/b/e;->a(Lcom/ss/android/socialbase/downloader/b/e;Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 200
    if-eqz v8, :cond_1d2

    .line 201
    :try_start_138
    monitor-enter v8
    :try_end_139
    .catchall {:try_start_138 .. :try_end_139} :catchall_1b3

    .line 202
    :try_start_139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    nop

    :goto_13f
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v12, v2, :cond_196

    .line 204
    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 205
    if-eqz v2, :cond_193

    .line 206
    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 207
    invoke-static {v10}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result v3

    .line 208
    if-eqz v3, :cond_179

    .line 209
    if-eqz v2, :cond_193

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isChunkBreakpointAvailable()Z

    move-result v3

    if-nez v3, :cond_193

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v3

    const/4 v4, -0x3

    if-eq v3, v4, :cond_193

    .line 210
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_193

    .line 214
    :cond_179
    if-eqz v2, :cond_193

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isChunkBreakpointAvailable()Z

    move-result v3

    if-nez v3, :cond_193

    .line 215
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 203
    :cond_193
    :goto_193
    add-int/lit8 v12, v12, 0x1

    goto :goto_13f

    .line 221
    :cond_196
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1ae

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 222
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 223
    goto :goto_19a

    .line 224
    :cond_1ae
    monitor-exit v8

    goto :goto_1d2

    :catchall_1b0
    move-exception v0

    monitor-exit v8
    :try_end_1b2
    .catchall {:try_start_139 .. :try_end_1b2} :catchall_1b0

    :try_start_1b2
    throw v0
    :try_end_1b3
    .catchall {:try_start_1b2 .. :try_end_1b3} :catchall_1b3

    .line 227
    :catchall_1b3
    move-exception v0

    .line 228
    :try_start_1b4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1b7
    .catchall {:try_start_1b4 .. :try_end_1b7} :catchall_1bc

    .line 230
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/b/e$1;->c:Lcom/ss/android/socialbase/downloader/b/d;

    if-eqz v0, :cond_29f

    .line 231
    goto :goto_1d6

    .line 230
    :catchall_1bc
    move-exception v0

    move-object v2, v0

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/b/e$1;->c:Lcom/ss/android/socialbase/downloader/b/d;

    if-eqz v0, :cond_1cc

    .line 231
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/b/e$1;->c:Lcom/ss/android/socialbase/downloader/b/d;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/b/d;->a()V

    .line 232
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/b/e$1;->d:Lcom/ss/android/socialbase/downloader/b/e;

    invoke-static {v0, v13}, Lcom/ss/android/socialbase/downloader/b/e;->a(Lcom/ss/android/socialbase/downloader/b/e;Z)Z

    .line 234
    :cond_1cc
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/b/e$1;->d:Lcom/ss/android/socialbase/downloader/b/e;

    invoke-virtual {v0, v8, v9}, Lcom/ss/android/socialbase/downloader/b/e;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    throw v2

    .line 230
    :cond_1d2
    :goto_1d2
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/b/e$1;->c:Lcom/ss/android/socialbase/downloader/b/d;

    if-eqz v0, :cond_29f

    .line 231
    :goto_1d6
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/b/d;->a()V

    .line 232
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/b/e$1;->d:Lcom/ss/android/socialbase/downloader/b/e;

    invoke-static {v0, v13}, Lcom/ss/android/socialbase/downloader/b/e;->a(Lcom/ss/android/socialbase/downloader/b/e;Z)Z

    goto/16 :goto_29f

    .line 189
    :catchall_1e0
    move-exception v0

    .line 190
    :try_start_1e1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1e4
    .catchall {:try_start_1e1 .. :try_end_1e4} :catchall_2a7

    .line 192
    new-array v0, v13, [Ljava/io/Closeable;

    aput-object v2, v0, v12

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    .line 195
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/b/e$1;->d:Lcom/ss/android/socialbase/downloader/b/e;

    invoke-static {v0, v3}, Lcom/ss/android/socialbase/downloader/b/e;->a(Lcom/ss/android/socialbase/downloader/b/e;Ljava/util/List;)V

    .line 197
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/b/e$1;->d:Lcom/ss/android/socialbase/downloader/b/e;

    move-object v6, v8

    move-object v7, v9

    invoke-static/range {v2 .. v7}, Lcom/ss/android/socialbase/downloader/b/e;->a(Lcom/ss/android/socialbase/downloader/b/e;Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 200
    if-eqz v8, :cond_293

    .line 201
    :try_start_1f9
    monitor-enter v8
    :try_end_1fa
    .catchall {:try_start_1f9 .. :try_end_1fa} :catchall_274

    .line 202
    :try_start_1fa
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    nop

    :goto_200
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v12, v2, :cond_257

    .line 204
    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 205
    if-eqz v2, :cond_254

    .line 206
    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 207
    invoke-static {v10}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result v3

    .line 208
    if-eqz v3, :cond_23a

    .line 209
    if-eqz v2, :cond_254

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isChunkBreakpointAvailable()Z

    move-result v3

    if-nez v3, :cond_254

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v3

    const/4 v4, -0x3

    if-eq v3, v4, :cond_254

    .line 210
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_254

    .line 214
    :cond_23a
    if-eqz v2, :cond_254

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isChunkBreakpointAvailable()Z

    move-result v3

    if-nez v3, :cond_254

    .line 215
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 203
    :cond_254
    :goto_254
    add-int/lit8 v12, v12, 0x1

    goto :goto_200

    .line 221
    :cond_257
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 222
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 223
    goto :goto_25b

    .line 224
    :cond_26f
    monitor-exit v8

    goto :goto_293

    :catchall_271
    move-exception v0

    monitor-exit v8
    :try_end_273
    .catchall {:try_start_1fa .. :try_end_273} :catchall_271

    :try_start_273
    throw v0
    :try_end_274
    .catchall {:try_start_273 .. :try_end_274} :catchall_274

    .line 227
    :catchall_274
    move-exception v0

    .line 228
    :try_start_275
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_278
    .catchall {:try_start_275 .. :try_end_278} :catchall_27d

    .line 230
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/b/e$1;->c:Lcom/ss/android/socialbase/downloader/b/d;

    if-eqz v0, :cond_29f

    .line 231
    goto :goto_297

    .line 230
    :catchall_27d
    move-exception v0

    move-object v2, v0

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/b/e$1;->c:Lcom/ss/android/socialbase/downloader/b/d;

    if-eqz v0, :cond_28d

    .line 231
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/b/e$1;->c:Lcom/ss/android/socialbase/downloader/b/d;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/b/d;->a()V

    .line 232
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/b/e$1;->d:Lcom/ss/android/socialbase/downloader/b/e;

    invoke-static {v0, v13}, Lcom/ss/android/socialbase/downloader/b/e;->a(Lcom/ss/android/socialbase/downloader/b/e;Z)Z

    .line 234
    :cond_28d
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/b/e$1;->d:Lcom/ss/android/socialbase/downloader/b/e;

    invoke-virtual {v0, v8, v9}, Lcom/ss/android/socialbase/downloader/b/e;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    throw v2

    .line 230
    :cond_293
    :goto_293
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/b/e$1;->c:Lcom/ss/android/socialbase/downloader/b/d;

    if-eqz v0, :cond_29f

    .line 231
    :goto_297
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/b/d;->a()V

    .line 232
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/b/e$1;->d:Lcom/ss/android/socialbase/downloader/b/e;

    invoke-static {v0, v13}, Lcom/ss/android/socialbase/downloader/b/e;->a(Lcom/ss/android/socialbase/downloader/b/e;Z)Z

    .line 234
    :cond_29f
    :goto_29f
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/b/e$1;->d:Lcom/ss/android/socialbase/downloader/b/e;

    invoke-virtual {v0, v8, v9}, Lcom/ss/android/socialbase/downloader/b/e;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 235
    nop

    .line 236
    nop

    .line 237
    return-void

    .line 192
    :catchall_2a7
    move-exception v0

    move-object v11, v0

    new-array v0, v13, [Ljava/io/Closeable;

    aput-object v2, v0, v12

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    .line 195
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/b/e$1;->d:Lcom/ss/android/socialbase/downloader/b/e;

    invoke-static {v0, v3}, Lcom/ss/android/socialbase/downloader/b/e;->a(Lcom/ss/android/socialbase/downloader/b/e;Ljava/util/List;)V

    .line 197
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/b/e$1;->d:Lcom/ss/android/socialbase/downloader/b/e;

    move-object v6, v8

    move-object v7, v9

    invoke-static/range {v2 .. v7}, Lcom/ss/android/socialbase/downloader/b/e;->a(Lcom/ss/android/socialbase/downloader/b/e;Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 200
    if-eqz v8, :cond_35d

    .line 201
    :try_start_2be
    monitor-enter v8
    :try_end_2bf
    .catchall {:try_start_2be .. :try_end_2bf} :catchall_33e

    .line 202
    :try_start_2bf
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    nop

    :goto_2c5
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v12, v2, :cond_321

    .line 204
    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 205
    if-eqz v2, :cond_31d

    .line 206
    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 207
    invoke-static {v10}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result v3

    .line 208
    if-eqz v3, :cond_301

    .line 209
    if-eqz v2, :cond_2ff

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isChunkBreakpointAvailable()Z

    move-result v3

    if-nez v3, :cond_2ff

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v3

    const/4 v4, -0x3

    if-eq v3, v4, :cond_31e

    .line 210
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_31e

    .line 209
    :cond_2ff
    const/4 v4, -0x3

    goto :goto_31e

    .line 214
    :cond_301
    const/4 v4, -0x3

    if-eqz v2, :cond_31e

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isChunkBreakpointAvailable()Z

    move-result v3

    if-nez v3, :cond_31e

    .line 215
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_31e

    .line 205
    :cond_31d
    const/4 v4, -0x3

    .line 203
    :cond_31e
    :goto_31e
    add-int/lit8 v12, v12, 0x1

    goto :goto_2c5

    .line 221
    :cond_321
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_325
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_339

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 222
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 223
    goto :goto_325

    .line 224
    :cond_339
    monitor-exit v8

    goto :goto_35d

    :catchall_33b
    move-exception v0

    monitor-exit v8
    :try_end_33d
    .catchall {:try_start_2bf .. :try_end_33d} :catchall_33b

    :try_start_33d
    throw v0
    :try_end_33e
    .catchall {:try_start_33d .. :try_end_33e} :catchall_33e

    .line 227
    :catchall_33e
    move-exception v0

    .line 228
    :try_start_33f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_342
    .catchall {:try_start_33f .. :try_end_342} :catchall_347

    .line 230
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/b/e$1;->c:Lcom/ss/android/socialbase/downloader/b/d;

    if-eqz v0, :cond_369

    .line 231
    goto :goto_361

    .line 230
    :catchall_347
    move-exception v0

    move-object v2, v0

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/b/e$1;->c:Lcom/ss/android/socialbase/downloader/b/d;

    if-eqz v0, :cond_357

    .line 231
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/b/e$1;->c:Lcom/ss/android/socialbase/downloader/b/d;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/b/d;->a()V

    .line 232
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/b/e$1;->d:Lcom/ss/android/socialbase/downloader/b/e;

    invoke-static {v0, v13}, Lcom/ss/android/socialbase/downloader/b/e;->a(Lcom/ss/android/socialbase/downloader/b/e;Z)Z

    .line 234
    :cond_357
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/b/e$1;->d:Lcom/ss/android/socialbase/downloader/b/e;

    invoke-virtual {v0, v8, v9}, Lcom/ss/android/socialbase/downloader/b/e;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    throw v2

    .line 230
    :cond_35d
    :goto_35d
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/b/e$1;->c:Lcom/ss/android/socialbase/downloader/b/d;

    if-eqz v0, :cond_369

    .line 231
    :goto_361
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/b/d;->a()V

    .line 232
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/b/e$1;->d:Lcom/ss/android/socialbase/downloader/b/e;

    invoke-static {v0, v13}, Lcom/ss/android/socialbase/downloader/b/e;->a(Lcom/ss/android/socialbase/downloader/b/e;Z)Z

    .line 234
    :cond_369
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/b/e$1;->d:Lcom/ss/android/socialbase/downloader/b/e;

    invoke-virtual {v0, v8, v9}, Lcom/ss/android/socialbase/downloader/b/e;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 235
    nop

    .line 234
    throw v11
.end method
