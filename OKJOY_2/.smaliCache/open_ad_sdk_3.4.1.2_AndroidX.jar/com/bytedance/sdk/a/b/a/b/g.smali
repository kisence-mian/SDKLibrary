.class public final Lcom/bytedance/sdk/a/b/a/b/g;
.super Ljava/lang/Object;
.source "StreamAllocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/a/b/a/b/g$a;
    }
.end annotation


# static fields
.field static final synthetic d:Z


# instance fields
.field public final a:Lcom/bytedance/sdk/a/b/a;

.field public final b:Lcom/bytedance/sdk/a/b/e;

.field public final c:Lcom/bytedance/sdk/a/b/p;

.field private e:Lcom/bytedance/sdk/a/b/a/b/f$a;

.field private f:Lcom/bytedance/sdk/a/b/ac;

.field private final g:Lcom/bytedance/sdk/a/b/j;

.field private final h:Ljava/lang/Object;

.field private final i:Lcom/bytedance/sdk/a/b/a/b/f;

.field private j:I

.field private k:Lcom/bytedance/sdk/a/b/a/b/c;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Lcom/bytedance/sdk/a/b/a/c/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 78
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/a/b/a/b/g;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/a/b/j;Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/p;Ljava/lang/Object;)V
    .registers 7

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    .line 99
    iput-object p2, p0, Lcom/bytedance/sdk/a/b/a/b/g;->a:Lcom/bytedance/sdk/a/b/a;

    .line 100
    iput-object p3, p0, Lcom/bytedance/sdk/a/b/a/b/g;->b:Lcom/bytedance/sdk/a/b/e;

    .line 101
    iput-object p4, p0, Lcom/bytedance/sdk/a/b/a/b/g;->c:Lcom/bytedance/sdk/a/b/p;

    .line 102
    new-instance p1, Lcom/bytedance/sdk/a/b/a/b/f;

    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/b/g;->g()Lcom/bytedance/sdk/a/b/a/b/d;

    move-result-object v0

    invoke-direct {p1, p2, v0, p3, p4}, Lcom/bytedance/sdk/a/b/a/b/f;-><init>(Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/a/b/d;Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/p;)V

    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->i:Lcom/bytedance/sdk/a/b/a/b/f;

    .line 103
    iput-object p5, p0, Lcom/bytedance/sdk/a/b/a/b/g;->h:Ljava/lang/Object;

    .line 104
    return-void
.end method

