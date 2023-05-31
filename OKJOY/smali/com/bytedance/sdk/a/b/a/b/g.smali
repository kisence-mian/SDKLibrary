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

    .prologue
    .line 78
    const-class v0, Lcom/bytedance/sdk/a/b/a/b/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/bytedance/sdk/a/b/a/b/g;->d:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/bytedance/sdk/a/b/j;Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/p;Ljava/lang/Object;)V
    .registers 8

    .prologue
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
    new-instance v0, Lcom/bytedance/sdk/a/b/a/b/f;

    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/b/g;->g()Lcom/bytedance/sdk/a/b/a/b/d;

    move-result-object v1

    invoke-direct {v0, p2, v1, p3, p4}, Lcom/bytedance/sdk/a/b/a/b/f;-><init>(Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/a/b/d;Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/p;)V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->i:Lcom/bytedance/sdk/a/b/a/b/f;

    .line 103
    iput-object p5, p0, Lcom/bytedance/sdk/a/b/a/b/g;->h:Ljava/lang/Object;

    .line 104
    return-void
.end method

.method private a(IIIZ)Lcom/bytedance/sdk/a/b/a/b/c;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    const/4 v3, 0x0

    .line 163
    const/4 v1, 0x0

    .line 164
    const/4 v2, 0x0

    .line 167
    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    monitor-enter v4

    .line 168
    :try_start_6
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->m:Z

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :catchall_12
    move-exception v0

    monitor-exit v4
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw v0

    .line 169
    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->o:Lcom/bytedance/sdk/a/b/a/c/c;

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "codec != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_21
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->n:Z

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_2d
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    .line 175
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/b/g;->f()Ljava/net/Socket;

    move-result-object v5

    .line 176
    iget-object v6, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    if-eqz v6, :cond_3a

    .line 178
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    .line 179
    const/4 v0, 0x0

    .line 181
    :cond_3a
    iget-boolean v6, p0, Lcom/bytedance/sdk/a/b/a/b/g;->l:Z

    if-nez v6, :cond_3f

    .line 183
    const/4 v0, 0x0

    .line 186
    :cond_3f
    if-nez v1, :cond_52

    .line 188
    sget-object v6, Lcom/bytedance/sdk/a/b/a/a;->a:Lcom/bytedance/sdk/a/b/a/a;

    iget-object v7, p0, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    iget-object v8, p0, Lcom/bytedance/sdk/a/b/a/b/g;->a:Lcom/bytedance/sdk/a/b/a;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, p0, v9}, Lcom/bytedance/sdk/a/b/a/a;->a(Lcom/bytedance/sdk/a/b/j;Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/a/b/g;Lcom/bytedance/sdk/a/b/ac;)Lcom/bytedance/sdk/a/b/a/b/c;

    .line 189
    iget-object v6, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    if-eqz v6, :cond_6c

    .line 190
    const/4 v3, 0x1

    .line 191
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    .line 196
    :cond_52
    :goto_52
    monitor-exit v4
    :try_end_53
    .catchall {:try_start_15 .. :try_end_53} :catchall_12

    .line 197
    invoke-static {v5}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/net/Socket;)V

    .line 199
    if-eqz v0, :cond_5f

    .line 200
    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/b/g;->c:Lcom/bytedance/sdk/a/b/p;

    iget-object v5, p0, Lcom/bytedance/sdk/a/b/a/b/g;->b:Lcom/bytedance/sdk/a/b/e;

    invoke-virtual {v4, v5, v0}, Lcom/bytedance/sdk/a/b/p;->b(Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/i;)V

    .line 202
    :cond_5f
    if-eqz v3, :cond_68

    .line 203
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->c:Lcom/bytedance/sdk/a/b/p;

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/b/g;->b:Lcom/bytedance/sdk/a/b/e;

    invoke-virtual {v0, v4, v1}, Lcom/bytedance/sdk/a/b/p;->a(Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/i;)V

    .line 205
    :cond_68
    if-eqz v1, :cond_6f

    move-object v0, v1

    .line 278
    :goto_6b
    return-object v0

    .line 193
    :cond_6c
    :try_start_6c
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/g;->f:Lcom/bytedance/sdk/a/b/ac;
    :try_end_6e
    .catchall {:try_start_6c .. :try_end_6e} :catchall_12

    goto :goto_52

    .line 211
    :cond_6f
    const/4 v0, 0x0

    .line 212
    if-nez v2, :cond_87

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/b/g;->e:Lcom/bytedance/sdk/a/b/a/b/f$a;

    if-eqz v4, :cond_7e

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/b/g;->e:Lcom/bytedance/sdk/a/b/a/b/f$a;

    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/a/b/f$a;->a()Z

    move-result v4

    if-nez v4, :cond_87

    .line 213
    :cond_7e
    const/4 v0, 0x1

    .line 214
    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/b/g;->i:Lcom/bytedance/sdk/a/b/a/b/f;

    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/a/b/f;->b()Lcom/bytedance/sdk/a/b/a/b/f$a;

    move-result-object v4

    iput-object v4, p0, Lcom/bytedance/sdk/a/b/a/b/g;->e:Lcom/bytedance/sdk/a/b/a/b/f$a;

    .line 217
    :cond_87
    iget-object v5, p0, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    monitor-enter v5

    .line 218
    :try_start_8a
    iget-boolean v4, p0, Lcom/bytedance/sdk/a/b/a/b/g;->n:Z

    if-eqz v4, :cond_99

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :catchall_96
    move-exception v0

    monitor-exit v5
    :try_end_98
    .catchall {:try_start_8a .. :try_end_98} :catchall_96

    throw v0

    .line 220
    :cond_99
    if-eqz v0, :cond_138

    .line 223
    :try_start_9b
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->e:Lcom/bytedance/sdk/a/b/a/b/f$a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/b/f$a;->c()Ljava/util/List;

    move-result-object v6

    .line 224
    const/4 v0, 0x0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v4, v0

    :goto_a7
    if-ge v4, v7, :cond_138

    .line 225
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/a/b/ac;

    .line 226
    sget-object v8, Lcom/bytedance/sdk/a/b/a/a;->a:Lcom/bytedance/sdk/a/b/a/a;

    iget-object v9, p0, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    iget-object v10, p0, Lcom/bytedance/sdk/a/b/a/b/g;->a:Lcom/bytedance/sdk/a/b/a;

    invoke-virtual {v8, v9, v10, p0, v0}, Lcom/bytedance/sdk/a/b/a/a;->a(Lcom/bytedance/sdk/a/b/j;Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/a/b/g;Lcom/bytedance/sdk/a/b/ac;)Lcom/bytedance/sdk/a/b/a/b/c;

    .line 227
    iget-object v8, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    if-eqz v8, :cond_e8

    .line 228
    const/4 v3, 0x1

    .line 229
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    .line 230
    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->f:Lcom/bytedance/sdk/a/b/ac;

    move-object v0, v1

    .line 236
    :goto_c2
    if-nez v3, :cond_dd

    .line 237
    if-nez v2, :cond_136

    .line 238
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->e:Lcom/bytedance/sdk/a/b/a/b/f$a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/b/f$a;->b()Lcom/bytedance/sdk/a/b/ac;

    move-result-object v0

    move-object v1, v0

    .line 243
    :goto_cd
    iput-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->f:Lcom/bytedance/sdk/a/b/ac;

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->j:I

    .line 245
    new-instance v0, Lcom/bytedance/sdk/a/b/a/b/c;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    invoke-direct {v0, v2, v1}, Lcom/bytedance/sdk/a/b/a/b/c;-><init>(Lcom/bytedance/sdk/a/b/j;Lcom/bytedance/sdk/a/b/ac;)V

    .line 246
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/b/a/b/g;->a(Lcom/bytedance/sdk/a/b/a/b/c;Z)V

    .line 248
    :cond_dd
    monitor-exit v5
    :try_end_de
    .catchall {:try_start_9b .. :try_end_de} :catchall_96

    .line 251
    if-eqz v3, :cond_ec

    .line 252
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->c:Lcom/bytedance/sdk/a/b/p;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/g;->b:Lcom/bytedance/sdk/a/b/e;

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/a/b/p;->a(Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/i;)V

    goto :goto_6b

    .line 224
    :cond_e8
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_a7

    .line 257
    :cond_ec
    iget-object v5, p0, Lcom/bytedance/sdk/a/b/a/b/g;->b:Lcom/bytedance/sdk/a/b/e;

    iget-object v6, p0, Lcom/bytedance/sdk/a/b/a/b/g;->c:Lcom/bytedance/sdk/a/b/p;

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/a/b/a/b/c;->a(IIIZLcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/p;)V

    .line 259
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/b/g;->g()Lcom/bytedance/sdk/a/b/a/b/d;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/b/c;->a()Lcom/bytedance/sdk/a/b/ac;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/a/b/a/b/d;->b(Lcom/bytedance/sdk/a/b/ac;)V

    .line 261
    const/4 v1, 0x0

    .line 262
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    monitor-enter v2

    .line 263
    const/4 v3, 0x1

    :try_start_108
    iput-boolean v3, p0, Lcom/bytedance/sdk/a/b/a/b/g;->l:Z

    .line 266
    sget-object v3, Lcom/bytedance/sdk/a/b/a/a;->a:Lcom/bytedance/sdk/a/b/a/a;

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    invoke-virtual {v3, v4, v0}, Lcom/bytedance/sdk/a/b/a/a;->b(Lcom/bytedance/sdk/a/b/j;Lcom/bytedance/sdk/a/b/a/b/c;)V

    .line 270
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/b/c;->d()Z

    move-result v3

    if-eqz v3, :cond_126

    .line 271
    sget-object v0, Lcom/bytedance/sdk/a/b/a/a;->a:Lcom/bytedance/sdk/a/b/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/b/g;->a:Lcom/bytedance/sdk/a/b/a;

    invoke-virtual {v0, v1, v3, p0}, Lcom/bytedance/sdk/a/b/a/a;->a(Lcom/bytedance/sdk/a/b/j;Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/a/b/g;)Ljava/net/Socket;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    .line 274
    :cond_126
    monitor-exit v2
    :try_end_127
    .catchall {:try_start_108 .. :try_end_127} :catchall_133

    .line 275
    invoke-static {v1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/net/Socket;)V

    .line 277
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->c:Lcom/bytedance/sdk/a/b/p;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/g;->b:Lcom/bytedance/sdk/a/b/e;

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/a/b/p;->a(Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/i;)V

    goto/16 :goto_6b

    .line 274
    :catchall_133
    move-exception v0

    :try_start_134
    monitor-exit v2
    :try_end_135
    .catchall {:try_start_134 .. :try_end_135} :catchall_133

    throw v0

    :cond_136
    move-object v1, v2

    goto :goto_cd

    :cond_138
    move-object v0, v1

    goto :goto_c2
