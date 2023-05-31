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

    .prologue
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

    const v1, 0x7fffffff

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/a/b/d$a;->a(ILjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/b/d$a;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/d$a;->c()Lcom/bytedance/sdk/a/b/d;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/d;->b:Lcom/bytedance/sdk/a/b/d;

    .line 25
    return-void
.end method

.method constructor <init>(Lcom/bytedance/sdk/a/b/d$a;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

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
    iput-boolean v1, p0, Lcom/bytedance/sdk/a/b/d;->h:Z

    .line 70
    iput-boolean v1, p0, Lcom/bytedance/sdk/a/b/d;->i:Z

    .line 71
    iput-boolean v1, p0, Lcom/bytedance/sdk/a/b/d;->j:Z

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
    iget-boolean v0, p1, Lcom/bytedance/sdk/a/b/d$a;->h:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/d;->o:Z

    .line 77
    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZZLjava/lang/String;)V
    .registers 14

    .prologue
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
    .registers 25

    .prologue
    .line 155
    const/16 v17, 0x0

    .line 156
    const/4 v4, 0x0

    .line 157
    const/4 v5, -0x1

    .line 158
    const/4 v6, -0x1

    .line 159
    const/4 v7, 0x0

    .line 160
    const/4 v8, 0x0

    .line 161
    const/4 v9, 0x0

    .line 162
    const/4 v10, -0x1

    .line 163
    const/4 v11, -0x1

    .line 164
    const/4 v12, 0x0

    .line 165
    const/4 v13, 0x0

    .line 166
    const/4 v14, 0x0

    .line 168
    const/16 v16, 0x1

    .line 169
    const/4 v3, 0x0

    .line 171
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/a/b/r;->a()I

    move-result v20

    move/from16 v19, v2

    move-object v2, v3

    move/from16 v3, v17

    :goto_1a
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1b8

    .line 172
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/r;->a(I)Ljava/lang/String;

    move-result-object v17

    .line 173
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/r;->b(I)Ljava/lang/String;

    move-result-object v15

    .line 175
    const-string v18, "Cache-Control"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_98

    .line 176
    if-eqz v2, :cond_96

    .line 178
    const/16 v16, 0x0

    .line 189
    :goto_3c
    const/16 v17, 0x0

    move/from16 v23, v17

    move/from16 v17, v3

    move/from16 v3, v23

    .line 190
    :cond_44
    :goto_44
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v3, v0, :cond_1b0

    .line 192
    const-string v18, "=,;"

    move-object/from16 v0, v18

    invoke-static {v15, v3, v0}, Lcom/bytedance/sdk/a/b/a/c/e;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v18

    .line 193
    move/from16 v0, v18

    invoke-virtual {v15, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    .line 196
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v18

    if-eq v0, v3, :cond_7e

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v22, 0x2c

    move/from16 v0, v22

    if-eq v3, v0, :cond_7e

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v22, 0x3b

    move/from16 v0, v22

    if-ne v3, v0, :cond_a3

    .line 197
    :cond_7e
    add-int/lit8 v18, v18, 0x1

    .line 198
    const/4 v3, 0x0

    move-object/from16 v23, v3

    move/from16 v3, v18

    move-object/from16 v18, v23

    .line 219
    :goto_87
    const-string v22, "no-cache"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_ef

    .line 220
    const/16 v17, 0x1

    goto :goto_44

    :cond_96
    move-object v2, v15

    .line 180
    goto :goto_3c

    .line 182
    :cond_98
    const-string v18, "Pragma"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1ae

    .line 184
    const/16 v16, 0x0

    goto :goto_3c

    .line 200
    :cond_a3
    add-int/lit8 v3, v18, 0x1

    .line 201
    invoke-static {v15, v3}, Lcom/bytedance/sdk/a/b/a/c/e;->a(Ljava/lang/String;I)I

    move-result v3

    .line 204
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v3, v0, :cond_d6

    invoke-virtual {v15, v3}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v22, 0x22

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_d6

    .line 205
    add-int/lit8 v3, v3, 0x1

    .line 207
    const-string v18, "\""

    move-object/from16 v0, v18

    invoke-static {v15, v3, v0}, Lcom/bytedance/sdk/a/b/a/c/e;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v18

    .line 208
    move/from16 v0, v18

    invoke-virtual {v15, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 209
    add-int/lit8 v18, v18, 0x1

    move-object/from16 v23, v3

    move/from16 v3, v18

    move-object/from16 v18, v23

    .line 212
    goto :goto_87

    .line 214
    :cond_d6
    const-string v18, ",;"

    move-object/from16 v0, v18

    invoke-static {v15, v3, v0}, Lcom/bytedance/sdk/a/b/a/c/e;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v18

    .line 215
    move/from16 v0, v18

    invoke-virtual {v15, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v23, v3

    move/from16 v3, v18

    move-object/from16 v18, v23

    goto :goto_87

    .line 221
    :cond_ef
    const-string v22, "no-store"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_fe

    .line 222
    const/4 v4, 0x1

    goto/16 :goto_44

    .line 223
    :cond_fe
    const-string v22, "max-age"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_113

    .line 224
    const/4 v5, -0x1

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lcom/bytedance/sdk/a/b/a/c/e;->b(Ljava/lang/String;I)I

    move-result v5

    goto/16 :goto_44

    .line 225
    :cond_113
    const-string v22, "s-maxage"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_128

    .line 226
    const/4 v6, -0x1

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Lcom/bytedance/sdk/a/b/a/c/e;->b(Ljava/lang/String;I)I

    move-result v6

    goto/16 :goto_44

    .line 227
    :cond_128
    const-string v22, "private"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_137

    .line 228
    const/4 v7, 0x1

    goto/16 :goto_44

    .line 229
    :cond_137
    const-string v22, "public"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_146

    .line 230
    const/4 v8, 0x1

    goto/16 :goto_44

    .line 231
    :cond_146
    const-string v22, "must-revalidate"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_155

    .line 232
    const/4 v9, 0x1

    goto/16 :goto_44

    .line 233
    :cond_155
    const-string v22, "max-stale"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_16c

    .line 234
    const v10, 0x7fffffff

    move-object/from16 v0, v18

    invoke-static {v0, v10}, Lcom/bytedance/sdk/a/b/a/c/e;->b(Ljava/lang/String;I)I

    move-result v10

    goto/16 :goto_44

    .line 235
    :cond_16c
    const-string v22, "min-fresh"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_181

    .line 236
    const/4 v11, -0x1

    move-object/from16 v0, v18

    invoke-static {v0, v11}, Lcom/bytedance/sdk/a/b/a/c/e;->b(Ljava/lang/String;I)I

    move-result v11

    goto/16 :goto_44

    .line 237
    :cond_181
    const-string v18, "only-if-cached"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_190

    .line 238
    const/4 v12, 0x1

    goto/16 :goto_44

    .line 239
    :cond_190
    const-string v18, "no-transform"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_19f

    .line 240
    const/4 v13, 0x1

    goto/16 :goto_44

    .line 241
    :cond_19f
    const-string v18, "immutable"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_44

    .line 242
    const/4 v14, 0x1

    goto/16 :goto_44

    :cond_1ae
    move/from16 v17, v3

    .line 171
    :cond_1b0
    add-int/lit8 v3, v19, 0x1

    move/from16 v19, v3

    move/from16 v3, v17

    goto/16 :goto_1a

    .line 247
    :cond_1b8
    if-nez v16, :cond_1c1

    .line 248
    const/4 v15, 0x0

    .line 250
    :goto_1bb
    new-instance v2, Lcom/bytedance/sdk/a/b/d;

    invoke-direct/range {v2 .. v15}, Lcom/bytedance/sdk/a/b/d;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    return-object v2

    :cond_1c1
    move-object v15, v2

    goto :goto_1bb
.end method

.method private k()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/d;->d:Z

    if-eqz v1, :cond_f

    const-string v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_f
    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/d;->e:Z

    if-eqz v1, :cond_18

    const-string v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_18
    iget v1, p0, Lcom/bytedance/sdk/a/b/d;->f:I

    if-eq v1, v3, :cond_2d

    const-string v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/a/b/d;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_2d
    iget v1, p0, Lcom/bytedance/sdk/a/b/d;->g:I

    if-eq v1, v3, :cond_42

    const-string v1, "s-maxage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/a/b/d;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_42
    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/d;->h:Z

    if-eqz v1, :cond_4b

    const-string v1, "private, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_4b
    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/d;->i:Z

    if-eqz v1, :cond_54

    const-string v1, "public, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_54
    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/d;->j:Z

    if-eqz v1, :cond_5d

    const-string v1, "must-revalidate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :cond_5d
    iget v1, p0, Lcom/bytedance/sdk/a/b/d;->k:I

    if-eq v1, v3, :cond_72

    const-string v1, "max-stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/a/b/d;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_72
    iget v1, p0, Lcom/bytedance/sdk/a/b/d;->l:I

    if-eq v1, v3, :cond_87

    const-string v1, "min-fresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/a/b/d;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    :cond_87
    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/d;->m:Z

    if-eqz v1, :cond_90

    const-string v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :cond_90
    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/d;->n:Z

    if-eqz v1, :cond_99

    const-string v1, "no-transform, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_99
    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/d;->o:Z

    if-eqz v1, :cond_a2

    const-string v1, "immutable, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :cond_a2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_ab

    const-string v0, ""

    .line 277
    :goto_aa
    return-object v0

    .line 276
    :cond_ab
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_aa
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/d;->d:Z

    return v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/d;->e:Z

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 101
    iget v0, p0, Lcom/bytedance/sdk/a/b/d;->f:I

    return v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/d;->h:Z

    return v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/d;->i:Z

    return v0
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/d;->j:Z

    return v0
.end method

.method public g()I
    .registers 2

    .prologue
    .line 125
    iget v0, p0, Lcom/bytedance/sdk/a/b/d;->k:I

    return v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 129
    iget v0, p0, Lcom/bytedance/sdk/a/b/d;->l:I

    return v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/d;->m:Z

    return v0
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/d;->o:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/d;->c:Ljava/lang/String;

    .line 258
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/d;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/d;->c:Ljava/lang/String;

    goto :goto_4
.end method