.method private a(IIIZ)Lcom/bytedance/sdk/a/b/a/b/c;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    move-object/from16 v1, p0

    .line 163
    nop

    .line 164
    nop

    .line 167
    iget-object v2, v1, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    monitor-enter v2

    .line 168
    :try_start_7
    iget-boolean v0, v1, Lcom/bytedance/sdk/a/b/a/b/g;->m:Z

    if-nez v0, :cond_131

    .line 169
    iget-object v0, v1, Lcom/bytedance/sdk/a/b/a/b/g;->o:Lcom/bytedance/sdk/a/b/a/c/c;

    if-nez v0, :cond_129

    .line 170
    iget-boolean v0, v1, Lcom/bytedance/sdk/a/b/a/b/g;->n:Z

    if-nez v0, :cond_121

    .line 174
    iget-object v0, v1, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    .line 175
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/a/b/a/b/g;->f()Ljava/net/Socket;

    move-result-object v3

    .line 176
    iget-object v4, v1, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    const/4 v5, 0x0

    if-eqz v4, :cond_21

    .line 178
    nop

    .line 179
    move-object v0, v5

    goto :goto_22

    .line 176
    :cond_21
    move-object v4, v5

    .line 181
    :goto_22
    iget-boolean v6, v1, Lcom/bytedance/sdk/a/b/a/b/g;->l:Z

    if-nez v6, :cond_27

    .line 183
    move-object v0, v5

    .line 186
    :cond_27
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v4, :cond_41

    .line 188
    sget-object v8, Lcom/bytedance/sdk/a/b/a/a;->a:Lcom/bytedance/sdk/a/b/a/a;

    iget-object v9, v1, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    iget-object v10, v1, Lcom/bytedance/sdk/a/b/a/b/g;->a:Lcom/bytedance/sdk/a/b/a;

    invoke-virtual {v8, v9, v10, v1, v5}, Lcom/bytedance/sdk/a/b/a/a;->a(Lcom/bytedance/sdk/a/b/j;Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/a/b/g;Lcom/bytedance/sdk/a/b/ac;)Lcom/bytedance/sdk/a/b/a/b/c;

    .line 189
    iget-object v8, v1, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    if-eqz v8, :cond_3d

    .line 190
    nop

    .line 191
    move v9, v6

    move-object v4, v8

    move-object v8, v5

    goto :goto_43

    .line 193
    :cond_3d
    iget-object v8, v1, Lcom/bytedance/sdk/a/b/a/b/g;->f:Lcom/bytedance/sdk/a/b/ac;

    move v9, v7

    goto :goto_43

    .line 186
    :cond_41
    move-object v8, v5

    move v9, v7

    .line 196
    :goto_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_139

    .line 197
    invoke-static {v3}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/net/Socket;)V

    .line 199
    if-eqz v0, :cond_50

    .line 200
    iget-object v2, v1, Lcom/bytedance/sdk/a/b/a/b/g;->c:Lcom/bytedance/sdk/a/b/p;

    iget-object v3, v1, Lcom/bytedance/sdk/a/b/a/b/g;->b:Lcom/bytedance/sdk/a/b/e;

    invoke-virtual {v2, v3, v0}, Lcom/bytedance/sdk/a/b/p;->b(Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/i;)V

    .line 202
    :cond_50
    if-eqz v9, :cond_59

    .line 203
    iget-object v0, v1, Lcom/bytedance/sdk/a/b/a/b/g;->c:Lcom/bytedance/sdk/a/b/p;

    iget-object v2, v1, Lcom/bytedance/sdk/a/b/a/b/g;->b:Lcom/bytedance/sdk/a/b/e;

    invoke-virtual {v0, v2, v4}, Lcom/bytedance/sdk/a/b/p;->a(Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/i;)V

    .line 205
    :cond_59
    if-eqz v4, :cond_5c

    .line 207
    return-object v4

    .line 211
    :cond_5c
    nop

    .line 212
    if-nez v8, :cond_74

    iget-object v0, v1, Lcom/bytedance/sdk/a/b/a/b/g;->e:Lcom/bytedance/sdk/a/b/a/b/f$a;

    if-eqz v0, :cond_69

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/b/f$a;->a()Z

    move-result v0

    if-nez v0, :cond_74

    .line 213
    :cond_69
    nop

    .line 214
    iget-object v0, v1, Lcom/bytedance/sdk/a/b/a/b/g;->i:Lcom/bytedance/sdk/a/b/a/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/b/f;->b()Lcom/bytedance/sdk/a/b/a/b/f$a;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/a/b/a/b/g;->e:Lcom/bytedance/sdk/a/b/a/b/f$a;

    move v0, v6

    goto :goto_75

    .line 217
    :cond_74
    move v0, v7

    :goto_75
    iget-object v3, v1, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    monitor-enter v3

    .line 218
    :try_start_78
    iget-boolean v2, v1, Lcom/bytedance/sdk/a/b/a/b/g;->n:Z

    if-nez v2, :cond_116

    .line 220
    if-eqz v0, :cond_a8

    .line 223
    iget-object v0, v1, Lcom/bytedance/sdk/a/b/a/b/g;->e:Lcom/bytedance/sdk/a/b/a/b/f$a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/b/f$a;->c()Ljava/util/List;

    move-result-object v0

    .line 224
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move v10, v7

    :goto_89
    if-ge v10, v2, :cond_a8

    .line 225
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/bytedance/sdk/a/b/ac;

    .line 226
    sget-object v12, Lcom/bytedance/sdk/a/b/a/a;->a:Lcom/bytedance/sdk/a/b/a/a;

    iget-object v13, v1, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    iget-object v14, v1, Lcom/bytedance/sdk/a/b/a/b/g;->a:Lcom/bytedance/sdk/a/b/a;

    invoke-virtual {v12, v13, v14, v1, v11}, Lcom/bytedance/sdk/a/b/a/a;->a(Lcom/bytedance/sdk/a/b/j;Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/a/b/g;Lcom/bytedance/sdk/a/b/ac;)Lcom/bytedance/sdk/a/b/a/b/c;

    .line 227
    iget-object v12, v1, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    if-eqz v12, :cond_a5

    .line 228
    nop

    .line 229
    nop

    .line 230
    iput-object v11, v1, Lcom/bytedance/sdk/a/b/a/b/g;->f:Lcom/bytedance/sdk/a/b/ac;

    .line 231
    move v9, v6

    move-object v4, v12

    goto :goto_a8

    .line 224
    :cond_a5
    add-int/lit8 v10, v10, 0x1

    goto :goto_89

    .line 236
    :cond_a8
    :goto_a8
    if-nez v9, :cond_c0

    .line 237
    if-nez v8, :cond_b2

    .line 238
    iget-object v0, v1, Lcom/bytedance/sdk/a/b/a/b/g;->e:Lcom/bytedance/sdk/a/b/a/b/f$a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/b/f$a;->b()Lcom/bytedance/sdk/a/b/ac;

    move-result-object v8

    .line 243
    :cond_b2
    iput-object v8, v1, Lcom/bytedance/sdk/a/b/a/b/g;->f:Lcom/bytedance/sdk/a/b/ac;

    .line 244
    iput v7, v1, Lcom/bytedance/sdk/a/b/a/b/g;->j:I

    .line 245
    new-instance v4, Lcom/bytedance/sdk/a/b/a/b/c;

    iget-object v0, v1, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    invoke-direct {v4, v0, v8}, Lcom/bytedance/sdk/a/b/a/b/c;-><init>(Lcom/bytedance/sdk/a/b/j;Lcom/bytedance/sdk/a/b/ac;)V

    .line 246
    invoke-virtual {v1, v4, v7}, Lcom/bytedance/sdk/a/b/a/b/g;->a(Lcom/bytedance/sdk/a/b/a/b/c;Z)V

    .line 248
    :cond_c0
    monitor-exit v3
    :try_end_c1
    .catchall {:try_start_78 .. :try_end_c1} :catchall_11e

    .line 251
    if-eqz v9, :cond_cb

    .line 252
    iget-object v0, v1, Lcom/bytedance/sdk/a/b/a/b/g;->c:Lcom/bytedance/sdk/a/b/p;

    iget-object v2, v1, Lcom/bytedance/sdk/a/b/a/b/g;->b:Lcom/bytedance/sdk/a/b/e;

    invoke-virtual {v0, v2, v4}, Lcom/bytedance/sdk/a/b/p;->a(Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/i;)V

    .line 253
    return-object v4

    .line 257
    :cond_cb
    iget-object v15, v1, Lcom/bytedance/sdk/a/b/a/b/g;->b:Lcom/bytedance/sdk/a/b/e;

    iget-object v0, v1, Lcom/bytedance/sdk/a/b/a/b/g;->c:Lcom/bytedance/sdk/a/b/p;

    move-object v10, v4

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move-object/from16 v16, v0

    invoke-virtual/range {v10 .. v16}, Lcom/bytedance/sdk/a/b/a/b/c;->a(IIIZLcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/p;)V

    .line 259
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/a/b/a/b/g;->g()Lcom/bytedance/sdk/a/b/a/b/d;

    move-result-object v0

    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/a/b/c;->a()Lcom/bytedance/sdk/a/b/ac;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/a/b/a/b/d;->b(Lcom/bytedance/sdk/a/b/ac;)V

    .line 261
    nop

    .line 262
    iget-object v2, v1, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    monitor-enter v2

    .line 263
    :try_start_ec
    iput-boolean v6, v1, Lcom/bytedance/sdk/a/b/a/b/g;->l:Z

    .line 266
    sget-object v0, Lcom/bytedance/sdk/a/b/a/a;->a:Lcom/bytedance/sdk/a/b/a/a;

    iget-object v3, v1, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/a/b/a/a;->b(Lcom/bytedance/sdk/a/b/j;Lcom/bytedance/sdk/a/b/a/b/c;)V

    .line 270
    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/a/b/c;->d()Z

    move-result v0

    if-eqz v0, :cond_107

    .line 271
    sget-object v0, Lcom/bytedance/sdk/a/b/a/a;->a:Lcom/bytedance/sdk/a/b/a/a;

    iget-object v3, v1, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    iget-object v4, v1, Lcom/bytedance/sdk/a/b/a/b/g;->a:Lcom/bytedance/sdk/a/b/a;

    invoke-virtual {v0, v3, v4, v1}, Lcom/bytedance/sdk/a/b/a/a;->a(Lcom/bytedance/sdk/a/b/j;Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/a/b/g;)Ljava/net/Socket;

    move-result-object v5

    .line 272
    iget-object v4, v1, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    .line 274
    :cond_107
    monitor-exit v2
    :try_end_108
    .catchall {:try_start_ec .. :try_end_108} :catchall_113

    .line 275
    invoke-static {v5}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/net/Socket;)V

    .line 277
    iget-object v0, v1, Lcom/bytedance/sdk/a/b/a/b/g;->c:Lcom/bytedance/sdk/a/b/p;

    iget-object v2, v1, Lcom/bytedance/sdk/a/b/a/b/g;->b:Lcom/bytedance/sdk/a/b/e;

    invoke-virtual {v0, v2, v4}, Lcom/bytedance/sdk/a/b/p;->a(Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/i;)V

    .line 278
    return-object v4

    .line 274
    :catchall_113
    move-exception v0

    :try_start_114
    monitor-exit v2
    :try_end_115
    .catchall {:try_start_114 .. :try_end_115} :catchall_113

    throw v0

    .line 218
    :cond_116
    :try_start_116
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :catchall_11e
    move-exception v0

    monitor-exit v3
    :try_end_120
    .catchall {:try_start_116 .. :try_end_120} :catchall_11e

    throw v0

    .line 170
    :cond_121
    :try_start_121
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_129
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "codec != null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "released"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :catchall_139
    move-exception v0

    monitor-exit v2
    :try_end_13b
    .catchall {:try_start_121 .. :try_end_13b} :catchall_139

    throw v0