.end method

.method private a(IIIZZ)Lcom/bytedance/sdk/a/b/a/b/c;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
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

    .line 152
    :cond_c
    return-object v0

    .line 143
    :cond_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_18

    .line 147
    invoke-virtual {v0, p5}, Lcom/bytedance/sdk/a/b/a/b/c;->a(Z)Z

    move-result v1

    if-nez v1, :cond_c

    .line 148
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/b/g;->d()V

    goto :goto_0

    .line 143
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private a(ZZZ)Ljava/net/Socket;
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 379
    sget-boolean v0, Lcom/bytedance/sdk/a/b/a/b/g;->d:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 381
    :cond_14
    if-eqz p3, :cond_18

    .line 382
    iput-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->o:Lcom/bytedance/sdk/a/b/a/c/c;

    .line 384
    :cond_18
    if-eqz p2, :cond_1c

    .line 385
    iput-boolean v2, p0, Lcom/bytedance/sdk/a/b/a/b/g;->m:Z

    .line 388
    :cond_1c
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    if-eqz v0, :cond_60

    .line 389
    if-eqz p1, :cond_26

    .line 390
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    iput-boolean v2, v0, Lcom/bytedance/sdk/a/b/a/b/c;->a:Z

    .line 392
    :cond_26
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->o:Lcom/bytedance/sdk/a/b/a/c/c;

    if-nez v0, :cond_60

    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->m:Z

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    iget-boolean v0, v0, Lcom/bytedance/sdk/a/b/a/b/c;->a:Z

    if-eqz v0, :cond_60

    .line 393
    :cond_34
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/b/a/b/g;->b(Lcom/bytedance/sdk/a/b/a/b/c;)V

    .line 394
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/b/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 395
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bytedance/sdk/a/b/a/b/c;->e:J

    .line 396
    sget-object v0, Lcom/bytedance/sdk/a/b/a/a;->a:Lcom/bytedance/sdk/a/b/a/a;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/a/b/a/a;->a(Lcom/bytedance/sdk/a/b/j;Lcom/bytedance/sdk/a/b/a/b/c;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 397
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/b/c;->b()Ljava/net/Socket;

    move-result-object v0

    .line 400
    :goto_5d
    iput-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    move-object v1, v0

    .line 403
    :cond_60
    return-object v1

    :cond_61
    move-object v0, v1

    goto :goto_5d
.end method

.method private b(Lcom/bytedance/sdk/a/b/a/b/c;)V
    .registers 5

    .prologue
    .line 478
    const/4 v0, 0x0

    iget-object v1, p1, Lcom/bytedance/sdk/a/b/a/b/c;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_22

    .line 479
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/a/b/c;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 480
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_1e

    .line 481
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/a/b/c;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 482
    return-void

    .line 478
    :cond_1e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 485
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private f()Ljava/net/Socket;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 288
    sget-boolean v0, Lcom/bytedance/sdk/a/b/a/b/g;->d:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 289
    :cond_13
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    .line 290
    if-eqz v0, :cond_21

    iget-boolean v0, v0, Lcom/bytedance/sdk/a/b/a/b/c;->a:Z

    if-eqz v0, :cond_21

    .line 291
    const/4 v0, 0x1

    invoke-direct {p0, v1, v1, v0}, Lcom/bytedance/sdk/a/b/a/b/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object v0

    .line 293
    :goto_20
    return-object v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private g()Lcom/bytedance/sdk/a/b/a/b/d;
    .registers 3

    .prologue
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

    .prologue
    .line 327
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    monitor-enter v1

    .line 328
    :try_start_3
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->o:Lcom/bytedance/sdk/a/b/a/c/c;

    monitor-exit v1

    return-object v0

    .line 329
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public a(Lcom/bytedance/sdk/a/b/v;Lcom/bytedance/sdk/a/b/t$a;Z)Lcom/bytedance/sdk/a/b/a/c/c;
    .registers 10

    .prologue
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

    move-object v0, p0

    move v5, p3

    .line 114
    :try_start_12
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/a/b/a/b/g;->a(IIIZZ)Lcom/bytedance/sdk/a/b/a/b/c;

    move-result-object v0

    .line 116
    invoke-virtual {v0, p1, p2, p0}, Lcom/bytedance/sdk/a/b/a/b/c;->a(Lcom/bytedance/sdk/a/b/v;Lcom/bytedance/sdk/a/b/t$a;Lcom/bytedance/sdk/a/b/a/b/g;)Lcom/bytedance/sdk/a/b/a/c/c;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    monitor-enter v1
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1d} :catch_24

    .line 119
    :try_start_1d
    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->o:Lcom/bytedance/sdk/a/b/a/c/c;

    .line 120
    monitor-exit v1

    return-object v0

    .line 121
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_21

    :try_start_23
    throw v0
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_24} :catch_24

    .line 122
    :catch_24
    move-exception v0

    .line 123
    new-instance v1, Lcom/bytedance/sdk/a/b/a/b/e;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/a/b/a/b/e;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public a(Lcom/bytedance/sdk/a/b/a/b/c;)Ljava/net/Socket;
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 497
    sget-boolean v0, Lcom/bytedance/sdk/a/b/a/b/g;->d:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 498
    :cond_14
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->o:Lcom/bytedance/sdk/a/b/a/c/c;

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/b/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v2, :cond_28

    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 501
    :cond_28
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/b/c;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 502
    invoke-direct {p0, v2, v1, v1}, Lcom/bytedance/sdk/a/b/a/b/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 505
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    .line 506
    iget-object v2, p1, Lcom/bytedance/sdk/a/b/a/b/c;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    return-object v1
