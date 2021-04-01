.class Lcom/ss/android/socialbase/downloader/c/e$1;
.super Ljava/lang/Object;
.source "SqlDownloadCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/c/e;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/c/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/util/SparseArray;

.field final synthetic b:Landroid/util/SparseArray;

.field final synthetic c:Lcom/ss/android/socialbase/downloader/c/d;

.field final synthetic d:Lcom/ss/android/socialbase/downloader/c/e;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/c/e;Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/c/d;)V
    .registers 5

    .prologue
    .line 99
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->d:Lcom/ss/android/socialbase/downloader/c/e;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->a:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->b:Landroid/util/SparseArray;

    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->c:Lcom/ss/android/socialbase/downloader/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    .line 103
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->d:Lcom/ss/android/socialbase/downloader/c/e;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/c/e;->a(Lcom/ss/android/socialbase/downloader/c/e;)V

    .line 105
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/e;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_c

    .line 231
    :goto_b
    return-void

    .line 108
    :cond_c
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->a:Landroid/util/SparseArray;

    .line 109
    if-nez v4, :cond_15

    .line 110
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 112
    :cond_15
    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->b:Landroid/util/SparseArray;

    .line 113
    if-nez v5, :cond_1e

    .line 114
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 117
    :cond_1e
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->s()Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v7

    .line 119
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 120
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    const/4 v6, 0x0

    .line 125
    :try_start_32
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/e;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v8, "SELECT * FROM downloader"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_3c} :catch_79
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3ad

    move-result-object v6

    .line 126
    :cond_3d
    :goto_3d
    :try_start_3d
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1cd

    .line 127
    const/4 v0, 0x0

    .line 128
    new-instance v8, Lcom/ss/android/socialbase/downloader/g/c;

    invoke-direct {v8, v6}, Lcom/ss/android/socialbase/downloader/g/c;-><init>(Landroid/database/Cursor;)V

    .line 129
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/c;->aT()Z

    move-result v9

    if-eqz v9, :cond_53

    .line 130
    const/4 v9, -0x5

    invoke-virtual {v8, v9}, Lcom/ss/android/socialbase/downloader/g/c;->b(I)V

    .line 131
    :cond_53
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_67

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d5

    .line 132
    :cond_67
    const/4 v0, 0x1

    .line 158
    :cond_68
    :goto_68
    if-eqz v0, :cond_1a2

    .line 159
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_78} :catch_79
    .catchall {:try_start_3d .. :try_end_78} :catchall_125

    goto :goto_3d

    .line 178
    :catch_79
    move-exception v0

    .line 179
    :try_start_7a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_125

    .line 182
    if-eqz v6, :cond_82

    .line 183
    :try_start_7f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_82} :catch_2a7

    .line 189
    :cond_82
    :goto_82
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->d:Lcom/ss/android/socialbase/downloader/c/e;

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/e;->a(Lcom/ss/android/socialbase/downloader/c/e;Ljava/util/List;)V

    .line 191
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->d:Lcom/ss/android/socialbase/downloader/c/e;

    invoke-static/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/c/e;->a(Lcom/ss/android/socialbase/downloader/c/e;Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 194
    if-eqz v4, :cond_2ff

    .line 195
    :try_start_8e
    monitor-enter v4
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_8f} :catch_2cc
    .catchall {:try_start_8e .. :try_end_8f} :catchall_315

    .line 196
    :try_start_8f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 197
    const/4 v0, 0x0

    move v1, v0

    :goto_96
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2e6

    .line 198
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 199
    if-eqz v0, :cond_d1

    .line 200
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 201
    const/16 v3, 0x2000

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v3

    .line 202
    if-eqz v3, :cond_2ad

    .line 203
    if-eqz v0, :cond_d1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->aO()Z

    move-result v3

    if-nez v3, :cond_d1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v3

    const/4 v6, -0x3

    if-eq v3, v6, :cond_d1

    .line 204
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_d1
    .catchall {:try_start_8f .. :try_end_d1} :catchall_2c9

    .line 197
    :cond_d1
    :goto_d1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_96

    .line 134
    :cond_d5
    :try_start_d5
    new-instance v9, Ljava/io/File;

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/high16 v10, 0x20000

    invoke-static {v10}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v10

    if-eqz v10, :cond_181

    .line 138
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_114

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gtz v10, :cond_114

    .line 139
    const/4 v0, 0x1

    .line 151
    :cond_fc
    :goto_fc
    const/high16 v10, 0x2000000

    invoke-static {v10}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v10

    if-eqz v10, :cond_68

    .line 152
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v10

    const/4 v11, -0x3

    if-ne v10, v11, :cond_68

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_68

    .line 153
    const/4 v0, 0x1

    goto/16 :goto_68

    .line 140
    :cond_114
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v10

    const/4 v11, -0x3

    if-eq v10, v11, :cond_fc

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/c;->aN()Z

    move-result v10

    if-nez v10, :cond_fc

    .line 142
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/c;->aM()V
    :try_end_124
    .catch Ljava/lang/Throwable; {:try_start_d5 .. :try_end_124} :catch_79
    .catchall {:try_start_d5 .. :try_end_124} :catchall_125

    goto :goto_fc

    .line 181
    :catchall_125
    move-exception v0

    move-object v14, v0

    move-object v0, v6

    move-object v6, v14

    .line 182
    :goto_129
    if-eqz v0, :cond_12e

    .line 183
    :try_start_12b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_12e
    .catch Ljava/lang/Throwable; {:try_start_12b .. :try_end_12e} :catch_32b

    .line 189
    :cond_12e
    :goto_12e
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->d:Lcom/ss/android/socialbase/downloader/c/e;

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/e;->a(Lcom/ss/android/socialbase/downloader/c/e;Ljava/util/List;)V

    .line 191
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->d:Lcom/ss/android/socialbase/downloader/c/e;

    invoke-static/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/c/e;->a(Lcom/ss/android/socialbase/downloader/c/e;Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 194
    if-eqz v4, :cond_382

    .line 195
    :try_start_13a
    monitor-enter v4
    :try_end_13b
    .catch Ljava/lang/Throwable; {:try_start_13a .. :try_end_13b} :catch_350
    .catchall {:try_start_13a .. :try_end_13b} :catchall_397

    .line 196
    :try_start_13b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 197
    const/4 v0, 0x0

    move v1, v0

    :goto_142
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_369

    .line 198
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 199
    if-eqz v0, :cond_17d

    .line 200
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 201
    const/16 v3, 0x2000

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v3

    .line 202
    if-eqz v3, :cond_331

    .line 203
    if-eqz v0, :cond_17d

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->aO()Z

    move-result v3

    if-nez v3, :cond_17d

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v3

    const/4 v7, -0x3

    if-eq v3, v7, :cond_17d

    .line 204
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_17d
    .catchall {:try_start_13b .. :try_end_17d} :catchall_34d

    .line 197
    :cond_17d
    :goto_17d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_142

    .line 145
    :cond_181
    :try_start_181
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_192

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_19f

    .line 146
    :cond_192
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v10

    const/4 v11, -0x3

    if-eq v10, v11, :cond_fc

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/c;->aN()Z

    move-result v10

    if-nez v10, :cond_fc

    .line 147
    :cond_19f
    const/4 v0, 0x1

    goto/16 :goto_fc

    .line 162
    :cond_1a2
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v9

    .line 163
    const/4 v0, 0x0

    .line 164
    if-eqz v7, :cond_1b5

    .line 165
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/c;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v0, v10}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 166
    :cond_1b5
    if-eq v0, v9, :cond_1bd

    .line 167
    invoke-virtual {v8, v0}, Lcom/ss/android/socialbase/downloader/g/c;->g(I)V

    .line 168
    invoke-virtual {v3, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    :cond_1bd
    if-eqz v4, :cond_3d

    .line 172
    monitor-enter v4
    :try_end_1c0
    .catch Ljava/lang/Throwable; {:try_start_181 .. :try_end_1c0} :catch_79
    .catchall {:try_start_181 .. :try_end_1c0} :catchall_125

    .line 173
    :try_start_1c0
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    invoke-virtual {v4, v0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 174
    monitor-exit v4

    goto/16 :goto_3d

    :catchall_1ca
    move-exception v0

    monitor-exit v4
    :try_end_1cc
    .catchall {:try_start_1c0 .. :try_end_1cc} :catchall_1ca

    :try_start_1cc
    throw v0
    :try_end_1cd
    .catch Ljava/lang/Throwable; {:try_start_1cc .. :try_end_1cd} :catch_79
    .catchall {:try_start_1cc .. :try_end_1cd} :catchall_125

    .line 182
    :cond_1cd
    if-eqz v6, :cond_1d2

    .line 183
    :try_start_1cf
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1d2
    .catch Ljava/lang/Throwable; {:try_start_1cf .. :try_end_1d2} :catch_225

    .line 189
    :cond_1d2
    :goto_1d2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->d:Lcom/ss/android/socialbase/downloader/c/e;

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/e;->a(Lcom/ss/android/socialbase/downloader/c/e;Ljava/util/List;)V

    .line 191
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->d:Lcom/ss/android/socialbase/downloader/c/e;

    invoke-static/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/c/e;->a(Lcom/ss/android/socialbase/downloader/c/e;Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 194
    if-eqz v4, :cond_27b

    .line 195
    :try_start_1de
    monitor-enter v4
    :try_end_1df
    .catch Ljava/lang/Throwable; {:try_start_1de .. :try_end_1df} :catch_248
    .catchall {:try_start_1de .. :try_end_1df} :catchall_291

    .line 196
    :try_start_1df
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 197
    const/4 v0, 0x0

    move v1, v0

    :goto_1e6
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_262

    .line 198
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 199
    if-eqz v0, :cond_221

    .line 200
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 201
    const/16 v3, 0x2000

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v3

    .line 202
    if-eqz v3, :cond_22a

    .line 203
    if-eqz v0, :cond_221

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->aO()Z

    move-result v3

    if-nez v3, :cond_221

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v3

    const/4 v6, -0x3

    if-eq v3, v6, :cond_221

    .line 204
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_221
    .catchall {:try_start_1df .. :try_end_221} :catchall_245

    .line 197
    :cond_221
    :goto_221
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1e6

    .line 184
    :catch_225
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1d2

    .line 208
    :cond_22a
    if-eqz v0, :cond_221

    :try_start_22c
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->aO()Z

    move-result v3

    if-nez v3, :cond_221

    .line 209
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_221

    .line 218
    :catchall_245
    move-exception v0

    monitor-exit v4
    :try_end_247
    .catchall {:try_start_22c .. :try_end_247} :catchall_245

    :try_start_247
    throw v0
    :try_end_248
    .catch Ljava/lang/Throwable; {:try_start_247 .. :try_end_248} :catch_248
    .catchall {:try_start_247 .. :try_end_248} :catchall_291

    .line 221
    :catch_248
    move-exception v0

    .line 222
    :try_start_249
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_24c
    .catchall {:try_start_249 .. :try_end_24c} :catchall_291

    .line 224
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->c:Lcom/ss/android/socialbase/downloader/c/d;

    if-eqz v0, :cond_25b

    .line 225
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->c:Lcom/ss/android/socialbase/downloader/c/d;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/c/d;->a()V

    .line 226
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->d:Lcom/ss/android/socialbase/downloader/c/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/e;->a(Lcom/ss/android/socialbase/downloader/c/e;Z)Z

    .line 228
    :cond_25b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->d:Lcom/ss/android/socialbase/downloader/c/e;

    invoke-virtual {v0, v4, v5}, Lcom/ss/android/socialbase/downloader/c/e;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    goto/16 :goto_b

    .line 215
    :cond_262
    :try_start_262
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_266
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 216
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_266

    .line 218
    :cond_27a
    monitor-exit v4
    :try_end_27b
    .catchall {:try_start_262 .. :try_end_27b} :catchall_245

    .line 224
    :cond_27b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->c:Lcom/ss/android/socialbase/downloader/c/d;

    if-eqz v0, :cond_28a

    .line 225
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->c:Lcom/ss/android/socialbase/downloader/c/d;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/c/d;->a()V

    .line 226
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->d:Lcom/ss/android/socialbase/downloader/c/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/e;->a(Lcom/ss/android/socialbase/downloader/c/e;Z)Z

    .line 228
    :cond_28a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->d:Lcom/ss/android/socialbase/downloader/c/e;

    invoke-virtual {v0, v4, v5}, Lcom/ss/android/socialbase/downloader/c/e;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    goto/16 :goto_b

    .line 224
    :catchall_291
    move-exception v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->c:Lcom/ss/android/socialbase/downloader/c/d;

    if-eqz v1, :cond_2a1

    .line 225
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->c:Lcom/ss/android/socialbase/downloader/c/d;

    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/c/d;->a()V

    .line 226
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->d:Lcom/ss/android/socialbase/downloader/c/e;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/c/e;->a(Lcom/ss/android/socialbase/downloader/c/e;Z)Z

    .line 228
    :cond_2a1
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->d:Lcom/ss/android/socialbase/downloader/c/e;

    invoke-virtual {v1, v4, v5}, Lcom/ss/android/socialbase/downloader/c/e;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    throw v0

    .line 184
    :catch_2a7
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_82

    .line 208
    :cond_2ad
    if-eqz v0, :cond_d1

    :try_start_2af
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->aO()Z

    move-result v3

    if-nez v3, :cond_d1

    .line 209
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_d1

    .line 218
    :catchall_2c9
    move-exception v0

    monitor-exit v4
    :try_end_2cb
    .catchall {:try_start_2af .. :try_end_2cb} :catchall_2c9

    :try_start_2cb
    throw v0
    :try_end_2cc
    .catch Ljava/lang/Throwable; {:try_start_2cb .. :try_end_2cc} :catch_2cc
    .catchall {:try_start_2cb .. :try_end_2cc} :catchall_315

    .line 221
    :catch_2cc
    move-exception v0

    .line 222
    :try_start_2cd
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2d0
    .catchall {:try_start_2cd .. :try_end_2d0} :catchall_315

    .line 224
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->c:Lcom/ss/android/socialbase/downloader/c/d;

    if-eqz v0, :cond_2df

    .line 225
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->c:Lcom/ss/android/socialbase/downloader/c/d;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/c/d;->a()V

    .line 226
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->d:Lcom/ss/android/socialbase/downloader/c/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/e;->a(Lcom/ss/android/socialbase/downloader/c/e;Z)Z

    .line 228
    :cond_2df
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->d:Lcom/ss/android/socialbase/downloader/c/e;

    invoke-virtual {v0, v4, v5}, Lcom/ss/android/socialbase/downloader/c/e;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    goto/16 :goto_b

    .line 215
    :cond_2e6
    :try_start_2e6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2ea
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2fe

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 216
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2ea

    .line 218
    :cond_2fe
    monitor-exit v4
    :try_end_2ff
    .catchall {:try_start_2e6 .. :try_end_2ff} :catchall_2c9

    .line 224
    :cond_2ff
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->c:Lcom/ss/android/socialbase/downloader/c/d;

    if-eqz v0, :cond_30e

    .line 225
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->c:Lcom/ss/android/socialbase/downloader/c/d;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/c/d;->a()V

    .line 226
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->d:Lcom/ss/android/socialbase/downloader/c/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/e;->a(Lcom/ss/android/socialbase/downloader/c/e;Z)Z

    .line 228
    :cond_30e
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->d:Lcom/ss/android/socialbase/downloader/c/e;

    invoke-virtual {v0, v4, v5}, Lcom/ss/android/socialbase/downloader/c/e;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    goto/16 :goto_b

    .line 224
    :catchall_315
    move-exception v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->c:Lcom/ss/android/socialbase/downloader/c/d;

    if-eqz v1, :cond_325

    .line 225
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->c:Lcom/ss/android/socialbase/downloader/c/d;

    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/c/d;->a()V

    .line 226
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->d:Lcom/ss/android/socialbase/downloader/c/e;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/c/e;->a(Lcom/ss/android/socialbase/downloader/c/e;Z)Z

    .line 228
    :cond_325
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->d:Lcom/ss/android/socialbase/downloader/c/e;

    invoke-virtual {v1, v4, v5}, Lcom/ss/android/socialbase/downloader/c/e;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    throw v0

    .line 184
    :catch_32b
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_12e

    .line 208
    :cond_331
    if-eqz v0, :cond_17d

    :try_start_333
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->aO()Z

    move-result v3

    if-nez v3, :cond_17d

    .line 209
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_17d

    .line 218
    :catchall_34d
    move-exception v0

    monitor-exit v4
    :try_end_34f
    .catchall {:try_start_333 .. :try_end_34f} :catchall_34d

    :try_start_34f
    throw v0
    :try_end_350
    .catch Ljava/lang/Throwable; {:try_start_34f .. :try_end_350} :catch_350
    .catchall {:try_start_34f .. :try_end_350} :catchall_397

    .line 221
    :catch_350
    move-exception v0

    .line 222
    :try_start_351
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_354
    .catchall {:try_start_351 .. :try_end_354} :catchall_397

    .line 224
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->c:Lcom/ss/android/socialbase/downloader/c/d;

    if-eqz v0, :cond_363

    .line 225
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->c:Lcom/ss/android/socialbase/downloader/c/d;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/c/d;->a()V

    .line 226
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->d:Lcom/ss/android/socialbase/downloader/c/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/e;->a(Lcom/ss/android/socialbase/downloader/c/e;Z)Z

    .line 228
    :cond_363
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->d:Lcom/ss/android/socialbase/downloader/c/e;

    invoke-virtual {v0, v4, v5}, Lcom/ss/android/socialbase/downloader/c/e;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    :goto_368
    throw v6

    .line 215
    :cond_369
    :try_start_369
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_36d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_381

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 216
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_36d

    .line 218
    :cond_381
    monitor-exit v4
    :try_end_382
    .catchall {:try_start_369 .. :try_end_382} :catchall_34d

    .line 224
    :cond_382
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->c:Lcom/ss/android/socialbase/downloader/c/d;

    if-eqz v0, :cond_391

    .line 225
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->c:Lcom/ss/android/socialbase/downloader/c/d;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/c/d;->a()V

    .line 226
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->d:Lcom/ss/android/socialbase/downloader/c/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/e;->a(Lcom/ss/android/socialbase/downloader/c/e;Z)Z

    .line 228
    :cond_391
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->d:Lcom/ss/android/socialbase/downloader/c/e;

    invoke-virtual {v0, v4, v5}, Lcom/ss/android/socialbase/downloader/c/e;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    goto :goto_368

    .line 224
    :catchall_397
    move-exception v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->c:Lcom/ss/android/socialbase/downloader/c/d;

    if-eqz v1, :cond_3a7

    .line 225
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->c:Lcom/ss/android/socialbase/downloader/c/d;

    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/c/d;->a()V

    .line 226
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->d:Lcom/ss/android/socialbase/downloader/c/e;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/c/e;->a(Lcom/ss/android/socialbase/downloader/c/e;Z)Z

    .line 228
    :cond_3a7
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/e$1;->d:Lcom/ss/android/socialbase/downloader/c/e;

    invoke-virtual {v1, v4, v5}, Lcom/ss/android/socialbase/downloader/c/e;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    throw v0

    .line 181
    :catchall_3ad
    move-exception v0

    move-object v14, v0

    move-object v0, v6

    move-object v6, v14

    goto/16 :goto_129
.end method