.end method

.method private a(IIIZZ)Lcom/bytedance/sdk/a/b/a/b/c;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/a/b/a/b/g;->a(IIIZ)Lcom/bytedance/sdk/a/b/a/b/c;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    monitor-enter v1

    .line 140
    :try_start_7
    iget v2, v0, Lcom/bytedance/sdk/a/b/a/b/c;->b:I

    if-nez v2, :cond_d

    .line 141
    monitor-exit v1

    return-object v0

    .line 143
    :cond_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_19

    .line 147
    invoke-virtual {v0, p5}, Lcom/bytedance/sdk/a/b/a/b/c;->a(Z)Z

    move-result v1

    if-nez v1, :cond_18

    .line 148
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/b/g;->d()V

    .line 149
    goto :goto_0

    .line 152
    :cond_18
    return-object v0

    .line 143
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method private a(ZZZ)Ljava/net/Socket;
    .registers 5

    .line 379
    sget-boolean v0, Lcom/bytedance/sdk/a/b/a/b/g;->d:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_13

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 381
    :cond_13
    :goto_13
    const/4 v0, 0x0

    if-eqz p3, :cond_18

    .line 382
    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->o:Lcom/bytedance/sdk/a/b/a/c/c;

    .line 384
    :cond_18
    const/4 p3, 0x1

    if-eqz p2, :cond_1d

    .line 385
    iput-boolean p3, p0, Lcom/bytedance/sdk/a/b/a/b/g;->m:Z

    .line 387
    :cond_1d
    nop

    .line 388
    iget-object p2, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    if-eqz p2, :cond_62

    .line 389
    if-eqz p1, :cond_26

    .line 390
    iput-boolean p3, p2, Lcom/bytedance/sdk/a/b/a/b/c;->a:Z

    .line 392
    :cond_26
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->o:Lcom/bytedance/sdk/a/b/a/c/c;

    if-nez p1, :cond_62

    iget-boolean p1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->m:Z

    if-nez p1, :cond_34

    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    iget-boolean p1, p1, Lcom/bytedance/sdk/a/b/a/b/c;->a:Z

    if-eqz p1, :cond_62

    .line 393
    :cond_34
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/b/a/b/g;->b(Lcom/bytedance/sdk/a/b/a/b/c;)V

    .line 394
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    iget-object p1, p1, Lcom/bytedance/sdk/a/b/a/b/c;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 395
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    iput-wide p2, p1, Lcom/bytedance/sdk/a/b/a/b/c;->e:J

    .line 396
    sget-object p1, Lcom/bytedance/sdk/a/b/a/a;->a:Lcom/bytedance/sdk/a/b/a/a;

    iget-object p2, p0, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    iget-object p3, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/a/b/a/a;->a(Lcom/bytedance/sdk/a/b/j;Lcom/bytedance/sdk/a/b/a/b/c;)Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 397
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/b/c;->b()Ljava/net/Socket;

    move-result-object p1

    goto :goto_5f

    .line 400
    :cond_5e
    move-object p1, v0

    :goto_5f
    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    move-object v0, p1

    .line 403
    :cond_62
    return-object v0