.end method

.method public a(Lcom/bytedance/sdk/a/b/a/b/c;Z)V
    .registers 6

    .prologue
    .line 466
    sget-boolean v0, Lcom/bytedance/sdk/a/b/a/b/g;->d:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 467
    :cond_12
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 469
    :cond_1c
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    .line 470
    iput-boolean p2, p0, Lcom/bytedance/sdk/a/b/a/b/g;->l:Z

    .line 471
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/a/b/c;->d:Ljava/util/List;

    new-instance v1, Lcom/bytedance/sdk/a/b/a/b/g$a;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/g;->h:Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/a/b/a/b/g$a;-><init>(Lcom/bytedance/sdk/a/b/a/b/g;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    return-void
.end method

.method public a(Ljava/io/IOException;)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 424
    .line 426
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    monitor-enter v3

    .line 427
    :try_start_6
    instance-of v4, p1, Lcom/bytedance/sdk/a/b/a/e/o;

    if-eqz v4, :cond_46

    .line 428
    check-cast p1, Lcom/bytedance/sdk/a/b/a/e/o;

    .line 429
    iget-object v4, p1, Lcom/bytedance/sdk/a/b/a/e/o;->a:Lcom/bytedance/sdk/a/b/a/e/b;

    sget-object v5, Lcom/bytedance/sdk/a/b/a/e/b;->e:Lcom/bytedance/sdk/a/b/a/e/b;

    if-ne v4, v5, :cond_18

    .line 430
    iget v4, p0, Lcom/bytedance/sdk/a/b/a/b/g;->j:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/bytedance/sdk/a/b/a/b/g;->j:I

    .line 434
    :cond_18
    iget-object v4, p1, Lcom/bytedance/sdk/a/b/a/e/o;->a:Lcom/bytedance/sdk/a/b/a/e/b;

    sget-object v5, Lcom/bytedance/sdk/a/b/a/e/b;->e:Lcom/bytedance/sdk/a/b/a/e/b;

    if-ne v4, v5, :cond_22

    iget v4, p0, Lcom/bytedance/sdk/a/b/a/b/g;->j:I

    if-le v4, v1, :cond_26

    .line 436
    :cond_22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->f:Lcom/bytedance/sdk/a/b/ac;

    move v0, v1

    :cond_26
    move v1, v0

    .line 450
    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    .line 451
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v1, v4, v5}, Lcom/bytedance/sdk/a/b/a/b/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 452
    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    if-nez v4, :cond_37

    iget-boolean v4, p0, Lcom/bytedance/sdk/a/b/a/b/g;->l:Z

    if-nez v4, :cond_38

    :cond_37
    move-object v0, v2

    .line 453
    :cond_38
    monitor-exit v3
    :try_end_39
    .catchall {:try_start_6 .. :try_end_39} :catchall_6d

    .line 455
    invoke-static {v1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/net/Socket;)V

    .line 456
    if-eqz v0, :cond_45

    .line 457
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->c:Lcom/bytedance/sdk/a/b/p;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/g;->b:Lcom/bytedance/sdk/a/b/e;

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/a/b/p;->b(Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/i;)V

    .line 459
    :cond_45
    return-void

    .line 438
    :cond_46
    :try_start_46
    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    if-eqz v4, :cond_70

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    .line 439
    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/a/b/c;->d()Z

    move-result v4

    if-eqz v4, :cond_56

    instance-of v4, p1, Lcom/bytedance/sdk/a/b/a/e/a;

    if-eqz v4, :cond_70

    .line 443
    :cond_56
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    iget v0, v0, Lcom/bytedance/sdk/a/b/a/b/c;->b:I

    if-nez v0, :cond_27

    .line 444
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->f:Lcom/bytedance/sdk/a/b/ac;

    if-eqz v0, :cond_69

    if-eqz p1, :cond_69

    .line 445
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->i:Lcom/bytedance/sdk/a/b/a/b/f;

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/b/g;->f:Lcom/bytedance/sdk/a/b/ac;

    invoke-virtual {v0, v4, p1}, Lcom/bytedance/sdk/a/b/a/b/f;->a(Lcom/bytedance/sdk/a/b/ac;Ljava/io/IOException;)V

    .line 447
    :cond_69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->f:Lcom/bytedance/sdk/a/b/ac;

    goto :goto_27

    .line 453
    :catchall_6d
    move-exception v0

    monitor-exit v3
    :try_end_6f
    .catchall {:try_start_46 .. :try_end_6f} :catchall_6d

    throw v0

    :cond_70
    move v1, v0

    goto :goto_27
