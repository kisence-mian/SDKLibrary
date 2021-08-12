.class public final Lcom/bytedance/sdk/a/b/d;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/a/b/d$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/bytedance/sdk/a/b/d;

.field public static final b:Lcom/bytedance/sdk/a/b/d;


# instance fields
.field c:Ljava/lang/String;

.field private final d:Z

.field private final e:Z

.field private final f:I

.field private final g:I

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:I

.field private final l:I

.field private final m:Z

.field private final n:Z

.field private final o:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 18
    new-instance v0, Lcom/bytedance/sdk/a/b/d$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/d$a;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/d$a;->a()Lcom/bytedance/sdk/a/b/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/d$a;->c()Lcom/bytedance/sdk/a/b/d;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/d;->a:Lcom/bytedance/sdk/a/b/d;

    .line 25
    new-instance v0, Lcom/bytedance/sdk/a/b/d$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/d$a;-><init>()V

    .line 26
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/d$a;->b()Lcom/bytedance/sdk/a/b/d$a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 27
    const v2, 0x7fffffff

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/a/b/d$a;->a(ILjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/b/d$a;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/d$a;->c()Lcom/bytedance/sdk/a/b/d;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/d;->b:Lcom/bytedance/sdk/a/b/d;

    .line 25
    return-void
.end method

.method constructor <init>(Lcom/bytedance/sdk/a/b/d$a;)V
    .registers 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iget-boolean v0, p1, Lcom/bytedance/sdk/a/b/d$a;->a:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/d;->d:Z

    .line 66
    iget-boolean v0, p1, Lcom/bytedance/sdk/a/b/d$a;->b:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/d;->e:Z

    .line 67
    iget v0, p1, Lcom/bytedance/sdk/a/b/d$a;->c:I

    iput v0, p0, Lcom/bytedance/sdk/a/b/d;->f:I

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/d;->g:I

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/d;->h:Z

    .line 70
    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/d;->i:Z

    .line 71
    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/d;->j:Z

    .line 72
    iget v0, p1, Lcom/bytedance/sdk/a/b/d$a;->d:I

    iput v0, p0, Lcom/bytedance/sdk/a/b/d;->k:I

    .line 73
    iget v0, p1, Lcom/bytedance/sdk/a/b/d$a;->e:I

    iput v0, p0, Lcom/bytedance/sdk/a/b/d;->l:I

    .line 74
    iget-boolean v0, p1, Lcom/bytedance/sdk/a/b/d$a;->f:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/d;->m:Z

    .line 75
    iget-boolean v0, p1, Lcom/bytedance/sdk/a/b/d$a;->g:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/d;->n:Z

    .line 76
    iget-boolean p1, p1, Lcom/bytedance/sdk/a/b/d$a;->h:Z

    iput-boolean p1, p0, Lcom/bytedance/sdk/a/b/d;->o:Z

    .line 77
    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZZLjava/lang/String;)V
    .registers 14

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean p1, p0, Lcom/bytedance/sdk/a/b/d;->d:Z

    .line 50
    iput-boolean p2, p0, Lcom/bytedance/sdk/a/b/d;->e:Z

    .line 51
    iput p3, p0, Lcom/bytedance/sdk/a/b/d;->f:I

    .line 52
    iput p4, p0, Lcom/bytedance/sdk/a/b/d;->g:I

    .line 53
    iput-boolean p5, p0, Lcom/bytedance/sdk/a/b/d;->h:Z

    .line 54
    iput-boolean p6, p0, Lcom/bytedance/sdk/a/b/d;->i:Z

    .line 55
    iput-boolean p7, p0, Lcom/bytedance/sdk/a/b/d;->j:Z

    .line 56
    iput p8, p0, Lcom/bytedance/sdk/a/b/d;->k:I

    .line 57
    iput p9, p0, Lcom/bytedance/sdk/a/b/d;->l:I

    .line 58
    iput-boolean p10, p0, Lcom/bytedance/sdk/a/b/d;->m:Z

    .line 59
    iput-boolean p11, p0, Lcom/bytedance/sdk/a/b/d;->n:Z

    .line 60
    iput-boolean p12, p0, Lcom/bytedance/sdk/a/b/d;->o:Z

    .line 61
    iput-object p13, p0, Lcom/bytedance/sdk/a/b/d;->c:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/a/b/r;)Lcom/bytedance/sdk/a/b/d;
    .registers 23

    .line 155
    move-object/from16 v0, p0

    .line 156
    nop

    .line 157
    nop

    .line 158
    nop

    .line 159
    nop

    .line 160
    nop

    .line 161
    nop

    .line 162
    nop

    .line 163
    nop

    .line 164
    nop

    .line 165
    nop

    .line 166
    nop

    .line 168
    nop

    .line 169
    nop

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/a/b/r;->a()I

    move-result v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_27
    if-ge v6, v1, :cond_155

    .line 172
    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/a/b/r;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/a/b/r;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 175
    const-string v3, "Cache-Control"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 176
    if-eqz v8, :cond_3d

    .line 178
    const/4 v7, 0x0

    goto :goto_48

    .line 180
    :cond_3d
    move-object v8, v4

    goto :goto_48

    .line 182
    :cond_3f
    const-string v3, "Pragma"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14e

    .line 184
    const/4 v7, 0x0

    .line 189
    :goto_48
    const/4 v2, 0x0

    .line 190
    :goto_49
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_14c

    .line 191
    nop

    .line 192
    const-string v3, "=,;"

    invoke-static {v4, v2, v3}, Lcom/bytedance/sdk/a/b/a/c/e;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 193
    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v3, v5, :cond_ab

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v0, 0x2c

    if-eq v5, v0, :cond_ab

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x3b

    if-ne v0, v5, :cond_76

    const/4 v5, 0x1

    goto :goto_ac

    .line 200
    :cond_76
    add-int/lit8 v3, v3, 0x1

    .line 201
    invoke-static {v4, v3}, Lcom/bytedance/sdk/a/b/a/c/e;->a(Ljava/lang/String;I)I

    move-result v0

    .line 204
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_9a

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x22

    if-ne v3, v5, :cond_9a

    .line 205
    add-int/lit8 v0, v0, 0x1

    .line 206
    nop

    .line 207
    const-string v3, "\""

    invoke-static {v4, v0, v3}, Lcom/bytedance/sdk/a/b/a/c/e;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 208
    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 209
    const/4 v5, 0x1

    add-int/2addr v3, v5

    .line 212
    goto :goto_af

    .line 204
    :cond_9a
    const/4 v5, 0x1

    .line 213
    nop

    .line 214
    const-string v3, ",;"

    invoke-static {v4, v0, v3}, Lcom/bytedance/sdk/a/b/a/c/e;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 215
    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_af

    .line 196
    :cond_ab
    const/4 v5, 0x1

    .line 197
    :goto_ac
    add-int/lit8 v3, v3, 0x1

    .line 198
    const/4 v0, 0x0

    .line 219
    :goto_af
    const-string v5, "no-cache"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bb

    .line 220
    const/4 v5, -0x1

    const/4 v9, 0x1

    goto/16 :goto_147

    .line 221
    :cond_bb
    const-string v5, "no-store"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c7

    .line 222
    const/4 v5, -0x1

    const/4 v10, 0x1

    goto/16 :goto_147

    .line 223
    :cond_c7
    const-string v5, "max-age"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d6

    .line 224
    const/4 v5, -0x1

    invoke-static {v0, v5}, Lcom/bytedance/sdk/a/b/a/c/e;->b(Ljava/lang/String;I)I

    move-result v11

    goto/16 :goto_147

    .line 225
    :cond_d6
    const/4 v5, -0x1

    const-string v5, "s-maxage"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e6

    .line 226
    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/bytedance/sdk/a/b/a/c/e;->b(Ljava/lang/String;I)I

    move-result v12

    move v5, v2

    goto :goto_147

    .line 227
    :cond_e6
    const-string v5, "private"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f1

    .line 228
    const/4 v5, -0x1

    const/4 v13, 0x1

    goto :goto_147

    .line 229
    :cond_f1
    const-string v5, "public"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_fc

    .line 230
    const/4 v5, -0x1

    const/4 v14, 0x1

    goto :goto_147

    .line 231
    :cond_fc
    const-string v5, "must-revalidate"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_107

    .line 232
    const/4 v5, -0x1

    const/4 v15, 0x1

    goto :goto_147

    .line 233
    :cond_107
    const-string v5, "max-stale"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_118

    .line 234
    const v2, 0x7fffffff

    invoke-static {v0, v2}, Lcom/bytedance/sdk/a/b/a/c/e;->b(Ljava/lang/String;I)I

    move-result v16

    const/4 v5, -0x1

    goto :goto_147

    .line 235
    :cond_118
    const-string v5, "min-fresh"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_126

    .line 236
    const/4 v5, -0x1

    invoke-static {v0, v5}, Lcom/bytedance/sdk/a/b/a/c/e;->b(Ljava/lang/String;I)I

    move-result v17

    goto :goto_147

    .line 237
    :cond_126
    const/4 v5, -0x1

    const-string v0, "only-if-cached"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_132

    .line 238
    const/16 v18, 0x1

    goto :goto_147

    .line 239
    :cond_132
    const-string v0, "no-transform"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 240
    const/16 v19, 0x1

    goto :goto_147

    .line 241
    :cond_13d
    const-string v0, "immutable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_147

    .line 242
    const/16 v20, 0x1

    .line 244
    :cond_147
    :goto_147
    move-object/from16 v0, p0

    move v2, v3

    goto/16 :goto_49

    .line 190
    :cond_14c
    const/4 v5, -0x1

    goto :goto_14f

    .line 182
    :cond_14e
    const/4 v5, -0x1

    .line 171
    :goto_14f
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_27

    .line 247
    :cond_155
    if-nez v7, :cond_15a

    .line 248
    const/16 v21, 0x0

    goto :goto_15c

    .line 247
    :cond_15a
    move-object/from16 v21, v8

    .line 250
    :goto_15c
    new-instance v0, Lcom/bytedance/sdk/a/b/d;

    move-object v8, v0

    invoke-direct/range {v8 .. v21}, Lcom/bytedance/sdk/a/b/d;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .registers 6

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/d;->d:Z

    if-eqz v1, :cond_e

    const-string v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_e
    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/d;->e:Z

    if-eqz v1, :cond_17

    const-string v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_17
    iget v1, p0, Lcom/bytedance/sdk/a/b/d;->f:I

    const-string v2, ", "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2d

    const-string v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/bytedance/sdk/a/b/d;->f:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_2d
    iget v1, p0, Lcom/bytedance/sdk/a/b/d;->g:I

    if-eq v1, v3, :cond_40

    const-string v1, "s-maxage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/bytedance/sdk/a/b/d;->g:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_40
    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/d;->h:Z

    if-eqz v1, :cond_49

    const-string v1, "private, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_49
    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/d;->i:Z

    if-eqz v1, :cond_52

    const-string v1, "public, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_52
    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/d;->j:Z

    if-eqz v1, :cond_5b

    const-string v1, "must-revalidate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :cond_5b
    iget v1, p0, Lcom/bytedance/sdk/a/b/d;->k:I

    if-eq v1, v3, :cond_6e

    const-string v1, "max-stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/bytedance/sdk/a/b/d;->k:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_6e
    iget v1, p0, Lcom/bytedance/sdk/a/b/d;->l:I

    if-eq v1, v3, :cond_81

    const-string v1, "min-fresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/bytedance/sdk/a/b/d;->l:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    :cond_81
    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/d;->m:Z

    if-eqz v1, :cond_8a

    const-string v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :cond_8a
    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/d;->n:Z

    if-eqz v1, :cond_93

    const-string v1, "no-transform, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_93
    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/d;->o:Z

    if-eqz v1, :cond_9c

    const-string v1, "immutable, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :cond_9c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_a5

    const-string v0, ""

    return-object v0

    .line 276
    :cond_a5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 87
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/d;->d:Z

    return v0
.end method

.method public b()Z
    .registers 2

    .line 94
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/d;->e:Z

    return v0
.end method

.method public c()I
    .registers 2

    .line 101
    iget v0, p0, Lcom/bytedance/sdk/a/b/d;->f:I

    return v0
.end method

.method public d()Z
    .registers 2

    .line 113
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/d;->h:Z

    return v0
.end method

.method public e()Z
    .registers 2

    .line 117
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/d;->i:Z

    return v0
.end method

.method public f()Z
    .registers 2

    .line 121
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/d;->j:Z

    return v0
.end method

.method public g()I
    .registers 2

    .line 125
    iget v0, p0, Lcom/bytedance/sdk/a/b/d;->k:I

    return v0
.end method

.method public h()I
    .registers 2

    .line 129
    iget v0, p0, Lcom/bytedance/sdk/a/b/d;->l:I

    return v0
.end method

.method public i()Z
    .registers 2

    .line 139
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/d;->m:Z

    return v0
.end method

.method public j()Z
    .registers 2

    .line 147
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/d;->o:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 257
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/d;->c:Ljava/lang/String;

    .line 258
    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/d;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/d;->c:Ljava/lang/String;

    :goto_b
    return-object v0
.end method