.end method

.method private b(Lcom/bytedance/sdk/a/b/a/b/c;)V
    .registers 5

    .line 478
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/a/b/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_20

    .line 479
    iget-object v2, p1, Lcom/bytedance/sdk/a/b/a/b/c;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 480
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_1d

    .line 481
    iget-object p1, p1, Lcom/bytedance/sdk/a/b/a/b/c;->d:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 482
    return-void

    .line 478
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 485
    :cond_20
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private f()Ljava/net/Socket;
    .registers 3

    .line 288
    sget-boolean v0, Lcom/bytedance/sdk/a/b/a/b/g;->d:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_13

    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 289
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    .line 290
    if-eqz v0, :cond_22

    iget-boolean v0, v0, Lcom/bytedance/sdk/a/b/a/b/c;->a:Z

    if-eqz v0, :cond_22

    .line 291
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/bytedance/sdk/a/b/a/b/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0

    .line 293
    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method private g()Lcom/bytedance/sdk/a/b/a/b/d;
    .registers 3

    .line 333
    sget-object v0, Lcom/bytedance/sdk/a/b/a/a;->a:Lcom/bytedance/sdk/a/b/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/a/a;->a(Lcom/bytedance/sdk/a/b/j;)Lcom/bytedance/sdk/a/b/a/b/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/a/b/a/c/c;
    .registers 3

    .line 327
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    monitor-enter v0

    .line 328
    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->o:Lcom/bytedance/sdk/a/b/a/c/c;

    monitor-exit v0

    return-object v1

    .line 329
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public a(Lcom/bytedance/sdk/a/b/v;Lcom/bytedance/sdk/a/b/t$a;Z)Lcom/bytedance/sdk/a/b/a/c/c;
    .registers 10

    .line 108
    invoke-interface {p2}, Lcom/bytedance/sdk/a/b/t$a;->b()I

    move-result v1

    .line 109
    invoke-interface {p2}, Lcom/bytedance/sdk/a/b/t$a;->c()I

    move-result v2

    .line 110
    invoke-interface {p2}, Lcom/bytedance/sdk/a/b/t$a;->d()I

    move-result v3

    .line 111
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/v;->r()Z

    move-result v4

    .line 114
    move-object v0, p0

    move v5, p3

    :try_start_12
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/a/b/a/b/g;->a(IIIZZ)Lcom/bytedance/sdk/a/b/a/b/c;

    move-result-object p3

    .line 116
    invoke-virtual {p3, p1, p2, p0}, Lcom/bytedance/sdk/a/b/a/b/c;->a(Lcom/bytedance/sdk/a/b/v;Lcom/bytedance/sdk/a/b/t$a;Lcom/bytedance/sdk/a/b/a/b/g;)Lcom/bytedance/sdk/a/b/a/c/c;

    move-result-object p1

    .line 118
    iget-object p2, p0, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    monitor-enter p2
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1d} :catch_24

    .line 119
    :try_start_1d
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->o:Lcom/bytedance/sdk/a/b/a/c/c;

    .line 120
    monitor-exit p2

    return-object p1

    .line 121
    :catchall_21
    move-exception p1

    monitor-exit p2
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_21

    :try_start_23
    throw p1
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_24} :catch_24

    .line 122
    :catch_24
    move-exception p1

    .line 123
    new-instance p2, Lcom/bytedance/sdk/a/b/a/b/e;

    invoke-direct {p2, p1}, Lcom/bytedance/sdk/a/b/a/b/e;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public a(Lcom/bytedance/sdk/a/b/a/b/c;)Ljava/net/Socket;
    .registers 5

    .line 497
    sget-boolean v0, Lcom/bytedance/sdk/a/b/a/b/g;->d:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_13

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 498
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->o:Lcom/bytedance/sdk/a/b/a/c/c;

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/b/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_39

    .line 501
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/b/c;->d:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 502
    invoke-direct {p0, v1, v2, v2}, Lcom/bytedance/sdk/a/b/a/b/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 505
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    .line 506
    iget-object p1, p1, Lcom/bytedance/sdk/a/b/a/b/c;->d:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    return-object v1

    .line 498
    :cond_39
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public a(Lcom/bytedance/sdk/a/b/a/b/c;Z)V
    .registers 4

    .line 466
    sget-boolean v0, Lcom/bytedance/sdk/a/b/a/b/g;->d:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_13

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 467
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    if-nez v0, :cond_28

    .line 469
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    .line 470
    iput-boolean p2, p0, Lcom/bytedance/sdk/a/b/a/b/g;->l:Z

    .line 471
    iget-object p1, p1, Lcom/bytedance/sdk/a/b/a/b/c;->d:Ljava/util/List;

    new-instance p2, Lcom/bytedance/sdk/a/b/a/b/g$a;

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->h:Ljava/lang/Object;

    invoke-direct {p2, p0, v0}, Lcom/bytedance/sdk/a/b/a/b/g$a;-><init>(Lcom/bytedance/sdk/a/b/a/b/g;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    return-void

    .line 467
    :cond_28
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public a(Ljava/io/IOException;)V
    .registers 8

    .line 424
    nop

    .line 426
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    monitor-enter v0

    .line 427
    :try_start_4
    instance-of v1, p1, Lcom/bytedance/sdk/a/b/a/e/o;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2a

    .line 428
    check-cast p1, Lcom/bytedance/sdk/a/b/a/e/o;

    .line 429
    iget-object v1, p1, Lcom/bytedance/sdk/a/b/a/e/o;->a:Lcom/bytedance/sdk/a/b/a/e/b;

    sget-object v5, Lcom/bytedance/sdk/a/b/a/e/b;->e:Lcom/bytedance/sdk/a/b/a/e/b;

    if-ne v1, v5, :cond_18

    .line 430
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->j:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->j:I

    .line 434
    :cond_18
    iget-object p1, p1, Lcom/bytedance/sdk/a/b/a/e/o;->a:Lcom/bytedance/sdk/a/b/a/e/b;

    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/b;->e:Lcom/bytedance/sdk/a/b/a/e/b;

    if-ne p1, v1, :cond_25

    iget p1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->j:I

    if-le p1, v4, :cond_23

    goto :goto_25

    :cond_23
    move p1, v2

    goto :goto_29

    .line 435
    :cond_25
    :goto_25
    nop

    .line 436
    iput-object v3, p0, Lcom/bytedance/sdk/a/b/a/b/g;->f:Lcom/bytedance/sdk/a/b/ac;

    move p1, v4

    .line 438
    :goto_29
    goto :goto_4f

    :cond_2a
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    if-eqz v1, :cond_4e

    .line 439
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a/b/c;->d()Z

    move-result v1

    if-eqz v1, :cond_38

    instance-of v1, p1, Lcom/bytedance/sdk/a/b/a/e/a;

    if-eqz v1, :cond_4e

    .line 440
    :cond_38
    nop

    .line 443
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    iget v1, v1, Lcom/bytedance/sdk/a/b/a/b/c;->b:I

    if-nez v1, :cond_4c

    .line 444
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->f:Lcom/bytedance/sdk/a/b/ac;

    if-eqz v1, :cond_4a

    if-eqz p1, :cond_4a

    .line 445
    iget-object v5, p0, Lcom/bytedance/sdk/a/b/a/b/g;->i:Lcom/bytedance/sdk/a/b/a/b/f;

    invoke-virtual {v5, v1, p1}, Lcom/bytedance/sdk/a/b/a/b/f;->a(Lcom/bytedance/sdk/a/b/ac;Ljava/io/IOException;)V

    .line 447
    :cond_4a
    iput-object v3, p0, Lcom/bytedance/sdk/a/b/a/b/g;->f:Lcom/bytedance/sdk/a/b/ac;

    .line 450
    :cond_4c
    move p1, v4

    goto :goto_4f

    :cond_4e
    move p1, v2

    :goto_4f
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    .line 451
    invoke-direct {p0, p1, v2, v4}, Lcom/bytedance/sdk/a/b/a/b/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object p1

    .line 452
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    if-nez v2, :cond_5f

    iget-boolean v2, p0, Lcom/bytedance/sdk/a/b/a/b/g;->l:Z

    if-nez v2, :cond_5e

    goto :goto_5f

    :cond_5e
    move-object v3, v1

    .line 453
    :cond_5f
    :goto_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_4 .. :try_end_60} :catchall_6d

    .line 455
    invoke-static {p1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/net/Socket;)V

    .line 456
    if-eqz v3, :cond_6c

    .line 457
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->c:Lcom/bytedance/sdk/a/b/p;

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->b:Lcom/bytedance/sdk/a/b/e;

    invoke-virtual {p1, v0, v3}, Lcom/bytedance/sdk/a/b/p;->b(Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/i;)V

    .line 459
    :cond_6c
    return-void

    .line 453
    :catchall_6d
    move-exception p1

    :try_start_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw p1