.end method

.method public a(ZLcom/bytedance/sdk/a/b/a/c/c;JLjava/io/IOException;)V
    .registers 11

    .prologue
    .line 297
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->c:Lcom/bytedance/sdk/a/b/p;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->b:Lcom/bytedance/sdk/a/b/e;

    invoke-virtual {v0, v1, p3, p4}, Lcom/bytedance/sdk/a/b/p;->b(Lcom/bytedance/sdk/a/b/e;J)V

    .line 302
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    monitor-enter v1

    .line 303
    if-eqz p2, :cond_10

    :try_start_c
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->o:Lcom/bytedance/sdk/a/b/a/c/c;

    if-eq p2, v0, :cond_38

    .line 304
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/b/g;->o:Lcom/bytedance/sdk/a/b/a/c/c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_c .. :try_end_37} :catchall_35

    throw v0

    .line 306
    :cond_38
    if-nez p1, :cond_42

    .line 307
    :try_start_3a
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    iget v2, v0, Lcom/bytedance/sdk/a/b/a/b/c;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/bytedance/sdk/a/b/a/b/c;->b:I

    .line 309
    :cond_42
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    .line 310
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/bytedance/sdk/a/b/a/b/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object v2

    .line 311
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    if-eqz v3, :cond_4f

    const/4 v0, 0x0

    .line 312
    :cond_4f
    iget-boolean v3, p0, Lcom/bytedance/sdk/a/b/a/b/g;->m:Z

    .line 313
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_3a .. :try_end_52} :catchall_35

    .line 314
    invoke-static {v2}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/net/Socket;)V

    .line 315
    if-eqz v0, :cond_5e

    .line 316
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->c:Lcom/bytedance/sdk/a/b/p;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/g;->b:Lcom/bytedance/sdk/a/b/e;

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/a/b/p;->b(Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/i;)V

    .line 319
    :cond_5e
    if-eqz p5, :cond_68

    .line 320
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->c:Lcom/bytedance/sdk/a/b/p;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->b:Lcom/bytedance/sdk/a/b/e;

    invoke-virtual {v0, v1, p5}, Lcom/bytedance/sdk/a/b/p;->a(Lcom/bytedance/sdk/a/b/e;Ljava/io/IOException;)V

    .line 324
    :cond_67
    :goto_67
    return-void

    .line 321
    :cond_68
    if-eqz v3, :cond_67

    .line 322
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->c:Lcom/bytedance/sdk/a/b/p;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->b:Lcom/bytedance/sdk/a/b/e;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/p;->g(Lcom/bytedance/sdk/a/b/e;)V

    goto :goto_67