.end method

.method public a(ZLcom/bytedance/sdk/a/b/a/c/c;JLjava/io/IOException;)V
    .registers 8

    .line 297
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->c:Lcom/bytedance/sdk/a/b/p;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->b:Lcom/bytedance/sdk/a/b/e;

    invoke-virtual {v0, v1, p3, p4}, Lcom/bytedance/sdk/a/b/p;->b(Lcom/bytedance/sdk/a/b/e;J)V

    .line 302
    iget-object p3, p0, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    monitor-enter p3

    .line 303
    if-eqz p2, :cond_49

    :try_start_c
    iget-object p4, p0, Lcom/bytedance/sdk/a/b/a/b/g;->o:Lcom/bytedance/sdk/a/b/a/c/c;

    if-ne p2, p4, :cond_49

    .line 306
    const/4 p2, 0x1

    if-nez p1, :cond_1a

    .line 307
    iget-object p4, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    iget v0, p4, Lcom/bytedance/sdk/a/b/a/b/c;->b:I

    add-int/2addr v0, p2

    iput v0, p4, Lcom/bytedance/sdk/a/b/a/b/c;->b:I

    .line 309
    :cond_1a
    iget-object p4, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    .line 310
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/bytedance/sdk/a/b/a/b/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object p1

    .line 311
    iget-object p2, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    if-eqz p2, :cond_26

    const/4 p4, 0x0

    .line 312
    :cond_26
    iget-boolean p2, p0, Lcom/bytedance/sdk/a/b/a/b/g;->m:Z

    .line 313
    monitor-exit p3
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_6e

    .line 314
    invoke-static {p1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/net/Socket;)V

    .line 315
    if-eqz p4, :cond_35

    .line 316
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->c:Lcom/bytedance/sdk/a/b/p;

    iget-object p3, p0, Lcom/bytedance/sdk/a/b/a/b/g;->b:Lcom/bytedance/sdk/a/b/e;

    invoke-virtual {p1, p3, p4}, Lcom/bytedance/sdk/a/b/p;->b(Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/i;)V

    .line 319
    :cond_35
    if-eqz p5, :cond_3f

    .line 320
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->c:Lcom/bytedance/sdk/a/b/p;

    iget-object p2, p0, Lcom/bytedance/sdk/a/b/a/b/g;->b:Lcom/bytedance/sdk/a/b/e;

    invoke-virtual {p1, p2, p5}, Lcom/bytedance/sdk/a/b/p;->a(Lcom/bytedance/sdk/a/b/e;Ljava/io/IOException;)V

    goto :goto_48

    .line 321
    :cond_3f
    if-eqz p2, :cond_48

    .line 322
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->c:Lcom/bytedance/sdk/a/b/p;

    iget-object p2, p0, Lcom/bytedance/sdk/a/b/a/b/g;->b:Lcom/bytedance/sdk/a/b/e;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/a/b/p;->g(Lcom/bytedance/sdk/a/b/e;)V

    .line 324
    :cond_48
    :goto_48
    return-void

    .line 304
    :cond_49
    :try_start_49
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "expected "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-object p5, p0, Lcom/bytedance/sdk/a/b/a/b/g;->o:Lcom/bytedance/sdk/a/b/a/c/c;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, " but was "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 313
    :catchall_6e
    move-exception p1

    monitor-exit p3
    :try_end_70
    .catchall {:try_start_49 .. :try_end_70} :catchall_6e

    throw p1