.end method

.method public declared-synchronized b()Lcom/bytedance/sdk/a/b/a/b/c;
    .registers 2

    .prologue
    .line 337
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .registers 6

    .prologue
    .line 343
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    monitor-enter v1

    .line 344
    :try_start_3
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    .line 345
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/bytedance/sdk/a/b/a/b/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object v2

    .line 346
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    if-eqz v3, :cond_11

    const/4 v0, 0x0

    .line 347
    :cond_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1f

    .line 348
    invoke-static {v2}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/net/Socket;)V

    .line 349
    if-eqz v0, :cond_1e

    .line 350
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->c:Lcom/bytedance/sdk/a/b/p;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/g;->b:Lcom/bytedance/sdk/a/b/e;

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/a/b/p;->b(Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/i;)V

    .line 352
    :cond_1e
    return-void

    .line 347
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public d()V
    .registers 6

    .prologue
    .line 360
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->g:Lcom/bytedance/sdk/a/b/j;

    monitor-enter v1

    .line 361
    :try_start_3
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    .line 362
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/bytedance/sdk/a/b/a/b/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object v2

    .line 363
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/b/g;->k:Lcom/bytedance/sdk/a/b/a/b/c;

    if-eqz v3, :cond_11

    const/4 v0, 0x0

    .line 364
    :cond_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1f

    .line 365
    invoke-static {v2}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/net/Socket;)V

    .line 366
    if-eqz v0, :cond_1e

    .line 367
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/g;->c:Lcom/bytedance/sdk/a/b/p;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/g;->b:Lcom/bytedance/sdk/a/b/e;

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/a/b/p;->b(Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/i;)V

    .line 369
    :cond_1e
    return-void

    .line 364
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->f:Lcom/bytedance/sdk/a/b/ac;

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->e:Lcom/bytedance/sdk/a/b/a/b/f$a;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->e:Lcom/bytedance/sdk/a/b/a/b/f$a;

    .line 513
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/b/f$a;->a()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->i:Lcom/bytedance/sdk/a/b/a/b/f;

    .line 514
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/b/f;->a()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    .line 512
    :goto_19
    return v0

    .line 514
    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/b/g;->b()Lcom/bytedance/sdk/a/b/a/b/c;

    move-result-object v0

    .line 520
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/b/c;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/g;->a:Lcom/bytedance/sdk/a/b/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method