.end method

.method public declared-synchronized b()Lcom/bytedance/sdk/a/b/a/b/c;
    .registers 2

    monitor-enter p0

    .line 337
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 337
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .registers 5

    .line 343
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    monitor-enter v0

    .line 344
    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    .line 345
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v3, v2, v3}, Lcom/bytedance/sdk/a/b/a/b/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object v2

    .line 346
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    if-eqz v3, :cond_10

    const/4 v1, 0x0

    .line 347
    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1e

    .line 348
    invoke-static {v2}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/net/Socket;)V

    .line 349
    if-eqz v1, :cond_1d

    .line 350
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->c:Lcom/bytedance/sdk/a/b/p;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/g;->b:Lcom/bytedance/sdk/a/b/e;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/a/b/p;->b(Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/i;)V

    .line 352
    :cond_1d
    return-void

    .line 347
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public d()V
    .registers 5

    .line 360
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    monitor-enter v0

    .line 361
    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    .line 362
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v3}, Lcom/bytedance/sdk/a/b/a/b/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object v2

    .line 363
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    if-eqz v3, :cond_10

    const/4 v1, 0x0

    .line 364
    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1e

    .line 365
    invoke-static {v2}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/net/Socket;)V

    .line 366
    if-eqz v1, :cond_1d

    .line 367
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->c:Lcom/bytedance/sdk/a/b/p;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/g;->b:Lcom/bytedance/sdk/a/b/e;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/a/b/p;->b(Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/i;)V

    .line 369
    :cond_1d
    return-void

    .line 364
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public e()Z
    .registers 2

    .line 512
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->f:Lcom/bytedance/sdk/a/b/ac;

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->e:Lcom/bytedance/sdk/a/b/a/b/f$a;

    if-eqz v0, :cond_e

    .line 513
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/b/f$a;->a()Z

    move-result v0

    if-nez v0, :cond_19

    :cond_e
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->i:Lcom/bytedance/sdk/a/b/a/b/f;

    .line 514
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/b/f;->a()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 512
    :goto_1a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 519
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/b/g;->b()Lcom/bytedance/sdk/a/b/a/b/c;

    move-result-object v0

    .line 520
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/b/c;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->a:Lcom/bytedance/sdk/a/b/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_11
    return-object v0
.end method
